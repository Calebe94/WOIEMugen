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

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 6,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 40,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------
; Special 2
[Statedef 1030]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0                     
ctrl = 0                         
anim = 1030                       

[State 1100, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 24,0

; Helper Grappin
[State 1000, 1]
type = Helper
trigger1 = AnimElem = 2
ID = 1002
pos = 50,-85
postype = p1
facing = 1
stateno = 1002
helpertype = normal
name = "Grappin"
keyctrl = 0
ownpal = 1

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1000, 3]
type = ChangeState
trigger1 = p2stateno = 100000
value = 1001
ctrl = 1

;---------------------------------------

[Statedef 1001]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0                     
ctrl = 0                         
anim = 1031

[State 1001, grappin planté dans P2]
type=explod
trigger1=P2stateno=100000
anim=10201
ID=1
sprpriority=5
postype=p2
pos=10,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 1001, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S7, ceil(random/500)

[State 1002, Grappin dans la main de Batman 1]
type=explod
triggerall =P2Stateno=100000&&P2BodyDist x >=40
trigger1=AnimElem=1
anim=10210
ID=102101
sprpriority=0
postype=p1
pos=95,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 1002, Grappin dans la main de Batman 2]
type=explod
triggerall =P2Stateno=100000&&P2BodyDist x >=40
trigger1=AnimElem=2
anim=10210
ID=102102
sprpriority=7
postype=p1
pos=73,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 1002, Grappin dans la main de Batman 3]
type=explod
triggerall =P2Stateno=100000&&P2BodyDist x >=40
trigger1=AnimElem=3
anim=10210
ID=102103
sprpriority=7
postype=p1
pos=50,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 0,1]
type = RemoveExplod
triggerall = Stateno=1001
Trigger1=AnimElem>=2
ID = 102101

[State 0, 2]
type = RemoveExplod
triggerall = Stateno=1001
Trigger1=P2BodyDist x <=70
ID =102102

[State 0, 3]
type = RemoveExplod
triggerall = Stateno=1001
Trigger1=P2BodyDist x <=50
ID =102103

[State 1001, Corde01]
type=explod
triggerall =P2Stateno=100000
trigger1=P2BodyDist x > 20
anim=10202
ID=1
sprpriority=0
postype=p2
pos=90,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 1001, Corde02]
type=explod
triggerall =P2Stateno=100000
trigger1=P2BodyDist x > 50
anim=10202
ID=2
sprpriority=0
postype=p2
pos=120,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 1001, Corde03]
type=explod
triggerall =P2Stateno=100000
trigger1=P2BodyDist x > 80
anim=10202
ID=3
sprpriority=0
postype=p2
pos=150,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 1001, Corde04]
type=explod
triggerall =P2Stateno=100000
trigger1=P2BodyDist x > 120
anim=10202
ID=4
sprpriority=0
postype=p2
pos=180,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1
[State 1001, Corde05]
type=explod
triggerall =P2Stateno=100000
trigger1=P2BodyDist x > 150
anim=10202
ID=5
sprpriority=0
postype=p2
pos=210,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1
[State 1001, Corde06]
type=explod
triggerall =P2Stateno=100000
trigger1=P2BodyDist x > 200
anim=10202
ID=6
sprpriority=0
postype=p2
pos=240,-85
removetime=-1
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 0,1]
type = RemoveExplod
trigger1 = P2BodyDist x < 40
ID = 1
[State 0, 2]
type = RemoveExplod
trigger1 = P2BodyDist x < 60
ID =2
[State 0, 3]
type = RemoveExplod
trigger1 = P2BodyDist x < 100
ID =3
[State 0, 4]
type = RemoveExplod
trigger1 = P2BodyDist x < 120
ID =4
[State 0, 5]
type = RemoveExplod
trigger1 = P2BodyDist x < 150
ID =5
[State 0, 6]
type = RemoveExplod
trigger1 = P2BodyDist x < 180
ID =6

[State 1102, 4]
type = DestroySelf
trigger1 = P2Stateno=5300

