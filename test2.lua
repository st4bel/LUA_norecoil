function OnEvent(event, arg)
	--OutputLogMessage("event = %s, arg = %s\n", event, arg);
	EnablePrimaryMouseButtonEvents(true)
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
		recoil = true
    counter = 0
	end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 4) then
		recoil = false
	end
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
    counter = counter +1
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
    counter = counter -1
  end
  if recoil then
    if counter == 1 then
    if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
      Sleep(10)
      ReleaseMouseButton(1)
      Sleep(10)
      counter = 1
		  for j=0,10 do
        Sleep(200)
        if not IsMouseButtonPressed(1) then
          break
        end
		    for i=0,25 do
		      Sleep(1)
		      MoveMouseRelative(0,1)
		    end
        --PressAndReleaseMouseButton(1)
      end
	  end
    end
  end
end
