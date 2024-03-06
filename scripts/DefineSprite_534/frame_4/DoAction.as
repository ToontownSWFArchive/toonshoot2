if(_root.gPause != 1)
{
   if(pTime <= getTimer())
   {
      _parent.nextFrame();
      _parent.walk();
      pTime = getTimer() + _root.pSpeed;
   }
}
gotoAndPlay(3);
