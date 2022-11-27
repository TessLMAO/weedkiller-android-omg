function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Lighter Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'LighterNote_assets');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
	--debugPrint('Script started!')
end

local hit = 0;
local total = 0;
function goodNoteHit(id, direction, noteType, isSustainNote)
   	if noteType == 'Lighter Note' then
        	hit = hit + 1;
		total = total + 1;
		triggerEvent('Play Animation','idle', 'bf');
		if hit == 1 then
			playSound('strike',2);
		end
		if hit == 2 then
			playSound('strike',2);
		end
		if hit == 3 then
			doTweenAlpha('vignettefadeout','vignette2', 0, 0.5, 'smootherStepOut');
			playSound('light',2);
		end
		if total == 3 then
			hit = 0;
			total = 0;
		end
    	end
end
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Lighter Note' then
		triggerEvent('Play Animation','hurt', 'bf');
		playSound('missnote3',.6);
		total = total + 1;
		if total == 3 then
			hit = 0;
			total = 0;
		end
	end
end