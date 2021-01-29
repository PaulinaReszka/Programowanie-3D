#pragma once

#include "glad/glad.h"

#include <vector>
#include <glm/glm.hpp>
#include <memory>


class Quad  {
public:
    Quad();
    ~Quad();
    void draw(GLuint u_pvm_buffer_,glm::mat4 &P,glm::mat4 &VM,glm::mat3 &N);
    Quad(const Quad& rhs) = delete;
    Quad &operator=(Quad *rhs) = delete;

    void operator=(Quad&& rhs) = delete;
    Quad(Quad&& rhs) = delete;
    std::shared_ptr<Quad> quad_;
private:
    GLuint vao_{};
    GLuint buffer_[2]{};
    GLuint diffuse_texture_;

    std::vector<GLushort> indices = {
            0, 1, 2,
            3, 0, 2,

    };

    std::vector<GLfloat> vertices = {
            0.5f, 0.0f, -0.5f, 1.0, 0.0, 0.0, 1.0, 0.0,
            0.5f, 0.0f, 0.5f, 1.0, 1.0, 0.0, 1.0, 0.0,
            -0.5f, 0.0f, 0.5f, 0.0, 1.0, 0.0, 1.0, 0.0,
            -0.5f, 0.0f, -0.5f, 0.0, 0.0, 0.0, 1.0, 0.0,


    };
};