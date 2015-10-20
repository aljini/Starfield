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
	
	for (int i =0; i<400; i++){

		rainbow[i] = new NormalParticleA();

	}
	
	for (int i =400; i<450; i++){
	;
		rainbow[i] = new JumboParticleA();
	}

	kuromi =loadImage("kuromi.png");
	melody =loadImage("melody.png");
	kuromi.resize(33,31);
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
		//bC = 255;
		background(bC);
	
	for (int i=0;i<450; i++){
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
		nSpeed =(Math.random()*10)+0.001;
		nR=(int)(Math.random()*76)+180;
		nG=(int)(Math.random()*76)+180;
		nB=(int)(Math.random()*76)+180;
		nA =(int)(Math.random()*166+90);
		nWH=(int)((Math.random()*50)+25);
		
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

	}

	public void show(){
		noStroke();

    fill(colorBright);
   
	ellipse((float)nX,(float)nY, nWH, nWH);
	
	}
}



class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticleA extends NormalParticleA
{
	JumboParticleA(){

		nA=255;
		nG=255;

		nWH =100;
	}
}




