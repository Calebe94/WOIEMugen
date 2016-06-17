; States file for (Character) -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
; Gameplay and MvC combo style revised by Magus
;---------------------------------------------------------------------------
; INTRO decider
[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,100]
value = 191


;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 190

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3]
type = ChangeState
trigger1 = Time = 150
value = 0
;---------------------------------------------------------------------------
; Winpose 1
[Statedef 180]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 180,0]
type = PlaySnd
trigger1 = Time = 0
value = 5,0

[State 180,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 190
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 2]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20                            ; CHANGE THIS

[State 200, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 20                            ; CHANGE THIS
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 5                            ; CHANGE THIS

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20                            ; CHANGE THIS
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-10
animtype = Medium
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45                            ; CHANGE THIS

[State 210, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45                            ; CHANGE THIS
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-75
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65                            ; CHANGE THIS

[State 220, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 55                            ; CHANGE THIS
guardflag = MA
pausetime = 3,3
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 10                            ; CHANGE THIS

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 90                            ; CHANGE THIS
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -7,-10

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25                            ; CHANGE THIS

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 35                            ; CHANGE THIS
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 20

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 5

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 410, 1]
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
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh #1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
yaccel = 0.66
p2stateno = 226
p2facing = 1

[State 250, 3]
type = ChangeState
trigger1 = Movehit
trigger1 = command = "holdup"
trigger1 = time > 8
trigger1 = time < 12
value = 1045
ctrl = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Launcher - (hit state 1)
[Statedef 226]
type    = S
movetype= H
physics = N
velset = 0,0

[State 226, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 0
value = 5012

[State 226, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = A

[State 226, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 227

;---------------------------------------------------------------------------
; Launcher - (hit state 2)
[Statedef 227]
type    = A
movetype= H
physics = N
ctrl = 0

[State 227, Gravity]
type = VelAdd
trigger1 = Time > 0
y = 0.65

[State 227, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = -16

[State 227, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = ifelse(AnimExist(5051),5051,5050)

[State 227, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 26 && AnimExist(5061)
value = 5061

[State 227, SelfState]
type = SelfState
trigger1 = Time = 35
value = 5040

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,4

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = MD
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
pausetime = 6,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 41

[State 600, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 10

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 10
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 45

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-7

[State 610, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

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

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-6

[State 640, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3


[State 620, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,4

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 660, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

; Falling from air attack
[Statedef 660]
type    = A
movetype= I
physics = A
anim = 660
ctrl = Var(3)
sprpriority = 1

[State 660, Turn]
type = Turn
trigger1 = Var(3) = 1 && P2Dist X < -5

[State 660, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdback"
x = -2.5

[State 660, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdfwd"
x = 2.5

[State 660, VelSet]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 660, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52


