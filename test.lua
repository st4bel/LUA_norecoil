function OnEvent(event, arg)
	--OutputLogMessage("event = %s, arg = %s\n", event, arg);
	EnablePrimaryMouseButtonEvents(true)
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 2) then
		recoil = true
	end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 2) then
		recoil = false
	end
  if recoil then
    if (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
		  Sleep(100)
		  for i=0,25 do
		    Sleep(1)
			  MoveMouseRelative(0,1)
		  end
	  end
  end
end
