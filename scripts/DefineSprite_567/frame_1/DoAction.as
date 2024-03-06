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
   var _loc1_ = _parent;
   var _loc2_ = _root;
   btnsnd.pressz();
   if(_loc2_.gPause == 1)
   {
      gotoAndStop(2);
      _loc1_.dummyPause.Help_Visi(false);
      _loc1_.TEKI._visible = true;
      _loc2_.gPause = 0;
   }
   else
   {
      gotoAndStop(3);
      _loc1_.dummyPause.Help_Visi(true);
      _loc1_.TEKI._visible = false;
      _loc2_.gPause = 1;
   }
};
