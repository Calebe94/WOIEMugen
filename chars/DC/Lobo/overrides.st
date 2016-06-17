; States file for Lobo -- Overrides
;
;---------------------------------------------------------------------------
; Vars:
;   0: Super Jump direction flag (0=vertical, 1=forward, -1=backward)
;   1: Mr. Hook hit flag (0: missed, 1=hit)
;   2: "levelup" sounds
;   5: Frag ammo counter
;   6: "no ammo" flag for Air Frag
;  10: Main Men clone timer
;  12: AI activation
;  20: RotGut special states
;     (1: attack power up; 2: super armor; 3: superspeed)
;  21: RotGut effect timer
;  22: RotGut power multiplier
; FVars:
;   0: RotGut move speed multiplier
; Helpers:
;   0: superjump opponent position indicator
;   5: Frag ammo display
;  10: "Main Men" clone #1
;  11: "Main Men" clone #2
;  25: Frag grenade
;3305: BFG shell
; Explods:
;  10: "Main Men" clone #1 timer bar
;  11: "Main Men" clone #2 timer bar
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0 + IfElse(Var(20)=3, 11000, 0)

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

[State 0, make clone solid]
type = PlayerPush
trigger1 = IsHelper
value = 1

[State 0, Turn clones to face opponent]
type = Turn
trigger1 = IsHelper
trigger1 = P2Dist X < 0

;[State 0, clone gethit handler]
;type = HitOverride
;trigger1 = IsHelper
;attr = SCA, NA, SA, HA, NP, SP, HP 
;slot = 0
;stateno = 3110  ;3120
;time = -1

;---------------------------------------------------------------------------
; Walk (overridden for Main Men clones, superspeed powerup)
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]   ; regular
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = !ishelper
x = const(velocity.walk.fwd.x) * FVar(0)

[State 20, 1]   ; "Abbott" clone
type = Null ;VelSet
trigger1 = command = "holdfwd"
trigger1 = ishelper(10)
x = const(velocity.walk.fwd.x) + 0.75

[State 20, 1]   ; "Costello" clone
type = Null ;VelSet
trigger1 = command = "holdfwd"
trigger1 = ishelper(11)
x = const(velocity.walk.fwd.x) - 0.75

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = !ishelper
x = const(velocity.walk.back.x) * FVar(0)

[State 20, 2]   ; "Abbott" clone
type = Null ;VelSet
trigger1 = command = "holdback"
trigger1 = ishelper(10)
x = const(velocity.walk.back.x) - 0.75

[State 20, 2]   ; "Costello" clone
type = Null ;VelSet
trigger1 = command = "holdback"
trigger1 = ishelper(11)
x = const(velocity.walk.back.x) + 0.75

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 20, make clone solid]
type = PlayerPush
trigger1 = IsHelper
value = 1

;---------------------------------------------------------------------------
; Jump Start (overridden for superspeed & super-armor powerups, Main Men clone AI)
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * FVar(0)
y = const(velocity.jump.y) * FVar(1)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x) * FVar(0)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump fall (after an attack)
[Statedef 48]
type    = A
physics = A

[State 48, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 48
;elem = 
;ignorehitpause = 0
;persistent = 1


;---------------------------------------------------------------------------
; Hop forward (overrides run)
[Statedef 100]
type    = A
physics = U
anim = 101  ;100
sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

[State 100, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ontop = 1

[State 100, lines]
type = Explod
trigger1 = timemod = 2,1
anim = 111
ID = 111
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -100, -50
random = 10,50
xscale = 0.5
yscale = 0.5
sprpriority = -3
;ontop = 1
bindtime = 1
ownpal = 1

[State 100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
physics = A

[State 100, 1]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.fwd.x) * IfElse(Var(20)=3, 2.5, 1)
y = const(velocity.run.fwd.y) * IfElse(Var(20)=3, 1.5, 1)


;---------------------------------------------------------------------------
; HITG_SHAKE (overridden for super-armor powerup) -- adapted from Carnificina's tutorial
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
triggerall = GetHitVar(animtype) != [3,5]
trigger1 = Time = 0 && Var(20) != 2
trigger2 = GetHitVar(hitcount) >=3 && Var(20)=2
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

;Generated by Fighter Factory PalFX Editor
[State 5000, PalFXWiz]
type = PalFX
trigger1 = Var(20)=2 && GetHitVar(hitcount) < 3
time = 2
add = 64,0,0
color = 0

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0 ; && Var(20) != 2
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger1 = Time = 0 && Var(20) != 2
trigger2 = Pos Y != 0
trigger3 = Var(20)=3 && GetHitVar(hitcount) >= 3
type = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;-------------------------------------------------------------------------
; Super-armor (RotGut effect) hit overrides -- adapted from Carnificina's tutorial
; Standing hit override (super-armor)
[Statedef 1061]
type = S
movetype = A
physics = S

[State 1061, 1]
type = NotHitBy
trigger1 = Time <= 4
value = SCA
time = 1

[State 1061, 2]
type = velset
trigger1 = time <= 5
x = 0

[State 1061, 3]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 1061, 4]
type = ChangeState
trigger1 = time >= 6
trigger1 = Pos Y = 0
value = 0
ctrl = 1

; Crouching hit override (super-armor)
[Statedef 1062]
type = C
movetype = H
physics = C
ctrl = 0
anim = 11

[State 1062, 1]
type = NotHitBy
trigger1 = Time <= 4
value = SCA
time = 1

[State 1062, 2]
type = velset
trigger1 = time <= 5
x = -3

[State 1062, 3]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 1062, 4]
type = ChangeState
trigger1 = time >= 6
trigger1 = Pos Y = 0
value = 11
ctrl = 1

