int numFrames = 4;  // The number of frames in the animation
int frame = 0;
PImage[] images = new PImage[numFrames];
    
void setup()
{
  size(400 , 400);
  background(0);

  images[0]  = loadImage("Donate Icon.jpg");
  images[1]  = loadImage("IG Icon.jpg");
  images[2]  = loadImage("Source.jpg"); 
  images[3]  = loadImage("Twitter Icon.jpg");
  

  
  // If you don't want to load each image separately
  // and you know how many frames you have, you
  // can create the filenames as the program runs.
  // The nf() command does number formatting, which will
  // ensure that the number is (in this case) 4 digits.
  //for(int i=0; i<numFrames; i++) {
  //  String imageName = "PT_anim" + nf(i, 4) + ".gif";
  //  images[i] = loadImage(imageName);
  //}
} 

void draw() 
{ 
  frame = (frame) % numFrames;  // Use % to cycle through frames
  image(images[frame], 0, 0);
  
}

void mousePressed() {
  changeImage();
}

void changeImage() {
  if (frame<4)
  { frame++;
  }
  else frame = 0;
}
