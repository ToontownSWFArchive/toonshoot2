function init()
{
   var _loc1_ = this;
   if(_root.gStagezz >= 5)
   {
      _loc1_._visible = true;
      _loc1_._y = motoY;
   }
   else
   {
      _loc1_._visible = false;
      _loc1_._y = motoY + 500;
   }
}
function gear_moov()
{
   var _loc1_ = this;
   cnt = 0;
   if(_root.gStagezz >= 5)
   {
      _loc1_.onEnterFrame = function()
      {
         var _loc1_ = this;
         cnt++;
         if(cnt % 3 == 0)
         {
            _loc1_.g1._rotation += 3;
            _loc1_.g2._rotation -= 5;
            _loc1_.g3._rotation -= 4;
         }
      };
   }
}
stop();
motoY = this._y;
init();
gear_moov();
