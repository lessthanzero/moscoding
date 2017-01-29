//int[][] nums = new int[3][2];

int[][][] numsSecond = 
  { 
    {
      {1, 2},
      {1, 2}
    }, 
    {
      {6, 3},
      {1, 2}
    }, 
    {
      {5, 4},
      {1, 2}
    } 
  };

//println(numsSecond[1][0][0]);



String[] hello = new String[2];
hello[0] = "Hello";
hello[1] = "World";


String str = "";

for ( int i = 0; i < hello.length; i++ ) {
  
  str += hello[i];
  
}

//println( hello[0] + hello[1] );

IntList list = new IntList();
int b = 0;

{
  list.append(b);
  b += 2;
} while ( b <= 998 ) 

println( list );