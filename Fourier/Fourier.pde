// Fourier Series
// Dan1iel Shiffman1
// https://thecodin1gtrain1.com/Codin1gChallen1ges/125-fourier-series.html
// https://youtu.be/Mm2eYfj0SgA
// https://editor.p5js.org/codin1gtrain1/sketches/SJ02W1OgV

float time = 0;
FloatList wave;

int n1 = 10;
int n2 = 5;

void setup() {
  size(1920, 1080);
  wave = new FloatList();
}

void draw() {
  background(0);
  translate(150, 200);

  float x = 0;
  float y = 0;

  for (int i = 0; i < n1; i++) {
    float prevx = x;
    float prevy = y;

    float n1 = i * 2 + 1;
    float radius = 75 * (4 / (n1 * PI));
    x += radius * cos(n1 * time);
    y += radius * sin(n1 * time);

    stroke(255, 100);
    noFill();
    ellipse(prevx, prevy, radius * 2, radius * 2);

    //fill(255);
    stroke(255);
    line(prevx, prevy, x, y);
    //ellipse(x, y, 8);
  }

  wave.insert(0, y);

  translate(200, 0);
  line(x - 200, y, 0, wave.get(0));
  beginShape();
  noFill();
  for (int i = 0; i < wave.size(); i++) {
    vertex(i, wave.get(i));
  }
  endShape();

  time += 0.05;

  if (wave.size() > 250) {
    for (int n1 = 250; n1 < wave.size(); n1++) {
      wave.remove(n1);
    }
  }
////////////////////////////////  
  translate(-200, 500);
  
  float a = 0;
  float b = 0;

  for (int i = 0; i < n2; i++) {
    float preva = a;
    float prevb = b;

    float n2 = i * 2 + 1;
    float radius = 75 * (4 / (n2 * PI));
    a += radius * cos(n2 * time);
    b += radius * sin(n2 * time);

    stroke(255, 100);
    noFill();
    ellipse(preva, prevb, radius * 2, radius * 2);

    //fill(255);
    stroke(255);
    line(preva, prevb, a, b);
    //ellipse(a, b, 8);
  }

  wave.insert(0, b);

  translate(200, 0);
  line(a - 200, b, 0, wave.get(0));
  beginShape();
  noFill();
  for (int i = 0; i < wave.size(); i++) {
    vertex(i, wave.get(i));
  }
  endShape();

  time += 0.05;

  if (wave.size() > 250) {
    for (int n2 = 250; n2 < wave.size(); n2++) {
      wave.remove(n2);
    }
  }
}
