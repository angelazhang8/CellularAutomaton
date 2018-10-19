
float netWorthRange = 1000;

color mapColorsfromWealth(float value) {
  color cellColor;
    
  float c1 = map(value, 0, netWorthRange, 0, 1020);

  if (c1 > (1020*.75)) 
    cellColor = color(255, c1%255, 0);
  
  else if (c1 > (1020*.5))
    cellColor = color(255 - c1%255, 255, 0);
  
  else if (c1 > (1020*.25) )
    cellColor = color(0, 255, c1%255);
  
  else if (c1 > 0 )
    cellColor = color(0, 255 - c1%255, 255);
  
  else
    cellColor = color(0);
 
  return cellColor;
  
  
}
