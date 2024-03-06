function btn_GoGo()
{
   var _loc1_ = _parent;
   var _loc2_ = this;
   if(gBtnNum == "lib")
   {
      if(_loc2_._visible == true)
      {
         _loc2_._y = 1000;
         _loc2_._visible = false;
      }
      _loc1_.coglib.cog_library(true);
   }
   else if(gBtnNum == "start")
   {
      _loc1_.gotoAndPlay("Start_After");
   }
   else if(gBtnNum == "rank")
   {
      _loc1_.gotoAndPlay("rank");
   }
}
function back_menu()
{
   this._visible = true;
   this._y = motoY;
   gotoAndStop("back");
   play();
}
motoY = _Y;
