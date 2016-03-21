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
type  = S
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 100, lines]
type = Explod
trigger1 = timemod = 3,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -65;-20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

[State 191, dust]
type = Explod
trigger1 = animelem = 2
anim = 918
ID = 918
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 33
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 110,110,110
removeongethit = 0

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

[State 0, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 30
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1


;---------------------------------------------------------------------------
; Air dash
[Statedef 101]
type  = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 21    ;fv = 10
value = 0
;ignorehitpause =
;persistent =


[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 100, lines]
type = Explod
trigger1 = timemod = 3,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -60;-20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

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

[State 0, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 30
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

;----------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "Atomictime = %d Airdash = %d"
params = var(20), var(21)

;AtomicTime
[State -2, atomictime]
type = null;VarAdd
Triggerall = (stateno != [1011,1012])    ;[1011,1012]
Triggerall =  var(20) < 50
trigger1 = 1
v = 20
value = gametime % 20 = 1
ignorehitpause = 1
;persistent =

;AtomicTime
[State -2, atomictime]
type = VarAdd
Triggerall = (stateno != [1011,1013])    ;[1011,1012]
Triggerall =  var(20) < 500
trigger1 = gametime % 50
v = 20
value = 1
ignorehitpause = 1
;persistent =

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


[State -2, gethit light]
type = PlaySnd
triggerall = Time = 1 && !IsHelper
triggerall = Random <= 499
trigger1 = anim = 5000  ; standing weak hit high
trigger2 = anim = 5010  ; stand weak hit low
trigger3 = anim = 5020  ; crouching weak hit
persistent = 0
channel = 0
persistent = 1
value = 4,0
volume = 100

[State -2, gethit med]
type = PlaySnd
triggerall = Time = 1 && !IsHelper
triggerall = Random <= 499

trigger1 = anim = 5001  ; standing med hit high
trigger2 = anim = 5011  ; stand med hit low
trigger3 = anim = 5021  ; crouching med hit
trigger4 = anim = 5030  ; air hit
persistent = 0
channel = 0
persistent = 1
value = 4,1
volume = 100

[State -2, gethit hard]
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 1) && (!IsHelper)
triggerall = Random <= 350

trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
channel = 0
persistent = 1
value = 4,2
volume = 100;75

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1
;---------------------------
;Damage Dampener
[state -2]
type = attackmulset
triggerall = gethitvar(hitcount)> 10
trigger1 = movetype = A
value = enemynear(0) ,gethitvar(hitcount) ** -0.9;0.9
;enemynear(0)


[state -2]
type = attackmulset
triggerall = gethitvar(hitcount)<= 10
trigger1 = movetype = A
value = 1

;-------------------------
; Power Slot OSD
;
; Adapted from code by FlowaGirl
;flowergirl@cutey.com
;http://blargh.i-xcell.com
;thank you Buyog!

;---------------------
;Grey atomictime
[State -2, PowerIcon2]
type = Explod
Triggerall = NumPartner < 1
Triggerall = PalNo = [1,6]
trigger1 = RoundState = 2
anim = 2007
pos = ifelse(TeamSide = 1, 6, 313), 209       ;y=6   +20
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999990
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1
ontop = 1

; atomictime Full
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner < 1
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) >= 500
anim = 2000
pos = ifelse(TeamSide = 1, 6, 313), 209
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime four
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner < 1
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 500
Trigger1 =  var(20) >= 400
anim = 2001
pos = ifelse(TeamSide = 1, 6, 313), 209
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime three
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner < 1
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 400
Trigger1 =  var(20) >= 300
anim = 2002
pos = ifelse(TeamSide = 1, 6, 313), 209
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime two
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner < 1
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 300
Trigger1 =  var(20) >= 200
anim = 2003
pos = ifelse(TeamSide = 1, 6, 313), 209
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime one
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner < 1
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 200
Trigger1 =  var(20) >= 100
anim = 2004
pos = ifelse(TeamSide = 1, 6, 313), 209
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1
;-------------------
;partner, name = "animalman"
;partner, name = "parasite"

