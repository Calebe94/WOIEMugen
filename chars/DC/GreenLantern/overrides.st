; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, lines]
type = Explod
trigger1 = timemod = 3,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1


[state 1101, twister]
type = afterimage
triggerall = palno != 10 && palno != 11 && palno != 12
trigger1 = time = 0
time = 30
length = 20
palbright = 30,30,30
palcontrast = 120,220,120
;paladd = 200, 249, 39
paladd = 10,25,10
palmul = .65,.75,.55
framegap = 5
trans = add

[state 1101, twister]
type = afterimage
triggerall = palno = 12
trigger1 = time = 0
time = 30
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
;paladd = 200, 249, 39
paladd = 25,10,10
palmul = .75,.65,.55
framegap = 5
trans = add

[state 1101, twister]
type = afterimage
triggerall = palno = 10 ;&& palno != 11 && palno = != 12
trigger1 = time = 0
time = 30
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
;paladd = 200, 249, 39
paladd = 10,10,25
palmul = .65,.65,.75
framegap = 5
trans = add

[state 1101, twister]
type = afterimage
triggerall =palno = 11; && palno = != 12
trigger1 = time = 0
time = 30
length = 20
palbright = 30,30,30
palcontrast = 220,220,120
;paladd = 200, 249, 39
paladd = 25,25,10
palmul = .75,.75,.55
framegap = 5
trans = add

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = Time = 35
value = IfElse(Pos Y < 0, 948, 0)
ctrl = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9


[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 8,1

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 3101  && NumExplod(3102) > 0
id = 3102
;ignorehitpause =
;persistent =

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = pos y = 0  && NumExplod(651) > 0
id = 651

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = pos y = 0  && NumExplod(621) > 0
id = 611

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = pos y = 0  && NumExplod(611) > 0
id = 611

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 3102 && NumExplod(3117) > 0
id = 3117

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 3401 && NumExplod(3403) > 0
id = 3403

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 3401 && NumExplod(3404) > 0
id = 3404


[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = stateno != 3401 && NumExplod(3407) > 0
id = 3407


[State -2, VarSet]
type = VarSet
triggerall =  numhelper(1301) = 0 && numhelper(1302) = 0
trigger1 =  var(5) != 0
v = 5    ;fv = 10
value = 0

[State -2, VarSet]
type = VarSet
triggerall =  stateno != 3102 && stateno != 3101  && stateno != 3100
trigger1 =  var(10) != 0
v = 10    ;fv = 10
value = 0


[State -2, Explod]
type = Explod
trigger1 =  (anim = 120 || anim = 130 || anim = 140 || anim = 150) && numexplod(125)=0
anim = 125
ID = 125
pos = 20,-80
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 120 && anim != 130 && anim != 140 && anim != 150 && numexplod(125)>=0
id = 125


[State -2, Explod]
type = Explod
trigger1 =  (anim = 121 || anim = 131 || anim = 141 || anim = 151) && numexplod(125)=0
anim = 125
ID = 126
pos = 20,-30
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 121 && anim != 131 && anim != 141 && anim != 151 && numexplod(125)>=0
id = 126


[State -2, Explod]
type = Explod
trigger1 =  (anim = 122 || anim = 132 || anim = 142 || anim = 152) && numexplod(125)=0
anim = 125
ID = 127
pos = 20,-65
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim != 122 && anim != 132 && anim != 142 && anim != 152 && numexplod(125)>=0
id = 127

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  stateno != 2500 && numexplod(2504)>=0
id = 2504

[State -2, Explod]
type = Explod
trigger1 =  (anim = 0 || anim = 7)  && numexplod(2)=0
anim = 2
ID = 2
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=7 && anim !=0 && numexplod(2)>=0
id = 2

[State -2, Explod]
type = Explod
trigger1 =  (anim = 11)  && numexplod(3)=0
anim = 3
ID = 3
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 =  anim !=11 && numexplod(3)>=0
id = 3

;zvitor resetando variaveis da projeção
[State -2, VarSet]
type = VarSet
triggerall =  var(27) != 0
trigger1 = stateno != 2500 && stateno != 2502
v = 27
value = 0

[State -2, VarSet]
type = VarSet
triggerall =  var(26) != 0
trigger1 = stateno != 2500 && stateno != 2502
v = 26
value = 0

[State -2, VarSet]
type = VarSet
triggerall =  var(25) != 0
trigger1 = stateno != 2500 && stateno != 2502
v = 25
value = 0



;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1

;--------------------------------------------------
; Level-up sounds (uses Var(2))
[State -3, levelup var 0]
type = VarSet
trigger1 = power < 1000
v =  2
value = 0

[State -3, levelup snd 1]
type = PlaySnd
trigger1 = (power >= 1000) && (power < 2000) && (var(2) < 1) && (RoundState = 2)
value = 12,0

[State -3, levelup var 1]
type = VarSet
trigger1 = (power >= 1000) && (power < 2000)
v =  2
value = 1

[State -3, levelup snd 2]
type = PlaySnd
trigger1 = (power >= 2000) && (power < 3000) && (var(2) < 2) && (RoundState = 2)
value = 12,1

[State -3, levelup var 2]
type = VarSet
trigger1 = (power >= 2000) && (power < 3000)
v =  2
value = 2

[State -3, levelup snd 3]
type = PlaySnd
trigger1 = (power >= 3000) && (var(2) < 3) && (RoundState = 2)
value = 12,2

[State -3, levelup var 3]
type = VarSet
trigger1 = (power >= 3000)
v =  2
value = 3


;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1


; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

; "Win by hyper" effect
[State -3, Explod]
type = Explod
trigger1 = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
anim = 12000
ID = 12000
pos = 0,0
postype = left
bindtime = 100
sprpriority = -1
ownpal = 1

[State -3, Overide Hits]
type = HitOverRide
trigger1 = numhelper(1301)!=0 || numhelper(1302)!=0
time = 2
slot = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1303
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

