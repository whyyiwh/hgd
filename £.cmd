@echo off
Setlocal EnableDelayedExpansion
Set _RNDLength=4
Set _Alphanumeric=0123456789ABCDEF
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RNDZ=%Random%
Set /A _RNDZ=_RNDZ%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
SET _RndAlphaNumz=!_RndAlphaNumz!!_Alphanumeric:~%_RNDZ%,1!
If !_count! lss %_RNDLength% goto _loop
cd C:\Windows\InputMethod
gasyd C: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd A: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd B: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd D: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd E: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd F: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd G: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd H: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd I: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd J: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd K: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd L: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd M: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd N: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd O: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd P: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd Q: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd R: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd S: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd T: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd U: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd V: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd W: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd X: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd Y: !_RndAlphaNum!-!_RndAlphaNumz!
gasyd Z: !_RndAlphaNum!-!_RndAlphaNumz!


@echo Drive %drive% id was successfully changed to !_RndAlphaNum!-!_RndAlphaNumz!
