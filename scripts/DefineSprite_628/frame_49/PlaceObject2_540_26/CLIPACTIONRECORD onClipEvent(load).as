onClipEvent(load){
   function Moov()
   {
      nx = _parent._xmouse;
      if(nx >= -200 && nx <= 200)
      {
         this._x = nx;
         _parent.hand._x = nx + 22;
         updateAfterEvent();
      }
   }
   stop();
   Moov();
}
