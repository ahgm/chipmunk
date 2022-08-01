module chipmunk

struct C.cpBody {}

pub type Body = C.cpBody

[typedef]
pub enum BodyType {
	dynamic
	kinematic
	@static
}

fn C.cpBodyNew(mass Float, moment Float) &Body
pub fn body_new(mass Float, moment Float) &Body {
	return C.cpBodyNew(mass, moment)
}

fn C.cpBodyNewKinematic() &Body
pub fn body_new_kinematic() &Body {
	return C.cpBodyNewKinematic()
}

fn C.cpBodyNewStatic() &Body
pub fn body_new_static() &Body {
	return C.cpBodyNewStatic()
}

fn C.cpBodyDestroy(body &Body)
pub fn (body &Body) destory() {
	C.cpBodyDestroy(body)
}

fn C.cpBodyFree(body &Body)
pub fn (body &Body) free() {
	C.cpBodyFree(body)
}

// Defined in cpSpace.c
fn C.cpBodyActivate(body &Body)
pub fn (body &Body) activate() {
	C.cpBodyActivate(body)
}

fn C.cpBodyActivateStatic(body &Body, filter &Shape)
pub fn (body &Body) activate_static(filter &Shape) {
	C.cpBodyActivateStatic(body, filter)
}

fn C.cpBodySleep(body &Body)
pub fn (body &Body) sleep() {
	C.cpBodySleep(body)
}

fn C.cpBodySleepWithGroup(body &Body, group &Body)
pub fn (body &Body) sleep_with_group(group &Body) {
	C.cpBodySleepWithGroup(body, group)
}

fn C.cpBodyIsSleeping(body &Body) bool
pub fn (body &Body) is_sleeping() bool {
	return C.cpBodyIsSleeping(body)
}

fn C.cpBodyGetType(body &Body) BodyType
pub fn (body &Body) get_type() BodyType {
	return C.cpBodyGetType(body)
}

fn C.cpBodySetType(body &Body, @type BodyType)
pub fn (body &Body) set_type(@type BodyType) {
	C.cpBodySetType(body, @type)
}

fn C.cpBodyGetSpace(body &Body) &Space
pub fn (body &Body) get_space() &Space {
	return C.cpBodyGetSpace(body)
}

fn C.cpBodyGetMass(body &Body) Float
pub fn (body &Body) get_mass() Float {
	return C.cpBodyGetMass(body)
}

fn C.cpBodySetMass(body &Body, m Float)
pub fn (body &Body) set_mass(m Float) {
	C.cpBodySetMass(body, m)
}

fn C.cpBodyGetMoment(body &Body) Float
pub fn (body &Body) get_moment() Float {
	return C.cpBodyGetMoment(body)
}

fn C.cpBodySetMoment(body &Body, i Float)
pub fn (body &Body) set_moment(i Float) {
	C.cpBodySetMoment(body, i)
}

fn C.cpBodySetPosition(body &Body, pos Vect)
pub fn (body &Body) set_position(pos Vect) {
	C.cpBodySetPosition(body, pos)
}

fn C.cpBodyGetPosition(body &Body) Vect
pub fn (body &Body) get_position() Vect {
	return C.cpBodyGetPosition(body)
}

fn C.cpBodyGetCenterOfGravity(body &Body) Vect
pub fn (body &Body) get_center_of_gravity() Vect {
	return C.cpBodyGetCenterOfGravity(body)
}

fn C.cpBodySetCenterOfGravity(body &Body, cog Vect)
pub fn (body &Body) set_center_of_gravity(cog Vect) {
	C.cpBodySetCenterOfGravity(body, cog)
}

fn C.cpBodyGetVelocity(body &Body) Vect
pub fn (body &Body) get_velocity() Vect {
	return C.cpBodyGetVelocity(body)
}

fn C.cpBodySetVelocity(body &Body, velocity Vect)
pub fn (body &Body) set_velocity(velocity Vect) {
	C.cpBodySetVelocity(body, velocity)
}

fn C.cpBodyGetForce(body &Body) Vect
pub fn (body &Body) get_force() Vect {
	return C.cpBodyGetForce(body)
}

fn C.cpBodySetForce(body &Body, force Vect)
pub fn (body &Body) set_force(force Vect) {
	C.cpBodySetForce(body, force)
}

fn C.cpBodyGetAngle(body &Body) Float
pub fn (body &Body) get_angle() Float {
	return C.cpBodyGetAngle(body)
}

