float theta;

void setup() {
	size(500, 500);
}

void draw() {
	background(0);
	theta = map(mouseX,0,width,0,PI/2);

	translate(width/2, height);
	stroke(255);
	branch(100);
}


void branch(float len){
	line(0,0,0,-len);
	translate(0, -len);

	len *= 0.66;

	if (len > 2) {
		pushMatrix();
		rotate(theta);
		branch(len);
		popMatrix();

		pushMatrix();
		rotate(-theta);
		branch(len);
		popMatrix();
	}

}

