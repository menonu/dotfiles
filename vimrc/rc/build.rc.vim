if has('win32')
    let BUILDTYPE = "Win"
elseif has('mac')
    let BUILDTYPE = "Mac"
else
    let BUILDTYPE = system("uname") 
endif
if BUILDTYPE =~? "FreeBSD"
    set makeprg=gmake
endif
