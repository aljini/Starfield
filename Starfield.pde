NormalParticle[]part;

void setup()
{
	
	size(500, 500);
	background(0);
	part = new NormalParticle[1000];

	for (int i=0;i<1000; i++){

		part[i]= new NormalParticle();

	part[i].move();
	part[i].show();
	}
}
void draw()
{
	for (int i=0;i<1000; i++){

	

	part[i].move();
	part[i].show();
	}
	
}
class NormalParticle
{
	double nX,nY,nTheta,nSpeed;
	int nColor;
	NormalParticle(){

		nX =250;
		nY =250;
		nTheta=Math.random()*2*Math.PI;
		nSpeed =(Math.random()*10)+5;
		nColor=255;

	}

	void move(){

		nX = nX+ Math.cos(nTheta)*nSpeed;
		nY = nY+ Math.sin(nTheta)*nSpeed;

	}

	void show(){

    fill(nColor);
	ellipse((int)nX,(int)nY, 10, 10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

