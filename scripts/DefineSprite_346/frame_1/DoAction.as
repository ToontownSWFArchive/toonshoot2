function Ranking()
{
   var LL = _parent.g_ScoreArray;
   i = 4;
   while(i >= 0)
   {
      if(Number(LL[i][0]) >= 5)
      {
         eval("m" + i).tScore = LL[i][0];
         eval("m" + i).tDay = DayScr(LL[i]);
      }
      i--;
   }
   if(Number(LL[4][0] < 50))
   {
      btnR._visible = false;
   }
}
function rank_erase()
{
   i = 4;
   while(i >= 0)
   {
      eval("m" + i).tScore = "";
      eval("m" + i).tDay = "";
      i--;
   }
}
function DayScr(A)
{
   var _loc2_ = A[3];
   if(_loc2_ >= 12)
   {
      var _loc3_ = _loc2_ - 12;
      var ampm = "PM";
   }
   else
   {
      _loc3_ = _loc2_;
      var ampm = "AM";
   }
   if(_loc3_ >= 10)
   {
      var SP = "   ";
   }
   else
   {
      var SP = "     ";
   }
   var _loc1_ = A[4];
   if(_loc1_ <= 9)
   {
      _loc1_ = "0" + _loc1_;
   }
   var T = A[1] + "/" + A[2] + SP + ampm + _loc3_ + ":" + _loc1_;
   return T;
}
function clearRank()
{
   this.btnR._visible = false;
   this.rank_erase();
   _parent.erase_ranking();
   gotoAndStop("back");
   play();
}
stopAllSounds();
Ranking();
