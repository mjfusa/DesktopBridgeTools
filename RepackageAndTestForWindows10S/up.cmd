if NOT "%1"=="" goto unpack
unpack DesktopBridgeAPPX -wack -sendresults -sideload
goto end

:unpack
unpack %1 -wack -sendresults -sideload

:end
