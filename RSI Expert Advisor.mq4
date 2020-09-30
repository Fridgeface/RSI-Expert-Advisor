
void OnTick()
  {
  
   string signal = "" ;
   
   double RSIValue = iRSI(_Symbol,_Period,14,PRICE_CLOSE,0);
   
   if (RSIValue>70)
   {
      signal = "sell";
   }
   
   if (RSIValue<30)
   {
      signal = "buy";
   }
   
   if (signal == "buy" && OrdersTotal()==0)
   OrderSend (_Symbol, OP_BUY, 0.10, Ask, 3, 0, Ask + 150*_Point, NULL, 0, 0, Green);
   
   if (signal == "sell" && OrdersTotal()==0)
   OrderSend (_Symbol, OP_SELL, 0.10, Bid, 3, 0, Bid - 150*_Point, NULL, 0, 0, Red);
   
   Comment ("The current signal is: ",signal);
  }
