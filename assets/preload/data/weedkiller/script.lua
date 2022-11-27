local slaying = false
local slay = 0
local slayDir = 0
local allowCountdown = false
function onCreate()
makeLuaSprite('Slay','Splash',0,0)
scaleObject('Slay',2,2)
setObjectCamera('Slay','camHUD')
screenCenter('Slay','XY')
-- debugPrint('we up in here')
end
function onStartCountdown()
if not allowCountdown and not seenCutscene then
setProperty('inCutscene',true);
addLuaSprite('Slay',true)
runTimer('endShit',1.8);
allowCountdown = true;
return Function_Stop;
end
return Function_Continue;
end
function onTimerCompleted(tag,loops,loopsLeft)
if tag == 'endShit' then
doTweenAlpha('Slayin','Slay',0,1,'sineOut')
end
end
function onTweenCompleted(tag)
if tag == 'Slayin' then
removeLuaSprite('Slay',false)
startDialogue('poggin','pog');
end
end