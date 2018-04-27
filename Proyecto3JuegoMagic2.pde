
import processing.sound.*;

int screen;
boolean p1selection = false;
boolean p2selection = false;
boolean loa=false;
int turn;
int lifep1;
int lifep2;
int seleccionado;
int p2seleccionado;

PImage screen0;
PImage screen2;
PImage screen03;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

Creat p1;
Creat p2;
Creat p3;
Creat p4;
Creat p5;
Creat p6;

Creat p1b;
Creat p2b;
Creat p3b;
Creat p4b;
Creat p5b;
Creat p6b;

Creat j1;
Creat j2;


SoundFile soundtrack;
SoundFile load;

int minStrLen;
int maxStrLen;
int charSize = 10;
color strColor = color(64, 192, 64);
char charset[] = {'0', '1'};

MString Strings[];
void setup() {
  size(1280, 720);

  soundtrack = new SoundFile(this, "IHaveNoMouthAndIMustScreamOST11-DemoLoop-JohnOttman.mp3");
  soundtrack.loop();
  load = new SoundFile(this, "TheSoundofQuicksort-teaprog.mp3");
  
  p1 = new Creat("WATSON", 10, round(random(1,4)), 0);
  p2 = new Creat("DEEPMIND", 10, round(random(1,4)), 1);
  p3 = new Creat("THAISUN", 10, round(random(1,4)), 2);
  p4 = new Creat("RRPRS", 10, round(random(1,4)), 3);
  p5 = new Creat("JAPAN", 10, round(random(1,4)), 4);
  p6 = new Creat("AUTOML", 10, round(random(1,4)), 5);

  p1b = new Creat("WATSON", 10, round(random(1,4)), 0);
  p2b = new Creat("DEEPMIND", 10, round(random(1,4)), 1);
  p3b = new Creat("THAISUN", 10, round(random(1,4)), 2);
  p4b = new Creat("RRPRS", 10, round(random(1,4)), 3);
  p5b = new Creat("JAPAN", 10, round(random(1,4)), 4);
  p6b = new Creat("AUTOML", 10, round(random(1,4)), 5);

  screen0= loadImage("fondo1.jpg");
  screen2= loadImage("fondo2.jpg");
  screen03= loadImage("fondo3.jpg");
  img1= loadImage("Agi3.png");
  img2= loadImage("Agi1.png");
  img3= loadImage("Agi2.png");
  img4= loadImage("Agi4.png");
  img5= loadImage("Agi5.png");
  img6= loadImage("Agi6.png");
  
  minStrLen = (height / charSize) / 2;
  maxStrLen = (height / charSize) * 7/ 8;
  
  Strings = new MString[width / charSize];
  
  for (int s = 0; s < Strings.length; s++)
    Strings[s] = new MString(s * charSize);
  
}




void draw() {
   
  switch(screen) {
  case 0:
    intro();
    break;
  case 1:
    historia();
    break;
  case 2:
    selection();
    break;
  case 3:
    loading();
    break;
  case 4:
    juego();
    break;
  case 5:
    fin();
    break;
    
  } 
  println(screen);
}

void intro() {
  int sa = second();
  background(0);
  screen0 = loadImage("fondo1.jpg");
  image(screen0, 0, 0);
   textSize(10);
  for (int s = 0; s < Strings.length; s++)
  {
    Strings[s].move();
    Strings[s].display();
  }
  textSize(60);
  text("AGI-lineacion",400,200);
  textSize(40);
  stroke(2);
  if (sa >= 45){
  text("Presiona para continuar '0'",200,450);
  }
  keyPressed();
  if (key == '0') {
    screen = 1;
  }
}

