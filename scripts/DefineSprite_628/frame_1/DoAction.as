function PushSw(N)
{
   TamaNum = N;
   gotoAndStop("waits");
}
function PushSp()
{
   TamaNum = 10;
   gotoAndStop("waits");
}
function Nage()
{
   NageAida = 1;
   this.chara.gotoAndPlay("nage");
   tama.Goz(gPosi + 1,TamaNum);
}
function NageEnd()
{
   i = 1;
   while(i <= 4)
   {
      eval("Btn." + i)._visible = true;
      i++;
   }
   this.gotoAndPlay("keep");
}
function SuperShot(A)
{
   _root.ComboStop();
   gSuperS = 1;
   eval("tama.tm" + A).removeMovieClip();
   superScr.gotoAndPlay(2);
}
function damage()
{
   moovStpFlg = true;
   hitArea.death();
   tokKao.death();
   hitArea.san.play();
   this.gotoAndPlay("bad");
   chara.gotoAndPlay("bad");
}
function LastHant()
{
   var _loc1_ = _root;
   _loc1_.gDeadFlg = 0;
   if(_loc1_.gLIFE >= 1)
   {
      gotoAndStop("reStart");
      play();
   }
   else if(_loc1_.gLIFE <= 0)
   {
      stopAllSounds();
      gotoAndStop("gOver");
      play();
   }
}
function CLEARZ()
{
   NageAida = 1;
   if(_parent.gStagezz >= 8)
   {
      gotoAndStop("All_clear");
      play();
   }
   else
   {
      gotoAndStop("clear");
      play();
   }
}
function coglibEnd()
{
   sndObj.setVolume(100);
   this.sndBtn.sndHant();
   _root.gPause = 0;
}
sndObj = new Sound(this);
moovStpFlg = false;
gSuperS = 0;
NageAida = 0;
