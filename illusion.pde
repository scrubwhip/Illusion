int x = 0;
int y = 0;
int n = 0;
int i = 15;
float xsql = 136;
float xsqr = 145;
float ysq = 40;
float ysqw = 25;

float toprightx = 16;
float toprighty = 25;
float toprightxb = 16;
float opac;
float opacspeed;

void setup(){
frameRate(10);
size(285, 285);
background(255);
noStroke();
opac = 256;
opacspeed = 1;
}

void draw(){
// checkerboard on top half
while(n <= 15){
while(y <= 300){
fill(0);
rect(x, y, 15, 15);
fill(255, 0, 0);
x += 15;
y += 15;
}
x = n*30;
y = 0;
n++;
}

// checkerboard on bottom half
while(i >= 0){
while(y <= 300){
fill(0);
rect(x, y, 15, 15);
x += 15;
y += 15;
}
x = 0;
y = i*30;
i--;
}

// little squares until half vertical center
while(ysq <= 143.5){
fill(255, 255, 255, opac);
rect(xsql, ysqw, 4, 4);
rect(xsqr, ysqw, 4, 4);
fill(0, 0, 0, opac);
rect(xsql, ysq, 4, 4);
rect(xsqr, ysq, 4, 4);
ysq+=30;
ysqw += 30;
}

// little squares after half vertical center
ysq = 151;
ysqw = 166.5;
while(ysq <= 270){
fill(0);
rect(xsql, ysq, 4, 4);
rect(xsqr, ysq, 4, 4);
fill(255);
rect(xsql, ysqw, 4, 4);
rect(xsqr, ysqw, 4, 4);
ysq += 30;
ysqw += 30;
}

// little squares horizontal center before half
ysq = 40;
ysqw = 25;
while(ysq <= 143.5){
fill(255);
rect(ysqw, xsql, 4, 4);
rect(ysqw, xsqr, 4, 4);
fill(0);
rect(ysq, xsql, 4, 4);
rect(ysq, xsqr, 4, 4);
ysq+=30;
ysqw += 30;
}

// little squares horizontal center after half
ysq = 151;
ysqw = 166.5;
while(ysq <= 270){
fill(0);
rect(ysq, xsql, 4, 4);
rect(ysq, xsqr, 4, 4);
fill(255);
rect(ysqw, xsql, 4, 4);
rect(ysqw, xsqr, 4, 4);
ysq += 30;
ysqw += 30;
}

// top left quadrant
while(toprighty <= 140){
toprightx = 16;
while(toprightx <= 123){
fill(255);
rect(toprightx, toprighty, 4, 4);
rect(toprightx+9, toprighty-9, 4, 4);
toprightx+= 15;
}
toprighty += 15;
}

// top right quadrant
toprightx = 151;
toprighty = 16;
while(toprighty <= 125){
toprightx = 151;
while(toprightx <= 270){
fill(255);
rect(toprightx, toprighty, 4, 4);
rect(toprightx+9, toprighty+9, 4, 4);
toprightx+= 15;
}
toprighty += 15;
}

// bottom left quadrant
toprightx = 16;
toprighty = 151;
while(toprighty <= 270){
toprightx = 16;
while(toprightx <= 125){
fill(255);
rect(toprightx, toprighty, 4, 4);
rect(toprightx+9, toprighty+9, 4, 4);
toprightx+= 15;
}
toprighty += 15;
}

// bottom right quadrant
toprightx = 151;
toprighty = 151;
while(toprighty <= 270){
toprightx = 151;
while(toprightx <= 270){
fill(255);
rect(toprightx+9, toprighty, 4, 4);
rect(toprightx, toprighty+9, 4, 4);
toprightx+= 15;
}
toprighty += 15;
}


// cover midsquare
fill(0, 0, 0);
rect(135, 135, 15, 15);

opac -= 50;
}
void mouseMoved(){
System.out.println(mouseX + ":" + mouseY);
}

void mousePressed(){
System.out.println(opac + "Mouse");
}