void historia() {
  int sa = second();
  background(0);
  textSize(10);
  for (int s = 0; s < Strings.length; s++)
  {
    Strings[s].move();
    Strings[s].display();
  }
  fill(255);
  textSize(50);
  text("AGI-lineacion",400,100);
  textSize(20);
  fill(255,255,255,30);
  
  fill(255);
  text("Todo comenzo cuando las compañias lideres en intelegencia artificial. Descidieron crear un algoritmo neuronal general, \n para mejorar a la humanidad. Mientrás se baten por el mercado de quién incursionara en las vidas de la población humana. \n Las inteligencias compiten en el mundo real, para demostrar su dominación sobre las otras. \n Es la lucha por mostrar la cooperación simbiótica que llevará al homo-sapiens, al siguiente escalón en la escala evolutiva\n de su especie. ",50,900-(sa*10));
  
   text("Jugador1 Elige personaje con 'Q' 'W' 'E' 'R' 'T' 'Y'",750,60);
   text("Jugador2 Elige personaje con 'A' 'S' 'D' 'F' 'G' 'H'",750,110);
   textSize(40);
   text("Presiona '9' para pasar a selección.",550,200);
  
  textSize(30);
  text("Jugador1 Ataca con 'Z'",50,100);
  text("Jugador2 Ataca con 'M'",50,200);
  
  keyPressed();
  if (key == '9') {
    screen = 2;
  }
}





void selection() {
  background(0);
  screen2 = loadImage("fondo2.jpg");
  image(screen2, 0, 0);
  textSize(25);
  text("Jugador1 Elige personaje con 'Q' 'W' 'E' 'R' 'T' 'Y'",50,height/2);
  text("Jugador2 Elige personaje con 'A' 'S' 'D' 'F' 'G' 'H'",50,(height/2)+25);
  pushMatrix();
  p1.display();
  translate(0,0);
  popMatrix();
  pushMatrix();
  p2.display();
  translate(0,0);
  popMatrix();
  pushMatrix();
  p3.display();
  translate(0,0);
  popMatrix();
  pushMatrix();
  p4.display();
  translate(0,0);
  popMatrix();
  pushMatrix();
  p5.display();
    translate(0,0);
  popMatrix();
  pushMatrix();
  p6.display();
  translate(0,0);
  popMatrix();
  if (p1selection && p2selection) {
    screen = 3;
    
    turn = round(random(1,2));
  }
  if (keyPressed) {
    switch(key) {
    case 'q':
      j1 = p1;
      lifep1=j1.hp;
      p1selection = true;
      break;
    case 'w':
      j1 = p2;
      lifep1=j1.hp;
      p1selection = true;
      break;
    case 'e':
      j1 = p3;
      lifep1=j1.hp;
      p1selection = true;
      break;
    case 'r':
      j1 = p4;
      lifep1=j1.hp;
      p1selection = true;
      break;
    case 't':
      j1 = p5;
      lifep1=j1.hp;
      p1selection = true;
      break;
    case 'y':
      j1 = p6;
      lifep1=j1.hp;
      p1selection = true;
      break;
    case 'a':
      j2 = p1b;
      lifep2=j2.hp;
      p2selection = true;
      break;
    case 's':
      j2 = p2b;
      lifep2=j2.hp;
      p2selection = true;
      break;
    case 'd':
      j2 = p3b;
      lifep2=j2.hp;
      p2selection = true;
      break;
    case 'f':
      j2 = p4b;
      lifep2=j2.hp;
      p2selection = true;
      break; 
    case 'g':
      j2 = p5b;
      lifep2=j2.hp;
      p2selection = true;
      break;
    case 'h':
      j2 = p6b;
      lifep2=j2.hp;
      p2selection = true;
      break;
    }
  }
}

