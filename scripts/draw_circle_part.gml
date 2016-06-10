///draw_circle_part(x,y,r,angle1,angle2,col1,col2,alp//ha1,alpha2)
//script by smaza2//no credit necesary
//arguments...
//arg0 = x
//arg1 = y
//arg2 = radius
//arg3 = start angle
//arg4 = end angle
//arg5 = inside colour
//arg6 = outside colour
//arg7 = inside alpha
//arg8 = outside alpha



var iidir, iihig, iilow;

if argument3>argument4{iihig=argument3 iilow=argument4}
if argument4>argument3{iihig=argument4 iilow=argument3}
iidir = iilow
draw_primitive_begin(pr_trianglefan)
draw_set_color(argument5)draw_set_alpha(argument7)
draw_vertex(argument0,argument1)
do
{draw_set_color(argument6)
draw_set_alpha(argument8)
draw_vertex(argument0+lengthdir_x(argument2,iidir),argument1+lengthdir_y(argument2,iidir))
iidir += 1}
until (iidir=iihig+1)draw_primitive_end()