[State 1101, 3]
type = ChangeState
trigger1 =P2Stateno=100000&&P2BodyDist X <=10
value = 0
ctrl = 1

;-------------------------------

; Grappin
[Statedef 1002]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 10220
sprpriority = -3

[State 1002, 2]
type = VelSet
trigger1 = 1
x = 7
y = 0

[State 1002, SP]
type = SuperPause
trigger1 = Movehit
darken = 0
Time = 20
Anim = -1

; Tela treme
[State 1002, T]
type = EnvShake
trigger1 = Movehit
freq = 50
ampl = 2
time = 20
persistent = 1
ignorehitpause = 1

[State 1002, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
animtype  = Medium
damage    = 50,5
getpower = 0,0
givepower = 0,0
guardflag = M
hitflag = M
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
hitsound = S14,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
air.hittime = 0   
air.fall = 1
numhits = 1
p2stateno = 100000
kill = !(root,var(58))|| 1*p2stateno=003

[State 1002, Sang]
type=explod
trigger1 =Movehit
anim=7761
ID=7761
sprpriority=5
postype=p2
pos=10,-85
removetime=-2
ownpal=1
removeongethit = 1
supermovetime = -1
bindtime = -1

[State 1102, 4]
type = ChangeState
trigger1 = movehit
value = 1003

[State 1102, 4]
type = DestroySelf
trigger1 = time >= 100||moveguarded
trigger1 = !movehit


;------------------------------------

;  p2
[StateDef 1003]
type    = S
movetype= I
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
poweradd = 120
anim = 9998
sprpriority = 5

[State 1103, 1]
type = VelSet
trigger1 = 1
x = -4
y = 0

[State 1103, 4]
type = DestroySelf
trigger1 = enemy(0), anim = 5300

;-------------------------------

;====================
; P2 Custom Stats   *
;====================

; P2 é puxado
[Statedef 100000]
type    = S
movetype= H
physics = N
velset = 0,0

; P2 é puxado
[State 100000, 1]
type = VelSet
Trigger1 = time = 0
trigger1 = vel x != 3
trigger1 = P2BodyDist X > 10
x = 4

; P2 pára
[State 100000, 1]
type = VelSet
trigger1 = P2BodyDist X <= 10
trigger1 = vel x = 4
trigger1 = time != 0
x = 0

; Animação de início
[State 100000, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5500

[State 100000, 1]
type = Changeanim
trigger1 = P2BodyDist X <= 10
trigger1 = anim != 5300
value = 5300
persistent = 0

; É derrubado
[State 100000, 1]
type = SelfState
Trigger1 = P2movetype = H
value = 5050
ctrl = 1

; É derrubado
[State 100000, 1]
type = SelfState
Trigger1 = anim = 5300 && time = 130
trigger2 = time = 130
value = 0
ctrl = 1



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

;---------------------------------------------------------------------------
;------------------------------
; couteau
[StateDef 1500]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 100, catch]
type = PlaySnd
triggerall=  random <= 430
trigger1 = Time =0
value = 40,2 + ((Random * 2) / 1004)
channel = 0

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1001
projanim = 1001
projhitanim = 1003
projremanim = 1002
projcancelanim = 1002
velocity = 4,-5
accel = ifelse(p2bodydist x<80,-0.16,ifelse(p2bodydist x>150,0,-0.1)),.4
offset = 64,-94
; HitDef
attr = S,SP
hitflag = MAFD
guardflag = L       ;HLA
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 50,2
pausetime = 4,4
;postype = P2
sparkno = 2
hitsound = S171,10
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
;projshadow = 50,50,50




[State 1004, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------
;piqure
[StateDef 1510]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 5
value = 0,1

[State 100, catch]
type = PlaySnd
triggerall=  random <= 430
trigger1 = Time =0
value = 40,2 + ((Random * 2) / 1000)
channel = 0

[State 621]
type = Helper
trigger1 = AnimElem = 5
stateno = 1511
persistent = 0
pos = 45,-80
persistent = 0


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1511]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 6.5,-3.5
;hitcountpersist = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
;ignorehitpause =
;persistent =

[State 0, HitOverride]
type = HitOverride
trigger1 =  1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 1013
time = -1




[State 6621]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1011
value = 1011


[State 6621]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 6621]
type = changestate
trigger1 = FrontEdgeBodyDist <= 0
trigger2 = time > 50
value = 1512
;ignorehitpause = 1