void loading(){
  int sa = second();
  background(0);
   textSize(10);
  for (int s = 0; s < Strings.length; s++)
  {
    Strings[s].move();
    Strings[s].display();
  }
  textSize(50);
  text("LOADING",550,height/2);
  
  fill(255,255,255,50);
  triangle(100,100,650,100,100,650);
  triangle(550,690,1100,250,1100,690);
  
  line(sa,0,sa,33);
  soundtrack.stop();
  if (p1selection && p2selection && loa==false){
  load.jump(0);
  load.play();
  loa=true;
  }
  if (sa >= 50) {
      load.stop();  
      screen=4;
  }
  if (j1==p1) {
    seleccionado=0;
    p1.loading();
  }
  if (j1==p2) {
    seleccionado=1;
    p2.loading();
  }
  if (j1==p3) {
    seleccionado=2;
    p3.loading();
  }
  if (j1==p4) {
    seleccionado=3;
    p4.loading();
  }
  if(j1==p5){
    seleccionado=4;
    p5.loading();
  }
  if(j1==p6){
    seleccionado=5;
    p6.loading();
  }
    if (j2==p1b) {
    p2seleccionado=0;
    p1.loading();
  }
  if (j2==p2b) {
    p2seleccionado=1;
    p2.loading();
  }
  if (j2==p3b) {
    p2seleccionado=2;
    p3.loading();
  }
  if (j2==p4b) {
    p2seleccionado=3;
    p4.loading();
  }
  if(j2==p5b){
    p2seleccionado=4;
    p5.loading();
  }
  if(j2==p6b){
    p2seleccionado=5;
    p6.loading();
  }
}


void juego() {
  background(0);
  if (p1selection && p2selection && loa==true){
  soundtrack.loop();
  load.stop();
  loa=false;
  }
  screen03 = loadImage("fondo3.jpg");
    textSize(40);
  
  image(screen03, 0, 0);
  text("Jugador1 Ataca con 'Z'        Jugador2 Ataca con 'M'",50,height/3);
  if (j1==p1) {
    seleccionado=0;
    p1.jugando();
  }
  if (j1==p2) {
    seleccionado=1;
    p2.jugando();
  }
  if (j1==p3) {
    seleccionado=2;
    p3.jugando();
  }
  if (j1==p4) {
    seleccionado=3;
    p4.jugando();
  }
  if(j1==p5){
    seleccionado=4;
    p5.jugando();
  }
  if(j1==p6){
    seleccionado=5;
    p6.jugando();
  }
    if (j2==p1b) {
    p2seleccionado=0;
    p1.p2jugando();
  }
  if (j2==p2b) {
    p2seleccionado=1;
    p2.p2jugando();
  }
  if (j2==p3b) {
    p2seleccionado=2;
    p3.p2jugando();
  }
  if (j2==p4b) {
    p2seleccionado=3;
    p4.p2jugando();
  }
  if(j2==p5b){
    p2seleccionado=4;
    p5.p2jugando();
  }
  if(j2==p6b){
    p2seleccionado=5;
    p6.p2jugando();
  }
  
  println(j1.nombre + ","+lifep1+ ",");
  println(j2.nombre + ","+lifep2+ ",");
  if (lifep1 <= 0 || lifep2 <= 0) {
    screen =5;
  }
  switch (turn) {
  case 1:
    keyPressed();
    if ((key=='z') || (key == 'Z') ) {
      lifep2 -= j1.ataque;
      turn = 2;
      j1.attack();
    }
    break;
  case 2:
    keyPressed();
    if ((key=='m') || (key == 'M') ) {
      lifep1 -= j2.ataque;
      turn = 1;
      j1.attack();
    }
    break;
  }
  pushMatrix();
  fill(0,255,0);
  rect(350,50, (lifep1*20),40);
  popMatrix();
  
  pushMatrix();
  fill(0,255,0);
  rect(950,50, (lifep2*20),40);
  popMatrix();
  
}

void fin() {
  background(0);
  textSize(10);
  for (int s = 0; s < Strings.length; s++)
  {
    Strings[s].move();
    Strings[s].display();
  }
  if (lifep1<=0){
    textSize(60);
    text("GANA JUGADOR 2",width/2,height/2);
  }else if(lifep2<=0){
    textSize(60);
    text("GANA JUGADOR 1",width/2,height/2);
  }
  textSize(40);
  text("Presiona el mouse para volver",width/2,600);
  if (mousePressed) {
    screen = 0;
    p1selection = false;
    p2selection = false;
    turn = 0;
    fill(255);
  }
}

//--------


//void movieEvent(Movie movie) {
 // movie.read();
//}