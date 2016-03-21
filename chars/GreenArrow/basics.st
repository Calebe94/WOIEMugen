; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjuf17mp opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,1

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
trigger1 = AnimElem = 6
value = 2,1

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
value = 181 + ((Random * 4) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0


[State 181, Explod]
type = Explod
trigger1 = time = 0
anim = 4
ID = 3
pos = 50,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 1
;ontop = 1

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 8,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 10
value = 111,9

[State 181,0]
type = PlaySnd
trigger1 = Time = 25
value = 8,1

[State 181,0]
type = PlaySnd
trigger1 = Time = 200
value = 171,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  time = 430
value = 181

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,490]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 187
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 111,10

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  time = 270
value = 181

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,295]
flag = RoundNotOver

[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 183,0]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 183,0]
type = PlaySnd
trigger1 = Time = 10
value = 12,3
channel = 0


[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0

 [State 183,0]
type = PlaySnd
trigger1 = animelem = 3
value = 171,6
channel = 0

[State 184, Explod]
type = Explod
trigger1 = time = 0
anim = 184
ID = 3
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 42
scale = 1,1
sprpriority = 1

[State 184, Explod]
type = Explod
trigger1 = animelem = 11
anim = 185
ID = 3
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 100
scale = 1,1
sprpriority = 2

[State 184, Explod]
type = Explod
trigger1 = time = 0
anim = 186
ID = 3
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 42
scale = 1,1
sprpriority = 2
;ontop = 1
;ontop = 1

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 111,13

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 111,18

[State 184,1]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = RoundNotOver



;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 1
velset = 0,0


[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 12
value = 8,1

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,2


[Statedef 192]
type = S
ctrl = 0
anim = 2
velset = 0,0
sprpriority = 0

[State 192, 1]
type = PlaySnd
trigger1 = Time = 0
value = 111,13

[State 192, 1]
type = PlaySnd
trigger1 = AnimElem = 22
value = 0,0

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 30
value = 8,1

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 38
value = 171,5

[State 192, Explod]
type = Explod
trigger1 = AnimElem = 22
anim = 3
ID = 3
pos = 60,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 130
scale = 1,1
sprpriority = 3


;[State 192, RemoveExplod]
;type = RemoveExplod
;trigger1 = AnimElem = 12
;id = 3

;[State 192, back to stance]
;type = ChangeState
;trigger1 = AnimTime = 12
;value = 0
;ctrl = 1

[Statedef 193]
type = S
ctrl = 0
anim = 7
velset = 0,0

[State 193, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,1


[State 194, 2]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = Intro


[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 193, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 111,3

[State 182,0]
type = PlaySnd
trigger1 =  AnimElem = 6
value = 171,3


[State 194, 2]
type = ChangeState
trigger1 = animtime=0
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
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 25
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -10,-80
animtype = Light
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
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 45
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -20,-50
animtype = Medium
ground.type = High
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
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 70
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -10,-66
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
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

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
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-30
animtype = Light
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
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

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
damage = 45
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
poweradd = 96

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
damage = 70
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-50
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
poweradd = 30

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
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -10,-50
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
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

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
sparkno = S9991
sparkxy = -10,-50
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
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
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
damage = 70
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 420, Explod]
type = Explod
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

[State 420, 1]
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
poweradd = 25

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
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -15,0
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
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -10,0
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
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 70
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -15,-45
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
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -10,-90
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,30
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = -20,-30
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
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
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = -20,-40
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-20
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
type = ChangeState
trigger1 = movecontact > 0
value = 651
ctrl = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[Statedef 651]
type    = A
movetype= A
physics = A
juggle  = 10
ctrl = 0
anim = 651
sprpriority = 2
velset = 0,-6

[State 652, 1]
type = PosAdd
trigger1 = AnimElem = 1
y = -6

[State 652, 2]
type = VelSet
trigger1 = AnimElem = 2
y = -6

[State 652, 4]
type = PosAdd
trigger1 = AnimElem = 3
y = -6

[State 652, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

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
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
[StateDef 9948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 9948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 39

; forwards
[State 9948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 39

; backwards
[State 9948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 39

;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------


;throw
 ;Throw 1
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 2
value = 8400,2

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = -1
p1stateno = 801
p2stateno = 802
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = ifelse(PalNo > 6, 0, 1)
fall.recover = 0
fall.damage = 80


[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
sprpriority = 2

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 30,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0,0

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 4
value = 816


[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 8600,0

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 4
value = 50

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -50

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 802]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 802

[Statedef 816]
type    = A
movetype= H
physics = N
velset = -12,-7
poweradd = 50

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 816

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0


;----
; Hit by  - shaking from the hit
; (a custom gethit state)

[Statedef 9020]
type    = A
movetype= H
physics = N
velset = 0,0


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 3202
;ignorehitpause =
;persistent =


[State 9020, Anim] ;Custom animation
type = null;ChangeAnim2
trigger1 = 1
value = 5012


[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim ;2
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type



[State 5050, 2] ; anim for trip
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9020, State]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9020, State]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9020, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9030

;----------------------------------------------------------------------
; Hit by - flying through the air
; (a custom gethit state)
[Statedef 9030]
type    = A
movetype= H
physics = N


[State 9030]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9030]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9030, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9030, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9030, No scroll]
type = null;ScreenBound
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1

[State 9030, Hit wall]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9027


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050
trigger2 = Anim != 5070

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2] ;Coming down anim for trip
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(anim-10) || SelfAnimExist(5071)
value = ifelse(SelfAnimExist(5071),5071,anim-10)
persistent = 0


[State 5035, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5050, 4] ;Recover near ground
type = null;SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = 1;Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = null;ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9030, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5071]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------------------------------------------------------------------
; Hit by  - hit wall
; (a custom gethit state)
[Statedef 9027]
type    = A
movetype= H
physics = N

[State 9027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9027]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 100
ampl = -10
phase = 10

[State 9027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9027, Spark]
type = null;Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 9027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 825

[State 9027, Sound]
type = null;PlaySnd
trigger1 = Time = 0
value = F7,0

[State 9027, State]
type = ChangeState
trigger1 = Time = 5
value = 9028

;----------------------------------------------------------------
; Hit by  - bounce off wall
; (a custom gethit state)
[Statedef 9028]
type    = A
movetype= H
physics = N


[State 9028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 9028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -2

[State 9028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2


[State 9028, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9028, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100





