function init()
{
   OpDe = 0;
   gSyukaiz = 0;
   gCombo = 0;
   gComTen = 0;
   gGame_Score = 0;
   gDeadFlg = 0;
   gLIFE = 5;
   gLevel = 0;
   pSpeed = 600;
   gStage = 0;
   gCombo_save = 0;
   resetHighScore();
}
function reCharange()
{
   gSyukaiz++;
   gDeadFlg = 0;
   gLevel = 0;
   gStage = 0;
   MenClear();
}
function RdmSelect()
{
   var _loc2_ = [];
   _loc2_ = _loc2_.concat(gTekiLst[gLevel - 1]);
   newLst = [];
   if(gLevel == 1)
   {
      var kz = 2;
   }
   else
   {
      var kz = 3;
   }
   i = 0;
   while(i < kz)
   {
      var Cnt = _loc2_.length;
      var _loc1_ = Math.floor(Math.random() * Cnt);
      var _loc3_ = _loc2_[_loc1_];
      newLst[i] = _loc3_;
      _loc2_.splice(_loc1_,1);
      i++;
   }
   return newLst;
}
function LoadCHK()
{
   var _loc2_ = _root.getBytesLoaded();
   var _loc1_ = _root.getBytesTotal();
   gLoadPer = int(_loc2_ / _loc1_ * 100);
   gLoadPerPer = gLoadPer + "%";
   if(gLoadper >= 100)
   {
      loadOKflg = 1;
      gotoAndStop("start");
      play();
   }
}
function Dead()
{
   if(gDeadFlg == 0)
   {
      gDeadFlg = 1;
      gLIFE--;
      this.mov.damage();
   }
}
gTekiLst = [[1,1],[1,2,2],[1,2,3,3],[1,2,3,4,4],[1,2,3,4,5,5],[2,3,4,5,6,6],[3,4,5,6,7,7],[3,4,5,6,7,8,8]];
