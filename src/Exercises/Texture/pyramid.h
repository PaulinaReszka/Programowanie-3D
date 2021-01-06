#pragma once

#include "glad/glad.h"

#include <vector>
#include <glm/glm.hpp>


class Pyramid  {
public:
    Pyramid();
    ~Pyramid();
    void draw(glm::mat4 &PVM, GLuint u_pvm_buffer_);
    Pyramid(const Pyramid& rhs) = delete;
    Pyramid &operator=(Pyramid *rhs) = delete;

    void operator=(Pyramid&& rhs) = delete;
    Pyramid(Pyramid&& rhs) = delete;
private:
    GLuint vao_{};
    GLuint buffer_[2]{};
    GLuint diffuse_texture_;

    std::vector<GLushort> indices = {
            0, 1, 2,
            3, 0, 2,
            0, 1, 4,
            1, 2, 5,
            2, 3, 6,
            3, 0, 7,
    };

    std::vector<GLfloat> vertices = {
            0.5f, 0.0f, -0.5f, 0.5, 0.191,
            0.5f, 0.0f, 0.5f, 0.809, 0.5,
            -0.5f, 0.0f, 0.5f, 0.5, 0.809,
            -0.5f, 0.0f, -0.5f, 0.191, 0.5,

            0.0f, 1.0f, 0.0f, 1.0, 0.0,

            0.0f, 1.0f, 0.0f, 1.0, 1.0,

            0.0f, 1.0f, 0.0f, 0.0, 1.0,

            0.0f, 1.0f, 0.0f, 0.0, 0.0,
    };
};