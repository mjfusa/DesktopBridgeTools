if NOT "%1"=="" goto unpack
unpack APPX -wack -sendresults -sideload
goto end

:unpack
unpack %1 -wack -sendresults -sideload

:end
