function OnEvent(event, arg)
	--OutputLogMessage("event = %s, arg = %s\n", event, arg);
	EnablePrimaryMouseButtonEvents(true)
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
		recoil = true
	end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 6) then
		recoil = false
	end
  if recoil then
    if (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
		  Sleep(150)
		  for i=0,50 do
		    Sleep(1)
			  MoveMouseRelative(0,2)
		  end
	  end
  end
end
