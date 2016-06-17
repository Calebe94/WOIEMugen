; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
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
value = 173,14

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 173,14

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = numhelper(1201) = 1
value =  181


[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 173,15

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,380]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = animelem = 2
value = 8,0

[State 181,0]
type = PlaySnd
trigger1 = animelem = 21
value = 8,2

[State 181,0]
type = PlaySnd
trigger1 = animelem = 22
value = 173,11

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,280]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = p2name = "Darkseid"
trigger2 = p2name = "Superman"
value = 192


[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 192]
type = S
ctrl = 0
anim = 196
velset = 0,0
sprpriority = 0
;
;

[State 181,0]
type = PlaySnd
triggerall = p2name != "Darkseid"
triggerall = p2name != "Superman"
trigger1 = animelem = 1
value = 173,8

[State 181,0]
type = PlaySnd
triggerall = p2name = "Darkseid"
trigger1 = animelem = 1
value = 173,2

[State 181,0]
type = PlaySnd
triggerall = p2name = "Superman"
trigger1 = animelem = 1
value = 173,16

[State 191, Explod]
type = Explod
trigger1 = animelem = 1
anim = 197
ID = 197
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 1

[State 191, Explod]
type = Explod
trigger1 = animelem = 4
anim = 198
ID = 198
pos = 0,0
postype = p1
facing = 1
vel = 8,-2
accel = 0,0.2
vfacing = 1
bindtime = 1
removetime = 100
scale = 1,1
sprpriority = 1

[State 181,0]
type = PlaySnd
trigger1 = animelem = 4
value = 0,1

