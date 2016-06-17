; States file for {character} -- Hypers
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
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3000]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 39
value = 1
;ignorehitpause =
;persistent =



; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 4
value = 173,6

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 4
time = 40
sound = S10,1
pos = -30,-110
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
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
trigger1 = AnimElem = 4
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

[State 3000, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 5
value = 172,12

[State 2300, coverup1]
type = helper
trigger1 = AnimElem = 5
ID = 115
name = "Coverup 1"
postype = back
pos = 0, floor(Pos Y + 40)
stateno = 2330
ownpal = 1
persistent = 0
size.xscale =1;(float)
size.yscale =1.3;(float)

[State 2300, coverup2]
type = helper
trigger1 = AnimElem = 5 = 3
ID = 116
name = "Coverup 2"
postype = back
pos = 0, floor(Pos Y + 60)
stateno = 2331
ownpal = 1
persistent = 0
size.xscale =1;(float)
size.yscale =1.3;(float)

[State 2300, Coverup 3]
type = helper
trigger1 = AnimElem = 6
name = "Coverup 3"
ID = 118
postype = back
pos = 0, floor(Pos Y + 80)
stateno = 2332
ownpal = 1
persistent = 0
size.xscale =1;(float)
size.yscale =1.3;(float)

[State 2300, 8]
type = helper
trigger1 = AnimElem = 5
name = "Foreground Wave 1"
ID = 111
postype = back
pos = 0, floor(Pos Y + 15)
stateno = 2310
ownpal = 1
persistent = 0
size.xscale =1;(float)
size.yscale =1.3;(float)

[State 2300, 9]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 5

[State 2300, 10]
type = helper
trigger1 = time = 50
name = "Background Wave 1"
ID = 112
postype = back
pos = 0, floor(Pos Y - 5)
stateno = 2320
ownpal = 1
size.xscale =1;(float)
size.yscale =1.3;(float)

[State 2300, 11]
type = PlaySnd
trigger1 = time = 50
value = 4, 5

[State 2300, 12]
type = helper
trigger1 = time = 75
name = "Foreground Wave 2"
ID = 113
postype = back
pos = 0, floor(Pos Y + 13)
stateno = 2310
ownpal = 1
size.xscale =1;(float)
size.yscale =1.3;(float)

[State 2300, 13]
type = PlaySnd
trigger1 = time = 75
value = 4, 5

[State 2300, 14]
type = RemoveExplod
trigger1 = time = 90

[State 2300, 15]
type = VarSet
trigger1 = NumHelper(111) > 0
trigger1 = Helper(111), MoveHit
trigger2 = NumHelper(112) > 0
trigger2 = Helper(112), MoveHit
trigger3 = NumHelper(113) > 0
trigger3 = Helper(113), MoveHit
v = 1
value = 1

[State 2300, Return]
type = ChangeState
trigger1 = time = 170
value = 3010
ctrl = 0

[StateDef 3010]
type = A
movetype = H
physics = N
anim = 3010
ctrl = 0
velset = 0,0
sprpriority = 0

[State 2300, Return]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 2310]
type = S
physics = N
movetype = A
velset = 0, 0
anim = 3001
sprpriority = 1

[State 2310, a]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2310, 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimELem = 4
trigger3 = ANimElem = 2
trigger4 = AnimElem = 6
trigger5 = AnimELem = 7
trigger6 = AnimElem = 9
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 25, 2
pausetime = 0, 15
sparkno = 0
sparkxy = -5, (-30 -random/100)
hitsound = S172,1
guardsound = 6, 0
ground.type = low
ground.slidetime = 15
guard.slidetime = 10
ground.hittime = 30
air.hittime = 10
ground.velocity = -15, 0
air.velocity = -7, -2
guard.velocity = -8
forcestand = 1
;p2stateno = 2340
ground.cornerpush.veloff = 0

[State 2310, 6]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2310, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 2310, a]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 2310, 2]
type = DestroySelf
trigger1 = AnimTime = 0

; Background Wave

[Statedef 2320]
type = S
physics = N
movetype = A
velset = 0, 0
anim = 3001
sprpriority = -2

[State 2320, 1]
type = PalFX
trigger1 = 1
time = 1
add = -73, -49, -49

[State 2320, a]
type = SprPriority
trigger1 = 1
value = -2

[State 2320, n]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2320, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimELem = 4
trigger3 = ANimElem = 2
trigger4 = AnimElem = 6
trigger5 = AnimELem = 7
trigger6 = AnimElem = 9
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = hard
damage = 25, 2
pausetime = 0, 15
sparkno = 3
sparkxy = -5, -30
hitsound = S172, 1
guardsound = 6, 0
ground.type = low
ground.slidetime = 15
guard.slidetime = 10
ground.hittime = 30
air.hittime = 10
ground.velocity = -15, 0
air.velocity = -7, -2
guard.velocity = -8
forcestand = 1
ground.cornerpush.veloff = 0

[State 2320, 6]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2320, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 2320, a]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 2320, 3]
type = DestroySelf
trigger1 = AnimTime = 0

; The following 3 states are for waves to cover up the bottom of the screen.

[Statedef 2330]
type = S
physics = N
movetype = A
velset = 0, 0
anim = 3002

[State 2330, 1]
type = SprPriority
trigger1 = 1
value = 3

[State 2330, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2330, 3]
type = ChangeAnim
trigger1 = parent, time = 130
trigger2 = parent, movetype = H
value = 3003

[State 2330, a]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 2330, 4]
type = DestroySelf
trigger1 = parent, time = 160
trigger2 = parent, NumHelper(111) = 0
trigger2 = parent, NumHelper(112) = 0
trigger2 = parent, NumHelper(113) = 0

[Statedef 2331]
type = S
physics = N
movetype = A
velset = 0, 0

[State 2331, b]
type = ChangeAnim
trigger1 = time = 0
value = 3002
elem = 4

[State 2331, 1]
type = SprPriority
trigger1 = 1
value = 4

