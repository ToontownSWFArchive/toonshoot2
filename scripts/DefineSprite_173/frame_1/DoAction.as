function sndHant()
{
   if(_root.gSoundOFF == 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(3);
   }
}
xx = _X;
btn.onRollOver = function()
{
   btnsnd.rolloverz();
   _X = xx - 6;
};
btn.onRollOut = function()
{
   _X = xx;
};
btn.onDragOut = function()
{
   _X = xx;
};
btn.onPress = function()
{
   var _loc1_ = _root;
   btnsnd.pressz();
   if(_loc1_.gSoundOFF == 1)
   {
      gotoAndStop(2);
      _loc1_.SndStp(0);
   }
   else
   {
      gotoAndStop(3);
      _loc1_.SndStp(1);
   }
};
btn.onRelease = function()
{
   btnsnd.releasez();
};
sndHant();