; Air hir override (super-armor)
[Statedef 1063]
type = A
movetype = H
physics = A
ctrl = 0

[State 1063, 1]
type = NotHitBy
trigger1 = Time <= 4
value = SCA
time = 1

[State 1063, 2]
type = velset
trigger1 = time <= 5
x = -1

[State 1063, 3]
type = CtrlSet
trigger1 = time >= 6
value = 1
;==============================================================================


;;---------------------------------------------------------------------------
;; HITA_FALL (knocked up, falling)   -- customized to implement recovery roll
;[Statedef 5050]
;type    = A
;movetype= H
;physics = N
;
;[State 5050, 1] ;Change anim when done with transition
;type = ChangeAnim
;trigger1 = AnimTime = 0
;trigger1 = Anim = 5035
;trigger2 = Time = 0     ;If no transition anim
;trigger2 = Anim != 5035
;trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
;trigger2 = Anim != 5090 ;Not if hit off ground anim
;value = 5050
;
;[State 5050, 2] ;Coming down anim
;type = ChangeAnim
;trigger1 = anim = [5050,5059]
;trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
;trigger1 = SelfAnimExist(anim+10)
;value = anim+10
;persistent = 0
;
;[State 5050, 3] ;Gravity
;type = VelAdd
;trigger1 = 1
;y = GetHitVar(yaccel)
;
;[State 5050, 4] ;Recover near ground
;type = ChangeState
;triggerall = Vel Y > 0
;triggerall = Pos Y >= -20
;triggerall = alive
;triggerall = CanRecover
;trigger1 = Command = "recovery"
;value = 5200 ;HITFALL_RECOVER
;
;[State 5050, 5]; Recover in mid air
;type = ChangeState
;triggerall = Vel Y > -1
;triggerall = alive
;triggerall = CanRecover
;trigger1 = Command = "recovery"
;value = 5210 ;HITFALL_AIRRECOVER
;
;[State 5050: Null]
;type = Null
;trigger1 = (!Time)
;trigger1 = (Var(0) := 0)
;trigger2 = (Vel Y > -1) && (Alive) && (Command = "recovery roll")
;trigger2 = (Var(0) := 1)
;
;[State 5050: ChangeState]
;type = ChangeState
;trigger1 = (Vel Y > 0) && (Pos Y >= IfElse((Anim = [5051,5059]) || (Anim = [5061,5069]),0,25))
;value = IfElse(Var(0) = 1,900,5100)
;
;
;;---------------------------------------------------------------------------
;; HIT_TRIP2 (fall through air)  -- customized to implement recovery roll
;[Statedef 5071]
;type    = A
;movetype= H
;physics = N
;
;[State 5071, 1]
;type = HitVelSet
;trigger1 = Time = 0
;x = 1
;y = 1
;
;[State 5071, 2] ;Acceleration
;type = VelAdd
;trigger1 = 1
;y = GetHitVar(yaccel)
;
;[State 5071: Null]
;type = Null
;trigger1 = (!Time)
;trigger1 = (Var(0) := 0)
;trigger2 = (Vel Y > -1) && (Alive) && (Command = "recovery roll")
;trigger2 = (Var(0) := 1)
;
;[State 5071: ChangeState]
;type = ChangeState
;trigger1 = (Vel Y > 0) && (Pos Y >= 15)
;value = IfElse(Var(0) = 1,900,5110)


;---------------------------------------------------------------------------
; Initialize (at the start of the round) - overridden to reset ammo count each round
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables under var(4)
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0
first = 0
last = 4