;
[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

; Intro (riding crab)
[Statedef 191]
type = S
physics = N
movetype = I
velset = 0,0
sprpriority = 1
anim = 193

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 47
value = 172,14

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 3
value = 0,0



[State 2400, a]
type = VarSet
trigger1 = time = 0
v = 2
value = -(Facing)

[State 2400, 1]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = intro

;[State 2400, 2]
;type = explod
;trigger1 = time = 50
;anim = 1403
;postype = p1
;pos = backedgebodydist + 170,30
;facing = -1
;scale = 1,1.4
;bindtime = -1
;removetime = -2
;sprpriority = 35

[State 3000, 9]
type = Helper
trigger1 = time = 47
name = "Wave 1-2"
ID = 1403
stateno = 1403
postype = back
pos = 0, 45;240; - var(7)
ownpal = 1
facing = -1
size.xscale = 1.2; (float)
size.yscale =1.6;(float)




[State 2400, 2]
type = explod
trigger1 = time = 50
anim = 192
postype = p1
pos = 220, 5;
facing = -1
vel = -4.5,0;1.7
bindtime = 1
removetime = 100
sprpriority = -1


[State 2400, 2]
type = explod
trigger1 = time = 50
anim = 191
postype = p1
pos = 218, 5
facing = -1
vel = -4.5,0;1.7
bindtime = 1
removetime = 45
sprpriority = -3

;[State 2400, 5]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1




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
sparkno = 0
sparkxy = 0,-90
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

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 172,2

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 45
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = 1
sparkxy = 0,-90
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
; Standing hard punch (with special thanx to NeoGouki!)
[Statedef 220]
type = A
movetype = A
physics = N
juggle = 8
poweradd = 80
ctrl = 0
velset = 0,0
anim = 220

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 172,3

[State 210, grunt]
type = PlaySnd
trigger1 = time = 5
value = 172,1


[State 220, Gravity]
type = Gravity
trigger1 = time > 4

[State 220, Big Splash]
type = explod
trigger1 = time = 5
anim =1
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1


[State 220, Droplet 1]
type = Projectile
trigger1 = time = 5
ProjID = 1
projanim = 2
projremanim = 3
velocity = -4, -7.3
accel = 0, .45
projheightbound = -240, 0
offset = -20, 14
postype = p1

[State 220, Droplet 2]
type = Projectile
trigger1 = time = 5
ProjID = 2
projanim = 2
projremanim = 3
velocity = -2, -8
accel = 0, .45
projheightbound = -240, 0
offset = -20, 14
postype = p1

[State 220, Droplet 3]
type = Projectile
trigger1 = time = 5
ProjID = 3
projanim = 2
projremanim = 3
velocity = 2.3, -8.4
accel = 0, .45
projheightbound = -240, 0
offset = -20, 14
postype = p1

[State 220, Droplet 4]
type = Projectile
trigger1 = time = 5
ProjID = 4
projanim = 2
projremanim = 3
velocity = 4.2, -7
accel = 0, .45
projheightbound = -240, 0
offset = -20, 14
postype = p1


[State 220, 2]
type = Velset
trigger1 = AnimElem = 3
x = 7
y = -8

[State 220, 3]
type = Hitdef
trigger1 = time = 0
hitflag = MAF
attr = S, NA
animtype  = Up
damage    = 70
guardflag = MA
pausetime = 13,10
sparkno = 2
sparkxy = 0,-75
hitsound   = S6,3
guardsound = 6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -4, -7
air.velocity = -4,-5
guard.slidetime = 12
guard.velocity = -8
fall = 1
air.fall = 1
givepower = 60
getpower = 95


[State 220, 5]
type = Velset
trigger1 = time = 12
x = 0

[State 220, 6]
type = VelSet
trigger1 = time = 25
x = .4

[State 210, grunt]
type = PlaySnd
triggerall = time > 10
trigger1 = Pos Y >= -1
value = 8,1


[State 0, PosSet]
type = PosSet
triggerall = time > 10
trigger1 = Pos Y >= -1
y = 0



[State 220, 7]
type = ChangeState
triggerall = time > 10
trigger1 = Pos Y = 0
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
damage = 20
guardflag = MAFD
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
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

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 172,2

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 40
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = 1
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

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 172,3

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
damage = 60
guardflag = MA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-35
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
fall = 1

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
damage = 20
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-45
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
damage = 40
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = 1
sparkxy = 0,-45
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
juggle = 5
physics = C
velset = 0,0
poweradd = 65

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 172,3

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
damage = 50
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-60
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
damage = 20
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-5
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
damage = 40
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = 1
sparkxy = 0,-5
animtype = Medium
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

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

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 172,2

[State 240, grunt]
type = PlaySnd
trigger1 = animelem = 2
value = 8,0

[State 100, lines]
type = Explod
trigger1 = animelem = 2
anim = 451
ID = 451
removetime = -2
vel = 5, 0
postype = p1
pos = -10,0
sprpriority = 5
bindtime = 1
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 2
x = 8

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-5
animtype = Back
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -6,-6
fall= 1

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
juggle = 1
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
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-70
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
juggle = 1
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
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = 1
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
juggle = 8
movetype = A
physics = A
poweradd = 96

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 240, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 172,11

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
pausetime = 14,14
hitsound = S172,5;S2,2
guardsound = S3,0
sparkno = -1
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 6,-4
air.fall = 1


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
juggle = 1
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
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-65
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
juggle = 1
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
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = 1
sparkxy = 0,-75
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
juggle = 4
movetype = A
physics = A
poweradd = 92

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 172,2

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
damage = 80
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-75
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
fall = 1


[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 173,5

[State 194, 2]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

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
trigger1 =  AnimElem = 1
value = 0,1

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
hitsound = S3,1
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = -1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
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

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 172,3

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 811
ID = 811
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2



[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 55,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = -10,-90

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = -30,-110

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -10,-90

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 0,-95

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 6
value = 0,2

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 6
value = 830


[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 8600,0

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 6
value = 50

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -40

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
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
value = 820

[Statedef 830]
type    = A
movetype= H
physics = N
velset = 8,-6
poweradd = 50

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 85
x = 30

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

;[State 800, PlaySnd]
;type = PlaySnd
;trigger1 = (Pos Y >= 0) && (Vel Y > 0)
;value = 2,2

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

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
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
