module chipmunk
// chipmunk_types.h
pub type Float = f32
pub type Timestamp = u32
pub type DataPointer = voidptr

[typedef]
struct C.cpVect {
pub mut:
	x Float
	y Float
}
pub type Vect = C.cpVect 

struct C.cpArray
pub type Array = C.cpArray

[typedef]
struct C.cpTransform
pub type Transform = C.cpTransform