fn C.cpBodySetAngle(body &Body, a Float)
pub fn (body &Body) set_angle(a Float) {
	C.cpBodySetAngle(body, a)
}

fn C.cpBodyGetAngularVelocity(body &Body) Float
pub fn (body &Body) get_angular_velocity() Float {
	return C.cpBodyGetAngularVelocity(body)
}

fn C.cpBodySetAngularVelocity(body &Body, angularVelocity Float)
pub fn (body &Body) set_angular_velocity(angularVelocity Float) {
	C.cpBodySetAngularVelocity(body, angularVelocity)
}

fn C.cpBodyGetTorque(body &Body) Float
pub fn (body &Body) get_torque() Float {
	return C.cpBodyGetTorque(body)
}

fn C.cpBodySetTorque(body &Body, torque Float)
pub fn (body &Body) set_torque(torque Float) {
	C.cpBodySetTorque(body, torque)
}

fn C.cpBodyGetRotation(body &Body) Vect
pub fn (body &Body) get_rotation() Vect {
	return C.cpBodyGetRotation(body)
}

// cpDataPointer cpBodyGetUserData(body &Body)
// void cpBodySetUserData(body &Body, cpDataPointer userData)

// void cpBodySetVelocityUpdateFunc(body &Body, cpBodyVelocityFunc velocityFunc)
// void cpBodySetPositionUpdateFunc(body &Body, cpBodyPositionFunc positionFunc)

// void cpBodyUpdateVelocity(body &Body, Vect gravity, Float damping, Float dt)
// void cpBodyUpdatePosition(body &Body, Float dt)

fn C.cpBodyLocalToWorld(body &Body, point Vect) Vect
pub fn (body &Body) local_to_world(point Vect) Vect {
	return C.cpBodyLocalToWorld(body, point)
}

fn C.cpBodyWorldToLocal(body &Body, point Vect) Vect
pub fn (body &Body) world_to_local(point Vect) Vect {
	return C.cpBodyWorldToLocal(body, point)
}

fn C.cpBodyApplyForceAtWorldPoint(body &Body, force Vect, point Vect)
pub fn (body &Body) apply_force_at_world_point(force Vect, point Vect) {
	C.cpBodyApplyForceAtWorldPoint(body,force, point)
}

fn C.cpBodyApplyForceAtLocalPoint(body &Body, force Vect, point Vect)
pub fn (body &Body) apply_force_at_local_point(force Vect, point Vect)
{
	C.cpBodyApplyForceAtLocalPoint(body,force, point)
}

fn C.cpBodyApplyImpulseAtWorldPoint(body &Body, impulse Vect, point Vect)
pub fn (body &Body) apply_impulse_at_world_point( impulse Vect, point Vect) {
	C.cpBodyApplyImpulseAtWorldPoint(body,impulse, point)
}
fn C.cpBodyApplyImpulseAtLocalPoint(body &Body, impulse Vect, point Vect)
pub fn (body &Body) apply_impulse_at_local_point( impulse Vect, point Vect){
	C.cpBodyApplyImpulseAtLocalPoint(body,impulse, point)
}

fn C.cpBodyGetVelocityAtWorldPoint(body &Body, point Vect) Vect
pub fn (body &Body) get_velocity_at_world_point(point Vect) Vect {
	return C.cpBodyWorldToLocal(body, point)
}
fn C.cpBodyGetVelocityAtLocalPoint(body &Body, point Vect) Vect
pub fn (body &Body) get_velocity_at_local_point(point Vect) Vect {
	return C.cpBodyGetVelocityAtLocalPoint(body, point)
}

fn C.cpBodyKineticEnergy(body &Body) Float
pub fn (body &Body) kinetic_energy() Float {
	return C.cpBodyKineticEnergy(body)
}

// typedef void (*cpBodyShapeIteratorFunc)(body &Body,shape, &Shape void *data)
// void cpBodyEachShape(body &Body, cpBodyShapeIteratorFunc func, void *data)

// typedef void (*cpBodyConstraintIteratorFunc)(body &Body, cpConstraint *constraint, void *data)
// void cpBodyEachConstraint(body &Body, cpBodyConstraintIteratorFunc func, void *data)

// typedef void (*cpBodyArbiterIteratorFunc)(body &Body, cpArbiter *arbiter, void *data)
// void cpBodyEachArbiter(body &Body, cpBodyArbiterIteratorFunc func, void *data)
