//
// Created by Paulina on 19.12.2020.
//

#include "quad.h"
#include <vector>
#include <glm/glm.hpp>
#define STB_IMAGE_IMPLEMENTATION
#include "3rdParty/src/stb/stb_image.h"
#include <string>

Quad::Quad() {
    /*
        Tu dodajemy kod tworzący bufory indeksów i wierzchołków oraz obiekt VAO,
        Potem ładujemy dane wierzchołków i indeksow do buforów  i  podłaczamy je do atrybutów w szaderze
   */

    int width, height, n_channels;
    auto texture_filename = (std::string(PROJECT_DIR) + "/Textures/silver.png").c_str();
    uint8_t  *data = stbi_load(texture_filename, &width, &height, &n_channels, 0);

    glGenTextures(1, &diffuse_texture_);
    glBindTexture(GL_TEXTURE_2D, diffuse_texture_);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA, width, height,0, GL_RGBA, GL_UNSIGNED_BYTE,data);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,GL_NEAREST);
    glBindTexture(GL_TEXTURE_2D, 0);

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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(0));
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(3 * sizeof(GLfloat)));
    glEnableVertexAttribArray(2);
    glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(GLfloat), reinterpret_cast<GLvoid *>(5 * sizeof(GLfloat)));
    glBindVertexArray(0);

}

Quad::~Quad() {
    //Tu usuwamy VAO i bufory
}

void Quad::draw(GLuint u_pvm_buffer_,glm::mat4 &P,glm::mat4 &VM,glm::mat3 &N) {
    //Tu wywolujemy polecenie glDrawElements
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D,diffuse_texture_);
    glBindBuffer(GL_UNIFORM_BUFFER, u_pvm_buffer_);
    glBufferSubData(GL_UNIFORM_BUFFER, 0, sizeof(glm::mat4), &P[0]);
    glBufferSubData(GL_UNIFORM_BUFFER, sizeof(glm::mat4), sizeof(glm::mat4), &VM[0]);
    glBufferSubData(GL_UNIFORM_BUFFER, 2 * sizeof(glm::mat4), sizeof(glm::vec4), &N[0]);
    glBufferSubData(GL_UNIFORM_BUFFER, 2 * sizeof(glm::mat4) + sizeof(glm::vec4), sizeof(glm::vec3), &N[1]);
    glBufferSubData(GL_UNIFORM_BUFFER, 2 * sizeof(glm::mat4) + 2 * sizeof(glm::vec4), sizeof(glm::vec3), &N[2]);
    glBindBuffer(GL_UNIFORM_BUFFER, 0);

    glBindVertexArray(vao_);
    glDrawElements(GL_TRIANGLES,6,GL_UNSIGNED_SHORT, nullptr);
    glBindVertexArray(0);
    glBindTexture(GL_TEXTURE_2D, 0);
}



