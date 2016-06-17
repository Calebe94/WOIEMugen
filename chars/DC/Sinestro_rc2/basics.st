; States file for Sinestro -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 170,1]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2

[State 175,1]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 1) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 -
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, ring spark]
type = Explod
trigger1 = AnimElem = 2
anim = 700
pos = -8,-113
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 120
ontop = 1
removeongethit = 1

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver

;-----------------------
; Winpose #2 - grovel at my feet! (vs Hal)
[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 0
value = 191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1 - Your death is upon you!
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,0
channel = 0
volume = 100

[State 191, ring spark]
type = Explod
trigger1 = Time = 9
anim = 700
id = 991
pos = 70,-88
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 160
ontop = 1
removeongethit = 1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro


;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch (near)
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20
guardflag = MA
pausetime = 2,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-100
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 210, back to stance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Punch (far)
[StateDef 215]
anim = 215
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 15

[State 215, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 215, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0

[State 215, construct]
type = Helper
triggerall = Power >= 1000
trigger1 = AnimElemTime(2) = 3
helpertype = normal
name = "construct"
ID = 216
pos = 0,0
postype = p1
stateno = 216

[State 215, HitDef]
type = HitDef
triggerall = Power < 1000
trigger1 = AnimElem = 3
attr = S, NA
damage = 15
guardflag = MA
pausetime = 2,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-100
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 215, back to stance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;--------
; Stand Light Punch -- construct helper state
[StateDef 216]
anim = 216
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 216, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y

[State 216, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S9,0
volume = 100
channel = -1

[State 216, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 216, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 216, hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 15
guardflag = MA
pausetime = 6,12
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -25,-110
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 8
guard.velocity = -2
air.velocity = 4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 40,0,-250
palfx.mul = 256,256,256
palfx.sinadd = 20,20,0,10

[State 216, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 215


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 12

[State 220, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 220, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 220, construct]
type = Helper
triggerall = Power >= 1000
trigger1 = !Time
helpertype = normal
name = "construct"
ID = 221
pos = 0,0
postype = p1
stateno = 221

[State 220, HitDef]
type = HitDef
triggerall = Power < 1000
trigger1 = AnimElem = 3
attr = S, NA
damage = 12
guardflag = MAFD
pausetime = 3,3
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -25,-65
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;--------
; Stand Light Kick -- construct helper state
[StateDef 221]
anim = 221
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 221, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y

[State 221, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 221, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 221, HitDef]
type = HitDef
trigger1 = !Time
attr = S, NA
damage = 13
guardflag = MAFD
pausetime = 3,3
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -25,-65
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
palfx.time = 25
palfx.add = 40,0,-250
palfx.mul = 256,256,256
palfx.sinadd = 20,20,0,10

[State 221, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 220


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 23

[State 230, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1

[State 230, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,1

[State 220, construct]
type = Helper
triggerall = Power >= 1000
trigger1 = AnimElem = 2
helpertype = normal
name = "construct"
ID = 231
pos = 0,0
postype = p1
stateno = 231

[State 230, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 23
guardflag = MA
pausetime = 0,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 230, 1]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;--------
; Stand Medium Punch -- construct helper state
[StateDef 231]
anim = 231
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 231, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y

[State 231, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 231, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 231, sfx]
type = PlaySnd
trigger1 = !Time
value = 7,1

[State 231, HitDef]
type = HitDef
trigger1 = !Time
attr = S, NA
damage = 23
guardflag = MAFD
pausetime = 0,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -30,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7,-1
guard.velocity = -5
air.velocity = -3,-6
palfx.time = 25
palfx.add = 40,0,-250
palfx.mul = 256,256,256
palfx.sinadd = 20,20,0,10

[State 231, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 230


;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 24

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, construct]
type = Helper
triggerall = Power >= 1000
trigger1 = Time = 2
helpertype = normal
name = "construct"
ID = 241
pos = 0,0
postype = p1
stateno = 241

[State 240, HitDef]
type = HitDef
trigger1 = !Time
attr = S, NA
damage = 24
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;--------
; Stand Medium Kick -- construct helper state
[StateDef 241]
anim = 241
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 2

[State 241, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y

[State 241, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 241, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 241, HitDef]
type = HitDef
trigger1 = !Time
attr = S, NA
damage = 24
guardflag = MAFD
pausetime = 7,7
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -30,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7,-1
guard.velocity = -5
air.velocity = -3,-6
palfx.time = 25
palfx.add = 40,0,-250
palfx.mul = 256,256,256
palfx.sinadd = 20,20,0,10

[State 241, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 240


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45
juggle = 8

[State 250, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2

[State 250, construct]
type = Helper
triggerall = Power >= 1000
trigger1 = AnimElem = 2
helpertype = normal
name = "construct"
ID = 251
pos = 0,0
postype = p1
stateno = 251

[State 250, HitDef]
type = HitDef
trigger1 = !Time
attr = S, NA
damage = 45
guardflag = MA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-56
animtype = Up
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = 0,-6
guard.velocity = -4
air.velocity = -1,-8

[State 250, back to stance]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; Stand Hard Punch (construct explod)
[StateDef 251]
anim = 251
ctrl = 0
type = S
movetype = A
physics = N
sprpriority = 2
juggle = 8

[State 251, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 251, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 251, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 251, sfx]
type = PlaySnd
trigger1 = !Time
value = 7,2

[State 251, HitDef]
type = HitDef
trigger1 = !Time
attr = S, NA
damage = 45
hitflag = MAF
guardflag = MA
pausetime = 4,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-80
sparkno = S9992
animtype = Up
ground.type = High
ground.slidetime = 18
ground.hittime  = 15
ground.velocity = 0,-9
guard.velocity = -3
air.velocity = 0,-8

[State 251, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 250

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 260]
anim = 260
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 75

[State 260, grunt]
type = PlaySnd
trigger1 = !Time
value = 1,2

[State 260, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 260, flame sfx]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Power >= 1000
value = 7,2

[State 260, Explod]
type = Explod
trigger1 = !Time
trigger1 = Power >= 1000
anim = 265
ID = 265
sprpriority = 2
removeongethit = 1

[State 260, HitDef]
type = HitDef
trigger1 = !Time
attr = S, NA
damage = 75
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-56
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

[State 260, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 20

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-60
sparkno = S9990
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 5

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,0
sparkno = S9990
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
sparkno = S9991
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-50
sparkno = S9991
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -6,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = !Time
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
hitflag = MD
damage = 60
guardflag = L
pausetime = 0,5
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,0
sparkno = S9992
animtype = Up
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0, -13
guard.velocity = -3
air.velocity = 0, -13

[State 450, Explod]
type = null ;Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;removetime = -2
;sprpriority = 2
ontop = 1
removeongethit = 1

[State 450, superjump follow]
type = ChangeState
trigger1 = MoveHit && command = "holdup"
value = 700

[State 450, 1]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 460]
anim = 460
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 460, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 460, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 460, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 465
ID = 465
bindtime = 100
ontop = 1
removeongethit = 1

[State 460, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5
guard.velocity = -2

[State 460, superjump follow]
type = ChangeState
trigger1 = MoveHit && command = "holdup"
value = 700

[State 460, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 20
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-70
sparkno = S9990
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, bounce]
type = VelAdd
trigger1 = !Time
y = IfElse(Vel Y <= 2, -2, -7)

[State 610, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 10

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 620, grunt]
type = PlaySnd
trigger1 = !Time
value = 1,0

[State 620, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 10
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-10
sparkno = S9990
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 45

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 630, grunt]
type = PlaySnd
trigger1 = !Time
value = 1,1

[State 630, HitDef]
type = HitDef
trigger1 = !Time
attr = A, NA
damage = 45
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
sparkno = S9991
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = !Time
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 30
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-10
sparkno = S9991
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = !Time
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 660]
anim = 660
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 660, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 660, grunt]
type = PlaySnd
trigger1 = !Time
value = 1,2

[State 660, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 50
guardflag = HA
pausetime = 4,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-10
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 660, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 948
ctrl = 1


;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0

;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (Vel X < 0)
value = 50




;==========================================================================
;Guilty Gear Style 1-Hit Kill Haze Effect Positive States by Shinra358 Start
;==========================================================================
[Statedef 10050]; aura glow definition start
type = S
movetype = I
physics = N
sprpriority = -15
velset = 0,0
ctrl = 0
;
[state XXXXX, noshadow]; aura has no shadow
type = assertspecial
triggerall = alive
trigger1 = 1
flag = noshadow
;
[state XXXXX, playerpush]; the aura can go right through you
type = playerpush
triggerall = alive
trigger1 = 1
time = -1
ignorehitpause = 1
persistent = 1
value = 0
;
[state XXXXX, canthit]; not able to hit the aura and vice versa
type = nothitby
triggerall = alive
trigger1 = 1
time = -1
persistent = 1
value = SCA
;
[State XXXXX, ChangeAnim]; makes the aura do what you do
type = ChangeAnim
triggerall = alive
trigger1 = selfanimexist(parent,anim)
elem = parent,animelemno(0)
value = parent, anim
;
[State XXXXX, bindtoroot]; binds the auras position to the player using it
type = bindtoroot
triggerall = alive
trigger1 = 1
facing = 1
pos = 0, 0
time = -1
ignorehitpause = 1
persistent = 1
;
[State XXXXX, color]; default: yellow
type = palfx
trigger1 = PalNo <= 6
add = 216, 208, 0
mul = 256, 248, 0
sinadd = 256, 224, 10, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1
;
[State XXXXX, color]; green
type = palfx
trigger1 = PalNo = [7,9]
add = 0, 215, 0
mul = 0, 256, 0
sinadd = 10, 256, 10, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1
;
[State XXXXX, color]; white
type = palfx
trigger1 = PalNo = [10,12]
add = 215, 215, 215
mul = 256, 256, 256
sinadd = 128, 128, 128, 50
invertall = 0
color = 256
ownpal = 1
time = -1
ignorehitpause = 1
persistent = 1
;
[State XXXXX, trans]; makes the aura see through
type = trans
triggerall = alive
trigger1 = 1
trans = addalpha
alpha = 256 - (15*time), (15*time)
time = -1
ignorehitpause = 1
persistent = 1
;
[State XXXXX, angledraw]; how big the aura radiates over time
type = angledraw
triggerall = alive
trigger1 = 1
value = 0
scale = 1 + (.0085*time), 1 + (0.0065*time)
time = -1
ignorehitpause = 1
persistent = 1
;
[State XXXXX, destroyself]; time to restart the hazing animations of the aura
type = Destroyself
triggerall = alive
trigger1 = time >= 15
;
;==========================================================================
;Guilty Gear Style 1-Hit Kill Haze Effect Positive States by Shinra358 End
;==========================================================================


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
