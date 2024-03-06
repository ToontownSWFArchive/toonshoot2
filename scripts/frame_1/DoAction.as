function Atari(A)
{
   eval("this.mov.tama.tm" + A).removeMovieClip();
   pSpeed -= 0.5;
   LimitMax = 120 - gSyukaiz * 5;
   if(pSpeed <= LimitMax)
   {
      pSpeed = LimitMax;
   }
   gPlusChara++;
   if(gPlusChara >= gClearChara)
   {
      this.mov.CLEARZ();
   }
}
function GobtnNext()
{
   gPlusChara = 0;
   if(gStagezz == 1)
   {
      gClearChara = 20;
      pSpeed = 310;
   }
   else if(gStagezz == 2)
   {
      gClearChara = 30;
      pSpeed = 290;
   }
   else if(gStagezz == 3)
   {
      gClearChara = 35;
      pSpeed = 270;
   }
   else if(gStagezz == 4)
   {
      gClearChara = 38;
      pSpeed = 250;
   }
   else if(gStagezz == 5)
   {
      gClearChara = 40;
      pSpeed = 230;
   }
   else if(gStagezz == 6)
   {
      gClearChara = 45;
      pSpeed = 220;
   }
   else if(gStagezz == 7)
   {
      gClearChara = 50;
      pSpeed = 200;
   }
   else if(gStagezz == 8)
   {
      gClearChara = 55;
      pSpeed = 180;
   }
   if(gSyukaiz >= 1)
   {
      pSpeed = 180 - gSyukaiz * gStagezz * 4;
   }
   gotoAndStop("game");
   play();
}
function SpeedReset()
{
}
function MenClear()
{
   gLevel++;
   if(gLevel > 8)
   {
      gLevel = 8;
   }
   gStage++;
   gStagezz = gStage;
   if(gStagezz > 8)
   {
      gotoAndStop("endMae");
      play();
   }
   else if(gStagezz == 1)
   {
      gotoAndStop("help");
      play();
   }
   else
   {
      gotoAndStop("stages");
      play();
   }
}
function Hazure(A)
{
   ComboStop();
   eval("this.mov.tama.tm" + A).removeMovieClip();
}
function SndStp(A)
{
   if(A == 1)
   {
      SndObj.setVolume(0);
      gSoundOFF = 1;
   }
   else
   {
      SndObj.setVolume(100);
      gSoundOFF = 0;
   }
}
function Tokutenz(XX, YY)
{
   var _loc1_ = this;
   gCombo++;
   if(gCombo >= 2)
   {
      gComTen = 50 * gCombo;
      if(gComTen >= 50000)
      {
         gComTen = 50000;
      }
      gGame_Score += gComTen;
      _loc1_.mov.COMBOZ._x = XX - 30;
      _loc1_.mov.COMBOZ._y = YY - 80;
      _loc1_.mov.COMBOZ.gotoAndPlay(2);
   }
   else
   {
      gGame_Score += 50;
   }
   if(gCombo >= gCombo_save)
   {
      gCombo_save = gCombo;
   }
   SetHighScore();
   _loc1_.mov.tensu.Ten(gGame_Score);
}
function SetCogHitArr(A, B)
{
   var _loc1_ = gCogHitLst[A - 1][B - 1];
   _loc1_ = _loc1_ + 1;
   gCogHitLst[A - 1][B - 1] = _loc1_;
}
function ComboStop()
{
   gCombo = 0;
   this.mov.COMBOZ.gotoAndStop(1);
}
function resetHighScore()
{
   g_HighScoreLst = [0,0,0,0,0];
}
function LocalObjs()
{
   T_so = SharedObject.getLocal("toon_shotG");
   var _loc1_ = T_so.data.T_ScoreArray;
   if(_loc1_ == undefined)
   {
      T_so.data.T_HighScore = [0,0,0,0,0];
      T_so.data.T_ScoreArray = [[0],[1],[2],[3],[4]];
   }
   g_HighScoreLst = T_so.data.T_HighScore;
   g_ScoreArray = T_so.data.T_ScoreArray;
}
function erase_ranking()
{
   T_so.data.T_HighScore = [0,0,0,0,0];
   T_so.data.T_ScoreArray = [[0],[1],[2],[3],[4]];
   g_HighScoreLst = T_so.data.T_HighScore;
   g_ScoreArray = T_so.data.T_ScoreArray;
}
function SetHighScore()
{
   timeObj = new Date();
   var _loc2_ = timeObj.getMonth() + 1;
   var _loc1_ = timeObj.getDate();
   var H = timeObj.getHours();
   var _loc3_ = timeObj.getMinutes();
   g_HighScoreLst = [gGame_Score,_loc2_,_loc1_,H,_loc3_];
   T_so.data.T_HighScore = g_HighScoreLst;
}
function highScoreSet_First()
{
   var _loc1_ = true;
   i = 0;
   while(i <= 4)
   {
      if(g_ScoreArray[i] == g_HighScoreLst)
      {
         _loc1_ = false;
      }
      i++;
   }
   if(_loc1_ == true)
   {
      g_ScoreArray.push(g_HighScoreLst);
   }
   g_ScoreArray.sort(sort_hant);
   if(_loc1_ == true)
   {
      g_ScoreArray.splice(0,1);
   }
   T_so.data.T_ScoreArray = g_ScoreArray;
}
function sort_hant(a, b)
{
   var _loc2_ = a[0];
   var _loc1_ = b[0];
   if(_loc2_ < _loc1_)
   {
      return -1;
   }
   if(_loc2_ > _loc1_)
   {
      return 1;
   }
   return 0;
}
Stage.showMenu = false;
SndObj = new Sound();
gSoundOFF = 0;
if(gCogHitLst == undefined)
{
   gCogHitLst = [];
   i = 0;
   while(i < 4)
   {
      gCogHitLst.push([0,0,0,0,0,0,0,0]);
      i++;
   }
}
LocalObjs();
