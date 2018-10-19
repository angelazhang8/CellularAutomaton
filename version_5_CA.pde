int n = 55;
float padding = 10;
float cellSize;
float blinksPerSecond = 5;
float [][] wealth, nextGeneration;

void setup() {
  size(600, 600);
  frameRate(blinksPerSecond);
  cellSize = (width-2*padding)/n;
  wealth = new float[n][n];
  nextGeneration = new float[n][n];
  noSmooth();
  setFirstGeneration();

}

void draw() {
  noStroke();
  background(0);
   for (int i = 0; i <  n; i++){
    for (int j = 0; j < n; j++){
      fill ( mapColorsfromWealth(wealth[i][j]) );
      rect(padding + i*cellSize, padding + j*cellSize, cellSize, cellSize);
    }
  
  }
  setNextGeneration();
  copyNextGenerationToCurrentGeneration(); 
}
