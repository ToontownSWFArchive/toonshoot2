function Ugokizz()
{
   var _loc1_ = _parent;
   xm = _loc1_._xmouse + 240;
   md = Math.floor(xm / teisu);
   if(md < 0)
   {
      md = 0;
   }
   else if(md >= 2)
   {
      md = 2;
   }
   _loc1_.gPosi = md;
   if(_loc1_.NageAida != 1)
   {
      this.gotoAndStop(md + 2);
   }
}
stop();
teisu = 160;
mx = _X;
Ugokizz();
_X = teisu * md - 205;
this.onEnterFrame = function()
{
   if(_parent.moovStpFlg != true)
   {
      Ugokizz();
      _X = _X - (_X - teisu * md) / 1.7 - 120;
   }
};