[State 2331, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2331, 3]
type = ChangeAnim
trigger1 = parent, time = 130
trigger2 = parent, movetype = H
value = 3003

[State 2331, a]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 2331, 4]
type = DestroySelf
trigger1 = parent, time = 160
trigger2 = parent, NumHelper(111) = 0
trigger2 = parent, NumHelper(112) = 0
trigger2 = parent, NumHelper(113) = 0

[Statedef 2332]
type = S
physics = N
movetype = A
velset = 0, 0

[State 2332, b]
type = ChangeAnim
trigger1 = time = 0
value = 3002
elem = 8

[State 2332, 1]
type = SprPriority
trigger1 = 1
value = 5

[State 2332, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2332, 3]
type = ChangeAnim
trigger1 = parent, time = 130
trigger2 = parent, movetype = H
value = 3003

[State 2332, a]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 2332, 4]
type = DestroySelf
trigger1 = parent, time = 160
trigger2 = parent, NumHelper(111) = 0
trigger2 = parent, NumHelper(112) = 0
trigger2 = parent, NumHelper(113) = 0






;-----------special mode to flood by namor
[Statedef 3301]
type    = A
movetype= H
physics = N
ctrl = 0
anim = 3303
velset = 0,0
poweradd = 1


;[State 3100, a]
;type = NotHitBy
;trigger1 = var(4) > 540
;value = SCA, AA, AT, AP
;---------------------------------------

;[State 3301, HO]
;type = HitOverride
;trigger1 = 1
;attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = -1
;stateno = 3101


[State 3301, Fly_Mode_End]
triggerall = time > 3
trigger1 = enemynear,name="Namor" && enemynear, var(10) = 0
trigger2 = Win = 1
trigger3 = Lose = 1
type = ChangeState
value = 50
ctrl = 1

;[State 3301,uhu]
;type = ChangeState
;triggerall = (var(59) != 0)
;triggerall = (Ctrl)
;trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,900])
;value = 3310



;[State 3301, Fly_Mode_End]
;trigger1 = command = "binary"  && power >= 1000
;type = ChangeState
;value = 3310
;ctrl = 0

;faço raio pra binary?
;[State 3301, Ray]
;type = ChangeState
;trigger1 = command = "Special1"
;value = 1012

