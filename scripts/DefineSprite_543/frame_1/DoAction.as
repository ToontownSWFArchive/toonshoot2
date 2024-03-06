function modoriBtn()
{
   _parent.btn._xscale = 100;
   _parent.btn._yscale = 100;
}
stop();
this._alpha = 0;
this.onPress = function()
{
   var _loc1_ = _parent;
   btnSnd.pressz();
   _loc1_._visible = false;
   _loc1_._parent._parent.PushSw(_loc1_._name);
};
this.onRollOver = function()
{
   _parent.btn._xscale = 115;
   _parent.btn._yscale = 115;
};
this.onRollOut = function()
{
   modoriBtn();
};
this.onDragOut = function()
{
   modoriBtn();
};
