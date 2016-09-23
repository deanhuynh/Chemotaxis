Bacteria [] colony;
void setup()   
{     
	colony = new Bacteria[8];
	for(int i = 0; i < colony.length; i++)
	{
		colony[i] = new Bacteria();
	}
	size(400, 400);
}   
void draw()   
{    
	//move and show the bacteria
	for(int i = 0; i < colony.length; i++)
	{
		colony[i].move();
		colony[i].show();
	}
}  
class Bacteria    
{     
	int myX, myY;
	//lots of java!
	Bacteria()
	{
		myX = 400;
		myY = 400;
		fill(34, 139, 34);
	}
	void show()
	{
		ellipse(myX, myY, 10, 10);
	}
	void move()
	{
		myX = myX + (int)(Math.random() * 10) - 5;
		myY = myY + (int)(Math.random() * 10) - 5;
	}
}    