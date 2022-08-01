module chipmunk

struct C.cpShape {}

pub type Shape = C.cpShape

fn C.cpShapeDestroy(shape &Shape)
fn C.cpShapeFree(shape &Shape)

// C.cpBB cpShapeCacheBB(shape &Shape)
// C.cpBB cpShapeUpdate(shape &Shape, cpTransform transform)

// Float cpShapePointQuery( shape &Shape, Vect p, cpPointQueryInfo *out)

// bool cpShapeSegmentQuery( shape &Shape, Vect a, Vect b, Float radius, cpSegmentQueryInfo *info)

// cpContactPointSet cpShapesCollide( Shape *a,  Shape *b)

fn C.cpShapeGetSpace(shape &Shape) &Space
pub fn (shape &Shape) get_space() &Space {
	return C.cpShapeGetSpace(shape)
}

fn C.cpShapeGetBody(shape &Shape) &Body
pub fn (shape &Shape) get_body() &Body {
	return C.cpShapeGetBody(shape)
}

fn C.cpShapeSetBody(shape &Shape, body &Body)
pub fn (shape &Shape) set_body(body &Body) {
	C.cpShapeSetBody(shape, body)
}

fn C.cpShapeGetMass(shape &Shape) Float
pub fn (shape &Shape) get_mass() Float {
	return C.cpShapeGetMass(shape)
}

fn C.cpShapeSetMass(shape &Shape, mass Float)
pub fn (shape &Shape) set_mass(mass Float) {
	C.cpShapeSetMass(shape, mass)
}

fn C.cpShapeGetDensity(shape &Shape) Float
pub fn (shape &Shape) get_density() Float {
	return C.cpShapeGetDensity(shape)
}

fn C.cpShapeSetDensity(shape &Shape, density Float)
pub fn (shape &Shape) set_density(density Float) {
	C.cpShapeSetDensity(shape, density)
}

fn C.cpShapeGetMoment(shape &Shape) Float
pub fn (shape &Shape) get_moment() Float {
	return C.cpShapeGetMoment(shape)
}

fn C.cpShapeGetArea(shape &Shape) Float
pub fn (shape &Shape) get_area() Float {
	return C.cpShapeGetArea(shape)
}

fn C.cpShapeGetCenterOfGravity(shape &Shape) Vect
pub fn (shape &Shape) get_center_of_gravity() Vect {
	return C.cpShapeGetCenterOfGravity(shape)
}

// fn cpBB cpShapeGetBB( shape &Shape)

fn C.cpShapeGetSensor(shape &Shape) bool
fn C.cpShapeSetSensor(shape &Shape, sensor bool)

fn C.cpShapeGetElasticity(shape &Shape) Float
fn C.cpShapeSetElasticity(shape &Shape, elasticity Float)
pub fn (shape &Shape) set_elasticity(elasticity Float) {
	C.cpShapeSetElasticity(shape, elasticity)
}

fn C.cpShapeGetFriction(shape &Shape) Float
fn C.cpShapeSetFriction(shape &Shape, friction Float)
pub fn (shape &Shape) set_friction(friction Float) {
	C.cpShapeSetFriction(shape, friction)
}

fn C.cpShapeGetSurfaceVelocity(shape &Shape) Vect
fn C.cpShapeSetSurfaceVelocity(shape &Shape, surfaceVelocity Vect)

// fn cpDataPointer cpShapeGetUserData( shape &Shape)
// fn cpShapeSetUserData(shape &Shape, cpDataPointer userData)

// fn C.cpShapeGetCollisionType(shape &Shape)C.cpCollisionType
// fn cpShapeSetCollisionType(shape &Shape, cpCollisionType collisionType)

// fn cpShapeFilter cpShapeGetFilter( shape &Shape)
// fn cpShapeSetFilter(shape &Shape, cpShapeFilter filter)

struct C.cpCircleShape {}

type CircleShape = C.cpCircleShape

// fn cpCircleShape* cpCircleShapeAlloc()
// fn cpCircleShape* cpCircleShapeInit(cpCircleShape *circle,body &Body, Float radius, Vect offset)
fn C.cpCircleShapeNew(body &Body, radius Float, offset Vect) &Shape
pub fn circle_shape_new(body &Body, radius Float, offset Vect) &Shape {
	return C.cpCircleShapeNew(body, radius, offset)
}

fn C.cpCircleShapeGetOffset(shape &CircleShape) Vect
pub fn (shape &CircleShape) get_offset() Vect {
	return C.cpCircleShapeGetOffset(shape)
}

fn C.cpCircleShapeGetRadius(shape &CircleShape) Float
pub fn (shape &CircleShape) get_radius() Float {
	return C.cpCircleShapeGetRadius(shape)
}

struct C.cpSegmentShape {}

type SegmentShape = C.cpSegmentShape

// fn cpSegmentShape* cpSegmentShapeAlloc()
// fn cpSegmentShape* cpSegmentShapeInit(cpSegmentShape *seg,body &Body, Vect a, Vect b, Float radius)
fn C.cpSegmentShapeNew(body &Body, a Vect, b Vect, radius Float) &Shape
pub fn segment_shape_new(body &Body, a Vect, b Vect, radius Float) &Shape {
	return C.cpSegmentShapeNew(body, a, b, radius)
}

fn C.cpSegmentShapeSetNeighbors(shape &SegmentShape, prev Vect, next Vect)
pub fn (shape &SegmentShape) set_neighbors(prev Vect, next Vect) {
	C.cpSegmentShapeSetNeighbors(shape, prev, next)
}

fn C.cpSegmentShapeGetA(shape &SegmentShape) Vect
pub fn (shape &SegmentShape) get_a() Vect {
	return C.cpSegmentShapeGetA(shape)
}

fn C.cpSegmentShapeGetB(shape &SegmentShape) Vect
pub fn (shape &SegmentShape) get_b() Vect {
	return C.cpSegmentShapeGetB(shape)
}

fn C.cpSegmentShapeGetNormal(shape &SegmentShape) Vect
pub fn (shape &SegmentShape) get_normal() Vect {
	return C.cpSegmentShapeGetNormal(shape)
}

fn C.cpSegmentShapeGetRadius(shape &SegmentShape) Float
pub fn (shape &SegmentShape) get_radius() Float {
	return C.cpSegmentShapeGetRadius(shape)
}