[State 5900, 1b]    ; ammo count
type = VarSet
trigger1 = 1
v = 5
value = 6

[State 5900, 1c] ;Clear all int variables past var(5)
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0
first = 6
last = 59

[State 5900, 3] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0
first = 1

[State 5900, 3a]    ; speed multiplier
type = VarSet
trigger1 = 1
fv = 0
value = 1.0

[State 5900, 3b]    ; jump speed multiplier
type = VarSet
trigger1 = 1
fv = 1
value = 1.0

[State 5900, 4] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190




;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]


;; Tech Hit
;[State -2, tech hit]
;type = ChangeState
;value = 5200
;triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))
;triggerall = statetype = S
;trigger1 = (ctrl = 0) && MoveType = H


[State -2, dizzy reapers]
type = Explod
trigger1 = (Anim = 5300) && (NumExplod(5301) = 0)
anim = 5301
ID = 5301
bindtime = -1
removetime = -1
sprpriority = 4
ownpal = 0

[State -2, nodizzy]
type = RemoveExplod
trigger1 = (Anim != 5300) && (NumExplod(5301) > 0)
ID = 5301


[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = Alive
;text = "RotGut effect: %d, RotGut timer: %d, Defense mult: %d, Speed mult: %f"
;params = Var(20), Var(21), const(data.defence), FVar(0)
;text = "P2BodyDist X: %f / Facing: %d"
;params = P2BodyDist X, Facing
;text = "Superjump trigger: %d"
;params = Var(0)
text = "sysvar(3): %d"
params = sysvar(3)


[State -2, RotGut effect timer]
type = VarAdd
triggerall = !IsHelper && (Var(20) > 0) && (RoundState = 2)
;triggerall = TimeMod = 2,1
trigger1 = Var(21) > 0
v = 21
value = -1

[State -2, RotGut powerup: PalFX]
type = PalFX
triggerall = Var(20) = 1
trigger1 = Var(21) > 0
time = 12
add = 0,0,0
mul = 256,512,256
sinadd = 0,0,0,1
invertall = 0
color = 256

[State -2, RotGut armor: PalFX]
type = PalFX
triggerall = Var(20) = 2
trigger1 = Var(21) > 0
time = 12
add = 64,64,64
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 0

[State -2, RotGut armor: DefenceMulSet]
type = DefenceMulSet
trigger1 = Var(20) = 2
value = 2

[State -2, RotGut armor: healing factor]
type = LifeAdd
triggerall = Var(20) = 2
triggerall = TimeMod = 3,1
trigger1 = Var(21) > 0
value = 2
absolute = 0

[State -2, RotGut PalFX: speed]
type = PalFX
triggerall = Var(20) = 3
trigger1 = Var(21) > 0
time = 12
add = 64,0,0
mul = 480,292,256
sinadd = 64,32,0,1
invertall = 0
color = 256

[State -2, SetCloneTimer]
type = VarAdd
triggerall = (IsHelper) && (StateNo != 3110) && (RoundState = 2)
trigger1 = Var(10) = [0,300]
trigger2 = (GameTime % 1) = 0
v = 10
value = 1

[State -2, Clone timeout]
type = ChangeState
triggerall = IsHelper
trigger1 = numhelper(10) > 2
trigger2 = (Var(10) >= 300) && (StateType != A)
;trigger3 = roundstate > 2
value = 3110

[State -2, killHyperBG]
type = VarSet
;trigger1 = (sysvar(3) = 1) && (NumHelper(3305) = 0)
;trigger1 = IfElse ( NumHelper(10)>0, (helper(10),StateNo = 3110), 1 )
trigger1 = (sysvar(3) = 1) && (NumHelper(10) = 0) && (NumHelper(3305) = 0)
sysvar(3) = 0

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = alive && (Time = 1)
triggerall = random < 100
triggerall = Var(20) != 2 ; no grunts when super-armored
trigger1 = stateno = [5000,5022] ; standing hard hit high
trigger2 = stateno = 5030   ; air hit
trigger3 = stateno = 5070   ; tripped
channel = 0
value = 4,0

[State -2, "feetal's gizzard!"]          ; custom electrocuted sound
type = Null ;PlaySnd
triggerall = alive && (time = 1)
trigger1 = anim = 7696
;trigger1 = AnimTime = -15
persistent = 1
channel = 0
loop = 0
value = 4,10

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1



;==========================[Armor]============================
; (adapted from Carnificina's tutorial)
[State -2, Armor Mode]
type = ChangeState
trigger1 = Var(20) = 2
trigger1 = Alive = 1
trigger1 = movetype = H
trigger1 = anim >= 5000
trigger1 = anim <= 5110
trigger1 = StateType = S
time = 1
attr = SCA, NA, SA ;, NP, SP
slot = 0
value = 1061

; not hit by projectiles or throws when armored
[State -2, NotHitBy]
type = NotHitBy
trigger1 = Var(20) = 2
value = , AP, AT
time = 1

[State -2, Armor Mode]
type = ChangeState
trigger1 = Var(20) = 2
trigger1 = Alive = 1
trigger1 = movetype = H
trigger1 = anim >= 5000
trigger1 = anim <= 5110
trigger1 = StateType = C
time = 1
attr = SCA, NA, SA, NP, SP
slot = 1
value = 1062

[State -2, Armor Mode]
type = ChangeState
trigger1 = Var(20) = 2
trigger1 = Alive = 1
trigger1 = movetype = H
trigger1 = anim >= 5000
trigger1 = anim <= 5110
trigger1 = StateType = A
time = 1
attr = SCA, NA, SA, NP, SP
slot = 2
value = 1063
;==============================================================================



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

[State -3, Armored Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) = 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 4

[State -3, reset "no ammo in air frag" var]
type = VarSet
triggerall = Time = 1
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
v = 6
value = 0

[State -3, reset superjump direction var]
type = VarSet
triggerall = Time = 1
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
v = 0
value = 0


;-------------------------
; clone timer bar
; adapted from FlowaGirl's meterbar tutorial: http://blargh.i-xcell.com
[State -3: clone timer bar]
type = Explod
trigger1 = (IsHelper(10) || IsHelper(11)) && (RoundState = 2) ; && Alive
trigger1 = Var(10) = [0,300]    ;< 300
anim = 3230 - (Var(10) / 10)
pos = 0,-130
postype = p1
bindtime = -1
removetime = 1
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1


; Force clones into winpose if roundstate > 2 and we won
[State -3: clone winpose]
type = ChangeState
triggerall = IsHelper(10) || IsHelper(11)
;trigger1 = (RoundState = 4) & (StateNo != 189) & Win
trigger1 = (RoundState = 4) & (StateNo = 0) & Win
value = 189

; Force clones into lose pose if roundstate > 2 and we lost / were KO'ed
[State -3: clone losepose]
type = ChangeState
triggerall = IsHelper(10) || IsHelper(11)
trigger1 = (RoundState = 4) && (StateNo = 0) && (DrawGame || Lose)
value = 179

;--------------------------
; RotGut effect timer bar
[State -3: rotgut timer bar]
type = Explod
triggerall = !IsHelper && (RoundState = 2)
trigger1 = Var(20) > 0
anim = 3200 + (Var(21) / 10)
pos = -20,-110
postype = p1
bindtime = -1
removetime = 1
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

; turn off RotGut effect
[State -3: cancel rotgut]
type = VarSet
trigger1 = Var(20) > 0 && Var(21) = 0
v = 20
value = 0

[State -3: cancel SuperArmor]
type = DefenceMulSet
trigger1 = Var(20) = 0
trigger1 = const(data.defence) != 1
value = 1

[State -3: reset rotgut speed mul]
type = VarSet
trigger1 = FVar(0) != 1 && Var(20) = 0
fv = 0
value = 1

[State -3: reset rotgut jump speed mul]
type = VarSet
trigger1 = FVar(1) != 1 && Var(20) = 0
fv = 1
value = 1

;-------------------------
; Frag ammo counter OSD
;
; Adapted from code by FlowaGirl
;flowergirl@cutey.com
;http://blargh.i-xcell.com

[State -3, bullet counter]
type = Explod
trigger1 = RoundState = 2
anim = 1010 + var(5)
pos = ifelse(TeamSide = 1, 1, 319), 196
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1


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

;--------------------------------
;Author: FlowaGirl
;flowergirl@cutey.com
;http://blargh.i-xcell.com
;and Ethan Lives triggers.
; taken with permission from McCready's Guido char
;[State -3, Super Finish BG - Helper] 
;type = Helper
;triggerall = NumHelper(8900) < 1
;triggerall = (WinKO) && (NumHelper(8920) = 0) 
;trigger1 = (StateNo = [3000,4999]) && (Time >= 0)
;helpertype = Normal
;name = "Super Finish BG"
;id = 8920
;pos = 0, 0
;postype = p1
;facing = 0
;stateno = 8920
;keyctrl = 0
;ownpal = 1
;supermovetime = 1000
;pausemovetime = 1000
;ignorehitpause = 1

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
