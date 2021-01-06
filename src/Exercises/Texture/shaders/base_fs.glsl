#version 410

layout(location=0) out vec4 vFragColor;
uniform sampler2D diffuse_map;
in vec2 vertex_texture;

void main() {
    vFragColor = texture(diffuse_map, vertex_texture);
}