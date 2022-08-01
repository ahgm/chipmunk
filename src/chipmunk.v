module chipmunk

fn C.cpMomentForCircle(m Float, r1 Float, r2 Float, offset Vect) Float
pub fn moment_for_circle(m Float, r1 Float, r2 Float, offset Vect) Float {
	return C.cpMomentForCircle(m, r1, r2, offset)
}

fn C.cpAreaForCircle(r1 Float, r2 Float) Float
pub fn area_for_circle(r1 Float, r2 Float) Float {
	return C.cpAreaForCircle(r1, r2)
}

fn C.cpMomentForSegment(m Float, a Vect, b Vect, radius Float) Float
pub fn moment_for_segment(m Float, a Vect, b Vect, radius Float) Float {
	return C.cpMomentForSegment(m, a, b, radius)
}

fn C.cpAreaForSegment(a Vect, b Vect, radius Float) Float
pub fn area_for_segment(a Vect, b Vect, radius Float) Float {
	return C.cpAreaForSegment(a, b, radius)
}

fn C.cpMomentForPoly(m Float, count int, verts &Vect, offset Vect, radius Float) Float
pub fn moment_for_poly(m Float, count int, verts &Vect, offset Vect, radius Float) Float {
	return C.cpMomentForPoly(m, count, verts, offset, radius)
}

fn C.cpAreaForPoly(count int, verts &Vect, radius Float) Float
pub fn area_for_poly(count int, verts &Vect, radius Float) Float {
	return C.cpAreaForPoly(count, verts, radius)
}

fn C.cpCentroidForPoly(count int, verts &Vect) Vect
pub fn centroid_for_poly(count int, verts &Vect) Vect {
	return C.cpCentroidForPoly(count, verts)
}

fn C.cpMomentForBox(m Float, width Float, height Float) Float
pub fn moment_for_box(m Float, width Float, height Float) Float {
	return C.cpMomentForBox(m, width, height)
}

fn C.cpMomentForBox2(m Float, box BB) Float
pub fn moment_for_box2(m Float, box BB) Float {
	return C.cpMomentForBox2(m,box)
}

fn C.cpConvexHull(count int, verts &Vect, result &Vect, first &int, tol Float) int
