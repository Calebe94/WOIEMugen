; States file for Lobo -- Hypers
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
; States in this file:
; 
; Lights Out, Clyde: 3000-3021
;   Multi-attack combo with the hook & chain
; Main Men: 3100-3120
;   Lobo slashes his wrist, spilling two splotches of blood. While he's
;     recovering from the startup, each bloody smear grows into a Lobo-clone
;     that mimics Lobo's moves, effectively tripling his attack power!
; BFG (BIG Friggin' Gun): 3300-3310
;   Not a beam super, but a big gun that fires heat-seeking shells
; Main Man Airlines: 3600-3620 (the 3500 moves are an earlier form of the move)
;   Like a cross between Megaman's Rush Drill and M.Bison's Psycho Crusher
; The Main Mallard (Amalgam): 4000-
;   Amalgam attack with Howard/Lobo the Duck -- basically a different BFG move
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lights Out, Clyde!
[StateDef 3000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3000
velset = 0,0
sprpriority = 1

[State 1000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = -10,-45
darken = 1
poweradd = -1000

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superbg]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, lightsOut]
type = PlaySnd
trigger1 = Time = 5
value = 10,10
channel = 0

;-------------------
; DCvM hyper portrait/BG
[State 3000, hyperBG1]
type = Null ;Helper
trigger1 = time = 0
name = "Orb"
ID = 8000
pos = 50,-75
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
ownpal = 1

[State 3000, hyperBG2]
type = Helper
trigger1 = time = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3001, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3000, go to lunge]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001



;-----------------
; Lights Out -- Initial lunge
[StateDef 3001]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3001
velset = 7,-5
sprpriority = 1

[State 3001, afterimages]
type = AfterImage
trigger1 = Time = 0
time = 300
length = 20
;framegap = 8
palcolor = 128
;palinvertall = 0
palbright = -255,-20,50
trans = none

[State 3001, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3001, HitOverride]
type = HitOverride
trigger1 = Alive
attr = SCA, NA,NT,NP,SA,ST,SP,HA,HT,HP
slot = 0
stateno = 3002
time = 1
forceair = 1


