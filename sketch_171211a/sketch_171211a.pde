import ddf.minim.*;
import ddf.minim.signals.*;
Minim minim;
AudioPlayer song;
float x = 0;

void setup() {
    fullScreen();
    minim = new Minim(this);
    song = minim.loadFile("Happy New Year.mp3");
    song.play();
    frameRate(60);
}
void draw() { 

fill(0, 0, 0, 90); 
rect(-width / 2, -height / 2, width * 4, height * 4); 
stroke(255, 0, 0); 
strokeWeight(5); 

noStroke(); 
translate(width / 2, height / 2); 
fill(255, 0, 0); 

for (int i = 0; i < song.bufferSize() - 50; i = i + 50) { 
ellipse(0, 0, song.left.get(i) * 300, song.left.get(i) * 300); 
} 

fill(255, 255, 255); 
for (int i = 0; i < song.bufferSize() - 1; i = i + 1) { 
rotate(x); 
ellipse(i, i, song.left.get(i) * 150, song.left.get(i) * 150); 
x = x + 0.000001; 
} 
}