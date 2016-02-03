class KochLine {
  PVector start;
  PVector end; 

KochLine(PVector a, PVector b) {
	start = a.get();
	end = b.get();

}


void display() {
	stroke(0);
	line(start.x, start.y, end.x, end.y);
}

}

ArrayList<KochLine> lines;


void setup() {
	size(800, 300);
	background(255);
	lines = new ArrayList<KochLine>();
	PVector start = new PVector(0, height-50);
	PVector end = new PVector(width, height-50);
	lines.add(new KochLine(start, end));
}

// void keyPressed() {
// 	if (key == '') {
// 		generate
// 	}
// }

void draw() {
	background(255);
	for(KochLine l : lines) {
		l.display();
	}
	
}


