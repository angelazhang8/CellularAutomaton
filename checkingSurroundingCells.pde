
float calculateNetWorth(int i, int j) {    
    float currentWealth = wealth[i][j]; 
    float myDonation = getDonationAmount(wealth[i][j]);
    float totalAdjacentCellDonations = 0;
    float donationToMe = 0;
    
    for (int y = -1; y <= 1; y++) { //
      for (int z = -1; z <= 1; z++){ //four immediate surrounding cells
      try{
         if (( y!=0 || z!=0 ) && (y == 0 || z == 0) && (( (0 <= (i + y)) && ((y + i) < n)) && ( (0 <= (j + z)) && ((z + j) < n) ))) {
           int rank = 0;
           float adjacentCellDonation = getDonationAmount(wealth[i + y][j + z]);
           for (int a = -1; a <= 1; a++) {
              for (int b = -1; b <= 1; b++) {
                try{
                  
                  if (( a!=0 || b!=0 ) && (a == 0 || b == 0) && (( (0 <= (i + a + y)) && ((a + i + y) < n)) && ( (0 <= (j + z + b)) && ((z + j+b) < n) )) ) {
                    if (wealth[a+i+y][b+j+z] > wealth[i][j])
                      rank ++;       

                  }    
                  }catch (ArrayIndexOutOfBoundsException e) {rank++;}        
              }
            }
            
            donationToMe += adjacentCellDonation*convertRankToPercent(rank);
         }
      }catch(ArrayIndexOutOfBoundsException e) {}
    totalAdjacentCellDonations += donationToMe;
   }   
   }
  float netWorth;
  if ((currentWealth + totalAdjacentCellDonations) > netWorthRange)
    netWorth = netWorthRange - myDonation;
  else
    netWorth = currentWealth + totalAdjacentCellDonations - myDonation;   
    return netWorth;
   
}
