module chipmunk
struct C.cpPolyShape
pub type PolyShape = C.cpPolyShape

// &PolyShape cpPolyShapeAlloc(void)
// &PolyShape cpPolyShapeInit(cpPolyShape *poly, body &Body, count int,verts &Vect,transform Transform, radius Float)

// &PolyShape cpPolyShapeInitRaw(cpPolyShape *poly, body &Body, count int,verts &Vect, Float radius)
fn C.cpPolyShapeNew(body &Body, count int,verts &Vect,transform Transform, radius Float)&PolyShape
fn C.cpPolyShapeNewRaw(body &Body, count int,verts &Vect, radius Float)&Shape

// fn C.&PolyShape cpBoxShapeInit2(cpPolyShape *poly, body &Body, cpBB box, radius Float)
// fn C.&PolyShape cpBoxShapeInit(cpPolyShape *poly, body &Body, Float width, Float height, radius Float)
fn C.cpBoxShapeNew(body &Body,width Float,height Float, radius Float)&Shape
pub fn box_shape_new(body &Body,width Float,height Float, radius Float)&Shape{
	return C.cpBoxShapeNew(body,width,height,radius)
}
fn C.cpBoxShapeNew2(body &Body,box C.cpBB, radius Float)&Shape
pub fn box_shape_new2(body &Body,box C.cpBB, radius Float)&Shape{
	return C.cpBoxShapeNew2(body,box,radius)
}

fn C.cpPolyShapeGetCount(shape &PolyShape)int
pub fn (shape &PolyShape) get_count()int{
	return C.cpPolyShapeGetCount(shape)
}

fn C.cpPolyShapeGetVert(shape &PolyShape,index  int)Vect
pub fn (shape &PolyShape) get_vert(index  int)Vect{
	return C.cpPolyShapeGetVert(shape , index)
}
fn C.cpPolyShapeGetRadius(shape &PolyShape)Float
pub fn (shape &PolyShape) get_radius()Float{
	return C.cpPolyShapeGetRadius(shape)
}
