class Ball
{
  int x;
  int y;
  int diam;
  int offsetX;
  int offsetY;
  int r;
  int g;
  int b;

  Ball(int xloc, int yloc, int d, int red, int green, int blue)
  {
    x=xloc;
    y=yloc;
    diam=d;
    offsetX=1;
    offsetY=1;
    r=red;
    g=green;
    b=blue;
  }
  
  void draw()
  {
    strokeWeight(3);
    fill(r,g,b);
    stroke(255,255,255);
    ellipse(x,y,diam,diam);
  }
  
  boolean move(int batY, int batW) // RETORNA VERDADEIRO SE A BOLA ESTIVER "OK", FALSO QUANDO TIVER "PERDIDA"
  {
    x=x+offsetX;
    y=y+offsetY;
    
    // DETECTAR A HORA DE PERDA
    if (y > batY) // A BOLA TINHA PASSADO PELO BASTÃO
      return (false);
      
    // DETECTAR AS BORDAS
    // DIREITA-ESQUERDA
    if (x > WIDTH-diam || x < diam/2)
      offsetX=-offsetX;
    else // TOPO
    if (y < diam/2)
      offsetY=-offsetY;
   
    // VERIFICAR SE HOUVE CONTATO COM O BASTÃO
   
    if ((x>=mouseX) && (x<=mouseX+batW) && (y>batY-diam))
    {
      offsetY=-offsetY;
    }
  
   // VERIFICAR TODOS OS TIJOLOS
   for (int i=0; i<Bricks.size(); i++)
   {
     Brick b=Bricks.get(i);
     if ((x>=b.x) && (x<=b.x+BRICKW) && (y==b.y+BRICKH)) // FUNDO DO TIJOLO
     {
       Bricks.remove(i);
       offsetY=-offsetY;
     }
     else
       if ((x>=b.x) && (x<=b.x+BRICKW) && (y==b.y)) // TOPO DO TIJOLO
       {
         Bricks.remove(i);
         offsetY=-offsetY;
       }
       else
         if ((y>=b.y) && (y<=b.y+BRICKH) && (x==b.x-diam)) // ESQUERDA DO TIJOLO
         {  Bricks.remove(i);
           offsetX=-offsetX;
         }
         else
           if ((y>=b.y) && (y<=b.y+BRICKH) && (x==b.x+BRICKW)) // DIREITA DO TIJOLO
           {
             Bricks.remove(i);
             offsetX=-offsetX;
           }
   }
  
    return (true);
  }
}
