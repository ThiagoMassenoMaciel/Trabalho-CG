// BORDAS
final int WIDTH=600;
final int HEIGHT=600;

// TIJOLOS
final int ROWS=10;
final int BRICKW=WIDTH/20;
final int BRICKH=10;

// BOLA
final int BALLINITX=50;
final int BALLINITY=200;

int vidas;
boolean playing;

Ball myBall;
Bat myBat;
ArrayList<Brick> Bricks;

PImage minhaImagem;
PImage minhaImagem2;

void settings()
{
  size(WIDTH, HEIGHT);
}

void setup()
{
  // Criar fonte do texto
  PFont f;
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  textFont(f,18);
  
  ellipseMode(CORNER);
  frameRate(200);
  
  Bricks=new ArrayList<Brick>();
  for (int row=0; row<ROWS; row++)
  {
    for (int col=0; col<WIDTH/BRICKW-2; col++)
    {
      Bricks.add(new Brick((col+1)*BRICKW,(row+1)*BRICKH));
    }
  }
  println("ADICIONADO "+Bricks.size()+" TIJOLOS");
  
  myBall=new Ball(BALLINITX,BALLINITY,20,127,127,127);
  myBat=new Bat(450, 100, 20, 255, 255, 127);
  vidas=1;
  playing=true;
  minhaImagem = loadImage("aviso.png");
  minhaImagem2 = loadImage("ganhou.png");
 
}

void drawBricks()
{
  for (int i=0; i<Bricks.size(); i++)
  {
    Bricks.get(i).draw();
  }
}

void draw()
{
  if (playing)
  {
    // clear the background
    background(0,0,0);
  
    drawBricks();
    
    // draw lives
    fill(255,255,255);
    text("Quantidade de vidas: "+ vidas, WIDTH-200, HEIGHT-10);
    
    // move the ball
    if (myBall.move(myBat.y, myBat.w) == false) // ball "died"
    {
      vidas--;
      if (vidas==0) // SE PERDER TODAS AS VIDAS N VAI MAIS JOGAR VAI DAR UM GAME OVER
      {
        fill(255,0,0);
        //text("GAME OVER", WIDTH/2-55, HEIGHT/2);
        playing=false;
        image(minhaImagem, 0, 0);
        //image(minhaImagem2, 0, 0);
      }
      else
      { //QUANDO A BOLINHA CAIR FORTA DO CURSOR REINICIALIZAR ELA APARTIR DO INICIO COM OUTRA VIDA
        myBall.x=BALLINITX;
        myBall.y=BALLINITY;
        myBall.offsetX=1;
        myBall.offsetY=1;
      }
    }
    
    // DESENHAR A BOLA
    myBall.draw();
    
    // DESENHAR O BASTÃO
    myBat.draw();
  }
}
