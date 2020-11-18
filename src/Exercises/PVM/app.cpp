//
// Created by pbialas on 25.09.2020.
//

#include "app.h"

#include <iostream>
#include <vector>
#include <tuple>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>


#include "Application/utils.h"

void SimpleShapeApplication::init() {
    std::vector<GLushort> indices = {
            0,1,2,3,4,5,5,6,4
    };


    auto program = xe::create_program(std::string(PROJECT_DIR) + "/shaders/base_vs.glsl",
                                      std::string(PROJECT_DIR) + "/shaders/base_fs.glsl");


    if (!program) {
        std::cerr << "Cannot create program from " << std::string(PROJECT_DIR) + "/shaders/base_vs.glsl" << " and ";
        std::cerr << std::string(PROJECT_DIR) + "/shaders/base_fs.glsl" << " shader files" << std::endl;
    }

    std::vector<GLfloat> vertices = {
            -0.5f, 0.0f, 0.0f, 0.8, 0.2, 0.8,
            0.5f, 0.0f, 0.0f, 0.8, 0.2, 0.8,
            0.0f, 0.5f, 0.0f, 0.8, 0.2, 0.8,
            0.5f, -0.8f, 0.0f, 0.2, 0.7, 0.3,
            -0.5f, -0.8f, 0.0f, 0.2, 0.7, 0.3,
            0.5f, 0.0f, 0.0f, 0.2, 0.7, 0.3,
            -0.5f, 0.0f, 0.0f, 0.2, 0.7, 0.3,
    };

    GLuint idx_buffer_handle;
    glGenBuffers(1, &idx_buffer_handle);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, idx_buffer_handle);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(GLushort), indices.data(),
                 GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

    GLuint v_buffer_handle;
    glGenBuffers(1, &v_buffer_handle);
    glBindBuffer(GL_ARRAY_BUFFER, v_buffer_handle);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(GLfloat), vertices.data(), GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, 0);


    glGenVertexArrays(1, &vao_);
    glBindVertexArray(vao_);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, idx_buffer_handle);
    glBindBuffer(GL_ARRAY_BUFFER, v_buffer_handle);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(0));
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(3 * sizeof(GLfloat)));
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);

    auto u_modifiers_index = glGetUniformBlockIndex(program, "Modifiers");
    if (u_modifiers_index == GL_INVALID_INDEX) {
        std::cout << "Cannot find Modifiers uniform block in program" << std::endl;
    } else {
        glUniformBlockBinding(program, u_modifiers_index, 0);
    }
    float strength = 0.9f;
    float light[3] = {0.5f, 0.8f, 0.9f};

    glm::mat4 M(1.0f);
    glm::mat4 view = glm::lookAt(glm::vec3(4.0f, 0.0f,  2.8f),
                                 glm::vec3(0.5f, 0.0f, 0.5f),
                                 glm::vec3(0.7f, 1.0f, 1.9f));

    glm::mat4 projectionMatrix = glm::perspective(
            glm::radians(20.f),
            220.0f / 98.0f,
            0.1f,
            100.0f
    );
    glm::mat4 PVM = projectionMatrix * view * M;

    GLuint ubo_handle(0u);
    glGenBuffers(1, &ubo_handle);
    glBindBuffer(GL_UNIFORM_BUFFER, ubo_handle);
    glBufferData(GL_UNIFORM_BUFFER, 8 * sizeof(float), nullptr, GL_STATIC_DRAW);
    glBufferSubData(GL_UNIFORM_BUFFER, 0, sizeof(float), &strength);
    glBufferSubData(GL_UNIFORM_BUFFER, 4 * sizeof(float), 3 * sizeof(float), light);
    glBindBuffer(GL_UNIFORM_BUFFER, 0);
    glBindBufferBase(GL_UNIFORM_BUFFER, 0, ubo_handle);


    GLuint ubo_handle_pvm(0u);
    glGenBuffers(1, &ubo_handle_pvm);
    glBindBuffer(GL_UNIFORM_BUFFER, ubo_handle_pvm);
    glBufferData(GL_UNIFORM_BUFFER, sizeof(glm::mat4), nullptr, GL_STATIC_DRAW);
    glBufferSubData(GL_UNIFORM_BUFFER, 0, sizeof(glm::mat4), &PVM[0]);
    glBindBuffer(GL_UNIFORM_BUFFER, 1);
    glBindBufferBase(GL_UNIFORM_BUFFER, 1, ubo_handle_pvm);

    auto u_transformations_index = glGetUniformBlockIndex(program, "Transformations");
    if (u_transformations_index == GL_INVALID_INDEX) {
        std::cout << "Cannot find Transformations uniform block in program" << std::endl;
    } else {
        glUniformBlockBinding(program, u_transformations_index, 1);
    }

    glClearColor(0.81f, 0.81f, 0.8f, 1.0f);
    int w, h;
    std::tie(w, h) = frame_buffer_size();
    glViewport(0, 0, w, h);

    glEnable(GL_DEPTH_TEST);
    glUseProgram(program);

}

void SimpleShapeApplication::frame() {
    glBindVertexArray(vao_);
    glDrawElements(GL_TRIANGLES, 9, GL_UNSIGNED_SHORT, reinterpret_cast<GLvoid *>(0));
    glBindVertexArray(0);
}