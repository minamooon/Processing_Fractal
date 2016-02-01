void setup(){
	size(640, 360);
}

void draw(){
	background(255);
	drawCircle(width/2, height/2, 300);

}

void drawCircle(float x, float y, float d) {
	stroke(0);
	noFill();
	ellipse(x, y, d, d);

	if (d > 10) {
		drawCircle(x+d/2, y, d/2);
		drawCircle(x-d/2, y, d/2);
		}
	

}

