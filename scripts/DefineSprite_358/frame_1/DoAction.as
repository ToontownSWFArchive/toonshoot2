function Goz(N, loc)
{
   Cnt++;
   NN = N;
   pLoc = loc;
   if(Cnt > 2)
   {
      Cnt = 1;
   }
   duplicateMovieClip("tama","tm" + Cnt,16384 + Cnt);
}
Cnt = 0;
tama.stop();
stop();