;--------------------------------------
[Statedef 1512]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value =  171,0


[State 3205, bound]
type = screenbound
trigger1 = 1
value = 0

[State 3205, push]
type = playerpush
trigger1 = p2bodydist x=[-7,7]
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1

[State 6621]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6621]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1012
value = 1012

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, HA
damage = 45
guardflag = MA
hitflag = MAF
pausetime = 0,0
sparkno = -1;2
sparkxy = -5, -38
hitsound = s2,0
guardsound = S3,0
animtype =  Medium
ground.type = Hard
ground.slidetime = 35
ground.hittime  = 35
ground.velocity = 6,-5
guard.velocity = -5
air.velocity = 6,-4
air.hittime = 35
fall = 1
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
Palfx.color = 0
envshake.time = 7
envshake.ampl = 4
p2stateno = 1530

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
;ignorehitpause =
;persistent =

;-------------------------
[Statedef 1530]
type = A
movetype = H
physics = N
ctrl = 0
;anim = 1030
sprpriority = 1
velset = 7,-6

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 10305

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

[Statedef 1013]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 1
velset = -5,-5

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 6621]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1013
value = 1013


[State 0, DestroySelf]
type = changestate
trigger1 =  time > 20
value = 1512
;persistent =

;------------------------------
; Bombe
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1004;1020
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5;6
value =  0,1

[State 100, catch]
type = PlaySnd
triggerall=  random <= 430
trigger1 = Time =0
value = 40,2 + ((Random * 2) / 1000)
channel = 0

[State 1004, 2]
type = Projectile
trigger1 = AnimElem = 5;6
ProjID = 1021
projanim = 1021
projhitanim = 1024
projremanim = 1024
projcancelanim = 1024
velocity = 5,-3
accel = 0,.2
offset = 64,-94
; HitDef
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 4,4
;postype = P2
sparkno = s1025
sparkxy = 20,0
hitsound = S171,9
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
p2stateno = 1025

[State 1004, 2]
type = Projectile
trigger1 = AnimElem = 5;6
ProjID = 1022
projanim = 1022
projhitanim = 1024
projremanim = 1024
projcancelanim = 1024
velocity = 5,-2
accel = 0,.15
offset = 64,-84
; HitDef
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 4,4
;postype = P2
sparkno = s1025
sparkxy = 20,0
hitsound = S171,9
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
p2stateno = 1025

[State 1004, 2]
type = Projectile
trigger1 = AnimElem = 5;6
ProjID = 1022
projanim = 1022
projhitanim = 1024
projremanim = 1024
projcancelanim = 1024
velocity = 5,0
accel = 0,.04
offset = 64,-76
; HitDef
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 5,1
pausetime = 4,4
;postype = P2
sparkno = s1025
sparkxy = 20,0
hitsound = S171,9
guardsound = S3,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -4;,2
air.velocity = -4,2
p2stateno = 1025


[State 1004, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1025]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 5002

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 7;5300
value = 5300

[State 907, 3]
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 40
add = 0,40,0
mul = 0,50,04
sinadd = 1,30,5,5
invertall = 0
color = 0

[State 907, 3]
type = SelfState
trigger1 = Time = 90
ctrl = 1
value = 0


;---------------------------------------------------------------------------
; Hyper Tornado
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 3200
poweradd = 75
sprpriority = 2

[State 3200, 1.2] ;Back Dust
type = Explod
trigger1 = Time = 0
persistent = 0
anim = 8020
postype = p1
pos = 11, 2
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 3200, 2]
type = SuperPause
trigger1 = Time = 1;53
anim = -1;S8020
;sound = S0, 0
pos = 11, 2
movetime = 41;0
darken = 1
poweradd = -1000
bindtime = -1
sprpriority = 3
Time = 41

