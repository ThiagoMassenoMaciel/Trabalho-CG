// BORDAS
final int WIDTH=600;
final int HEIGHT=600;

// TIJOLOS
final int ROWS=10; 
final int TijoloW=WIDTH/10;
final int TijoloH=20;

// BOLA
final int BolaINITX=50;
final int BolaINITY=200;

int vidas;
boolean playing;

Bola myBola;
Bastao myBastao;
ArrayList<Tijolo> Tijolos;

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
  
  Tijolos=new ArrayList<Tijolo>();
  for (int row=0; row<ROWS; row++)
  {
    for (int col=0; col<WIDTH/TijoloW-2; col++)
    {
      Tijolos.add(new Tijolo((col)*TijoloW,(row)*TijoloH));
    }
  }
  println("ADICIONADO "+Tijolos.size()+" TIJOLOS");
  
  myBola=new Bola(BolaINITX,BolaINITY,20,127,127,127);
  myBastao=new Bastao(450, 100, 20, 255, 255, 127);
  vidas=1;
  playing=true;
  minhaImagem = loadImage("aviso.png");
  minhaImagem2 = loadImage("ganhou.png");
 
}

void drawTijolos()
{
  for (int i=0; i<Tijolos.size(); i++)
  {
    Tijolos.get(i).draw();
  }
}

void draw()
{
  if (playing)
  {
    // LIMPAR O FUNDO
    background(0,0,0);
  
    drawTijolos();
    
    // DESENHAR A QUANTIDADE DE VIDAS
    fill(255,255,255);
    text("Quantidade de vidas: "+ vidas, WIDTH-200, HEIGHT-10);
    
    // MOVER A BOLA
    if (myBola.move(myBastao.y, myBastao.w) == false) //SE A BOLA MORREU
    {
      vidas--;
      if (vidas==0) // SE PERDER TODAS AS VIDAS N VAI MAIS JOGAR VAI DAR UM GAME OVER
      {
        fill(255,0,0);
        //text("GAME OVER", WIDTH/2-55, HEIGHT/2);
        playing=false;
        image(minhaImagem, 0, 0);
        
      }
      else
      { //QUANDO A BOLINHA CAIR FORTA DO CURSOR REINICIALIZAR ELA APARTIR DO INICIO COM OUTRA VIDA
        myBola.x=BolaINITX;
        myBola.y=BolaINITY;
        myBola.offsetX=1;
        myBola.offsetY=1;
      }
    }
    
    // DESENHAR A BOLA
    myBola.draw();
    
    // DESENHAR O BASTÃO
    myBastao.draw();
    
    if(Tijolos.size()== 0){
      image(minhaImagem2, 0, 0);
    }
      
  }
}
