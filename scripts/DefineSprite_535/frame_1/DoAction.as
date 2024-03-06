function RdSel()
{
   kaz = _root.RdmSelect();
   k1 = kaz[0];
   k2 = kaz[1];
   k3 = kaz[2];
   var RD = Math.floor(Math.random() * Math.abs(8 - _root.gLevel)) + 1;
   if(RD <= 2)
   {
      ct = 2;
   }
   else if(RD >= 3 && RD <= 5)
   {
      ct = 1;
   }
   else
   {
      ct = 0;
   }
   if(_root.gLevel == 1)
   {
      ct = Math.floor(Math.random() * 2);
   }
   Lstz = [1,2,3];
   var karaL = [];
   i = 0;
   while(i <= ct)
   {
      var Cnt = Lstz.length;
      var RR = Math.floor(Math.random() * Cnt);
      var A = Lstz[RR];
      karaL[i] = A;
      Lstz.splice(RR,1);
      i++;
   }
   Nagasa = karaL.length;
   i = 0;
   while(i <= Nagasa)
   {
      eval("V" + karaL[i]).Numset(kaz[i]);
      i++;
   }
}
