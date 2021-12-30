command! -range=% ClearAllButMatches <line1>,<line2>call ClearAllButMatches#ClearAllButMatches()
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
