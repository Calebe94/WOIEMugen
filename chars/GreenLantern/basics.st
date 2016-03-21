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
value = 181 + ((Random * 4) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 50
value = 171,5

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 0

[State 182,0]
type = PlaySnd
trigger1 = Time = 50
value = 171,1

[State 191, Explod]
type = Explod
trigger1 = animelem = 4
anim = 194
ID = 194
pos = 45,-42
postype = p1
removetime = -1
sprpriority = -2

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,280]
flag = RoundNotOver

[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 0

[State 182,0]
type = PlaySnd
trigger1 = Time = 50
value = 171,4

[State 191, Explod]
type = Explod
trigger1 = animelem = 2
anim = 194
ID = 194
pos = -15,-10
postype = p1
removetime = -1
sprpriority = 2

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,280]
flag = RoundNotOver

[Statedef 184]
type = S
ctrl = 0
anim = 176
velset = 0,0
sprpriority = 1

[State 182,0]
type = PlaySnd
trigger1 = animelem = 2
value = 171,2

[State 191, Explod]
type = Explod
trigger1 = animelem = 3
anim = 177
ID = 177
pos = -24,-93
postype = p1
removetime = -1
sprpriority = 2

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver


[Statedef 185]
type = S
ctrl = 0
anim = 178
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,120]
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
value = 191 + ((Random * 5) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 171,3

[State 191, Explod]
type = Explod
trigger1 = animelem = 4
anim = 194
ID = 194
pos = 0,0
postype = p1
removetime = 44
sprpriority = 2

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 10,0

[State 191, Explod]
type = Explod
trigger1 = animelem = 5
anim = 192
ID = 192
pos = 0,0
postype = p1
removetime = 40
sprpriority = -2

[State 191, Explod]
type = Explod
trigger1 = animelem = 5
anim = 193
ID = 193
pos = 0,0
postype = p1
removetime = 40
sprpriority = 4



[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

 ; Intro #1
[Statedef 192]
type = S
ctrl = 0
anim = 184
velset = 0,0
sprpriority = 0

 [State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 171,10

[State 191, Explod]
type = Explod
trigger1 = animelem = 2
anim = 190
ID = 190
pos = 0,0
postype = p1
bindtime = -1
removetime = 60
sprpriority = 4

[State 191, Explod]
type = Explod
trigger1 = time = 0
anim = 185
ID = 185
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 1





[State 191, Explod]
type = Explod
trigger1 = time = 0
anim = 186
ID = 186
pos = 0,0
bindtime = -1
postype = p1
removetime = -2
sprpriority = -4
shadow = 110,110,110

[State 191, Explod]
type = Explod
trigger1 = time = 0
anim = 187
ID = 187
pos = 0,0
bindtime = -1
postype = p1
removetime = -2
sprpriority = -2
shadow = 110,110,110

[State 191, Explod]
type = Explod
trigger1 = time = 0
anim = 188
ID = 188
pos = 0,0
bindtime = -1
postype = p1
removetime = -2
sprpriority = -1
shadow = 110,110,110

[State 191, Explod]
type = Explod
trigger1 = time = 0
anim = 189
ID = 189
pos = 0,0
bindtime = -1
postype = p1
removetime = -2
sprpriority = -1
shadow = 10,10,10


[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = Intro

[Statedef 193]
type = S
ctrl = 0
anim = 196
velset = 0,0
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 8,0


[State 191, 1]
type = PlaySnd
trigger1 = animelem = 38
value = 171,8


[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[Statedef 194]
type = S
ctrl = 0
anim = 197
velset = 0,0
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = time = 10
value = 171,9

[State 191, 1]
type = PlaySnd
trigger1 = time = 120
value = 10,0


[State 191, Explod]
type = Explod
trigger1 = time = 120
anim = 1501
ID = 1501
pos = 0,-80
postype = p1
removetime = -2
sprpriority = 1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[Statedef 195]
type = S
ctrl = 0
anim = 198
velset = 0,0
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = time = 10
value = 171,0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[Statedef 199]
anim = 195
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 50

[State 191, 1]
type = PlaySnd
trigger1 = time = 10
value = 171,11


[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
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
damage = 15
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-104
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 211
ID = 211
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
sparkxy = 0,-95
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 221
ID = 221
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
damage = 76
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-105
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
air.fall =1

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
damage = 15
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-70
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 251
ID = 251
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
damage = 76
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
air.fall =1

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
sparkno = S9990
sparkxy = 0,-42
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
sparkxy = 0,-43
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 421
ID = 421
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
damage = 75
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-60
animtype = Back
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-15
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
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-5
animtype = Medium
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-2
guard.velocity = -3
air.velocity = -1,-6



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

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 441
ID = 441
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-75
animtype = Back
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-15
guard.velocity = -5
air.velocity = -2,-11


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
damage = 15
guardflag = HA
pausetime = 12,13
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
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
physics = A
poweradd = 65

[State 0, Explod]
type = Explod
trigger1 = animelem = 1; && pos y < - 50
anim = 611
ID = 611
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
pausetime = 12,13
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-30
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 1; && pos y < - 50
anim = 621
ID = 621
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
damage = 76
guardflag = HA
pausetime = 12,13
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-90
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
fall = 1
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
damage = 16
guardflag = HA
pausetime = 12,13
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-73
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
pausetime = 12,13
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-50
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 1; && pos y < - 50
anim = 651
ID = 651
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

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
damage = 72
guardflag = HA
pausetime = 12,13
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-35
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
fall = 1
air.fall = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[StateDef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1; && pos y < - 50
anim = 810
ID = 810
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1; && pos y < - 50
anim = 812
ID = 812
pos = 0,-80
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 800, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 801
p2stateno = 802
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = ifelse(PalNo > 6, 0, 1)
fall.recover = 0
fall.damage = 80

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 810

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 812
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 1; && pos y < - 50
anim = 813
ID = 813
pos = 0,0
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = 45
sprpriority = 3
removeongethit = 1


[State 0, Explod]
type = Explod
trigger1 = animelem = 1; && pos y < - 50
anim = 811
ID = 811
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 24
sprpriority = 3
removeongethit = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60,-80

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 60,-80

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -75

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 3
value = 803

;[State 0, Turn]
;type = Turn
;trigger1 =  Animelem = 7


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

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 802

[Statedef 803]
type    = A
movetype= H
physics = N
velset = 2,-17
poweradd = 50

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 803

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = vel y > 0 && anim != 804; && SelfAnimExist(5050)
value = 804

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
