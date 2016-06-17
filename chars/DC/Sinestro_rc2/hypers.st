; States file for Sinestro -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Hyper Attacks
;
; Needle Storm (D,DF,F + KK): 3000-3020
; Fall Before Me (Blade Rain) (D,DB,B + PP): 3200-3210
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Needle Storm (hyper)
[StateDef 3000]
anim = 3000
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
sprpriority = 2

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 3
time = 64
anim = S3100
sound = S10,1
pos = 60,-95
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 3
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

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 4
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

[State 3000, vox]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1,2
channel = 0

[State 3000, Helper]
type = Helper
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
helpertype = normal
name = "needle storm"
ID = 3010
stateno = 3010
pos = 76,-100
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = 1.5

[state 3000, back to stance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------
;(adapted from FlowaGirl's Homing Projectiles tutorial)
; Needle Storm - construct custom state
[StateDef 3010]
type    = A
movetype= A
physics = N
anim = 3011
sprpriority = 6

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S10,10

[State 3010, VelSet]
type = VelSet
trigger1 = !Time
x = (Random*3.5/1000) ;- 5
y = (Random*5/1000) - 2.5

[State 3010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3010, Turn]
type = Turn
trigger1 = (P2Dist X < 10)

[State 3010, VarSet]
type = VarSet
trigger1 = IsHelper
fv = 2
value = (EnemyNear, Pos Y) + (EnemyNear, Const(size.mid.pos.y))
;value = (EnemyNear, Pos Y) - ((EnemyNear, Const(size.height))*Random/1000)

[State 3010, VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -6)
x = -0.5

[State 3010, VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 6)
x = 0.15

[State 3010, VelAdd]
type = VelAdd
trigger1 = (FVar(2) > Pos Y) && (Vel Y < 6)
y = 0.1 + (Random/1000)

[State 3010, VelAdd]
type = VelAdd
trigger1 = (FVar(2) < Pos Y) && (Vel Y > -6)
y = -0.1 - (Random/1000)

[State 3010, VelSet]
type = VelSet
trigger1 = (FVar(2) = Pos Y)
y = 0

[State 3010, HitDef]
type = HitDef
trigger1 = TimeMod = 25,0
attr = A,HP
hitflag = MAFD
guardflag = MA
animtype = Back
priority = 7,Hit
damage = 6,1
;sparkno = S9995
;guard.sparkno = 900
hitsound = S10,11
sparkxy = 0,0
priority = 2,Hit
sprpriority = 6
pausetime = 3,18
ground.type = Low
ground.slidetime = 18
ground.hittime = 15
ground.velocity = -0.5
air.velocity = -1, 0.5
fall = 1
fall.recover = 0
down.bounce = 1
kill = 1
palfx.time = 20
palfx.add = -104,15,-104
palfx.mul = 192,384,192
palfx.sinadd = 0,56,0,10

[State 3010, no shadow]
type = AssertSpecial
trigger1 = Pos Y >= -1
flag = noshadow

;-----
; KFM's "angled projectiles" code
[State 3010, blah]
type = VarSet
trigger1 = Vel X != 0
fv = 3
value = ((atan(Vel Y/Vel X) + (3*pi/2)) *(-180/Pi)) - 90

[State 3010, blah]
type = VarSet
trigger1 = Vel X = 0
fv = 3
value = ((atan(Vel Y) + (3*pi/2)) *(-180/Pi)) - 90

[State 3010, blah]
type = AngleSet
trigger1 = 1
value = FVar(3)

[State 3010, blah]
type = AngleDraw
trigger1 = 1
;-----

[State 3010, done]
type = ChangeState
trigger1 = Time = 160
trigger2 = HitCount = 1
trigger3 = MoveGuarded
value = 3020

;-----------------
; Needle Storm - construct custom state (end)
[StateDef 3020]
type    = A
movetype= A
physics = N
anim = 3021 ;3020
sprpriority = 6
velset = 0,0

[State 3020, blah]
type = AngleDraw
trigger1 = 1

[State 3020, done]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
; Blade Rain (hyper)
[StateDef 3200]
anim = 3200
ctrl = 0
type = S
type = A
movetype = A
physics = S
velset = 0,0
sprpriority = 2

[State 3200, vox]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10,12
channel = 0

[State 3200, superpause]
type = SuperPause
trigger1 = AnimElem = 3
time = 64
anim = S3100
sound = S10,1
pos = 0,-75
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3200, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3200, portraitBG]
type = Explod
trigger1 = AnimElem = 3
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

[State 3200, superBG]
type = Helper
trigger1 = AnimElem = 4
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

[State 3200, Helper]
type = Helper
trigger1 = AnimElemTime(4) % 12 = 1
helpertype = normal
name = "construct"
ID = 3210
stateno = 3210
pos = (AnimElemTime(4) * 3)+50,-150
postype = p1
facing = 1
keyctrl = 0
ownpal = 1

[state 3200, back to stance]
type = changestate
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------
; Blade Rain (construct helper)
[StateDef 3210]
anim = 3210  ; 3215 as alternate, more-spinny version
ctrl = 0
type = S
movetype = A
physics = A
sprpriority = 5
juggle = 8

[State 3210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 6 ; 4 if no initial fadein
value = 0,2

[State 3210, noreversal]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3210, noreversal2]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3210, sfx]
type = null ;PlaySnd
trigger1 = !Time
value = 7,2

[State 3210, HitDef]
type = HitDef
trigger1 = !Time
attr = A,HP
damage = 80
hitflag = MAF
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-80
sparkno = S9992
animtype = Down
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -8,2
guard.velocity = -6
air.velocity = 4,5
fall = 1
air.fall = 1

[State 3210, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 3200


;---------------------------------------------------------------------------
; Amalgam Hyper (incomplete)
[StateDef 4000]
type    = S
physics = S
ctrl = 1
anim = 0        ; change this to the anim char will perform when the Hyper starts
velset = 0,0
poweradd = -3000

[State 4000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1

[State 4000, Char Portrait]
type = Explod
trigger1 = Time = 0
anim = 4010
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 1
supermovetime = 40
removeongethit = 1

[State 4000, Partner Portrait]
type = Explod
trigger1 = Time = 0
anim = 4011
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 1
supermovetime = 40
removeongethit = 1
