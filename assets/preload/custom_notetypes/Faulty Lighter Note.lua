function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Faulty Lighter Note' then
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
   	if noteType == 'Faulty Lighter Note' then
        	hit = hit + 1;
		total = total + 1;
		triggerEvent('Play Animation','idle', 'bf');
		if hit == 1 then
			playSound('strike',2.5);
		end
		if hit == 2 then
			playSound('strike',2.5);
		end
		if hit == 3 then
			playSound('strike',2.5);
		end
		if hit == 4 then
			playSound('strike',2.5);
		end
		if hit == 5 then
			playSound('strike',2.5);
		end
		if hit == 6 then
			playSound('strike',2.5);
		end
		if hit == 7 then
			playSound('strike',2.5);
		end
		if hit == 8 then
			doTweenAlpha('vignettefadeout','vignette2', 0, 0.5, 'smootherStepOut');
			playSound('light',2.5);
		end
		if total == 8 then
			hit = 0;
			total = 0;
		end
    	end
end
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Faulty Lighter Note' then
		triggerEvent('Play Animation','hurt', 'bf');
		playSound('missnote3',.6);
		total = total + 1;
		if total == 8 then
			hit = 0;
			total = 0;
		end
	end
end