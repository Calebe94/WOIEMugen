; States file for {character} -- Specials
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
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   fireball
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 5
value = 172,11

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 12
value = 0,1

[State 220, 3]
type = Hitdef
trigger1 = time = 0
hitflag = MAF
attr = S, NA
animtype  = Up
damage    = 60
guardflag = MA
pausetime = 14,14
sparkno = 3
sparkxy = 0,-70
hitsound   = S172,5
guardsound = 6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = 10, -7
air.velocity = 10,-5
guard.slidetime = 12
guard.velocity = -8
fall = 1
air.fall = 1




[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelem = 9 && movecontact
value = 1001
;elem = 1
;ignorehitpause =
;persistent =

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelem = 8 && movecontact
value = 1002

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelem = 7 && movecontact
value = 1002

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animelem = 6 && movecontact
value = 1002

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 ;sonic wave - telepatia
[Statedef 1100]
type = S
movetype = A
physics = S
poweradd = 69
velset = 0, 0
anim = 1100
ctrl = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,0


[State 902, 2]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 20
ProjAnim = 1101
Projremove = 0
projremanim = 1102
Projhits = 1
velocity = 4,0
remvelocity = 0,0
projremovetime = 33
postype = p1
offset = 60,-50
sparkno = -1
attr = S, SP
damage = 10, 3
hitflag = MA
guardflag = MA
pausetime = 0,20
hitsound = S3,2
guardsound = 6,0
ground.slidetime = 15
ground.velocity = -10
ground.hittime = 15
air.velocity = -3,-2
;guard.velocity = -4,0
airguard.velocity = -4,0
p2stateno = 1110
kill = 0


[State 902, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------
[Statedef 1110]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 907, 3]
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 907, 3]
type = SelfState
trigger1 = Time = 80
ctrl = 1
value = 0


 ;trident
[Statedef 1200]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1200

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 0,0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 172,6

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 10

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 11
x = 0




[State 421]
type = HitDef
;trigger1 = animelem!var(29)
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = C, NA
damage    = 150;8*var(30)
animtype  = Hard
hitflag = MAFD
guardflag = MA;L
pausetime = 10,10
sparkno = 3
sparkxy = -10,0+(ifelse((animelem=10),-10,-100))
hitsound   = S2,2
guardsound = S4,0
guard.sparkno = S8430
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 0,-4
air.velocity = 0,-4
getpower = 50,25


[State 11000, 8]
type = Helper
trigger1 = AnimElem = 12
name = "trident"
ID = 1201
pos = 90,0
postype = p1
stateno = 1201

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 12
value = 8,2

[State 220, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1201]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 1201

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 =parent, stateno = 7140
;ignorehitpause =
;persistent =

[Statedef 1300]
type = C
physics = S
ctrl = 0
anim = 40
velset = 0,0

[State 1020, Set]
type = PosSet
trigger1 = time = 0
y = 0

[State 1020, 1]
type = ChangeState
trigger1 = time = 7
value = 1301

; Actual Hop Back
[Statedef 1301]
type = A
physics = A
ctrl = 0
anim = 105

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 8,0

[State 1025, 1]
type = VelSet
trigger1 = Time = 0
x = -5.6
y = -3.6

[State 1025, 2]
type = ChangeState
triggerall = time > 2
trigger1 = Pos Y >= -4
value = 1302


; Performed from the hopback jumping state
[Statedef 1302]
type = A
movetype = A
physics = A
anim = 1300
velset = 0,0
ctrl = 0
poweradd = 70

[State 800, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 8,0

[State 850, 1]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 850, 2]
type = VarSet
trigger1 = time = 0
v = 1
value = 0

[State 850, 3]
type = VelSet
triggerall = time < 4
trigger1 = AnimElem = 2
x = 9.5
y = -8

[State 240, grunt]
type = PlaySnd
triggerall = time < 4
trigger1 = AnimElem = 2
value = 172,1

[State 850, Big Splash]
type = explod
triggerall = time < 4
trigger1 = AnimElem = 2
anim = 1
pos = -10, 13
postype = p1
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1

[State 850, Droplet 1]
type = Projectile
triggerall = time < 4
trigger1 = AnimElem = 2
ProjID = 1
projanim = 2
projremanim = 3
velocity = -4, -7.3
accel = 0, .45
projheightbound = -240, 0
offset = -10, 13
postype = p1

