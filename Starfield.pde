Particle []rainbow;
int bR;
int bG;
int bB;
int bC=255;
PImage kuromi;
PImage melody;
void setup()
{
	
	size(1000, 750);

	rainbow = new Particle[1000];
	
	for (int i =0; i<500; i++){

		rainbow[i] = new NormalParticleA();

	}
	
	for (int i =500; i<550; i++){
	;
		rainbow[i] = new JumboParticleA();
	}

	rainbow[550] = new OddballParticle();

	kuromi =loadImage("kuromi.png");
	melody =loadImage("melody.png");
	kuromi.resize(80,85);
	melody.resize(33,33);
		

}

void mouseClicked(){

	if ( bC==255){
		bC=0;
	}
	else {
		bC=255;
	}
	System.out.println(bC);
	
}

void draw()

{
		
		background(bC);
	
	for (int i=0;i<551; i++){
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
	int nR,nG,nB,nWH,nA;
	color colorBright;
	


	NormalParticleA(){

		nX =500;
		nY =375;
		nTheta=Math.random()*2*Math.PI;
		nSpeed =(Math.random()*8)+0.001;
		nR=(int)(Math.random()*76)+180;
		nG=(int)(Math.random()*76)+180;
		nB=(int)(Math.random()*76)+180;
		nA =(int)(Math.random()*166+90);
		nWH=(int)((Math.random()*50)+25);
		
	
		colorBright= color(nR,nG,255,nA);
		

	}

	public void move(){

		nX = nX+ Math.cos(nTheta)*nSpeed;
		nY = nY+ Math.sin(nTheta)*nSpeed;
		if(mousePressed){
			nX = mouseX;
			nY = mouseY;
		}

	}

	public void show(){
		noStroke();

    fill(colorBright);
   
	ellipse((float)nX,(float)nY, nWH, nWH);
	
	}
}



class OddballParticle implements Particle{

	double kX,kY,kTheta,kSpeed;

	OddballParticle(){

		kX=450;
		kY=350;
		kTheta=Math.random()*2*Math.PI;
		kSpeed =7;

	}

	public void move(){

		kX=kX+Math.cos(kTheta)*kSpeed;
		kY=kY+Math.sin(kTheta)*kSpeed;
		
		if(mousePressed){
			kX = mouseX-45;
			kY = mouseY-50;
		}

		if(kX>970||kX<30){

			kTheta = kTheta + (Math.PI/2)*((int)(Math.random()*5));
		}

		if(kY>720||kY<30){
			kTheta = kTheta + (Math.PI/2)*((int)(Math.random()*5));
		}

	}
	public void show(){

		image(kuromi,(int)kX,(int)kY);

	}

}
class JumboParticleA extends NormalParticleA
{
	JumboParticleA(){

		nA=255;
		nG=255;

		nWH =100;
	}
}