;///////////////////////
;AM-partner
;Grey atomictime
[State -2, PowerIcon2]
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
trigger1 = RoundState = 2 && partner, name = "animalman"
anim = 2007
pos = ifelse(TeamSide = 1, 6, 313), 140       ;y=6   +20
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999990
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1
ontop = 1

; atomictime Full
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) >= 500 && partner, name = "animalman"
anim = 2000
pos = ifelse(TeamSide = 1, 6, 313), 140
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime four
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 500  && partner, name = "animalman"
Trigger1 =  var(20) >= 400 && partner, name = "animalman"
anim = 2001
pos = ifelse(TeamSide = 1, 6, 313), 140
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime three
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 400 && partner, name = "animalman"
Trigger1 =  var(20) >= 300 && partner, name = "animalman"
anim = 2002
pos = ifelse(TeamSide = 1, 6, 313), 140
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime two
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 300 && partner, name = "animalman"
Trigger1 =  var(20) >= 200 && partner, name = "animalman"
anim = 2003
pos = ifelse(TeamSide = 1, 6, 313), 140
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime one
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 200 && partner, name = "animalman"
Trigger1 =  var(20) >= 100 && partner, name = "animalman"
anim = 2004
pos = ifelse(TeamSide = 1, 6, 313), 140
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1
;---------------------
;///////////////////////
;random-partner
;Grey atomictime
[State -2, PowerIcon2]
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
trigger1 = RoundState = 2 && partner, name != "animalman"
anim = 2007
pos = ifelse(TeamSide = 1, 6, 313), 175        ;y=6   +20
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999990
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1
ontop = 1

; atomictime Full
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) >= 500 && partner, name != "animalman"
anim = 2000
pos = ifelse(TeamSide = 1, 6, 313), 175
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime four
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 500  && partner, name != "animalman"
Trigger1 =  var(20) >= 400 && partner, name != "animalman"
anim = 2001
pos = ifelse(TeamSide = 1, 6, 313), 175
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime three
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 400 && partner, name != "animalman"
Trigger1 =  var(20) >= 300 && partner, name != "animalman"
anim = 2002
pos = ifelse(TeamSide = 1, 6, 313), 175
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime two
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 300 && partner, name != "animalman"
Trigger1 =  var(20) >= 200 && partner, name != "animalman"
anim = 2003
pos = ifelse(TeamSide = 1, 6, 313), 175
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1

; atomictime one
[State -2, orbs]        ;trigger1 = var(20) > 0
type = Explod
Triggerall = NumPartner > 0
Triggerall = PalNo = [1,6]
Triggerall = RoundState = 2
Trigger1 =  var(20) < 200 && partner, name != "animalman"
Trigger1 =  var(20) >= 100 && partner, name != "animalman"
anim = 2004
pos = ifelse(TeamSide = 1, 6, 313), 175
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 99999999999999992
shadow = 0,0,0
ownpal = 0
ignorehitpause = 1
ontop = 1
;---------------------
;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
;trigger2 = StateNo = 101 ;Run-fdw land
trigger2 = StateNo = 106 ;Run-back land
trigger3 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
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
;trigger2 = StateNo = 101 ;Run-fwd land
trigger2 = StateNo = 106 ;Run-back land
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


;[StateDef 3000] [StateDef 9999999]
;name = "Super BG"
;ID = 8005
; "Win by hyper" effect
[State -3, Explod]
type = Explod
triggerall = NumHelper(8005) > 0 || StateNo= 43213
trigger1 = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
trigger2 = (RoundState = 3) && (Life > 0) && (NumExplod(12000) = 0)
anim = 12999
ID = 12000
pos = 0,0
postype = left
bindtime = -1
removetime = -2
sprpriority = -1
ownpal = 1
ignorehitpause = 1


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