[State 850, Droplet 2]
type = Projectile
triggerall = time < 4
trigger1 = AnimElem = 2
ProjID = 2
projanim = 2
projremanim = 3
velocity = -10, -8
accel = 0, .45
projheightbound = -240, 0
offset = -5, 13
postype = p1

[State 850, Droplet 3]
type = Projectile
triggerall = time < 4
trigger1 = AnimElem = 2
ProjID = 3
projanim = 2
projremanim = 3
velocity = 2.3, -8.4
accel = 0, .45
projheightbound = -240, 0
offset = -10, 13
postype = p1

[State 850, Droplet 4]
type = Projectile
triggerall = time < 4
trigger1 = AnimElem = 2
ProjID = 4
projanim = 2
projremanim = 3
velocity = 4.2, -7
accel = 0, .45
projheightbound = -240, 0
offset = -10, 13
postype = p1

[State 850, 5]
type = hitdef
trigger1 = time = 3
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = back
priority = 5
damage = 90, 5
pausetime = 2, 9
sparkno = 2
sparkxy = 10, -70
hitsound = S2,2
guardsound = 6, 0
ground.type = high
fall = 1
air.fall = 1
guard.slidetime = 10
ground.velocity = -6, -4
air.velocity = -8, -3

[State 850, 6]
type = Velset
triggerall = var(1) = 0
trigger1 = movecontact
x = -4
y = -3

[State 850, 7]
type = ChangeAnim
triggerall = var(1) = 0
trigger1 = movecontact
value = 1302

[State 850, 8]
type = VarSet
trigger1 = movecontact
v = 1
value = 1

[State 850, 8]
type = VarSet
trigger1 = movecontact
v = 1
value = 1

[State 850, 9]
type = ChangeAnim
triggerall = !movecontact
trigger1 = time = 30
value = 1301


[Statedef 1400]
type = S
movetype = A
physics = S
juggle = 1
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 0
value = 171,0



[State 850, Big Splash]
type = explod
trigger1 = time = 0
anim = 1402
pos = 0,-120
postype = p1
bindtime = -1
removetime = 40
sprpriority = 2
removeongethit = 1
ownpal = 1

;[State 3000, f]
;type = PlayerPush
;trigger1 = 1
;value = 0

;[State 7145, Screen]
;type = ScreenBound
;trigger1 = time >= 0
;value = 0
;movecamera = 0,0

[State 11000, 8]
type = Helper
helpertype = normal;player
trigger1 = time = 20
name = "tubarao"
ID = 1401
pos = 60,10
postype = p1
stateno = 1401
ownpal = 1

[State 850, Big Splash]
type = explod
trigger1 = time = 20
anim = 1
pos = -40,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 20
value = 172,14

;[State 850, Big Splash]
;type = explod
;trigger1 = time = 10
;anim = 1403
;pos = 0,240
;postype = back
;bindtime = -1
;removetime = -2
;sprpriority = 10
;ownpal = 1
;;
;[State 850, Big Splash]
;type = explod
;trigger1 = time = 20
;id = 1403
;anim = 1403
;pos = 0,234
;postype = back
;bindtime = -1
;removetime = -2
;sprpriority = -10
;ownpal = 1


[State 3000, 9]
type = Helper
trigger1 = time = 10
name = "Wave 1-2"
ID = 1403
stateno = 1403
postype = back
pos = 0, 45;240; - var(7)
ownpal = 1

[State 3000, 9]
type = Helper
trigger1 = time = 20
name = "Wave 1-2"
ID = 1403
stateno = 1403
postype = back
pos = 0, 45;240; - var(7)
ownpal = 1

[State 220, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1403]
type = S
physics = N
movetype = I
velset = 0, 0
sprpriority = 2
anim = 1403



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


[Statedef 1404]
type = S
physics = N
movetype = I
velset = 0, 0
sprpriority = -2
anim = 1403

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

[Statedef 1401]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 1401

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 1
value = 172,17

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 8
value = 172,17


[State 850, 5]
type = hitdef
trigger1 = time = 0
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = back
priority = 5
damage = 100, 5
pausetime = 0, 0
sparkno = -1
sparkxy = 10, -20
hitsound = S171,6
guardsound = 6, 0
ground.type = high
fall = 1
air.fall = 1
guard.slidetime = 10
ground.velocity = -6, -4
air.velocity = -8, -3

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4
