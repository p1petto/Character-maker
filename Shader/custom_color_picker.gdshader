shader_type canvas_item;
uniform vec4 oldcolor1 : source_color;
uniform vec4 oldcolor2 : source_color;
uniform vec4 oldcolor3 : source_color;
uniform vec4 oldcolor4 : source_color;
uniform vec4 oldcolor5 : source_color;

uniform vec4 newcolor1 : source_color;
uniform vec4 newcolor2 : source_color;
uniform vec4 newcolor3 : source_color;
uniform vec4 newcolor4 : source_color;
uniform vec4 newcolor5 : source_color;


void fragment() {
	float r = 0.0;
	float g = 0.0;
	float b = 0.0;
		
    if(distance(COLOR, oldcolor1) < 0.1){
        COLOR = newcolor1;
	}
	if(distance(COLOR, oldcolor2) < 0.1)
	{
		r = (COLOR.r - newcolor1.r) * 0.6 + newcolor1.r;
		g = (COLOR.g - newcolor1.g) * 0.6 + newcolor1.g;
		b = (COLOR.b - newcolor1.b) * 0.6 + newcolor1.b;
		COLOR.r = r;
		COLOR.g = g;
		COLOR.b = b;
    }
	if(distance(COLOR, oldcolor3) < 0.1)
	{
		r = (COLOR.r - newcolor1.r) * 0.6 + newcolor1.r;
		g = (COLOR.g - newcolor1.g) * 0.6 + newcolor1.g;
		b = (COLOR.b - newcolor1.b) * 0.6 + newcolor1.b;
		COLOR.r = r;
		COLOR.g = g;
		COLOR.b = b;
    }
	if(distance(COLOR, oldcolor4) < 0.1)
	{
		r = (COLOR.r - newcolor1.r) * 0.6 + newcolor1.r;
		g = (COLOR.g - newcolor1.g) * 0.6 + newcolor1.g;
		b = (COLOR.b - newcolor1.b) * 0.6 + newcolor1.b;
		COLOR.r = r;
		COLOR.g = g;
		COLOR.b = b;
    }
	if(distance(COLOR, oldcolor5) < 0.1)
	{
		r = (COLOR.r - newcolor1.r) * 0.6 + newcolor1.r;
		g = (COLOR.g - newcolor1.g) * 0.6 + newcolor1.g;
		b = (COLOR.b - newcolor1.b) * 0.6 + newcolor1.b;
		COLOR.r = r;
		COLOR.g = g;
		COLOR.b = b;
    }
}