#version 410

layout(location=0) out vec3 vFragColor;
in vec3 vertex_color;
layout(std140) uniform Modifiers {
    float light_intensity;
    vec3 light_color;
};

void main() {
    vFragColor = vertex_color;
}
