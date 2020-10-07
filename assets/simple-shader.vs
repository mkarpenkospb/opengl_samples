#version 330 core

layout (location = 0) in vec3 in_position;
layout (location = 1) in vec3 in_normal;
layout (location = 2) in vec2 in_texcoord;

struct vx_output_t
{
    vec3 color;
};
out vec3 Normal;
out vec2 tex_coord;


out vx_output_t v_out;

uniform float u_rotation;
uniform vec2 u_translation;
uniform mat4 u_mvp;

void main()
{
    //vec2 rotated_pos;
    //rotated_pos.x = u_translation.x + in_position.x * cos(u_rotation) - in_position.y * sin(u_rotation);
   // rotated_pos.y = u_translation.y + in_position.x * sin(u_rotation) + in_position.y * cos(u_rotation);

    v_out.color = vec3(0.2, 0.6, 0.8);
//    gl_Position = in_position;
    //gl_Position = vec4(rotated_pos.x, rotated_pos.y, in_position.z, 1.0);
    //gl_Position = u_mvp * vec4(rotated_pos.x, rotated_pos.y, in_position.z, 1.0);
    Normal = in_normal;
    tex_coord = in_texcoord;
    //gl_Position = u_mvp * vec4(3 * rotated_pos.x, 2 * rotated_pos.y, in_position.z, 1.0);
    gl_Position =  u_mvp * vec4(in_position.xyz, 1.0);
    //gl_Position /= gl_Position.w;
}
