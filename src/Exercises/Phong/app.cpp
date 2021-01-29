//
// Created by pbialas on 25.09.2020.
//

#include "app.h"

#include <iostream>
#include <vector>
#include <tuple>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include "quad.h"


#include "Application/utils.h"

void SimpleShapeApplication::init() {


    auto program = xe::create_program(std::string(PROJECT_DIR) + "/shaders/base_vs.glsl",
                                      std::string(PROJECT_DIR) + "/shaders/base_fs.glsl");


    if (!program) {
        std::cerr << "Cannot create program from " << std::string(PROJECT_DIR) + "/shaders/base_vs.glsl" << " and ";
        std::cerr << std::string(PROJECT_DIR) + "/shaders/base_fs.glsl" << " shader files" << std::endl;
    }


    set_camera(new Camera);
    set_controler(new CameraControler(camera()));
    quad = new Quad();
    quad -> quad_ = std::make_shared<Quad>();


    auto u_light_index = glGetUniformBlockIndex(program, "Light");
    if (u_light_index == GL_INVALID_INDEX)
    {
        std::cout << "Cannot find Light uniform block in program" << std::endl;
    }
    else
    {
        glUniformBlockBinding(program, u_light_index, 2);
    }


    int w, h;
    std::tie(w, h) = frame_buffer_size();
    glViewport(0, 0, w, h);

    camera_->look_at(glm::vec3(0.0f, 2.0f,  0.0f),
                     glm::vec3(0.0f, 0.0f, 0.0f),
                     glm::vec3(0.0f, 1.0f, 1.0f));

    camera_->perspective(
            glm::pi<float>() / 4.0f,
            (float)w/h,
            0.1f,
            100.0f
    );



    auto u_transformations_index = glGetUniformBlockIndex(program, "Transformations");
    if (u_transformations_index == GL_INVALID_INDEX) {
        std::cout << "Cannot find Transformations uniform block in program" << std::endl;
    } else {
        glUniformBlockBinding(program, u_transformations_index, 0);
    }

    M=glm::mat4(1.0f);
    position=glm::vec4(0.0f,1.0f,0.0f,1.0f);
    light_.position=position;
    light_.a = glm::vec4(1.0f, 0.0f, 1.0f, 0.0f);
    light_.color=glm::vec4 (1.0f,1.0f,1.0f,1.0f);
    light_.ambient=glm::vec3 (0.2f,0.2f,0.2f);



    auto  u_diffuse_map_location = glGetUniformLocation(program,"diffuse_map");
    if(u_diffuse_map_location==-1) {
        std::cerr<<"Cannot find uniform diffuse_map\n";
    } else {
        glUniform1ui(u_diffuse_map_location,0);
    }

    glGenBuffers(1, &u_light_buffer_);
    glBindBuffer(GL_UNIFORM_BUFFER, u_light_buffer_);
    glBufferData(GL_UNIFORM_BUFFER, 3 * sizeof(glm::vec4) + sizeof(glm::vec3), nullptr,GL_STATIC_DRAW);
    glBindBuffer(GL_UNIFORM_BUFFER, 0);
    glBindBufferBase(GL_UNIFORM_BUFFER, 2, u_light_buffer_);

    glGenBuffers(1, &u_pvm_buffer_);
    glBindBuffer(GL_UNIFORM_BUFFER,u_pvm_buffer_);
    glBufferData(GL_UNIFORM_BUFFER,2*sizeof(glm::mat4) + 3 * sizeof(glm::vec4), nullptr,GL_STATIC_DRAW);
    glBindBuffer(GL_UNIFORM_BUFFER,0);
    glBindBufferBase(GL_UNIFORM_BUFFER,0,u_pvm_buffer_);

    glClearColor(0.81f, 0.81f, 0.8f, 1.0f);

    glEnable(GL_DEPTH_TEST);
    glUseProgram(program);
}

void SimpleShapeApplication::frame() {
    P = camera_->projection();
    VM = camera()->view()*M;
    auto R = glm::mat3(VM);
    N = glm::transpose(glm::inverse(R));
    light_.position=VM*position;

    glBindBuffer(GL_UNIFORM_BUFFER, u_light_buffer_);
    glBufferSubData(GL_UNIFORM_BUFFER, 0, sizeof(glm::vec4), &light_.position);
    glBufferSubData(GL_UNIFORM_BUFFER, sizeof(glm::vec4), sizeof(glm::vec4), &light_.color);
    glBufferSubData(GL_UNIFORM_BUFFER, 2 * sizeof(glm::vec4), sizeof(glm::vec4), &light_.a);
    glBufferSubData(GL_UNIFORM_BUFFER, 3 * sizeof(glm::vec4), sizeof(glm::vec3), &light_.ambient);
    glBindBuffer(GL_UNIFORM_BUFFER, 0);
    quad->draw(u_pvm_buffer_,P,VM,N);
}

void SimpleShapeApplication::framebuffer_resize_callback(int w, int h) {
    Application::framebuffer_resize_callback(w, h);
    glViewport(0,0,w,h);
    camera_->perspective(
            glm::pi<float>() / 4.0f,
            (float)w/h,
            0.1f,
            100.0f
    );
}

void SimpleShapeApplication::mouse_button_callback(int button, int action, int mods) {
    Application::mouse_button_callback(button, action, mods);

    if (controler_) {
        double x, y;
        glfwGetCursorPos(window_, &x, &y);

        if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS)
            controler_->LMB_pressed(x, y);

        if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_RELEASE)
            controler_->LMB_released(x, y);
    }

}

void SimpleShapeApplication::cursor_position_callback(double x, double y) {
    Application::cursor_position_callback(x, y);
    if (controler_) {
        controler_->mouse_moved(x, y);
    }
}

void SimpleShapeApplication::cleanup() {
    delete quad;
}