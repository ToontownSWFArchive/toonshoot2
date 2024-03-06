function cog_library(A)
{
   var _loc1_ = this;
   if(A)
   {
      _loc1_.white.gotoAndPlay(2);
      Hit_NumberDe();
      _loc1_._y = motoAll_Y;
      _loc1_.sndBtn.sndHant();
      gotoAndStop("start");
      play();
   }
   else
   {
      gotoAndStop("stp");
      _loc1_._y = motoAll_Y - 500;
   }
}
function moov_LR(A)
{
   LRNum += A;
   var rr = false;
   if(LRNum < 0)
   {
      rr = true;
      LRNum = 0;
   }
   else if(LRNum > 7)
   {
      rr = true;
      LRNum = 7;
   }
   if(rr != true)
   {
      if(A == 1)
      {
         gGearPls = -10;
      }
      else
      {
         gGearPls = 10;
      }
      this.belt.gotoAndStop("moov");
      this.gotoAndStop("LR");
      targX = motox - LRNum * x_diff;
      plsP = 0;
      this.onEnterFrame = function()
      {
         plsP += 15;
         gGearRot += gGearPls;
         if(plsP < x_diff)
         {
            this.cogs._x -= A * 15;
            i = 1;
            while(i <= 12)
            {
               eval("belt.g" + i + ".gear")._rotation = gGearRot;
               i++;
            }
         }
         else
         {
            _parent.cogLib_Num[0] = LRNum;
            LibSnd.gotoAndPlay("LR");
            gotoAndStop("keep");
            play();
            this.cogs._x = targX;
            belt.gotoAndStop(1);
            Hit_NumberDe();
            delete this.onEnterFrame;
         }
      };
   }
}
function moov_UD(A)
{
   var _loc1_ = this;
   UDNum += A;
   var _loc2_ = false;
   if(UDNum < 0)
   {
      _loc2_ = true;
      UDNum = 0;
   }
   else if(UDNum > 3)
   {
      _loc2_ = true;
      UDNum = 3;
   }
   if(_loc2_ != true)
   {
      _loc1_.gotoAndStop("UD");
      zok = 0;
      Ydif = 0;
      _loc1_.nPlate.gotoAndStop(1);
      _loc1_.onEnterFrame = function()
      {
         var _loc1_ = this;
         Ydif += A * 24;
         if(zok == 0)
         {
            _loc1_.cogs._y = motoY - Ydif;
            _loc1_.belt._y = beltmotoY - Ydif;
            var _loc2_ = Math.abs(_loc1_.cogs._y - motoY);
            if(_loc2_ >= 340)
            {
               zok = 1;
               _loc1_.cogs.gotoAndStop(UDNum + 1);
               _loc1_.cogs._y = motoY + Ydif;
               _loc1_.belt._y = beltmotoY + Ydif;
            }
         }
         else if(zok == 1)
         {
            _loc1_.cogs._y -= A * 24;
            _loc1_.belt._y -= A * 24;
            _loc2_ = Math.abs(_loc1_.cogs._y - motoY);
            if(_loc2_ <= 10)
            {
               _parent.cogLib_Num[1] = UDNum;
               _loc1_.nPlate.gotoAndStop(UDNum + 2);
               _loc1_.cogs._y = motoY;
               _loc1_.belt._y = beltmotoY;
               LibSnd.gotoAndPlay("UD");
               gotoAndStop("keep");
               play();
               Hit_NumberDe();
               delete _loc1_.onEnterFrame;
            }
         }
      };
   }
}
function Hit_NumberDe()
{
   gSuzi = _root.gCogHitLst[UDnum][LRnum];
}
stop();
motoAll_Y = this._y;
this._y = motoAll_Y - 500;
motox = this.cogs._x;
motoY = this.cogs._y;
beltmotoY = this.belt._y;
gGearRot = 0;
x_diff = 193;
if(_parent.cogLib_Num == undefined)
{
   LRnum = 0;
   UDnum = 0;
   _parent.cogLib_Num = [0,0];
}
else
{
   LRnum = _parent.cogLib_Num[0];
   UDnum = _parent.cogLib_Num[1];
   this.cogs.gotoAndStop(UDnum);
   this.cogs._x = motox - LRNum * x_diff;
   Hit_NumberDe();
}
btU.onPress = function()
{
   moov_UD(-1);
};
btD.onPress = function()
{
   moov_UD(1);
};
btR.onPress = function()
{
   moov_LR(1);
};
btL.onPress = function()
{
   moov_LR(-1);
};
btU.onRollOver = function()
{
   btnSnd.rolloverz();
};
btD.onRollOver = function()
{
   btnSnd.rolloverz();
};
btR.onRollOver = function()
{
   btnSnd.rolloverz();
};
btL.onRollOver = function()
{
   btnSnd.rolloverz();
};
