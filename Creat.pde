interface AGI{
  void loading();
  void attack();  
}

class Creat implements AGI {
  String nombre;
  int hp;
  int ataque;
  int tipo;


  Creat(String nombre_, int hp_, int ataque_, int tipo_) {
    nombre =nombre_;
    hp = hp_;
    ataque = ataque_;
    tipo = tipo_;
  }

  void display() {

    switch(tipo) {
    case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(0, 0);
      image(img1, 0, 0);
      popMatrix();
      break;
    case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(400, 0);
      image(img2, 0, 0);
      popMatrix();
      break;
    case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(800, 0);
      image(img3, 0, 0);
      popMatrix();
      break;
    case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(0, 400);
      image(img4, 0, 0);
      popMatrix();
      break;
    case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(400, 400);
      image(img5, 0, 0);
      popMatrix();
      break;
    case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(800, 400);
      image(img6, 0, 0);
      popMatrix();
      break;
    }
  }
  
  void jugando(){
    
      switch(seleccionado){
        case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(120, 300);
      image(img1, 0, 0);
      popMatrix();
      break;
      
      case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(120, 300);
      image(img2, 0, 0);
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(120, 300);
      image(img3, 0, 0);
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(120, 300);
      image(img4, 0, 0);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(120, 300);
      image(img5, 0, 0);
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(120, 300);
      image(img6, 0, 0);
      popMatrix();
      break;
        
      }
    
  }
  
  void p2jugando(){
    
      switch(p2seleccionado){
        case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(600, 300);
      image(img1, 0, 0);
      popMatrix();
      break;
      
      case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(600, 300);
      image(img2, 0, 0);
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(600, 300);
      image(img3, 0, 0);
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(600, 300);
      image(img4, 0, 0);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);      
      translate(600, 300);
      image(img5, 0, 0);
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(600, 300);
      image(img6, 0, 0);
      popMatrix();
      break;
        
      }
  }
  void loading(){
      

      switch(seleccionado){
        case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(150, 200);
      scale(0.5);
      image(img1, 0, 0);
      popMatrix();
      break;
      
      case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(150, 200);
      scale(0.5);
      image(img2, 0, 0);
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(150, 200);
      scale(0.5);
      image(img3, 0, 0);
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(150, 200);
      scale(0.5);
      image(img4, 0, 0);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);
      translate(150, 200);
      scale(0.5);
      image(img5, 0, 0);
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(150, 200);
      scale(0.5);
      image(img6, 0, 0);
      popMatrix();
      break;
        
      }
      switch(p2seleccionado){
        case 0:
      pushMatrix();
      rectMode(CENTER);
      translate(800, 500);
      scale(0.5);
      image(img1, 0, 0);
      popMatrix();
      break;
      
      case 1:
      pushMatrix();
      rectMode(CENTER);
      translate(800, 500);
      scale(0.5);
      image(img2, 0, 0);
      popMatrix();
      break;
      
      case 2:
      pushMatrix();
      rectMode(CENTER);
      translate(800, 500);
      scale(0.5);
      image(img3, 0, 0);
      popMatrix();
      break;
      
      case 3:
      pushMatrix();
      rectMode(CENTER);
      translate(800, 500);
      scale(0.5);
      image(img4, 0, 0);
      popMatrix();
      break;
      
      case 4:
      pushMatrix();
      rectMode(CENTER);      
      translate(800, 500);
      scale(0.5);
      image(img5, 0, 0);
      popMatrix();
      break;
      
      case 5:
      pushMatrix();
      rectMode(CENTER);
      translate(800, 500);
      scale(0.5);
      image(img6, 0, 0);
      popMatrix();
      break;
        
      }
      
  }
  void attack(){
    float avance;
    float delta;
    
    avance=1 ;
    delta=0.1;
    noStroke();
    avance = delta+avance;
    ellipse(width/2, height/2,sin(avance)*200,sin(avance)*200);
  
  }
} 