[State 3200, 3]
type = AssertSpecial
trigger1 = Time = [1, 100]
flag = nobardisplay
ignorehitpause = 1

[State 3200, 4]
type = AssertSpecial
trigger1 = Time = [1, 41]
flag = NoFG
ignorehitpause = 1

[State 3200, 5] ;Super BG (start)
type = Explod
trigger1 = Time = 1;53
persistent = 0
anim = 8910
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -5
supermovetime = -1
bindtime = -1
ownpal = 1

[State 3200, 6]
type = PlaySnd
trigger1 = Time = 1
value = 30, 1

[State 3200, 7] ;Super Portrait
type = Explod
trigger1 = Time = 4
persistent = 0
anim = 8890
postype = left
pos = ifelse(facing = 1, 0, 319), 0 ;0, 0
facing = facing
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1

[State 3200, 8]
type = AfterImage
trigger1 = Time = 0
length = 15
;PalBright   =  160, 240, 140
;PalContrast =  80, 120, 220
;TimeGap  = 2
FrameGap = 5;3
Trans = Add1
time = 60

[State 3200, 14]
type = HitBy
trigger1 = 1
value = SCA, HA,NP,SP,HP

[State 3200, 15]
type = VelSet
trigger1 = Time = [42, 53] ;[46, 53]
x = 10

[State 3200, 16]
type = VarSet
trigger1 = 1
v = 17
value = 2

[State 3200, 17]
type = PlaySnd
trigger1 = Time = 3;0;1
value = 5, 5
channel = 0

[State 3200, 18]
type = PlaySnd
trigger1 = Time = 53;48;42
value = 2, 4
channel = 0

[State 3200, 19]
type = PlaySnd
trigger1 = Time = 50;9
value = 10, 2
ignorehitpause = 1

[State 3200, 20]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X >= 3
value = 3201

[State 3200, 21]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2BodyDist X < 3
value = 3202

;---------------------------------------------------------------------------
; Hyper Tornado - miss (STATE DESATIVED)
[Statedef 3201]
type    = S
physics = S
ctrl = 0
anim = 3201

[State 3201, 1] ;brake
type = VelMul
trigger1 = AnimElem = 1
x = .01

[State 3201, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3201, 4]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 3201, 5]
type = VarSet
trigger1 = 1
v = 17
value = 2

[State 3201, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 12;0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Tornado - attack
[Statedef 3202]
type    = S
movetype= A
physics = N
anim = 3202
poweradd = 60
sprpriority = 2

[State 3202, 1]
type = AssertSpecial
trigger1 = Time = [1, 115]
flag = nobardisplay
ignorehitpause = 1

[State 3202, 8]
type = AfterImage
trigger1 = Time = 0
length = 15
;PalBright   =  160, 240, 140
;PalContrast =  80, 120, 220
;TimeGap  = 2
FrameGap = 5;3
Trans = Add1
time = 160

[State 3202, 2] ;P2 Hit Ground Spark (front)
type = Explod
triggerall = MoveHit
trigger1 = Time = 133
persistent = 0
ID = 8400
anim = 8400
postype = p2
pos = -4, -3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 3202, 3] ;P2 Hit Ground Spark (back)
type = Explod
triggerall = MoveHit
trigger1 = Time = 131
persistent = 0
ID = 8401
anim = 8401
postype = p2
pos = -4, -3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -3
ownpal = 1

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 8, 12
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -70
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-1
air.hittime = 50

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 3, 8
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -90
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -1
airguard.velocity = -1.9,8
air.type = High
air.velocity = -1,-1
air.hittime = 50

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 3, 8
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -90
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -1
airguard.velocity = -1.9,8
air.type = High
air.velocity = -1,-1
air.hittime = 50

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 16
attr = S, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 4, 9;3, 4
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -90
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-1
air.hittime = 50

