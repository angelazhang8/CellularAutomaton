void setFirstGeneration() {
  for(int i=0; i<n; i++) {
     for(int j=0; j<n; j++) {//uncomment to try different settings
       
     //wealth[i][j] = -2*i + pow(i, 2) +  pow(j, 2) - 400; //quarter circle pattern
     
     //wealth[i][j] = random(270); //good numbers to use are 210, 270
          
     //wealth[i][j] = cos(i*j) + i*5; //wave like patterns coming from the right 
     
     //wealth[i][j] = tan(sin(i*j) + i*5)*10; //tumor like growths 
     
     //wealth[i][j] = 40*j - i*70; //diagonal curved from the left
     
     //wealth[i][j] =  - cos(i*j) + sin(i*5)*200; //spreading between blue bars
     
     //wealth[j][j] =  300; //diagonal top left to bottom right
     
     wealth[i][j] = 200 ; //below 200, cells are too poor to donate money so there is no change
     
     //wealth[i][j] = 200 - 10*i*j; //spreading from the top left corner
     
     //wealth[i][j] = 201-i; //spreading from the left in a straight lines
     
     //wealth[j][i] = 260-i*60; //try this setting and the one below it together
     //wealth[i][j] = 260-i*60; //corner spreading
     
     //wealth[i][j] = i*10; //spreading from the right, bars
          
}
  //wealth[int(n/2)][int(n/2)] = netWorthRange; //center square, try making n smaller
  
  //wealth[n-1][n-1] = netWorthRange; // bottom right corner
  //wealth[0][0] = netWorthRange; // top left corner
  //wealth[n-1][0] = netWorthRange; //top right corner
  //wealth[0][n-1] = netWorthRange; //bottom left corner

  //wealth[0][n-1] = -200; wealth[0][0] = -200; wealth[0][1] = -200; //set negative values to see what happens
}
}
void setNextGeneration() {
  for(int i=0; i<n; i++) 
    for(int j=0; j<n; j++) {
      nextGeneration[i][j] = calculateNetWorth(i, j);
    }
  }


void copyNextGenerationToCurrentGeneration() {
  for(int i=0; i<n; i++) 
    for(int j=0; j<n; j++) 
      wealth[i][j] = nextGeneration[i][j];
}
