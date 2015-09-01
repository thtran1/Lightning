int startX = 150;
int startY = 0;
int endX = 150;
int endY = 00;
Cloud a, b;
void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0);
  //frameRate(5);
  a = new Cloud(-150,10);
  b = new Cloud(450,10);
}
void draw()
{
	//background(0);
	a.move();
	a.show();
	System.out.println(a.cX);
	b.move();
	b.show();
	int lightning = (int)(Math.random()*200)+50;
	stroke(lightning, lightning, (int)(Math.random()*200)+50);
	while (endY < 300) {
		endX = startX + (int)(random(-9, 9));
		endY = startY + (int)(random(0, 9));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	resetMatrix();
}
class Cloud
{
	int cX, cY, col;
	Cloud(int x, int y)
	{
		col = 200;
		cX = x;
		cY = y;
	}
	void move()
	{
		cX+=Math.random();
		if(cX > 1000)
		{
			cX = -1000;
		}
	}
	void show()
	{
		for (int i = 3; i < 4; i++)
		{
			fill(col, col, col);
			ellipse(cX, cY, (int)(Math.random()*10)+300, (int)(Math.random()*10)+20);
		}
	}
}
void mousePressed()
{
	startX = mouseX;
	startY = 0;
	endX = 150;
	endY = 0;
	//background(0);
}

