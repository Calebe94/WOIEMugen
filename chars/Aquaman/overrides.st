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

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S172,17

[State 100, lines]
type = Explod
trigger1 = time = 0
anim = 101
ID = 101
removetime = -2
vel = const(velocity.run.fwd.x), 0
postype = p1
pos = -20,0
sprpriority = 5
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

[State 0, ChangeState]
type = ChangeState
triggerall = stateno = 0
trigger1 = enemynear,name="Namor" && enemynear, var(10) = 1
value = 3301
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


  [State -2, Clear DF Var]
type = VarSet
trigger1 = RoundState = 4
v = 5
value = 0

[State -2, Remove Foreground]
type = AssertSpecial
trigger1 = var(5) = 1
flag = NoFG
ignorehitpause = 1

[State -2, Remove BackGround]
type = AssertSpecial
triggerall = NumExplod(1005) = 1
trigger1 = var(5) = 1
flag = NoBG
ignorehitpause = 1




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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
;[State -3, Overide Hits]
;type = HitOverRide
;trigger1 = StateNo = 3301  ||  StateNo = 3320  ||   StateNo = 3330
;trigger2 = StateNo = 3340  ||  StateNo = 3350  ||   StateNo = 3360
;trigger3 = StateNo = 3370  ||  StateNo = 3380  ||   StateNo = 3210
;;trigger4 = StateNo = 1012
;time = 2
;slot = 0
;attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;stateno = 3210


; Decrement DF counter if in DF mode
[State -3, Decrement DF]
type = VarAdd
triggerall = var(4) > 0
trigger1 = var(5) = 1
trigger1 = StateNo != 3100
v = 4
value = -1
ignorehitpause = 1

; Leave DF mode if counter = 0 or other conditions met
[State -3, Leave DF]
type = ChangeState
triggerall = var(5) = 1
triggerall = StateNo != 3100
trigger1 = var(4) <= 0
trigger2 = life = 0
trigger3 = Win
trigger4 = command = "qcb_2k"
trigger4 = !var(11)
trigger5 = RoundState = 3
value = 3200
;------------
; Hyper Armor for DF mode
[State -3, DF VarSet]
type = VarSet
trigger1 = var(5) = 1
trigger1 = MoveType != H
var(3) = StateNo

[State -3, Overide Hits]
type = HitOverRide
trigger1 = var(5) = 1
time = 2
slot = 0
attr = SCA, AA, AP, AT
stateno = 3211

[State -3, Don't Leave 3000's During DF]
type = ChangeState
trigger1 = var(5) = 1
trigger1 = Movetype = H
trigger1 = Stateno != 3211
value = 3050

[State -3, Remove Foreground]
type = AssertSpecial
trigger1 = var(5) = 1
flag = NoFG
ignorehitpause = 1


[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 172,7
channel = 0
ignorehitpause = 1
volume = 255

[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 172,9
channel = 0
ignorehitpause = 1
volume = 255
