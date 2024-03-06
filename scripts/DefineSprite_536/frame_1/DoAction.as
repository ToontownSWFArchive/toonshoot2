function DepthChange()
{
   Cnt -= 1;
   if(Cnt <= 10)
   {
      Cnt = 700;
   }
   duplicateMovieClip("tek","p" + Cnt,16384 + Cnt);
   _parent.haikei.door.gotoAndPlay(2);
}
Cnt = 700;
tek.stop();
