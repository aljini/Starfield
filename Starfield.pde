NormalParticle[]partA;



void setup()
{
	
	size(1000, 750);
	background(0);
	partA = new NormalParticle[1000];

	for (int i=0;i<1000; i++){

		partA[i]= new NormalParticle();

	partA[i].move();
	partA[i].show();
	}

}
void draw()
{

	background(0);
	for (int i=0;i<1000; i++){
	partA[i].move();
	partA[i].show();
	}
	


	
}
class NormalParticle
{
	double nX,nY,nTheta,nSpeed;
	int nR,nG,nB,nWH;
	
	NormalParticle(){

		nX =500;
		nY =250;
		nTheta=Math.random()*2*Math.PI;
		nSpeed =(Math.random()*10)+0.0000001;
		nR=(int)(Math.random()*256);
		nG=(int)(Math.random()*256);
		nB=(int)(Math.random()*256);
		nWH=(int)((Math.random()*20)+1);

	}

	void move(){

		nX = nX+ Math.cos(nTheta)*nSpeed;
		nY = nY+ Math.sin(nTheta)*nSpeed;

	}

	void show(){
		noStroke();
    fill(nR,nG,nB);
	ellipse((float)nX,(float)nY, nWH, nWH);
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

