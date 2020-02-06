

PImage img;
PImage hi;
public void setup()
{
	size(400,400);
	imageMode(CENTER);

	hi = loadImage("sponge_bob_world.jpg");
	img = loadImage("SpongeBob.png");
}

public void draw()
{
	
	image(hi,200,200,width*1.1,height*1.1);
	myFractal(200,200,width,height);
	
	// image(img,100,100,width/2,height/2);

}

public void myFractal(float x, float y, float w, float h)
{
	image(img,x,y,w,h);
	if(w>40 && h>40)
	{
		myFractal(x-w/2, y,w/2,h/2);
		myFractal(x+w/2, y, w/2, h/2);
		

	}


}




