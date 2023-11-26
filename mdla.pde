int w,l;
int c1,c2,c3;

void setup() {
  size(600, 600);
  background(#E2E4EB);
  
       int[] arr = new int[]{#B3BACB,#828DA9,#303646};
       int [] arr2 =new int[arr.length];
  int count = arr.length;
  int cbRandCount = 0;// 索引
  int cbPosition = 0;// 位置
  int k1 =0;
  do {


   int r = count - cbRandCount;
   cbPosition = (int) random(r); 
   arr2[k1++] = arr[cbPosition];
   cbRandCount++;
   arr[cbPosition] = arr[r - 1];// 将最后一位数值赋值给已经被使用的cbPosition
  } while (cbRandCount < count);

    c1=arr2[0];
    c2=arr2[1];
    c3=arr2[2];

    
    rectMode(CENTER);
  for (int i =0; i<6;i++){
    float k = random(i,i+1);
  fill(c1);
  noStroke();
  float a, b;
  a=100*k;
  b=50*(k-i);
  rect(a,300,b,600);
  rect(300,a,600,b);
  
  fill(c2);
  noStroke();
  rect(a,150,b,b);
  rect(150,a,b,b);
  
float c = random(40,50);
fill(c3);
  noStroke();
  rect(a,a,b,c);

  
}
}

void draw(){

saveFrame("mdla.tif");

  }
 
  
  
  
