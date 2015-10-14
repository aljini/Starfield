Particle []rainbow;
int bR;
int bG;
int bB;

void setup()
{
	
	size(1000, 750);

	rainbow = new Particle[1000];
	
	for (int i =0; i<200; i++){

		rainbow[i] = new NormalParticleA();
	}
	for (int i =200; i<400; i++){

		rainbow[i] = new NormalParticleB();
	}
	for (int i =400; i<600; i++){

		rainbow[i] = new NormalParticleC();
	}

		

}
void draw()
{

	

		int bR=(int)(Math.random()*56)+200;
		int bG=(int)(Math.random()*56)+200;
		int bB=(int)(Math.random()*56)+200;
	
	if(mousePressed){

		background(bR,bG,bB);

		
	}

	for (int i=0;i<400; i++){
		rainbow[i].show();
		rainbow[i].move();

	}
	
}

interface Particle
{
	public void move();
	public void show();

}

class NormalParticleA implements Particle
{
	double nX,nY,nTheta,nSpeed;
	float saturation,luminance,hue;
	int nR,nG,nB,nWH,nA;
	color colorBright;
	


	NormalParticleA(){

		nX =500;
		nY =375;
		nTheta=Math.random()*2*Math.PI;
		nSpeed =(Math.random()*3)+0.01;
		nR=(int)(Math.random()*56)+200;
		nG=(int)(Math.random()*56)+200;
		nB=(int)(Math.random()*56)+200;
		nA =(int)(Math.random()*56+200);
		nWH=(int)((Math.random()*50)+1);
		
		//if (math.random)
		colorBright= color(nR,nG,255,nA);


	}

	public void move(){

		nX = nX+ Math.cos(nTheta)*nSpeed;
		nY = nY+ Math.sin(nTheta)*nSpeed;
		if(mousePressed){
			nX = mouseX;
			nY = mouseY;
		}

		//if (nX>1000||nX<0){
			//nX=mouseX;
			//nX = nX+ Math.cos(nTheta)*nSpeed ;
	//	}
		//else{
		//nX = nX+ Math.cos(nTheta)*nSpeed ;
	//	}

	//	if (nY>750||nY<0){
	///		nY=mouseY;
		//nY = nY+ Math.sin(nTheta)*nSpeed ;
		//}
		//else{
		//	nY = nY+ Math.sin(nTheta)*nSpeed;
		//}


		

	}

	public void show(){
		noStroke();

    fill(colorBright);
   
	ellipse((float)nX,(float)nY, nWH, nWH);
	
	}
}

class NormalParticleB extends NormalParticleA{

	NormalParticleB(){

		nR=(int)(Math.random()*56)+200;
		nG=(int)(Math.random()*56)+200;
		nB=(int)(Math.random()*56)+200;
		colorBright=color(255,nG,nB,nA);
	}
}

class NormalParticleC extends NormalParticleA{

	NormalParticleC(){
		nR=(int)(Math.random()*56)+200;
		nG=(int)(Math.random()*56)+200;
		nB=(int)(Math.random()*56)+200;
		colorBright=color(nR,255,nB,nA);
	}
}

class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

