size(640, 360);

background(255);
stroke(0);

translate(width/2,height);
line(0,0,0,-150);
translate(0, -150);

pushMatrix();//ここで反転のための下準備。
rotate(PI/4);
line(0,0,0,-100);
popMatrix();//角度をリセットする。

rotate(-PI/4);
line(0,0,0,-100);


