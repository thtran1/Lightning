int startX = 150;
int startY = 0;
int endX = 150;
int endY = 00;
Cloud a, b, c, d, e, f;
void setup()
{
  size(533,300);
  strokeWeight(2);
  background(0);
  frameRate(60);
  a = new Cloud((int)(Math.random()*834),10,(int)(Math.random()*50)+650, (int)(Math.random()*50)+50);
  b = new Cloud((int)(Math.random()*834),10,(int)(Math.random()*50)+650, (int)(Math.random()*50)+50);
  c = new Cloud((int)(Math.random()*834),10,(int)(Math.random()*50)+650, (int)(Math.random()*50)+50);
  d = new Cloud((int)(Math.random()*834),10,(int)(Math.random()*50)+650, (int)(Math.random()*50)+50);
  e = new Cloud((int)(Math.random()*834),10,(int)(Math.random()*50)+650, (int)(Math.random()*50)+50);
  f = new Cloud((int)(Math.random()*834),10,(int)(Math.random()*50)+650, (int)(Math.random()*50)+50);
}
void draw()
{
	noStroke();
  	fill(0,0,0,20);
  	rect(-100,-100,1000,1000,90);
	int lightning = (int)(Math.random()*200)+50;
	stroke(lightning, lightning, (int)(Math.random()*200)+50);
	while (endY < 300) {
		endX = startX + (int)(random(-9, 9));
		endY = startY + (int)(random(0, 9));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	stroke(200,200,200);
	a.move();
	a.show();
	b.move();
	b.show();
	c.move();
	c.show();
	d.move();
	d.show();
	e.move();
	e.show();
	f.move();
	f.show();
	resetMatrix();
}
class Cloud
{
	int cX, cY, sX, sY;
	Cloud(int x, int y, int sx, int sy)
	{
		cX = x;
		cY = y;
		sX = sx;
		sY = sy;
	}
	void move()
	{
		cX = cX+1;
		int ran = (int)(Math.random()*100)+833;
		if(cX > ran)
		{
			cX = -400;
		}
	}
	void show()
	{
		int col = 200;
		for (int i = 3; i < 4; i++)
		{
			fill(col, col, col);
			ellipse(cX, cY, sX, sY);
		}
	}
}
void mousePressed()
{
	startX = mouseX;
	startY = 0;
	endX = 150;
	endY = 0;
	fill(255,255,255,75);
	rect(-100,-100,1000,1000,80);
}

