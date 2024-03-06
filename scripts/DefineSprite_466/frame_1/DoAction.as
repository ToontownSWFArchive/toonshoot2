function ten(A)
{
   var ten = String(A);
   var len = ten.length;
   i = 1;
   while(i <= len)
   {
      eval("k" + (len - i + 1)).kaz(ten.charAt(i - 1));
      i++;
   }
}
stop();
