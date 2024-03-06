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
   btnsnd.pressz();
   _parent.sndObj.setVolume(0);
   _parent._parent.coglib.cog_library(true);
   _root.gPause = 1;
};
