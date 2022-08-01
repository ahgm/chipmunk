module chipmunk

struct C.cpSpace {}

pub type Space = C.cpSpace

fn C.cpSpaceNew() &Space
pub fn space_new() &Space {
	return C.cpSpaceNew()
}

fn C.cpSpaceDestroy(space &Space)
pub fn (space &Space) destroy() {
	C.cpSpaceDestroy(space)
}

fn C.cpSpaceFree(space &Space)
pub fn (space &Space) free() {
	C.cpSpaceFree(space)
}

fn C.cpSpaceGetIterations(space &Space) int
pub fn (space &Space) get_iterations() int {
	return C.cpSpaceGetIterations(space)
}

fn C.cpSpaceSetIterations(space &Space, iterations int)
pub fn (space &Space) set_iterations(iterations int) {
	C.cpSpaceSetIterations(space, iterations)
}

fn C.cpSpaceGetGravity(space &Space) Vect
pub fn (space &Space) get_gravity() Vect {
	return C.cpSpaceGetGravity(space)
}

fn C.cpSpaceSetGravity(space &Space, gravity Vect)
pub fn (space &Space) set_gravity(gravity Vect) {
	C.cpSpaceSetGravity(space, gravity)
}

fn C.cpSpaceGetDamping(space &Space) Float
pub fn (space &Space) get_damping() Float {
	return C.cpSpaceGetDamping(space)
}

fn C.cpSpaceSetDamping(space &Space, damping Float)
pub fn (space &Space) set_damping(damping Float) {
	C.cpSpaceSetDamping(space, damping)
}

fn C.cpSpaceGetIdleSpeedThreshold(space &Space) Float
pub fn (space &Space) get_idle_speed_threshold() Float {
	return C.cpSpaceGetIdleSpeedThreshold(space)
}

fn C.cpSpaceSetIdleSpeedThreshold(space &Space, idle_Speed_threshold Float)
pub fn (space &Space) set_idle_speed_threshold(idle_Speed_threshold Float) {
	C.cpSpaceSetIdleSpeedThreshold(space, idle_Speed_threshold)
}

fn C.cpSpaceGetSleepTimeThreshold(space &Space) Float
pub fn (space &Space) get_sleep_time_threshold() Float {
	return C.cpSpaceGetSleepTimeThreshold(space)
}

fn C.cpSpaceSetSleepTimeThreshold(space &Space, sleep_time_threshold Float)
pub fn (space &Space) set_sleep_time_threshold(gravity Vect, sleep_time_threshold Float) {
	C.cpSpaceSetSleepTimeThreshold(space, sleep_time_threshold)
}

fn C.cpSpaceGetCollisionSlop(space &Space) Float
pub fn (space &Space) get_collision_slop() Float {
	return C.cpSpaceGetCollisionSlop(space)
}

fn C.cpSpaceSetCollisionSlop(space &Space, collision_slop Float)
pub fn (space &Space) set_collision_slop(collision_slop Float) {
	C.cpSpaceSetCollisionSlop(space, collision_slop)
}

fn C.cpSpaceGetCollisionBias(space &Space) Float
pub fn (space &Space) get_collision_bias() Float {
	return C.cpSpaceGetCollisionBias(space)
}

fn C.cpSpaceSetCollisionBias(space &Space, collision_bias Float)
pub fn (space &Space) set_collision_bias(collision_bias Float) {
	C.cpSpaceSetCollisionBias(space, collision_bias)
}

fn C.cpSpaceGetCollisionPersistence(space &Space) Timestamp
pub fn (space &Space) get_collision_persistence() Timestamp {
	return C.cpSpaceGetCollisionPersistence(space)
}

fn C.cpSpaceSetCollisionPersistence(space &Space, collision_persistence Timestamp)
pub fn (space &Space) set_collision_persistence(collision_persistence Timestamp) {
	C.cpSpaceSetCollisionPersistence(space, collision_persistence)
}

fn C.cpSpaceGetUserData(space &Space) DataPointer
pub fn (space &Space) get_user_data() DataPointer {
	return C.cpSpaceGetUserData(space)
}

fn C.cpSpaceSetUserData(space &Space, userData DataPointer)
pub fn (space &Space) set_user_data(userData DataPointer) {
	C.cpSpaceSetUserData(space, userData)
}

fn C.cpSpaceGetStaticBody(space &Space) &Body
pub fn (space &Space) get_static_body() &Body {
	return C.cpSpaceGetStaticBody(space)
}

fn C.cpSpaceGetCurrentTimeStep(space &Space) Float
pub fn (space &Space) get_current_timestep() Float {
	return C.cpSpaceGetCurrentTimeStep(space)
}

fn C.cpSpaceIsLocked(space &Space) bool
pub fn (space &Space) is_locked() bool {
	return C.cpSpaceIsLocked(space)
}

fn C.cpSpaceAddShape(space &Space, shape &Shape) &Shape
pub fn (space &Space) add_shape(shape &Shape) &Shape {
	return C.cpSpaceAddShape(space, shape)
}

fn C.cpSpaceAddBody(space &Space, body &Body) &Body
pub fn (space &Space) add_body(body &Body) &Body {
	return C.cpSpaceAddBody(space, body)
}

// CP_EXPORT cpConstraint* cpSpaceAddConstraint(cpSpace *space, cpConstraint *constraint);

fn C.cpSpaceStep(space &Space, dt Float)
pub fn (space &Space) step(dt Float) {
	C.cpSpaceStep(space, dt)
}
