function Numset(p)
{
   cogFrmNum = p;
   this.play();
}
function cogSet()
{
   cogNum = Math.floor(Math.random() * 4 + 1);
   this.ch.gotoAndStop("c" + cogNum);
   this.ch.cst.gotoAndStop(Number(cogFrmNum));
}
function DeadChk()
{
   if(deadF == 0)
   {
      _root.Dead();
   }
}
function Hantei()
{
   var _loc1_ = _parent;
   var _loc2_ = this;
   if(_loc1_._parent._parent.gSuperS == 0)
   {
      if(_loc1_._parent._parent.tama.tm1.tama.tar.hitTest(_loc2_.tar))
      {
         tamN = _loc1_._parent._parent.tama.tm1.Num;
         _loc2_.HitSyori(1);
      }
      else if(_loc1_._parent._parent.tama.tm2.tama.tar.hitTest(_loc2_.tar))
      {
         tamN = _loc1_._parent._parent.tama.tm2.Num;
         _loc2_.HitSyori(2);
      }
   }
   else
   {
      deadF = 1;
      gotoAndPlay("f" + mcNum);
   }
}
function HitSyori(A)
{
   var _loc1_ = _root;
   var _loc2_ = A;
   if(tamN == cogNum)
   {
      deadF = 1;
      _loc1_.Tokutenz(_X,_Y);
      _loc1_.Atari(_loc2_);
      _loc1_.SetCogHitArr(cogNum,cogFrmNum);
      this.hitsnd.cogHit();
      gotoAndPlay("f" + mcNum);
   }
   else if(tamN == 10)
   {
      deadF = 1;
      _parent._parent._parent.SuperShot(_loc2_);
   }
   else
   {
      _loc1_.Hazure(_loc2_);
      gotoAndStop("hazure");
      play();
   }
}
this.stop();
mcNum = Number(_name.charAt(1));
deadF = 1;
