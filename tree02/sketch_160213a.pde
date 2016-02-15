float theta;

void setup() {
	size(500, 400);
}

void draw() {
	background(255);
	theta = map(mouseX, 0, width, 0, PI/2);//map(a,b,c,d);aを範囲b-cから別の範囲d-eへ変換する。

	translate(width/2, height);
	stroke(0);
	branch(120);
	
}

void branch(float len) {
	float sw = map(len, 2, 120, 1, 10);
	strokeWeight(sw);//枝の太さを徐々に細く。この辺仕組みがよくわからない。。。
	line(0, 0, 0, -len);
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
//tes