[State 3001, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M
guardflag = M
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark (except for guard)
sparkxy = -50,-80
sprpriority = 1       ;Draw in front of p2
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sprpriority = 1
p2facing = 1
p1stateno = 3010
p2stateno = 3020

[State 3001, gravity]
type = Gravity
trigger1 = MoveContact = 0

[State 3001, missed]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = Pos Y > 0
trigger3 = MoveGuarded
value = 3002


;-----------------
; Lights Out -- Missed
[StateDef 3002]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3002
velset = 0,0
sprpriority = 1

[State 3002, onGround]
type = PosSet
trigger1 = time = 0
y = 0

[State 3001, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3002, afterimages]
type = AfterImageTime
trigger1 = Time = 0
time = 1

[State 3002, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------
; Lights Out -- hit override (turn off afterimages)
[StateDef 3002]
type    = A
movetype= H
physics = U

[State 3002, afterimages]
type = AfterImageTime
trigger1 = Time = 0
time = 1

[State 3002, to gethit state]
type = ChangeState
trigger1 = Time = 1
value = 5020


;-------------------------------------------
; Lights Out -- hit connected
[StateDef 3010]
anim = 3010
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 3001, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3010, onGround]
type = PosSet
trigger1 = time = 0
y = 0

[State 3010, 0]
type = PlaySnd
trigger1 = Time = 0
persistent = 0
value = 3,1

[State 3010, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 89,-70

[State 3010, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 45,-135

[State 3010, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -45,-80

[State 3010, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -45,-112

[State 3010, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 95, 0

[State 3010, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = 75, 0

[State 3010, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = 45,-135

[State 3010, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = -45,-80

[State 3010, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10
pos = -45,-112

[State 3010, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 95, 0

[State 3010, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 75, 0

[State 3010, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
pos = -35, -55

[State 3010, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
pos = 55, -75

[State 3010, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 60, -120

; (same binding for 17)

[State 3010, showInFront]
type = SprPriority
trigger1 = (AnimElem = 17) || (AnimElem = 18) || (AnimElem = 19) || (AnimElem = 20)
value = -1

[State 3010, Bind 18]
type = TargetBind
trigger1 = AnimElem = 18
pos = 35, -100

[State 3010, Bind 19]
type = TargetBind
trigger1 = AnimElem = 19
pos = 0, -50

[State 3010, Bind 20]
type = TargetBind
trigger1 = AnimElem = 20
pos = -50, 0


[State 3010, showBehind]
type = SprPriority
trigger1 = (AnimElem = 21) || (AnimElem = 22) || (AnimElem = 23)
value = 1

[State 3010, Bind 21]
type = TargetBind
trigger1 = AnimElem = 21
pos = 35, -55

[State 3010, Bind 22]
type = TargetBind
trigger1 = AnimElem = 22
pos = -55, -75

[State 3010, Bind 23]
type = TargetBind
trigger1 = AnimElem = 23
pos = -60, -120

; (same binding for 24)

[State 3010, showInFront]
type = SprPriority
trigger1 = (AnimElem = 24) || (AnimElem = 25) || (AnimElem = 26) || (AnimElem = 27)
value = -1

[State 3010, Bind 25]
type = TargetBind
trigger1 = AnimElem = 25
pos = -35, -100

[State 3010, Bind 26]
type = TargetBind
trigger1 = AnimElem = 26
pos = 0, -50

[State 3010, Bind 27]
type = TargetBind
trigger1 = AnimElem = 27
pos = 50, 0


;--------------------
; hit ground 1st time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 5
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(5) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(5) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -50 * ifelse(Var(20)=1, Var(22), 1)
kill = 0

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 5
time = 30


;--------------------
; hit ground 2nd time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 11
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(11) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(11) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -65 * ifelse(Var(20)=1, Var(22), 1)
kill = 0

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 11
time = 30


;--------------------
; hit ground 3rd time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 20
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(20) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(20) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 20
value = -80 * ifelse(Var(20)=1, Var(22), 1)
kill = 0

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 20
time = 30


;--------------------
; hit ground 4th time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 27
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(27) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(27) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 27
value = -95 * ifelse(Var(20)=1, Var(22), 1)

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 27
time = 30

[State 3010, targetdrop]
type = TargetDrop
trigger1 = AnimTime = -1

[State 3010, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3011
ctrl = 1


;-------------------------------------------
; Lights Out -- Jump away
[StateDef 3011]
anim = 43
ctrl = 0
type = A
movetype = I
physics = A
velset = -4,-6

[State 3011, afterimages off]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 3011, jump peak anim]
type = ChangeAnim
trigger1 = Time = 10
value = 46


;-------------------------------------------
; Lights Out -- Being grabbed (p2 custom hit state)
[StateDef 3020]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3020, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3020

[State 3020, 2] ; tossed
type = ChangeState
trigger1 = AnimTime = 0
value = 3021

[State 3020, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0


;-------------------------------------------
; Lights Out -- Being thrown (p2 custom hit state)
[StateDef 3021]
type = A
movetype = H
physics = N
ctrl = 0

[State 3021, 0]
type = PosSet
trigger1 = Time = 0
y = Pos Y - 10

[State 3021, turn around]
type = Turn
trigger1 = AnimTime = 0

[State 3021, 2] ;dropped
type = SelfState
trigger1 = AnimTime = 0
value = 5050

;[State 3021, screenbound]  ; don't move the camera to follow P2
;type = ScreenBound
;trigger1 = Alive
;movecamera = 0,0



;---------------------------------------------------------------------------
; Main Men Hyper
[StateDef 3100]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3100
velset = 0,0
sprpriority = 1

[State 3100, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 3100, ouchie]
type = LifeAdd
trigger1 = AnimElem = 4
value = -250
kill = 0
absolute = 1
ignorehitpause = 1

[State 3100, superpause]
type = SuperPause
trigger1 = AnimElem=8
time = 40
sound = S10,1
pos = 0,-70
darken = 1
poweradd = -3000

[State 3100, orb1]
type = Explod
trigger1 = AnimElem=8
name = "Orb"
pos = -23,0
postype = p1
anim = 8000
supermove = 40
pausemovetime = 1
scale = .35, .35
ownpal = 1
sprpriority = 2

[State 3100, orb2]
type = Explod
trigger1 = AnimElem=8
name = "Orb"
pos = 60,0
postype = p1
anim = 8000
supermove = 40
pausemovetime = 1
scale = .35, .35
ownpal = 1
sprpriority = 2

[State 3100, superportrait]
type = Explod
trigger1 = AnimElem=8
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3100, superbg]
type = Explod
trigger1 = AnimElem=8
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3100, Clone #1 (Abbott)]    ; (a bit faster & taller than Lobo)
type = Helper
trigger1 = AnimElem=9
helpertype = player
name = "LoboClone"
id = 10
pos = -30,0
facing = 0
keyctrl = 1
ownpal = 1
stateno = 3105
size.xscale = 0.95
size.yscale = 1.05

[State 3100, Clone #2 (Costello)]  ; (a bit slower & shorter than Lobo)
type = Helper
trigger1 = AnimElem=9
helpertype = player
name = "LoboClone"
id = 11
pos = 60,0
facing = 0
keyctrl = 1
ownpal = 1
stateno = 3105
size.xscale = 1.05
size.yscale = 0.95

[State 3100, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------
; Clone "birth"
[Statedef 3105]
type = S
movetype = H
physics = S
ctrl = 0
anim = 3105

[State 3105, start clone timer]
type = VarSet
trigger1 = AnimTime = -1
v = 10
value = 0

[state 3105, abbottlobo] ; a little lightbronze
type = palfx
triggerall = ishelper(10)
trigger1 = !time
add = 25,25,6
time = -1

[state 3105, costellolobo] ; a little dark
type = palfx
triggerall = ishelper(11)
trigger1 = !time
add = -30,-38,-20
time = -1

[State 3105, playsnd]
type = PlaySnd
trigger1 = Time = 1
value = 10,2

[State 3105, goto stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------
; Clone "death"
[Statedef 3110]
type = S
movetype = H
physics = S
anim = 3110
ctrl = 0

[State 3110, varset]
type = VarSet
trigger1 = Time = 0
v =  10
value = -1

[State 3110, byebye clonie!]
type = DestroySelf
trigger1 = AnimTime = 0
trigger1 = ishelper


;-----------------
; Clone gethit          ; this thing isn't working right yet...
[Statedef 3120]
type = S
movetype = H
physics = S
anim = 5000

[State 3120, back to stance]
type = ChangeState
trigger1 = Time = 15
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; BIG Friggin' Gun (BFG)
[StateDef 3300]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3300
velset = 0,0
sprpriority = 1

[State 3300, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 3300, superpause]
type = SuperPause
trigger1 = AnimElem=2
time = 40
sound = S10,1
pos = 0,-70
darken = 1
poweradd = -1000

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem=2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3300, superbg]
type = Explod
trigger1 = AnimElem=2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, voice]
type = PlaySnd
trigger1 = Time = 5
value = 10,40

;-------------------
; DCvM hyper portrait/BG
[State 3300, hyperBg]
type = Null ;Helper
trigger1 = time = 0
name = "Orb"
ID = 8000
pos = 50,-75
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
ownpal = 1

[State 3300, hyperBg2]
type = Helper
trigger1 = AnimElem=3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3300, Helper]
type = Helper
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 18, < 0
;trigger1 = AnimElem = 4, >= 0
;trigger1 = AnimElem = 12, < 0
helpertype = normal
name = "BFG Shell"
ID = 3305
stateno = 3305
pos = 78,-64 + ((Random * 20) / 1000) - 10
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
value = S10,41
volume = 100
channel = 1
lowpriority = 1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =

[State 3300, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = diagup
priority = 6,Hit
damage = 40,15
sparkno = S9992
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.velocity = -7,-3
air.velocity = -7,-2
sprpriority = 1
fall = 1
kill = 0
numhits = 1

[State 3300, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3300, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------
;(adapted from FlowaGirl's Homing Projectiles tutorial)
; BFG - homing shell custom state
[StateDef 3305]
type    = A
movetype= A
physics = N
anim = 3305

[State 3305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3305, Turn]
type = Turn
trigger1 = (P2Dist X < 10)

[State 3305, VelSet]
type = VelSet
trigger1 = (!Time)
x = 3

[State 3305, VarSet]
type = VarSet
trigger1 = IsHelper
fv = 2
value = (EnemyNear, Const(size.mid.pos.y))

[State 3305, VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -6)
x = -0.2

[State 3305, VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 6)
x = 0.2

[State 3305, VelAdd]
type = VelAdd
trigger1 = (FVar(2) > Pos Y) && (Vel Y < 6)
y = 0.2

[State 3305, VelAdd]
type = VelAdd
trigger1 = (FVar(2) < Pos Y) && (Vel Y > -6)
y = -0.2

[State 3305, VelSet]
type = VelSet
trigger1 = (FVar(2) = Pos Y)
y = 0

[State 3305, HitDef]
type = HitDef
trigger1 = 1
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = hard
priority = 7,Hit
damage = (Random/333)+2, 1
;pausetime = 1,8
sparkno = 0
guard.sparkno = 0
;hitsound = S9,32
sparkxy = 0,0
priority = 2,Hit
sprpriority = 2
ground.type = Low
ground.slidetime = 2
ground.hittime = 5
ground.velocity = -3, -4
air.velocity = -4, -5
fall = 1
fall.recover = 0
down.bounce = 1
kill = 1
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
;p2stateno = 7697

[State 3305, no shadow]
type = AssertSpecial
trigger1 = Pos Y >= -1
flag = noshadow

[State 3305, smoke]
type = Explod
trigger1 = TimeMod = 5,3
anim = 3307  ;3306
ID = 3307
pos = 0,0
postype = p1
facing = 1
bindtime = 2
random = 0,0
removetime = -2
sprpriority = 0
ontop = 0
shadow = 0,0,0
removeongethit = 0

;-----
; KFM's "angled projectiles" code
[State 3305, blah]
type = AngleSet
trigger1 = time
value = ((atan(Vel Y/Vel X) + (3*pi/2)) *(-180/Pi)) - 90

[State 3305, blah]
type = AngleDraw
trigger1 = 1
;-----

[State 3305, boom!]
type = ChangeState
trigger1 = MoveContact
trigger2 = Time > 200
trigger3 = RoundState = 4
value = 3310
ctrl = 0


; BFG shell: exploding state
[StateDef 3310]
type    = S
MoveType= A
physics = N
ctrl = 0
anim = 2521
VelSet = 0,0
sprpriority = 4

[State 3310, 0]
type = AssertSpecial
trigger1 = IsHelper
flag = noshadow

[State 3310, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,32
volume = 100

[State 3310, 1]
type = EnvShake
trigger1 = (!Time)
time = 30
freq = 50
ampl = -5
phase = 90

[State 3310, 0]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
; Main Man Airlines Hyper
[StateDef 3500]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3500
sprpriority = 3

[State 3500, superpause]
type = SuperPause
trigger1 = time = 0
time = 40
sound = S10,1
pos = 10,-55
darken = 1
poweradd = -1000

[State 3500, superportrait]
type = Explod
trigger1 = time = 0
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3500, superbg]
type = Explod
trigger1 = time = 0
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

;-------------------
; DCvM hyper portrait/BG
[State 0, ]
type = Null ;Helper
trigger1 = time = 0
name = "Orb"
ID = 8000
pos = 50,-75
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
ownpal = 1

[State 0, ]
type = Helper
trigger1 = Time = 10
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3500, YerCaptain]
type = Null ;PlaySnd
trigger1 = Time = 1
value = 10,20
channel = 0
volume = 100

[State 3500, bike flying onscreen]
type = Explod
trigger1 = Time = 0
bindtime = 100
anim = 3502
sprpriority = 2

[State 3500, playsnd1]
type = PlaySnd
trigger1 = Time = 1
value = 10,21
loop = 1
channel = 1

[State 3500, hitdef]
type = HitDef
trigger1 = (Time > 0) && (Time % 8 = 0)
attr = S,HA
hitflag = MA
guardflag = M
animtype = Heavy
priority = 4,Hit
damage = 15,7
pausetime = 3,17
sparkno = S9992
;guard.sparkno =
sparkxy = 20,-35
animtype = Heavy
ground.type = Low
air.type = Low
hitsound = S2,2
guardsound = S3,0
;p1stateno = 3003
;p2stateno = 3010
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -4

[State 3500, move fwd]
type = VelSet
triggerall = Time = [24,300]
trigger1 = command = "holdfwd"
trigger2 = AnimTime < 0
x = const(velocity.walk.fwd.x) * 2

[State 3500, jump on bike]
type = ChangeAnim
trigger1 = Time = 24
value = 3505

[State 0, Width]
type = Width
trigger1 = Time = [24,300]
value = 50,50

[State 3500, move back]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 3500, playsnd1]
type = PlaySnd
trigger1 = Time = 300
value = 5,1
channel = 1

[State 3500, bike flying offscreen]
type = Explod
trigger1 = Time = 300
anim = 3510
sprpriority = 2

[State 3500, changestate]
type = ChangeState
trigger1 = Time = 300
value = 40
ctrl = 1


;---------------------------------------------------------------------------
; Main Man Airlines Hyper
[StateDef 3600]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3601
sprpriority = 3

[State 3600, whistle]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10,22
channel = 1
volume = 100

[State 3600, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 10,-55
darken = 1
poweradd = -1000

[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3600, superbg]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3600, HitOverride]
type = HitOverride
trigger1 = AnimElem >= 2
attr = SCA, NA,NT,NP,SA,ST,SP,HA,HT,HP
slot = 0
stateno = 3601
time = 1
forceair = 1

;-------------------
; DCvM hyper portrait/BG
[State 3600, dcvm HyperBG]
type = Null ;Helper
trigger1 = AnimElem = 3
name = "Orb"
ID = 8000
pos = 50,-75
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
ownpal = 1

[State 3600, dcvm HyperBG2]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3600, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3600, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A
movetype = A
physics = N

[State 3600, PosSet]
type = PosSet
trigger1 = AnimElem = 12
x = IfElse(Facing=1,-400,720)
y = 0

[State 3600, screenbound]  ; don't move the camera to follow
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0

[State 3600, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3605

; MM Airlines -- custom gethit state
[StateDef 3601]
type    = A
movetype= H
physics = A
anim = 5002
ctrl = 0

[State 3500, playsnd1]
type = PlaySnd
trigger1 = Time = 0
value = 5,1
channel = 1

[State 3001, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3500, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 3500

[State 3500, bike flying offscreen]
type = Explod
trigger1 = Time = 0
anim = 3510
sprpriority = 2

[State 3601, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; MM Airlines -- first fly-by
[StateDef 3605]
type    = S
movetype= A
physics = N
anim = 3605
velset = 13,0

[State 3605, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3605, HitOverride]
type = HitOverride
trigger1 = AnimTime < 0
attr = SCA, NA,NT,NP,SA,ST,SP,HA,HT,HP
slot = 0
stateno = 3601
time = 1
forceair = 1

[State 3605, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
value = 0
movecamera = 0,0

[State 3605, playsnd1]
type = PlaySnd
trigger1 = Time = 0
value = 5,1
channel = -1

[State 3605, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3605, hitdef]
type = HitDef
trigger1 = TimeMod = 2,1
attr = S,HA
hitflag = MAFD
guardflag = MA
priority = 4,Hit
damage = 10,2
pausetime = 3,17
sparkno = S9992
sparkxy = 20,-35
animtype = DiagUp
ground.type = Low
air.type = Low
fall = 1
fall.recover = 0
hitsound = S2,2
guardsound = S3,0
;ground.slidetime = 8
;ground.hittime = 8
ground.velocity = -5,-5

[State 3605, changestate]
type = ChangeState
trigger1 = IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
value = 3610


; MM Airlines -- 2nd fly-by
[StateDef 3610]
type    = S
movetype= A
physics = N
anim = 3605
velset = -13,0

[State 3610, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3610, Turn]
type = Turn
trigger1 = Time = 0

[State 3610, HitOverride]
type = HitOverride
trigger1 = AnimTime < 0
attr = SCA, NA,NT,NP,SA,ST,SP,HA,HT,HP
slot = 0
stateno = 3601
time = 1
forceair = 1

[State 3610, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 3610, playsnd1]
type = PlaySnd
trigger1 = Time = 0
value = 5,1
channel = -1

[State 3610, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3610, hitdef]
type = HitDef
trigger1 = TimeMod = 2,1
attr = S,HA
hitflag = MAFD
guardflag = MA
priority = 4,Hit
damage = 10,2
pausetime = 3,17
sparkno = S9992
sparkxy = 20,-35
animtype = DiagUp
ground.type = Low
air.type = Low
fall = 1
fall.recover = 0
hitsound = S2,2
guardsound = S3,0
;ground.slidetime = 8
;ground.hittime = 8
ground.velocity = -5,-5

[State 3610, changestate]
type = ChangeState
trigger1 = Time > 0 && IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
value = 3615


; MM Airlines -- 3rd fly-by
[StateDef 3615]
type    = S
movetype= A
physics = N
anim = 3605
velset = -13,0

[State 3615, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3615, Turn]
type = Turn
trigger1 = Time = 0

[State 3615, HitOverride]
type = HitOverride
trigger1 = AnimTime < 0
attr = SCA, NA,NT,NP,SA,ST,SP,HA,HT,HP
slot = 0
stateno = 3601
time = 1
forceair = 1

[State 3615, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 3615, playsnd1]
type = PlaySnd
trigger1 = Time = 0
value = 5,1
channel = -1

[State 3615, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3615, hitdef]
type = HitDef
trigger1 = TimeMod = 2,1
attr = S,HA
hitflag = MAFD
guardflag = MA
priority = 4,Hit
damage = 10,2
pausetime = 3,17
sparkno = S9992
sparkxy = 20,-35
animtype = DiagUp
ground.type = Low
air.type = Low
fall = 1
fall.recover = 0
hitsound = S2,2
guardsound = S3,0
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -5,-5

[State 3615, changestate]
type = ChangeState
trigger1 = Time > 0 && IfElse(Facing=1, Screenpos X > 600, Screenpos X < -240)
value = 3620

; MM Airlines -- end
[StateDef 3620]
type    = A
physics = A
anim = 3620

[State 3620, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3620, Turn]
type = Turn
trigger1 = Time = 0

[State 3620, VelSet]
type = VelSet
trigger1 = Time = 0
x = 6
y = -6


;---------------------------------------------------------------------------
; Amalgam Hyper
; (incomplete -- only the intro portraits are done at this point)
[StateDef 4000]
type    = S
physics = S
ctrl = 1
anim = 4000
velset = 0,0
poweradd = -3000

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1

[State 4000, doom!]
type = PlaySnd
trigger1 = Time = 15
value = 10,30
;volume = 0
;channel = -1
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0

[State 4000, envshake]
type = EnvShake
trigger1 = Time = 15
time = 40
;freq = 60
;ampl = -4
;phase = 


[State 4000, Lobo Portrait]
type = Explod
trigger1 = Time = 0
anim = 4010
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1

[State 4000, Howard Portrait]
type = Explod
trigger1 = Time = 0
anim = 4011
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1

[State 4000, Howard falling]
type = Explod
trigger1 = Time = 0
anim = 4001
;ID = 
pos = 68,0
;postype = p1
;bindtime = 1
;removetime = -2
;supermove = 0
;pausemovetime = 0
sprpriority = 2
;ontop = 0
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0

[State 4000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 4005


; Lobo the Duck BFG shots
[StateDef 4005]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 4005
velset = 0,0

[State 4005, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S10,32

[State 4009, hitdef 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 7,Hit
damage = 150,35
pausetime = 19,10
guard.pausetime = 15,10
;sparkno = 
;guard.sparkno = 
sparkxy = 15,-55
;hitsound = 
;guardsound = 
ground.type = Low
;air.type = High
ground.slidetime = 8
guard.slidetime = 12
ground.hittime = 20
guard.hittime = 16
air.hittime = 20
;guard.ctrltime = 0
;guard.dist = 
;yaccel = 0
ground.velocity = -5,0
;guard.velocity = -4,0
;air.velocity = -6,0
;airguard.velocity = -5,0
;ground.cornerpush.veloff = 
;air.cornerpush.veloff = 
;down.cornerpush.veloff = 
;guard.cornerpush.veloff = 
;airguard.cornerpush.veloff = 
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 
;maxdist = 
;snap = 0,0
;sprpriority = 1
;p1facing = 
;p1getp2facing = 0
;p2facing = 0
;p1stateno = 
;p2stateno = 
;p2getp1state = 
;forcestand = 
;fall = 
;fall.xvelocity = 
;fall.yvelocity = -4.5
;fall.recover = 1
;fall.recovertime = 4
;fall.damage = 0
;air.fall = 
;down.velocity = ,
;down.hittime = 
;down.bounce = 0
;ID = 0
;chainID = -1
;nochainID = 
;hitonce = 0
;kill = 1
;guard.kill = 1
;fall.kill = 1
;numhits = 1
;getpower = 0,0
;givepower = 0,0
;palfx.time = 
;palfx.mul = 256,256,256
;palfx.add = 0,0,0
;envshake.time = envshake_time (int)
;envshake.freq = 60
;envshake.ampl = -4
;envshake.phase = 
;fall.envshake.time = 
;fall.envshake.freq = 60
;fall.envshake.ampl = -4
;fall.envshake.phase = 
;attack.width = ,
;ignorehitpause = 0
;persistent = 1

[State 4009, changestate]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
