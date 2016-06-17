;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WONDER WOMAN RELOADED  -  Version 2.0   02/17/2007
;Edits & Codes by Loganir 
;-----------     Loganir@gmail.com ------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
; States that are executed when in self's state file (use statedef -3)
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

[Statedef -3]

[State -3, a4];eagle hyper armor
type = HitOverride
trigger1 = StateNo = 3109||StateNo = 3110||StateNo = 3105||StateNo = 3107
time = 1
slot = 4
attr = SCA,AA,AP,AT
stateno = 9000
ignorehitpause = 1 
[State -3, VarSet]
type = VarSet
trigger1= (StateNo >= 3105) && (MoveType != H)
var(7) = StateNo 
ignorehitpause = 1

[State -3, brsnd]
type = PlaySnd
triggerall = !Time && alive
trigger1 = stateno = 150 || stateno = 152 || stateno = 154 
value = 7,ifelse(random<500,0,5)
channel = 6

[State -3, brsnd]
type = StopSnd
trigger1 =(prevStateNo = [1400,1402]) && (movetype=H)
channel = 10
ignorehitpause = 1

[State -3, aa]
type = removeexplod
trigger1 =(prevStateNo = [1500,1510])
id = 1510
[State -3, a1]
type = removeexplod
trigger1 =(prevStateNo = [1500,1510])
id = 1520


[State -3, ab ]
type = TargetState
trigger1 = (WinKO) && (enemy,name="The Mighty Thor") && (roundno>=2)
trigger1 =(enemy,stateno=5100)||(enemy,stateno=5110)
value = 51515;EnemyNear, StateNo
ignorehitpause = 1

[State -3, bb]
Type = explod
triggerall = (WinKO) 
trigger1=(enemy,name="The Mighty Thor")&& (enemy,stateno=51515) && (enemy,time=100) 
id =18790
anim = 18790
ownpal = 1
pos = 0,0
postype = back
bindtime = -1
supermovetime = -1
sprpriority = -23
removetime = 2900
scale = 1,1


;================= Winane's activation A.I.
; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI
; activation concept.
[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(59) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(59) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "greathera2"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AI Helper]
type = Helper
triggerall = !var(59) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "greathera"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(59) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(59) = 1

[State -3, RCSC Helper];"Recent Custom State Check"
type = Helper
triggerall = var(59)!=1 && !IsHelper
triggerall = !NumHelper(9743)
triggerall = Alive && RoundState = 2
trigger1 = MatchNo = 1
trigger2 = NumPartner
trigger2 = ID > Partner,ID
HelperType = normal
name = "greathera3"
ID = 9743
pos = 9999999,99999
StateNo = 9743
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1
;=================end Winane's activation A.I.




;wwwwwwwwww based by P.o.t.s codes, thanks man!!!wwwwwwwwwwwwwwwwwwwwwwww
[State -3, Hurt sound] 
type = playsnd
triggerall = alive && (time = 1)&&(random > 300)
trigger1 = stateno = 5000||stateno = 5010||stateno = 5020||stateno = 5080|| stateno = 5100
value = 51,ceil (random/300)
channel = 0
ignorehitpause = 1
persistent = 0
[State -3, a1];dampner
type = varadd
trigger1 = time = 1 && movetype = A && fvar(10)<.8
;fvar(10)= ifelse((stateno = [3000,4999]),.15,ifelse((stateno = [1000,2999]),.1,.07))
fvar(10)= ifelse((stateno = [3000,3499]),.25,ifelse((stateno = [1000,2999]),.18,.15))
ignorehitpause = 1
[State -3, a2];reset
type = varset
trigger1 = numenemy && fvar(10)
trigger1 = (enemynear,movetype!=H)
fvar(10) = 0
persistent = 0
ignorehitpause = 1
[State -3, a3]
type = attackmulset
trigger1 = 1
value = ifelse(fvar(10)>=.8,.15,1-fvar(10))
ignorehitpause = 1
;wwwwwwwwww end based by P.o.t.s codes, thanks man!!!wwwwwwwwwwwwwwwwwwwwwwww


;WWWWWWWWW special\hyper finish WWWWWWWWWWWWWWWWWWWW
[State -3,special finish] ;based on tutorial Flowagirl archive codes
type = Helper
triggerall = (WinKO) && (!NumHelper(8740)) && (!NumHelper(8787))
trigger1 =(StateNo = [200,700])
trigger2 =(StateNo = [1000,1600]) 
trigger3 =(StateNo = [12100,12650]) 
helpertype = Normal
name = "SpecialFinish"
id = 8740
pos = 0, -1500
postype = back
facing = 0
stateno = 8740
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -3, WINKO] 
type = Helper
triggerall = (WinKO) && (!NumHelper(8787)) && (enemy,time=1)
trigger1 =(StateNo = [3000,3800]) 
helpertype = Normal
name = "WinKO"
id = 8787
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno = 8787
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1


;======================================================
[State -3, DCvsM] ;Turn On DCvsM screenpack fx 
type = VarSet
;trigger1 = palno = 7
trigger1 = palno=[1,12]
v = 55
value = 1
ignorehitpause = 1
;======================================================



;WWWWWWWWWWWW HESTIA LASSO EFFECT WWWWWWWWWWWWWW
[State -3, hestia]
type = Helper
triggerall =(!Numhelper(7500)) 
trigger1 = (!movetype=H) 
trigger2 = (stateno != [1000,1350])
trigger3 = (stateno != [3000,3150])
trigger4 = (stateno != [3505,3507])
helpertype = normal
name = "hestia"
ID = 7500
stateno = 7500
pos = 0,0
postype = p1
facing = 1
ownpal =1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1