[State 3202, 2] ;tatsu start
type = HitDef
trigger1 = AnimElem = 26
attr = S, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 3, 3
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -70
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2,-7
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-7
air.hittime = 50

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 30
attr = A, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 8, 8
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -60
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2,-7
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-7
air.hittime = 50
fall = 1
air.fall = 1

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 33
attr = A, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 8, 8
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -60
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2,-7
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-7
air.hittime = 50
fall = 1
air.fall = 1

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 38
attr = A, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 8, 8
guard.sparkno = S8200
sparkno = S8270
sparkxy = -15, -60
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2,-7
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-7
air.hittime = 50
fall = 1
air.fall = 1

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 41
attr = A, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 5, 5
guard.sparkno = S8200
sparkno = S9991
sparkxy = -15, -60
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2,-4
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-4
air.hittime = 50
fall = 1
air.fall = 1

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 46
attr = A, HA
damage = 25, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 2, 2
guard.sparkno = S9991
sparkno = S8270
sparkxy = -15, -60
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2,-1
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-1
air.hittime = 50
fall = 1
air.fall = 1

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 48
attr = A, HA
damage = 25, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 2, 2
guard.sparkno = S8200
sparkno = S9991
sparkxy = -15, -60
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2,-1
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-1
air.hittime = 50
fall = 1
air.fall = 1

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 50
attr = A, HA
damage = 25, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 10, 10
guard.sparkno = S8200
sparkno = S9991
sparkxy = -15, -10
hitsound = 15, 6
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = -2, 20
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2, 20
air.hittime = 50
fall = 1
air.fall = 1
fall.recover = 0

[State 3202, 4]
type = StateTypeSet
trigger1 = AnimElem = 27
statetype = A
movetype = A
physics = N

[state 3202, 16]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 10
trigger4 = AnimElem = 16
trigger5 = AnimElem = 26
x = 4

[State 3202, 2]
type = VelSet
trigger1 = AnimElem = 27
x = 3.5
y = -5;12

;[State 3202, 2]
;type = VelSet
;trigger1 = AnimElem = 33;34
;y = -6.5 ;-5.5

;[State 3202, 2]
;type = VelSet
;trigger1 = AnimElem = 41
;y = -3.5 ;-5.5

;[State 3202, 2]
;type = VelSet
;trigger1 = AnimElem = 46
;y = -2.5

;;[State 3202, 2]
;;type = VelSet
;;trigger1 = AnimElem = 48
;;y = -1.5

[State 3202, 4]
type = StateTypeSet
trigger1 = AnimElem = 42
statetype = A
movetype = A
physics = A

[State 3202, 2]
type = VelSet
trigger1 = AnimElem = 53
x = 0

[State 3202, 4]
type = EnvShake
triggerall = MoveHit
trigger1 = Time = 131
time = 10

[State 3202, 16]
type = VarSet
trigger1 = 1
v = 17
value = 2

;[State 3202, 17]
;type = PlaySnd
;trigger1 = AnimElem = 16
;value = 3, 3
;channel = 0

[State 3202, 16]
type = PlaySnd
triggerall = movehit
trigger1 = AnimElem = 26
value = 2, 2
channel = 0

[State 3202, 19]
type = PlaySnd
triggerall = movehit
trigger1 = AnimElem = 46
value = 2, 3
channel = 0

[State 3202, 21]
type = PlaySnd
triggerall = movehit
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 10
trigger4 = AnimElem = 16
trigger5 = AnimElem = 26
trigger6 = AnimElem = 30
trigger7 = AnimElem = 33
trigger8 = AnimElem = 38
trigger9 = AnimElem = 41
trigger10 = AnimElem = 46
value = 15, 6

[State 3202, 21]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 10
trigger4 = AnimElem = 16
trigger5 = AnimElem = 26
trigger6 = AnimElem = 30
trigger7 = AnimElem = 33
trigger8 = AnimElem = 38
trigger9 = AnimElem = 41
trigger10 = AnimElem = 46
value = 0, 0

;[State 3202, 5]
;type = PlaySnd
;trigger1 = Time = 131
;value = 40, 2
;persistent = 0

[State 3202, State End]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
;ctrl = 0




