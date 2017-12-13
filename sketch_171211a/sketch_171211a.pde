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