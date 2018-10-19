

float getDonationAmount(float netWorth ) {
    //tax brackets
    float amountDonated;
  
    if (netWorth > netWorthRange*.8)
      amountDonated = abs(netWorthRange - netWorth + netWorth*.10);
    else if (netWorth < netWorthRange*.2)
      amountDonated = 0;      
    else{
      amountDonated = (map(netWorth, 0, netWorthRange, 0, 0.1))*netWorth;
    }
    return amountDonated;
  }
  

float convertRankToPercent( int rank ) { //can try playing with these values as well
  float percent = 0;
  if (rank == 0)
    percent = 0.1;
  else if (rank == 1)
    percent = 0.2;
  else if (rank == 2)
    percent = 0.3;
  else
    percent = 0.4; //poorer than all other cells
  return percent;
}
