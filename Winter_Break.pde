int count = 200;
float[] Xs = new float[count];
float[] Ys = new float[count];
float[] Xn = new float[count];
float[] Yn = new float[count];
float[] Xf = new float[count];
float[] Yf = new float[count];
float[] Xc = new float[count];
float[] Yc = new float[count];
PImage pool;
PImage court;
PImage friends;
PImage resort;


void setup()
{
  fullScreen();
  pool = loadImage("pool.jpg");
  court = loadImage("court.jpg");
  friends = loadImage("cartoon.png");
  resort = loadImage("hotl.jpg");
  pool.resize(40, 40);
  court.resize(40,40);
  friends.resize(40,40);
  resort.resize(40,40);

  for (int i=0; i <count; i++)
  {
    Xs[i] = random(0,300);
    Ys[i] = random(height);
    Xn[i] = random(300,600);
    Yn[i] = random(height);
    Xf[i] = random(600,900);
    Yf[i] = random(height);
    Xc[i] = random(900,1200);
    Yc[i] = random(height);
  }
  textSize(100);
}

void draw()
{
  background(0);
  for (int i=0; i <count; i++)
  {
    fill(#3D62F2);
    image(pool, Xs[i], Ys[i]);
    image(court, Xn[i], Yn[i]);
    image(friends, Xf[i], Yf[i]);
    image(resort, Xc[i], Yc[i]);
    Ys[i] = Ys[i] + 3;
    Yn[i] = Yn[i] + 2;
    Yf[i] = Yf[i] + 3;
    Yc[i] = Yc[i] + 2;
    if (Ys[i]>height)
    {
      Ys[i]=0;
    }
    if (Yn[i]>height)
    {
      Yn[i]=0;
    }
    if (Yf[i]>height)
    {
      Yf[i]=0;
    }
    if (Yc[i]>height)
    {
      Yc[i]=0;
    }
  }
} 