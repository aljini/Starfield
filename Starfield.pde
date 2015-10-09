NormalParticle[]partA;





void setup()
{
	
	size(1000, 750);
	
	partA = new NormalParticle[1000];

	for (int i=0;i<1000; i++){

		partA[i]= new NormalParticle();

	partA[i].move();
	partA[i].show();
	}

}
void draw()
{

	background(255);
	for (int i=0;i<1000; i++){
	partA[i].move();
	partA[i].show();
	}
	


	
}
class NormalParticle
{
	double nX,nY,nTheta,nSpeed;
	float saturation,luminance,hue;
	int nR,nG,nB,nWH;
	color colorBright;
	


	NormalParticle(){

		nX =500;
		nY =375;
		nTheta=Math.random()*2*Math.PI;
		nSpeed =(Math.random()*6)+0.0000001;
		nR=(int)(Math.random()*56)+200;
		nG=(int)(Math.random()*56)+200;
		nB=(int)(Math.random()*56)+200;
		nWH=(int)((Math.random()*30)+1);
		
		//if (math.random)
		colorBright= color(0,nG,nB);


	}

	void move(){

		//nX = nX+ Math.cos(nTheta)*nSpeed;
		//nY = nY+ Math.sin(nTheta)*nSpeed;
		if(mousePressed){
			nX = mouseX;
			nY = mouseY;
		}

		if (nX>1000||nX<0){
			nX=500;
			nX = nX+ Math.cos(nTheta)*nSpeed;
		}
		else{
			nX = nX+ Math.cos(nTheta)*nSpeed;
		}

		if (nY>750||nY<0){
			nY=375;
			nY = nY+ Math.sin(nTheta)*nSpeed;
		}
		else{
			nY = nY+ Math.sin(nTheta)*nSpeed;
		}


		

	}

	void show(){
		noStroke();

	ellipse((float)nX,(float)nY, nWH, nWH);
    fill(colorBright);
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

