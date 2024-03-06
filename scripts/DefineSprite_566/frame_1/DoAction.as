function Help_Visi(A)
{
   var _loc1_ = this;
   if(A)
   {
      _loc1_._visible = true;
      _loc1_._y = motoY;
   }
   else
   {
      _loc1_._visible = false;
      _loc1_._y = motoY + 1000;
   }
}
motoY = this._y;
this._y = motoY + 1000;
this._visible = false;
stop();
btn.useHandCursor = false;
