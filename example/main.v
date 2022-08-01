import raylibv as ray
import chipmunk as cp
import math
fn main() {
	ray.init_window(800, 600, 'chipmunk demo'.str)
	ray.set_target_fps(60)
	
	gravity := cp.Vect{0, 100}
	space := cp.space_new()
	space.set_gravity(gravity)
	
	ground_start := cp.Vect{0, 100}
	ground_end := cp.Vect{400, 300}
	ground := cp.segment_shape_new(space.get_static_body(), ground_start,ground_end,5)
  	ground.set_friction(0)
  	space.add_shape(ground)

	ground_start2 := cp.Vect{400, 500}
	ground_end2 := cp.Vect{800, 400}
	ground2 := cp.segment_shape_new(space.get_static_body(), ground_start2,ground_end2,5)
  	ground2.set_friction(1)
  	space.add_shape(ground2)

	radius := 25
	mass := 100
	mut circle_pos := cp.Vect{300,10}
	mut box_rec := ray.Rectangle{300,100,100,100}
	mut box_rotation := f32(0)

	ball_moment := cp.moment_for_circle(mass, 0, radius, cp.Vect{0,0})
	box_moment := cp.moment_for_box(mass,box_rec.width,box_rec.height)

	ball_body := space.add_body(cp.body_new(mass, ball_moment))
	box_body := space.add_body(cp.body_new(mass,box_moment))

	ball_body.set_position(circle_pos)
	box_body.set_position(cp.Vect{box_rec.x,box_rec.y})
	
	ball_shape := space.add_shape(cp.circle_shape_new(ball_body, radius, cp.Vect{0,0}))
	ball_shape.set_elasticity(0)
	ball_shape.set_friction(1)

	box_shape := space.add_shape(cp.box_shape_new(box_body,box_rec.width,box_rec.height,0))
	box_shape.set_elasticity(0)
	box_shape.set_friction(1)
	


	for !ray.window_should_close() {
		ray.begin_drawing()
		ray.clear_background(ray.Color{255, 255, 255, 0})
		ray.draw_circle_sector(ray.Vector2{circle_pos.x,circle_pos.y},radius,20-f32(math.degrees(ball_body.get_angle())),340-f32(math.degrees(ball_body.get_angle())),32,ray.Color{0,255,0,255})
		// ray.draw_line_ex(ray.Vector2{circle_pos.x,circle_pos.y},ray.Vector2{circle_pos.x+radius*f32(math.sin(math.degrees(box_body.get_angle()))),circle_pos.y+radius*f32(math.cos(math.degrees(box_body.get_angle())))},10,ray.Color{0,0,255,255})
		ray.draw_rectangle_pro(box_rec,ray.Vector2{box_rec.width/2,box_rec.height/2},box_rotation,ray.Color{0,0,0,255})
		ray.draw_fps(0,0)
		ray.draw_line_ex(ray.Vector2{ground_start.x,ground_start.y},ray.Vector2{ground_end.x,ground_end.y},10, ray.Color{255,0,0,255})
		ray.draw_line_ex(ray.Vector2{ground_start2.x,ground_start2.y},ray.Vector2{ground_end2.x,ground_end2.y},10, ray.Color{255,0,0,255})
		ray.end_drawing()
		
		//physic solver
		circle_pos = ball_body.get_position()
		box_rec.x = box_body.get_position().x
		box_rec.y = box_body.get_position().y
		box_rotation = f32(math.degrees(box_body.get_angle()))
		space.step(ray.get_frame_time())
	}
	ray.close_window()
}
