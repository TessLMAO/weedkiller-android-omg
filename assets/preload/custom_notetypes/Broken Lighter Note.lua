function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Broken Lighter Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'LighterNote_assets');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
   	if noteType == 'Broken Lighter Note' then
		triggerEvent('Play Animation','idle', 'bf');
		playSound('strike',2.5);
    	end
end
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Broken Lighter Note' then
		triggerEvent('Play Animation','hurt', 'bf');
		playSound('missnote3',.6);
	end
end