[State 3301, Check_for_Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -205
trigger6 = Pos Y > -20
x = 0
y = 0

[State 3301, Check_for_Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 3303
value = 3303 ;parado

[State 3301, Back]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = Anim != 3302
value = 3302 ;pra tras

[State 3101, Forward]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = Anim != 3305
value = 3305   ;pra frente

[State 3101, Up]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = Anim != 3304
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
value = 3304   ;pra cima

[State 3301, Down]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = Anim != 3301
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
value = 3301 ;pra baixo

[State 3301,Turn]
type = Turn
trigger1 = P2bodydist X < -20 && anim = 3303

[State 3301,Turn]
type = Turn
trigger1 = P2bodydist X < -100 && anim = 3305

[State 3301, MoveUp]
type = VelSet
trigger1 = command = "holdup"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
y = -4

[State 3301, MoveDown]
type = VelSet
trigger1 = command = "holddown"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
y = 4

[State 3301, MoveBack]
type = VelSet
trigger1 = command = "holdback"
x = -5

[State 3301, MoveForward]
type = VelSet
trigger1 = command = "holdfwd"
x = 7

[State 3301, UpBorder]
type = PosSet
trigger1 = Pos Y < -200
y = -200

[State 3301, DownBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20

[State 3301, Jump_Light_Punch]
type = ChangeState
trigger1 = command = "x"
value = 3320

[State 3301, Jump_Medium_Punch]
type = ChangeState
trigger1 = command = "y"
value = 3330

[State 3301, Jump_Strong_Punch]
type = ChangeState
trigger1 = command = "z"
value = 3340

[State 3301, Jump_Light_Kick]
type = ChangeState
trigger1 = command = "a"
value = 3350

[State 3301, Jump_Medium_Kick]
type = ChangeState
trigger1 = command = "b"
value = 3360

[State 3301, Jump_Strong_Kick]
type = ChangeState
trigger1 = command = "c"
value = 3370


;golpes voando fly
;soco fraco
[Statedef 3320]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 600
poweradd = 30
sprpriority = 2

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

[State 3110, 4]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "y"
value = 3330


[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3340

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping medium punch

[Statedef 3330]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 610
poweradd = 30
sprpriority = 2

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

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3340

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping strong punch

[Statedef 3340]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 620
poweradd = 30
sprpriority = 2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = HA
pausetime = 14,14
hitsound = S2,2
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
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping light kick

[Statedef 3350]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 640
poweradd = 30
sprpriority = 2

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

[State 3110, 4]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "b"
value = 3360


[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "c"
value = 3370

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping medium kick
[Statedef 3360]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 650
poweradd = 30
sprpriority = 2

[State 640, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

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

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "c"
value = 3370


[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping strong kick

[Statedef 3370]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 250
poweradd = 30
sprpriority = 2
velset = 0,0

[State 650, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,2

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

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;teste 2 armor
; Hyper Armor custom hit state

[Statedef 3210]
MoveType = H
anim = 5010

[State 3210, 1]
type = VelSet
trigger1 = time = 0
y = 0
x = -8

[State 3210, 2]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP
time = 1

;[State 3210, 3]
;type = ChangeAnim
;trigger1 = time = 2
;value = Anim
;elem = AnimElemNo(0)

;[State 3210, 4]
;type = PalFX
;trigger1 = time = 2
;add = 255, 100, 100
;time = 7
;color = 50

[State 3210, 5]
type = ChangeState
trigger1 = time = 6
value = 3301

;kraken
;------------------
 ;new hyper  kraken
 ;
[Statedef 3400]
type = A
movetype = A
physics = N
anim = 3400
velset = 0,0
ctrl = 0
sprpriority = 3

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 39
value = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S171,0

[State 850, Big Splash]
type = explod
trigger1 = animelem = 3
anim = 3401
pos = 23,-43
postype = p1
bindtime = -1
removetime = 50
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1



; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = time = 50
time = 40
sound = S10,1
pos = 10,-40
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = time = 50
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
trigger1 = time = 50
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
trigger1 = time = 50
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


[State 7100, Invincibility]
type = NotHitBy
trigger1 = time = 75
value = SCA
time = 6


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 50
value = S172,18

[State 850, Big Splash]
type = explod
trigger1 = time = 50
anim = 3420
id = 3420
pos = 0, floor(p2dist y * -1)
postype = p2
bindtime = 1
removetime = 60
sprpriority = -10
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1


[State 7100, BloodPool]
type = Helper
trigger1 = time = 51
name = "WaterJail"
id = 7110
postype = p2
pos = 0, floor(p2dist y * -1)
stateno = 7110
facing = ifelse(enemynear, facing = facing,1,-1)
ownpal = 1

;[State 7110, Overlay]
;type = Explod
;scale = const(size.xscale)
;trigger1 = numhelper(7110)
;trigger1 = helper(7110), animelem = 7
;anim = 7111
;id = 7111
;postype = p1
;removeongethit = 1
;pos = floor(helper(7110), rootdist x)*-1,0
;ownpal = 1
;sprpriority = 2
;bindtime = 1
;
;[State 7110, Hands]
;type = Explod
;scale = const(size.xscale)
;trigger1 = numhelper(7110)
;trigger1 = helper(7110), animelem = 7
;anim = 7115
;id = 7111
;postype = p1
;removeongethit = 1
;pos = floor(helper(7110), rootdist x)*-1,0
;ownpal = 1
;sprpriority = 3
;bindtime = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = NumHelper(7110)
trigger1 = helper(7110), stateno = 7120
value = 173,9

[State 7000, Hit]
type = ChangeState
trigger1 = NumHelper(7110)
trigger1 = helper(7110), stateno = 7120
value = 7140
ctrl = 0

[State 7100, State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Blood Pool (helper)
[Statedef 7110]
type = S
movetype = A
physics = N
anim = 3402
velset = 0,0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S2,1

[State 850, Big Splash]
type = explod
trigger1 = time = 0;animelem = 2
anim = 3421
id = 3422
pos = 0, floor(p2dist y * -1)
postype = p2
bindtime = 1
removetime = 40
sprpriority = -10
removeongethit = 1
ownpal = 1

[State 850, Big Splash]
type = explod
trigger1 = time = 0;animelem = 2
anim = 3422
id = 3422
pos = 0, floor(p2dist y * -1)
postype = p2
bindtime = 1
removetime = 40
sprpriority = 10
removeongethit = 1
ownpal = 1


[State 7110, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, HT
hitonce = 1
hitflag = M-
numhits = 0
priority = 5, miss
hitsound = S3,3
sparkno = -1
p2facing = 1
p1stateno = 7120
p2stateno = 7130
fall = 1
fall.recover = 0
sprpriority = -2

[State 7110, Destroy]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent, movetype = H

;Success (Helper)
[Statedef 7120]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3403
sprpriority = -2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8,0


[State 7120, Bind]
type = TargetBind
trigger1 = time = [0,39]
pos = 0,0

[State 7120, Bind]
type = TargetBind
trigger1 = time = [40,228]
pos = 0,-40

[State 7120, Overlay]
type = RemoveExplod
trigger1 = time = 0
id = 7110

;[State 7120, Overlay]
;type = Explod
;scale = const(size.xscale)
;trigger1 = time = 0
;anim = 7121
;id = 7120
;postype = p1
;pos = 0,0
;sprpriority = 2
;bindtime = 9999
;
;[State 7120, Hands]
;type = Explod
;scale = const(size.xscale)
;trigger1 = time = 0
;anim = 7122
;id = 7120
;postype = p1
;pos = 0,0
;sprpriority = 3
;bindtime = 9999

[State 7120, PosAdd]
type = PosAdd
trigger1 = time = [19,39]
trigger2 = time >= 40 && pos y > 0
y = -15

[State 7120, PosAdd]
type = PosAdd
trigger1 = time >= 40 && pos y > 0
y = -5

[State 7130, Pos]
type = PosAdd
trigger1 = time = 40
x = floor(FrontEdgeDist-60)

[State 7130, DipBeneath]
type = PosSet
trigger1 = time = 40
y = 140

[State 7140, Flags]
type = AssertSpecial
trigger1 = time = [20,213]
flag = nofg

[State 7130, Sprite]
type = Sprpriority
trigger1 = time = 0
value = 3

[State 7130, Combo]
type = HitAdd
trigger1 = time = 123
trigger2 = time = 130
trigger3 = time = 136
trigger4 = time = 143
trigger5 = time = 150
trigger6 = time = 157
trigger7 = time = 164
trigger8 = time = 171
trigger9 = time = 178
trigger10 = time = 185
trigger11 = time = 192
trigger12 = time = 199
trigger13 = time = 206
value = 1

[State 7130, SFX]
type = PlaySnd
trigger1 = time = 123
trigger2 = time = 130
trigger3 = time = 136
trigger4 = time = 143
trigger5 = time = 150
trigger6 = time = 157
trigger7 = time = 164
trigger8 = time = 171
trigger9 = time = 178
trigger10 = time = 185
trigger11 = time = 192
trigger12 = time = 199
trigger13 = time = 206
value = 171,4

[State 7130, SFX]
type = PlaySnd
trigger1 = time = 80
trigger2 = time = 100
trigger3 = time = 120
value = 172,12

[State 1210, HitSpark]
type = Explod
scale = const(size.xscale)
trigger1 = time = 123
trigger2 = time = 130
trigger3 = time = 136
trigger4 = time = 143
trigger5 = time = 150
trigger6 = time = 157
trigger7 = time = 164
trigger8 = time = 171
trigger9 = time = 178
trigger10 = time = 185
trigger11 = time = 192
trigger12 = time = 199
trigger13 = time = 206
postype = p2
pos = 0, (-45 -random/200)
anim = F0
ownpal = 1
bindtime = 1
random = 30,30 ;25,25
ontop = 1
  ;aqui
[State 7130, MidLeft]
type = Explod
scale = const(size.xscale)
trigger1 = time = 120
trigger2 = time = 190
anim = 3404
bindtime = 999
sprpriority = 4

[State 7130, MidRight]
type = Explod
scale = const(size.xscale)
trigger1 = time = 127
trigger2 = time = 176
anim = 3405
bindtime = 999
sprpriority = 4

[State 7130, TopLeft]
type = Explod
scale = const(size.xscale)
trigger1 = time = 134
anim = 3406
bindtime = 999
sprpriority = 4

[State 7130, TopRight]
type = Explod
scale = const(size.xscale)
trigger1 = time = 141
trigger2 = time = 169
anim = 3407
bindtime = 999
sprpriority = 4

[State 7130, BottomLeft]
type = Explod
scale = const(size.xscale)
trigger1 = time = 148
trigger2 = time = 183
anim = 3404
bindtime = 999
sprpriority = 4

[State 7130, BottomMiddle]
type = Explod
scale = const(size.xscale)
trigger1 = time = 155
anim = 3405
bindtime = 999
sprpriority = 4

[State 7130, BottomRight]
type = Explod
scale = const(size.xscale)
trigger1 = time = 162
trigger2 = time = 197
anim = 3406
bindtime = 999
sprpriority = 4

[State 7130, Anim]
type = ChangeAnim
trigger1 = time = 210
value = 1

[State 7120, Bind]
type = TargetBind
trigger1 = time = 229
pos = 0,20

[State 7120, SFX]
type = PlaySnd
trigger1 = time = 17
trigger2 = time = 229
value = 4, 5

[State 7120, Destroy]
type = DestroySelf
trigger1 = anim = 1 && animtime = 0

;P2 hit state
[Statedef 7130]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 1

[State 7130, Invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 7130, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 7140, Camera]
type = ScreenBound
trigger1 = time >= 0
value = 0
movecamera = 0,0

[State 7130, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 3410


[State 7130, Anim]
type = ChangeAnim
trigger1 = time = 40
trigger1 = selfanimexist(5300)
value = 5300

[State 7130, Anim]
type = ChangeAnim2
trigger1 = time = 40
trigger1 = !selfanimexist(5300)
value = 3411

[State 7130, HitAnim]
type = ChangeAnim
trigger1 = time = 123
trigger2 = time = 130
trigger3 = time = 136
trigger4 = time = 143
trigger5 = time = 150
trigger6 = time = 157
trigger7 = time = 164
trigger8 = time = 171
trigger9 = time = 178
trigger10 = time = 185
trigger11 = time = 192
trigger12 = time = 199
trigger13 = time = 206
value = 5002 + (10 * (random<500))

[State 7130, Damage]
type = LifeAdd
trigger1 = time = 123
trigger2 = time = 130
trigger3 = time = 136
trigger4 = time = 143
trigger5 = time = 150
trigger6 = time = 157
trigger7 = time = 164
trigger8 = time = 171
trigger9 = time = 178
trigger10 = time = 185
trigger11 = time = 192
trigger12 = time = 199
trigger13 = time = 206
value = -15
kill = 0

[State 7130, Anim]
type = ChangeAnim2
trigger1 = time = 210
value = 3412

[State 7130, Anim]
type = ChangeAnim2
trigger1 = anim = 3412 && animtime = 0
trigger1 = !SelfAnimExist(5250)
trigger1 = !SelfAnimExist(5251)
value = 3413

[State 7130, Anim]
type = ChangeAnim2
trigger1 = Anim = 3413
trigger1 = Vel Y > 0
value = 3414

[State 7130, Anim]
type = ChangeAnim
trigger1 = anim = 3412 && animtime = 0
trigger1 = SelfAnimExist(5250)
trigger1 = SelfAnimExist(5251)
trigger1 = Anim != 5250
value = 5250

[State 7130, Anim]
type = ChangeAnim
trigger1 = Anim = 5250
trigger1 = Vel Y > 0
value = 5251

[State 7130, Vel]
type = VelSet
trigger1 = time = 230
x = -1.1
y = -12

[State 7130, Gravity]
type = VelAdd
trigger1 = time >= 230
y = .43

[State 7130, FinalDamage]
type = LifeAdd
trigger1 = time = 229
value = -20

[State 7130, State]
type = SelfState
trigger1 = time > 230
trigger1 = pos y >= 0 && vel y > 0
value = 5100

;Success (Jedah)
[Statedef 7140]
type = S
movetype = H;A
physics = N
velset = 0,0
anim = 3415
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 8,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,14


[State 7140, Invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 7140, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 7111

[State 7140, Push]
type = PlayerPush
trigger1 = 1
value = 0



[State 7140, Camera]
type = ScreenBound
trigger1 = time >= 0
value = 0
movecamera = 0,0

[State 7140, PosAdd]
type = PosAdd
trigger1 = animelem = 5, >= 0 && time < 40
y = -15

;[Whatever] * ((Time - 10) / 10)


;[State 7140, BG]
;type = Explod
;trigger1 = time = 20
;anim = 7131
;ownpal = 1
;postype = back
;pos = 0,240
;;bindtime = 999
;under = 1
;vel = 0,-16
;scale = 12,12
;sprpriority = -10
;teste

[State 7140, BG]
type = Explod
trigger1 = time = 20
anim = 3408
ID = 1005
postype = left
pos = 0,0
bindtime = -1
removetime = 190
ownpal = 1
sprpriority = 500
ontop = 1

[State 7140, BG]
type = Explod
trigger1 = time = 20
anim = 3409
ID = 1005
postype = left
pos = 0,0
bindtime = -1
removetime = 190
ownpal = 1
sprpriority = -50
;fim teste



;[State 7140, EnvColor]
;type = EnvColor
;trigger1 = time = 36
;value = 51, 0, 136
;;mul = 0,0,0;256, 256, 256
;time = 175;200
;under = 1


[State 7140, Pos]
type = PosAdd
trigger1 = time = 40
x = floor(60 - BackEdgeDist)

[State 7140, Grav]
type = VelAdd
trigger1 = time >= 41
y = .43

[State 7140, Bubbles]
type = Explod
scale = const(size.xscale)
trigger1 = random < 80 && time >= 70 ;,133]
anim = 3416 + (random < 500)
postype = p1
pos = -10,-75
random = 20,20
bindtime = 1
ownpal = 1
sprpriority = 5
velocity = 0,-1

[State 7140, Bubbles]
type = Explod
scale = const(size.xscale)
trigger1 = random < 80 && time >= 70 ;,133]
anim = 3416 + (random < 500)
postype = p2
pos = -10,-75
random = 20,20
bindtime = 1
ownpal = 1
sprpriority = 5
velocity = 0,-1



[State 7140, State]
type = ChangeState
trigger1 = vel y > 0 && pos y >= -20;time = 60 ;animtime = 0
value = 7145



;"Landing"
[Statedef 7145]
type = S
movetype = I
physics = N
velset = 0,0
anim = 3418
sprpriority = 3
ctrl = 0

[State 7140, Bubbles]
type = Explod
trigger1 = time = 0
anim = 3423
postype = p1
pos = 0,0
bindtime = 104
ownpal = 1
sprpriority = 5
removetime = -2

[State 7140, Bubbles]
type = Explod
trigger1 = time = 0
anim = 3424
postype = p1
pos = 0,0
bindtime = -1
ownpal = 1
sprpriority = 8
removetime = -2

[State 7140, Bubbles]
type = Explod
scale = const(size.xscale)
trigger1 = random < 80 && time <= 115;
anim = 3416 + (random < 500)
postype = p1
pos = -20,-120
random = 20,10
bindtime = 1
ownpal = 1
sprpriority = 5
velocity = 0,-1

[State 7140, Bubbles]
type = Explod
scale = const(size.xscale)
trigger1 = random < 80 && time <= 115;
anim = 3416 + (random < 500)
postype = p1
pos = 0,-105
random = 20,10
bindtime = 1
ownpal = 1
sprpriority = 5
velocity = 0,-1

[State 7140, Bubbles]
type = Explod
scale = const(size.xscale)
trigger1 = random < 80 && time <= 115;
anim = 3416 + (random < 500)
postype = p2
pos = 0,-95
random = 20,10
bindtime = 1
ownpal = 1
sprpriority = 5
velocity = 0,-1



[State 7145, Invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 7145, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 7145, Screen]
type = ScreenBound
trigger1 = time >= 0
value = 0
movecamera = 0,0

[State 7145,Pos]
type = PosSet
trigger1 = time = 0
y = -20

[State 7145, Laugh]
type = PlaySnd
trigger1 = time = 24
value = 10,6
channel = 0

[State 7145, Ascent]
type = VelSet
trigger1 = time = 113
y = -10

[State 7145, Grav]
type = VelAdd
trigger1 = time = [113,132]
y = .43

[State 7145, Pos]
type = PosSet
trigger1 = anim = 3418 && animelem = 7
y = 0

[State 7145, Vel]
type = VelSet
trigger1 = anim = 3418 && animelem = 7
y = 0



[State 850, Big Splash]
type = explod
trigger1 = anim = 3418 && animelem = 8
anim = 3425
pos = 0,240
postype = back
bindtime = -1
removetime = -2
sprpriority = 10
ownpal = 1

[State 7145, Explod]
type = Explod
trigger1 = anim = 3418 && animelem = 8
anim = 1
bindtime = 20
ownpal = 1
sprpriority = 5
postype = p1
pos = 0,0


[State 220, Droplet 1]
type = Projectile
trigger1 = anim = 3418 && animelem = 8
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
trigger1 = anim = 3418 && animelem = 8
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
trigger1 = anim = 3418 && animelem = 8
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
trigger1 = anim = 3418 && animelem = 8
ProjID = 4
projanim = 2
projremanim = 3
velocity = 4.2, -7
accel = 0, .45
projheightbound = -240, 0
offset = -20, 14
postype = p1

[State 7145, Jump]
type = ChangeAnim
trigger1 = time = 150; anim = 3145 && animtime = 0
value = 3419

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 150
value = 8,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 150
value = 172, 12
;[State 7040, BloodPool]
;type = Explod
;scale = const(size.xscale)
;trigger1 = time = 134
;postype = p1
;pos = 0,5
;anim = 7151
;id = 7151
;ownpal = 1
;bindtime = 1
;sprpriority = 0
;removeongethit = 1
;shadow = -1

;[State 7040, BloodSplash]
;type = Explod
;scale = const(size.xscale)
;trigger1 = time = 137
;postype = p1
;pos = 0,5
;anim = 7101
;id = 7101
;ownpal = 1
;bindtime = 1
;sprpriority = 5
;removeongethit = 1
;shadow = -1

[State 7120, SFX]
type = PlaySnd
trigger1 = time = 137
value = 4, 5

[State 7145, Vel]
type = VelSet
trigger1 = time = 150
y = -9

[State 7145, Vel]
type = PosSet
trigger1 = time = 150
y = -25

[State 7145, Grav]
type = Gravity
trigger1 = time >= 151

[State 7145, State]
type = ChangeState
trigger1 = vel y > 0 && pos y >= 0 && time > 150
value = 7150



[Statedef 7150]
type = S
movetype = I
physics = S
anim = 47
velset = 0,0


[State 7150, Align]
type = PosSet
trigger1 = time = 0
y = 0

[State 7150, State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;dholpin ride

;============================================================================
; DARK FORCE SPECIAL STATES

; Enter Dark Force mode
[Statedef 3100]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3100

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 39
value = 2

;[State 3000, 2]
;type = ChangeAnim
;trigger1 = time = 0
;value = 3100;2320
 [State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S171,0


[State 850, Big Splash]
type = explod
trigger1 = time = 0
anim = 3401
pos = 35,-120
postype = p1
bindtime = -1
removetime = 50
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = time = 0
time = 40
sound = S10,1
pos = 10,-110
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = time = 0
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

[State 3000, superBG]
type = Helper
trigger1 = time = 0
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

[State 3000, a]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP

[State 3000, b]
type = VarSet
trigger1 = time = 0
v = 4
value = 550  ;time?

[State 3000, c]    ; Max Y value attainable
type = VarSet
trigger1 = time = 0
v = 1
value = -(var(7) - 115)

[State 3000, d]    ; Min Y value attainable
type = VarSet
trigger1 = time = 0
v = 2
value = 220 - var(7)

[State 3000, e]
type = VarSet
trigger1 = time = 0
v = 5
value = 1

[State 3000, f]
type = PlayerPush
trigger1 = 1
value = 0

[State 3000, 3]
type = PlaySnd
trigger1 = time = 0
value = 5, 4

[State 3000, 8]
type = PlaySnd
trigger1 = time = 5
value = 4, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
trigger2 = time = 10
trigger3 = time = 14
trigger4 = time = 20
trigger5 = time = 25
trigger6 = time = 28
value = S171,13


[State 3000, 9]
type = Helper
trigger1 = time = 5
name = "Wave 1-2"
ID = 127
stateno = 3112
postype = back
pos = 0, 45;240; - var(7)
ownpal = 1

;[State 3000, 9]
;type = Helper
;trigger1 = time = 5
;name = "Wave 1"
;ID = 127
;stateno = 3111
;postype = back
;pos = 0, 40;240; - var(7)
;ownpal = 1


[State 3000, 11]
type = Helper
trigger1 = time = 10
name = "Wave 2"
ID = 128
stateno = 3111
postype = back
pos = 0, 25; - var(7)
ownpal = 1

[State 3000, 12]
type = Helper
trigger1 = time = 14
name = "Wave 3"
ID = 129
stateno = 3111
postype = back
pos = 0, 5; - var(7)
ownpal = 1

[State 3000, 11]
type = Helper
trigger1 = time = 20
name = "Wave 4"
ID = 130
stateno = 3111
postype = back
pos = 0, -15; - var(7)
ownpal = 1

[State 3000, 12]
type = Helper
trigger1 = time = 25
name = "Wave 5"
ID = 131
stateno = 3111
postype = back
pos = 0, -35; - var(7)
ownpal = 1

[State 3000, 12]
type = Helper
trigger1 = time = 28
name = "Wave 6"
ID = 131
stateno = 3111
postype = back
pos = 0, -55; - var(7)
ownpal = 1


[State 3000, 13]
type = helper
trigger1 = time = 17
name = "Crab"
ID = 751
postype = back
pos = -40, -40
stateno = 3105
ownpal = 1

[State 3000, 14]
type = VelSet
triggerall = numhelper(751) != 0
trigger1 = time > 25
trigger1 = helper(751), var(0) = 1
x = 0
y = -9

[State 3000, 15]
type = ChangeAnim
triggerall = numhelper(751) != 0
trigger1 = time > 25
trigger1 = helper(751), var(0) = 1
value = 3105

[State 3000, 16]
type = VelAdd
triggerall = numhelper(751) != 0
trigger1 = time > 25
trigger1 = helper(751), var(0) != 0
trigger1 = helper(751), var(0) < 40
y = .4

[State 3000, 17]
type = VelSet
triggerall = numhelper(751) != 0
trigger1 = helper(751), var(0) = 40
x = 0
y = 0

[State 3000, 18]
type = ChangeAnim
triggerall = numhelper(751) != 0
trigger1 = helper(751), var(0) = 40
value = 3106

[State 0, PlaySnd]
type = PlaySnd
triggerall = numhelper(751) != 0
trigger1 = helper(751), var(0) >= 41
trigger1 = time > 93
value = S172,13
channel = -1
loop = 1


[State 3000, 19]
type = ChangeState
triggerall = numhelper(751) != 0
trigger1 = helper(751), var(0) >= 41
trigger1 = time > 93
value = 3050

;[State 3000, 20]
;type = Explod
;trigger1 = time = 91
;anim = 3050
;ID = 971
;postype = left
;pos = 0,0
;bindtime = -1
;removetime = 10
;ownpal = 1
;ontop = 1

;[State 3000, 21]
;type = Explod
;trigger1 = time = 92
;anim = 3010
;ID = 1005
;postype = left
;pos = 0,0
;bindtime = -1
;removetime = -1
;ownpal = 1
;sprpriority = -3

[State 3000, 21]
type = Helper
trigger1 = time = 92
ID = 2110
name = "Timer"
postype = p1
pos = 0, 0
stateno = 3220
ownpal = 1
persistent = 0

; Crab that Rikuo rides

[Statedef 3105]
type = S
physics = N
movetype = I
anim = 3101
sprpriority = 1

[State 3005, a]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 3005, b]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP

[State 3005, 1]
type = Explod
trigger1 = time = 0
ID = 613
anim = 3102
postype = p1
pos = -30, 11
bindtime = -1
removetime = -1
sprpriority = 3
scale = 1.3,1.1


[State 3005, 2]
type = VelSet
trigger1 = time = 0
x = 3

[State 3005, 3]
type = VelSet
trigger1 = ParentDist X <= 5
x = 0

[State 3005, 4]
type = VarAdd
trigger1 = ParentDist X <= 5
v = 0
value = 1

[State 3005, 5]
type = ChangeState
trigger1 = var(0) = 41
value = 3106

; Normal State for crab

[Statedef 3106]
type = S
movetype = I
anim = 3101


[State 3006, a]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP

[State 3006, 1]
type = posAdd
trigger1 = 1
x = parentdist X
y = parentdist Y

[State 3006, 2]
type = Turn
trigger1 = Facing != parent, Facing

[State 3006, 3]
type = RemoveExplod
trigger1 = parent, var(5) = 0
ID = 613

[State 3006, 4]
type = DestroySelf
trigger1 = NumExplod(613) = 0
trigger1 = parent, var(5) = 0

; Waves
[Statedef 3111]
type = S
physics = N
movetype = I
velset = 0, 0
sprpriority = 0
anim = 3103

[State 3010, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, 2]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 3010, 3]
type = DestroySelf
trigger1 = parent, Var(5) = 0

[Statedef 3112]
type = S
physics = N
movetype = I
velset = 0, 0
sprpriority = 10
anim = 3103

[State 3010, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, 2]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 3010, 3]
type = DestroySelf
trigger1 = parent, Var(5) = 0



; Neutral State for Rikuo

[Statedef 3050]
type = C
movetype = I
physics = N
anim = 3050

[State 3100, a]
type = NotHitBy
trigger1 = var(4) > 540
value = SCA, AA, AT, AP

[State 3100, 1]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = 0
y = 0


[State 3301, UpBorder]
type = PosSet
trigger1 = Pos Y < -80
y = -80

[State 3301, DownBorder]
type = PosSet
trigger1 = Pos Y > 20
y = 20

[State 3100, 3]
type = VelSet
trigger1 = Pos Y < -80
y = 0

[State 3100, 5]
type = VelSet
trigger1 =  Pos Y > 20;-20
y = 0

; Dash Fwd
;[State 3100, 6]
;type = VelSet
;trigger1 = command = "FF"
;trigger1 = vel X < 3.9
;x = 3.9

;[State 3100, 7]
;type = explod
;trigger1 = command = "FF"
;anim = 3045
;ID = 311
;postype = p1
;pos = -40, -40
;bindtime = -1
;removetime = -1
;ownpal = 1
;sprpriority = 3

;[State 3100, 8]
;type = RemoveExplod
;trigger1 = Vel X < 3
;ID = 311

; Dash Back
;[State 3100, 9]
;type = VelSet
;trigger1 = command = "BB"
;trigger1 = Vel X > -3.9
;x = -3.9

;[State 3100, 10]
;type = explod
;trigger1 = command = "BB"
;anim = 3045
;ID = 312
;postype = p1
;pos = 125, -40
;bindtime = -1
;removetime = -1
;ownpal = 1
;sprpriority = 3
;
;[State 3100, 11]
;type = RemoveExplod
;trigger1 = Vel X > -3
;ID = 312

[State 3100, 12]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = Vel X != 4
x = 4

[State 3100, 13]
type = VelSet
trigger1 = command = "holdback"
trigger1 = Vel X != -4
x = -4

[State 3100, 14]
type = VelSet
trigger1 = command = "holdup"
y = -3

[State 3100, 15]
type = VelSet
trigger1 = command = "holddown"
y = 3

[State 3100, 16]
type = Turn
trigger1 = P2Dist X < 0

; Detect attack button presses
[State 3100, 17]
type = ChangeState
trigger1 = command = "x"
value = 3110

[State 3100, 18]
type = ChangeState
trigger1 = command = "a"
value = 3140

[State 3100, 19]
type = ChangeState
trigger1 = command = "y"
value = 3120

[State 3100, 20]
type = ChangeState
trigger1 = command = "b"
value = 3150

[State 3100, 21]
type = ChangeState
trigger1 = command = "z"
value = 3130

[State 3100, 22]
type = ChangeState
trigger1 = command = "c"
value = 3160

;---------------------------------------------------------------------------
; DF Crouching light punch
[Statedef 3110]
type    = C
movetype= A
physics = N
juggle  = 5
anim = 400
velset = 0,0

[State 3110, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

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

[State 3110, 4]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "y"
value = 3120

[State 3110, 4]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "a"
value = 3140


[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3130


[State 3110, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3050

;---------------------------------------------------------------------------
; DF Crouching medium punch
;
[Statedef 3120]
type    = C
movetype= A
physics = N
juggle  = 6
anim = 410
velset = 0,0

[State 3120, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

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

[State 3120, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3130

[State 3110, 4]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "b"
value = 3150

[State 3120, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3050

;---------------------------------------------------------------------------
; DF Crouching hard punch
;
[Statedef 3130]
type    = C
movetype= A
physics = N
juggle  = 9
anim = 420
velset = 0,0

[State 3130, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2

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
ground.velocity = 0,-7
guard.velocity = -5
air.velocity = -2,-7

[State 3130, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 3050

;---------------------------------------------------------------------------
; DF Crouching light kick
;
[Statedef 3140]
type    = C
movetype= A
physics = N
juggle  = 5
anim = 430
velset = 0,0

[State 3140, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

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

[State 3140, 5]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "b"
value = 3150

[State 3140, 5]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "y"
value = 3120

[State 3140, 7]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "c"
value = 3160

[State 3140, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3050

;---------------------------------------------------------------------------
; DF Crouch Medium Kick
;
[Statedef 3150]
type    = C
movetype= A
physics = N
juggle  = 7
anim = 440
velset = 0,0

[State 3150, 2]
type = PlaySnd
trigger1 = Time = 2
value = S1, 1

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

[State 3150, 7]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "c"
value = 3160

[State 3150, 7]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3130

[State 3150, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3050

;---------------------------------------------------------------------------
; DF Crouch Hard Kick
;
[Statedef 3160]
type    = C
movetype= A
physics = N
juggle  = 9
anim = 250
velset = 0,0

[State 3160, 2]
type = PlaySnd
trigger1 = Time = 2
value = 1, 3


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

[State 3160, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3050

; Exit DF Mode

[Statedef 3200]
type = S
physics = N
movetype = I
anim = 41

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = -1


[State 3200, a]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AT, AP



[State 3200, 1]
type = varset
trigger1 = time = 0
v = 5
value = 0

[State 3200, 2]
type = VelSet
trigger1 = time = 0
trigger1 = life > 0
x = 0
y = -8

[State 3200, 3]
type = VelSet
trigger1 = time = 0
trigger1 = life = 0
x = -2
y = -8

[State 3200, 4]
type = RemoveExplod
trigger1 = time = 0

[State 850, Big Splash]
type = explod
trigger1 = time = 0
id = 1403
anim = 3104
pos = 0,245
postype = back
bindtime = -1
removetime = -2
sprpriority = 10
ownpal = 1

[State 3200, 5]
type = ChangeState
trigger1 = time = 1
trigger1 = life = 0
value = 5050

[State 3200, 6]
type = Gravity
trigger1 = time > 1

[State 3200, 7]
type = ChangeState
trigger1 = time > 1
trigger1 = Vel Y > -1
value = 50

; Hyper Armor custom hit state

[Statedef 3211]
MoveType = H

[State 3210, 1]
type = VelSet
trigger1 = time = 0
y = 0
x = -8

[State 3210, 2]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP
time = 1

[State 3210, 3]
type = ChangeAnim
trigger1 = time = 2
value = Anim
elem = AnimElemNo(0)

[State 3210, 4]
type = PalFX
trigger1 = time = 2
;add = 255, 0, 0
time = 7
;color = 50

[State 3210, 5]
type = ChangeState
trigger1 = time = 3
value = var(3)

;-------------------------------
; DarkForce timer
[Statedef 3220]
type = A
movetype = I
physics = N
anim = 999

;[State 3220, 1]
;type = Explod
;triggerall = time = 0
;trigger1 = parent, var(8) = 1
;ID = 511
;anim = 3070
;postype = left
;pos = 5, 60
;bindtime = -1
;removetime = -1
;ownpal = 1
;sprpriority = 2
;
;[State 3220, 2]
;type = Explod
;triggerall = time = 0
;trigger1 = parent, var(8) = -1
;ID = 511
;anim = 3070
;postype = right
;pos = -116, 60
;facing = 1
;bindtime = -1
;removetime = -1
;ownpal = 1
;sprpriority = 2
;
;[State 3220, 3]
;type = Explod
;trigger1 = time = 0
;trigger1 = parent, var(8) = 1
;ID = 512
;anim = 3080
;postype = left
;pos = 5, 60
;bindtime = -1
;removetime = -1
;sprpriority = 3

;[State 3220, 4]
;type = Explod
;trigger1 = time = 0
;trigger1 = parent, var(8) = -1
;ID = 512
;anim = 3080
;postype = right
;pos = -116, 60
;facing = 1
;bindtime = -1
;removetime = -1
;sprpriority = 3

[State 3220, 5]
type = VarSet
trigger1 = 1
fv = 0
value = parent, var(4)

[State 3220, 6]
type = ModifyExplod
trigger1 = 1
ID = 512
scale = (fvar(0)/600), 1

[State 3220, 7]
type = RemoveExplod
trigger1 = parent, var(5) = 0

[State 2110, 8]
type = DestroySelf
trigger1 = parent, var(5) = 0

;-------------------------
[StateDef 3500]
type = A
movetype = A
physics = N
anim = 3500
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S171,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 39
value = 4

[State 850, Big Splash]
type = explod
trigger1 = animelem = 3
anim = 3401
pos = 30,-100
postype = p1
bindtime = -1
removetime = 50
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S172,12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =6
value = S172,13

[State 3000, 9]
type = Helper
trigger1 = animelem = 4
name = "onda"
ID = 3501
stateno = 3501
postype = back
pos = -20, 45;240; - var(7)
ownpal = 1
size.yscale = 1.8
size.xscale = 1.2



[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 40
sound = S10,1
pos = 30,-90
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
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
trigger1 = AnimElem = 5
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
trigger1 = AnimElem = 5
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

;xplod afunda, aquaman desaparece
 [State 850, Big Splash]
type = explod
trigger1 = animelem = 6
anim = 3502
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 5
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S171,1

;baleiea aparece e aquaman continua off
[State 11000, 8]
type = Helper
helpertype = player
trigger1 = animelem = 7
name = "baleia"
ID = 3503
pos = 20,0
postype = p1
stateno = 3503
ownpal = 1

;aquaman clone
 [State 850, Big Splash]
type = explod
trigger1 = animelem = 7
anim = 3504
pos = 20,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 5
ownpal = 1

 [State 850, Big Splash]
type = explod
trigger1 = animelem = 7
anim = 3505
pos = 185,0
postype = p1
bindtime = 1
removetime = -2
sprpriority = 10
ownpal = 1

[State 0, PosSet]
type = PosSet
trigger1 =  helper(3503), animelem = 10
x = 0
y = -150

[State 0, PosSet]
type = PosSet
trigger1 =  helper(3503), animelem = 25
x = 0
y = -160
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = helper(3503), animelem = 25
value = 948
ctrl = 1
;anim =
;ignorehitpause =
;persistent =









[Statedef 3501]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 3501
sprpriority = 99

[State 3010, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, 2]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 3010, 3]
type = DestroySelf
trigger1 = animtime=0;parent, Var(5) = 0


[Statedef 3503]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 3503
sprpriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S173,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = S171,1


[State 850, 5]
type = hitdef
trigger1 = time = 0
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 5
damage = 200, 20
pausetime = 0,0
sparkno = 2
sparkxy = 10, -50
hitsound = S171,6
guardsound = S171,6
ground.type = high
fall = 1
air.fall = 1
guard.slidetime = 10
ground.velocity = -16, -10
air.velocity = -16, -10
guard.velocity = -10
airguard.velocity = -16, -10


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


