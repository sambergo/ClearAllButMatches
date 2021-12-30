function! ClearAllButMatches#ClearAllButMatches() range
    let is_whole_file = a:firstline == 1 && a:lastline == line('$')
    let old_c = @c
    let @c=""
    exec a:firstline .','. a:lastline .'sub//\=setreg("C", submatch(0), "l")/g'
    exec a:firstline .','. a:lastline .'delete _'
    put! c
    if is_whole_file
        $delete _
    endif
    let @c = old_c
endfunction
