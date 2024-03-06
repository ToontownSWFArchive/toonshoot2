function coglibEnd_stage()
{
   this.white.gotoAndPlay(2);
   sndObj.setVolume(100);
   _root.gPause = 0;
}
stopAllSounds();
sndObj = new Sound(this);
