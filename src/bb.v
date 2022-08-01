module chipmunk

[typedef]
struct C.cpBB {
pub mut:
	l Float
	b Float
	r Float
	t Float
}

pub type BB = C.cpBB
