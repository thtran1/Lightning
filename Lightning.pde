int startX = 150;
int startY = 0;
int endX = 150;
int endY = 00;

void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0);
}
void draw()
{
	stroke(random(0,255), random(0,255), 0);
	while (endX < 300) {
		endX = startX + (int)(random(-9, 9));
		endY = startY + (int)(random(0, 9));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
}

