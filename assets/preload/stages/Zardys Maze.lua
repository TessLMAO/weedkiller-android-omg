function onCreate()
makeAnimatedLuaSprite('darkness','Zardys-maze/Zardy2BG',-1000,450)
scaleObject('darkness',2,2)
addAnimationByPrefix('darkness','dance','BG',18,true)
objectPlayAnimation('darkness','dance',false)
setScrollFactor('darkness',1,1);
addLuaSprite('darkness',false);
makeLuaSprite('vignette','vignette',0,0);
scaleObject('vignette',2,2)
makeLuaSprite('vignette2','vignette2',0,0);
scaleObject('vignette2',2,2)
makeLuaSprite('popup','popup',0,0);
addLuaSprite('vignette',false);
addLuaSprite('vignette2',false);
addLuaSprite('popup',false);
setProperty('vignette2.alpha',0);
setProperty('popup.alpha',0);
setObjectCamera('vignette','other');
setObjectCamera('vignette2','other');
setObjectCamera('popup','other');
end
function onStepHit()
if curStep == 1 then
doTweenAlpha('popupfadein','popup',1,2,'smootherStepOut')
end
if curStep == 33 then
doTweenAlpha('popupfadeout','popup',0,2,'smootherStepOut')
end
end