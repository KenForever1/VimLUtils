function EnumConvert()
    let l:i = search("enum")
    echo l:i
    let str = getline(l:i)
    echo str
    let j =  substitute(str,"Data","Enum","")
    echo j
endfunction
call EnumConvert()

function AddSemicolon(lrow,rrow)
    execute "normal! :" . a:lrow .""
    for _ in range(a:lrow,a:rrow)
        normal A;
        normal j
    endfor
endfunction

call AddSemicolon(2,4)
