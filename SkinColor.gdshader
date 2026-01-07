shader_type canvas_item;

uniform vec4 skin_color : source_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform sampler2D skin_mask;

void fragment() {
    vec4 base = texture(TEXTURE, UV);
    float mask = texture(skin_mask, UV).r;

    vec3 final_color = mix(base.rgb, base.rgb * skin_color.rgb, mask);

    COLOR = vec4(final_color, base.a);
}
