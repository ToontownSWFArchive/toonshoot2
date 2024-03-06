stop();
cnt = 0;
this.onEnterFrame = function()
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
