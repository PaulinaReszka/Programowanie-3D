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

    std::vector<GLushort> indices = {
            0, 1, 2,
            3, 0, 2, //3, 0, 2
            5, 4, 6, //5, 4, 6
            9, 8, 7, //9, 8, 7
            11, 10, 12,
            13, 15, 14
    };

    std::vector<GLfloat> vertices = {
            0.5f, 0.0f, -0.5f, 0.5, 0.4, 0.1,
            0.5f, 0.0f, 0.5f, 0.5, 0.4, 0.1,
            -0.5f, 0.0f, 0.5f, 0.5, 0.4, 0.1,
            -0.5f, 0.0f, -0.5f, 0.5, 0.4, 0.1,

            0.5f, 0.0f, -0.5f, 0.3, 0.2, 0.7,
            0.5f, 0.0f, 0.5f, 0.3, 0.2, 0.7,
            0.0f, 1.0f, 0.0f, 0.3, 0.2, 0.7,

            0.5f, 0.0f, 0.5f, 0.8, 0.3, 0.1,
            -0.5f, 0.0f, 0.5f, 0.8, 0.3, 0.1,
            0.0f, 1.0f, 0.0f, 0.8, 0.3, 0.1,

            -0.5f, 0.0f, 0.5f, 0.7, 0.6, 0.3,
            -0.5f, 0.0f, -0.5f, 0.7, 0.6, 0.3,
            0.0f, 1.0f, 0.0f, 0.7, 0.6, 0.3,

            -0.5f, 0.0f, -0.5f, 0.8, 0.2, 0.8,
            0.5f, 0.0f, -0.5f, 0.8, 0.2, 0.8,
            0.0f, 1.0f, 0.0f, 0.8, 0.2, 0.8,
    };
};