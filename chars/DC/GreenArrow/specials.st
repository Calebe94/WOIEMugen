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
; flecha normal
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1001
poweradd = 15
ctrl = 0
velset = 0,0


; voice
[State 1000, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1111
projanim = 1111
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 16,(1- random/500)
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 35,5
pausetime = 4,4
;postype = P2
sparkno = s1121
guard.sparkno = s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1001, 3]
type = ChangeState
trigger1 = Animtime = 0 &&  command = "holdy"
value = 1000

[State 1001, 3]
type = ChangeState
trigger1 = AnimTime = 0 &&  command != "holdy"
value = 0
ctrl = 1

; flecha normal   alta
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1003
poweradd = 15
ctrl = 0
velset = 0,0


; voice
[State 1001, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1001, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1001, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1122
projanim = 1122
projhitanim = -1
projremanim = -1;123
projcancelanim = -1;123
velocity = 14,(-14 - random/500)
offset = 0,-80
projedgebound = 300
projstagebound = 300
projheightbound = -400
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,5
pausetime = 6,6
sparkno = s1128
sparkxy = 30,-20
guard.sparkno = s9993
hitsound = S111,3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2



[State 1001, 3]
type = ChangeState
trigger1 = AnimTime = 0 &&  command = "holdz"
value = 1001

[State 1001, 3]
type = ChangeState
trigger1 = AnimTime = 0 &&  command != "holdz"
value = 0
ctrl = 1


 ; flecha normal baixa
[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1004
poweradd = 15
ctrl = 0
velset = 0,0


; voice
[State 1002, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1002, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1002, 2]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1124
projanim = 1124
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 16,(1- random/500)
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 35,5
pausetime = 4,4
sparkno = s1127
guard.sparkno = s9994
hitsound = S111,3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1002, 3]
type = ChangeState
trigger1 = AnimTime = 0 &&  command = "holdx"
value = 1002

[State 1001, 3]
type = ChangeState
trigger1 = AnimTime = 0 &&  command != "holdx"
value = 0
ctrl = 1


;flecha fogo
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 998
ctrl = 0
velset = 0,0

[State 1001, 3]
type = ChangeState
trigger1 = Animtime = 0 &&  command != "holdc"
value = 1201

;flecha fogo
[StateDef 1201]
type = S
movetype = A
physics = S
anim = 999
poweradd = 15
ctrl = 0
velset = 0,0


; voice
[State 1200, 0]
type = PlaySnd
trigger1 = AnimElem = 3
value = S111,1
channel = 0

; sfx
[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1200, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1310
projanim = 1310
projhitanim = 1500
projremanim = 1500
projcancelanim = 1500
velocity = 15,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 140,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S12,8
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 7697

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
 ;----------------------
 ;flecha choque
 [StateDef 1210]
type = S
movetype = A
physics = S
anim = 998
ctrl = 0
velset = 0,0

[State 1001, 3]
type = ChangeState
trigger1 = Animtime = 0 &&  command != "holdb"
value = 1211

 
[StateDef 1211]
type = S
movetype = A
physics = S
anim = 999
poweradd = 15
ctrl = 0
velset = 0,0


; voice
[State 1210, 0]
type = PlaySnd
trigger1 = AnimElem = 3
value = S111,1
channel = 0

; sfx
[State 1210, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1210, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1310
projanim = 1310
projhitanim = 1501
projremanim = 1501
projcancelanim = 1501
velocity = 18,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage =  110,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S12,5
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 7696

[State 1210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

 ;----------------------
 ;flecha fumaça
 [StateDef 1220]
type = S
movetype = A
physics = S
anim = 998
ctrl = 0
velset = 0,0

[State 1001, 3]
type = ChangeState
trigger1 = Animtime = 0 &&  command != "holda"
value = 1221

[StateDef 1221]
type = S
movetype = A
physics = S
anim = 999
poweradd = 15
ctrl = 0
velset = 0,0


; voice

[State 1220, 0]
type = PlaySnd
trigger1 = AnimElem = 3
value = S111,1
channel = 0

; sfx
[State 1220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1220, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1310
projanim = 1310
projhitanim = 1502
projremanim = 1502
projcancelanim = 1502
velocity = 15,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 907

[State 1220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
 ;------------------------------
;weak point - hit emp
 ;------------------------------
 [Statedef 76702]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5080

[State 0, PosSet]
type = PosSet
trigger1 =  time - 0
y = 0

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ]
type = PowerAdd
trigger1 = 1
value = -8

[State 7697, Blue_FX]
type = PalFX
trigger1 = Anim = 5080
trigger1 = Time = 1
time = 150
add = 0,0,255
sinadd = 0,80,15,20
color = 0
invertall = 1

[State 7696, 6]
type = SelfState
trigger1 = Time = 150
ctrl = 1
value = 5120
 ;-----------------
 
  ;------------------------------
;weak point - hit fire
 ;------------------------------
 [Statedef 76703]
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

[State 0, PosSet]
type = PosSet
trigger1 =  time - 0
y = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = 1
value = -2

[State 7697, Blue_FX]
type = PalFX
trigger1 = Anim = 5300
trigger1 = Time = 1
time = 170
add = 40,-60,-150
sinadd = 60,25,0,10
color = 0
invertall = 1

[State 7696, 6]
type = SelfState
trigger1 = Time = 180
ctrl = 1
value = 0
 ;-----------------

;weak point - hit sonic
 ;------------------------------
 [Statedef 76704]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, PosSet]
type = PosSet
trigger1 =  time - 0
y = 0

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ]
type = PowerAdd
trigger1 = 1
value = -12

[State 0, LifeAdd]
type = LifeAdd
trigger1 = power <= 0
value = -2
kill = 1



[State 0, ChangeAnim]
type = ChangeAnim
triggerall = p1name = "Carnage"
trigger1 = time = 0
value = 5001

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = p1name = "Venom"
trigger1 = time = 0
value = 5002

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = p1name = "Wolvenom"
trigger1 = time = 0
value = 5001

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = p1name = "Agony"
trigger1 = time = 0
value = 5010

[State 7697, Blue_FX]
type = PalFX
trigger1 = Time = 1
time = 150
;add = 0,0,255
;sinadd = 0,80,15,20
;color = 0
;invertall = 1

[State 7696, 6]
type = SelfState
trigger1 = Time = 150
ctrl = 1
value = 0
 ;-----------------
 
 ;weak point - hit gelo
 ;------------------------------
 [Statedef 76705]
type    = U
MoveType = H
physics = U
ctrl = 0
VelSet = 0,0

[State 0, PosSet]
type = PosSet
trigger1 =  time - 0
y = 0


[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7696, ground freeze, has anim]
type = ChangeAnim
triggerall = AnimExist(7990)
trigger1 = (time = 0)       ; StateType != A
value = 7990

[State 7696, ground freeze, donthas anim]
type = ChangeAnim
triggerall = !AnimExist(7990)
trigger1 = (time = 0)       ; StateType != A
value = 5010

[State 7696, Blue_FX]
type = PalFX
;trigger1 = !AnimExist(Anim = 7690)
triggerall = stateno = 76705
trigger1 = (time = 0) && (!AnimExist(7990)) && (anim = 5010)
time = 400
add = 0,64,128
mul = 512,512,512
sinadd = 0,0,0,1
invertall = 0
color = 256


[State 7696, 6]
type = SelfState
trigger1 = Time = 400
ctrl = 1
value = 0


 ;-----------------
; SuperMan Hit by Kryptonite Batarang
[Statedef 7670]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, PosSet]
type = PosSet
trigger1 =  time - 0
y = 0

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = p1name = "Superman"
trigger1 = time = 0
value = 173


[State 0, ]
type = PowerAdd
trigger1 = 1
value = -5

[State 7697, Green_FX]
type = PalFX
trigger1 = Time = 1
time = 200
add = -150,-40,-100
sinadd = 0,80,15,20
color = 0
invertall = 1


[State 7696, 6]
type = SelfState
trigger1 = Time = 200
ctrl = 1
value = 5070
;blue kryptonite

[Statedef 76709]
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

[State 0, PosSet]
type = PosSet
trigger1 =  time - 0
y = 0


[State 0, ]
type = PowerAdd
trigger1 = 1
value = -5


[State 76979, blue_FX]
type = PalFX
trigger1 = Anim = 5300
trigger1 = Time = 1
time = 200
add = -110,-110,-0
sinadd = 0,80,15,20
color = 0
invertall = 1


[State 76969, 6]
type = SelfState
trigger1 = Time = 200
ctrl = 1
value = 5070


[Statedef 14080]
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


[State 0, ]
type = PowerAdd
trigger1 = 1
value = -15

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 76979, blue_FX]
type = PalFX
triggerall = p1name = "Miss Marvel" || p1name = "Captain Marvel" || p1name = "Captain Marvell"
trigger1 = Timemod = 5,0
time = 4
add = 210,0,0
sinadd = 80,0,0,20
color = 0
invertall = 1


[State 76979, blue_FX]
type = PalFX
triggerall = p1name = "Sentry" || p1name = "Silver Surfer"
trigger1 = Timemod = 5,0
time = 4
add = 210,210,-0
sinadd = 80,80,0,20
color = 0
invertall = 1

[State 76979, blue_FX]
type = PalFX
triggerall = p1name != "Miss Marvel" && p1name != "Sentry" && p1name != "Silver Surfer"
triggerall = p1name != "Captain Marvel" && p1name != "Captain Marvell"
trigger1 = Timemod = 5,0
time = 4
add = 210,0,210
sinadd = 80,0,80,20
color = 0
invertall = 1
; "Bishop"  "Strong Guy"  "Miss Marvel"
; "Parasite"  "Wonderman" "Sentry"
; "Silver Surfer" "SilverSurferv2" "SilverSurfer eoh"


[State 76969, 6]
type = SelfState
trigger1 = p1name = "Bishop" || p1name = "Strong Guy" || p1name = "Silver Surfer"
triggerall = power <= 0
ctrl = 0
value = 3200

[State 76969, 6]
type = SelfState
trigger1 = p1name = "Captain Marvel" || p1name = "Captain Marvell"
triggerall = power <= 0
ctrl = 0
value = 3400

[State 76969, 6]
type = SelfState
triggerall = p1name = "Miss Marvel"
trigger1 = power <= 0
ctrl = 0
value = 3310

[State 76969, 6]
type = SelfState
triggerall = p1name = "Parasite"
trigger1 = power <= 0
ctrl = 0
value = 6000

[State 76969, 6]
type = SelfState
triggerall = p1name = "Sentry"
trigger1 = power <= 0
ctrl = 0
value = 3000

[State 76969, 6]
type = SelfState
triggerall = p1name = "Wonderman"
trigger1 = power <= 0
ctrl = 0
value = 3100

[State 76969, 6]
type = SelfState
trigger1 = power <= 0
ctrl = 1
value = 5070


 [Statedef 14090]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5170;5080

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0



[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 7696, 6]
type = SelfState
trigger1 = Time = 250
ctrl = 1
value = 5120

; Hit by Electric Batarang
[Statedef 7696]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

;[State 7696, 1]
;type = VelSet
;trigger1 = Time = 0
;x = -4
;y = -5

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 7696, Electrocuted_Anim]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

;[State 7696, 5]
;type = VelAdd
;trigger1 = Time > 2
;y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Time = 30
trigger2 = pos y > 0
trigger3 = pos y < -100
value = 5100


; Hit by Electric Batarang
[Statedef 27696]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 7696

[State 7696, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


; Hit by Fire Batarang
[Statedef 7697]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = AnimExist(7697)
trigger1 = Anim != 7697
value = 7697

[State 7697, Burn]
type = PalFX
trigger1 = Time = 1
time = 35
add = 40,-60,-150
sinadd = 60,25,0,10
color = 0
invertall = 1

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

 ;cego
 ;--------------
 [Statedef 907]
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
trigger1 = Time = 100
ctrl = 1
value = 0
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

;-------Flechas pra Cima
;---------------------------------------------------------------------------
; Corner drop
; Midle drop
;[Statedef 1010]
;type    = S
;movetype= A
;physics = S
;juggle  = 4
;poweradd= 10
;ctrl = 0
;velset = 0,0
;anim =1005
;sprpriority = 2
;
;[State 1100, 1]
;type = PlaySnd
;trigger1 = Time = 1
;value = 0, 4
;
;[State 1100, 1.1]
;type = PlaySnd
;trigger1 = Time = 1
;value = 0, 3
;
;[State 1100, 2]
;type = Projectile
;trigger1 = AnimElem = 8
;attr = S, SP
;offset = 160,-220
;projanim=1011
;projremanim=1012
;projcancelanim=-1
;projremove=0
;velocity = 0,11
;animtype  = Hard
;damage    = 70,15
;guardflag = MA
;pausetime = 10,10
;sparkno = -1
;;sparkxy = -10,-70
;hitsound   = S6,4
;guardsound = 6,0
;ground.type = High
;ground.slidetime = 12
;ground.hittime  = 15
;ground.velocity = -9
;air.velocity = -5,-4
;
;[State 1010, 3]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1
;  projheightbound = -240


;flecha longe
[StateDef 1010]
type = S
movetype = A
physics = S
anim = 1005
poweradd = 15
ctrl = 0
velset = 0,0


; voice
[State 1010, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1010, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1010, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1014
projanim = 1014
projheightbound = -540
projhitanim = -1
projremanim = 1014
projcancelanim = -1
velocity = 0,-13
offset = -10,-100

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (260- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (248- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (236- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (224- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (212- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2


[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

 ;flecha meio
[StateDef 1011]
type = S
movetype = A
physics = S
anim = 1005
poweradd = 15
ctrl = 0
velset = 0,0


; voice
[State 1011, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1011, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1010, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1014
projanim = 1014
projheightbound = -540
projhitanim = -1
projremanim = 1014
projcancelanim = -1
velocity = 0,-13
offset = -10,-100

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (190- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (178- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (166- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (154- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (142- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2


[State 1011, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;flecha perto
[StateDef 1012]
type = S
movetype = A
physics = S
anim = 1005
poweradd = 15
ctrl = 0
velset = 0,0

; voice
[State 1012, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1012, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1010, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1014
projanim = 1014
projheightbound = -540
projhitanim = -1
projremanim = 1014
projcancelanim = -1
velocity = 0,-13
offset = -10,-100

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (110- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (108- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (96- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (84- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1011
projanim = 1011
projhitanim = -1
projremanim = 1012
projcancelanim = -1
velocity = 0,13
offset = (72- random/100),(-1200 - random/20)
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = high
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 10,10
sparkno = s1015
sparkxy = 0,20
guard.sparkno = s1013
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2

[State 1012, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; HOOK ARROW   medio
[StateDef 1301]
anim = 1301
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0
poweradd = 65

[State 1301, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 111,1

[State 1301, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 1301, grunt]
type = PlaySnd
trigger1 = AnimElem = 7
value = 8,0

[State 1301, HitDef]
type = HitDef
trigger1 = AnimElem = 14
attr = S, NA
damage = 90,2
guardflag = MA
pausetime = 0,0
hitsound = S2,1
guardsound = S3,0
sparkno = s9992
sparkxy = 0,-100
animtype = High
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-11
guard.velocity = -5
air.velocity = -4,-9

[State 1301, grunt]
type = Velset
trigger1 = AnimElem = 14
x =7
y = -6

[State 1301, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = IfElse(Pos Y < 0, 9948, 0)
ctrl = 1

; HOOK ARROW   forte
[StateDef 1300]
anim = 1300
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0
poweradd = 65

[State 1300, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 111,1

[State 1300, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 1300, grunt]
type = PlaySnd
trigger1 = AnimElem = 7
value = 8,0

[State 1300, HitDef]
type = HitDef
trigger1 = AnimElem = 12
attr = S, NA
damage = 90,5
guardflag = MA
pausetime = 0,0
hitsound = S2,1
guardsound = S3,0
sparkno = s9992
sparkxy = 0,-100
animtype = High
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = 0,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1300, grunt]
type = Velset
trigger1 = AnimElem = 12
;x = 27
y = -9

[State 1301, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = IfElse(Pos Y < 0, 9948, 0)
ctrl = 1

; HOOK ARROW   fraco
[StateDef 1302]
anim = 1302
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0
poweradd = 65

[State 1302, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 111,1

[State 1302, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 1302, grunt]
type = PlaySnd
trigger1 = AnimElem = 7
value = 8,0

[State 1302, HitDef]
type = HitDef
trigger1 =  AnimElem = 1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 0
hitsound = S2,1
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-85
animtype = Medium
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
guard.velocity = 0
air.velocity = 0
p1stateno = 1303
p2stateno = 1304

[State 1302, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = IfElse(Pos Y < 0, 9948, 0)
ctrl = 1


[StateDef 1303]
anim = 1303
ctrl = 0
type = S
movetype = A
physics = S


[State 1303, 1]
type = ChangeAnim2
triggerall = Time = 0
trigger1 =  p2dist X < 220 &&  p2dist X >= 180
value =  1307

[State 1303, 1]
type = ChangeAnim2
triggerall = Time = 0
trigger1 =  p2dist X < 180 &&  p2dist X >= 120
value =  1304

[State 1303, 1]
type = ChangeAnim2
triggerall = Time = 0
trigger1 =  p2dist X < 120 &&  p2dist X >= 60
value =  1305

[State 1303, 1]
type = ChangeAnim2
triggerall = Time = 0
trigger1 =  p2dist X < 60
value =  1306

[State 1303, 4]
type = Explod
trigger1 = time = 16
anim = 1308
;ID = 10005
pos = 30, -80
facing = -1
postype = p2
bindtime = 999
removetime = 40
;supermove = 80
;pausemovetime = 80
sprpriority = -2
ownpal = 1



[State 1303, 1]
type = ChangeState
trigger1 = Time = 35
value = 0
ctrl = 1

[Statedef 1304]
type    = S
movetype= A
physics = N
velset = 0,0

; P2 é puxado
[State 1304, 1]
type = VelSet
Trigger1 = time = 25
trigger1 = vel x != 3
trigger1 = P2BodyDist X > 10
x = 10


[State 1304, FinalDamage]
type = LifeAdd
trigger1 = time = 25
value = -20

[State 1304, grunt]
type = PlaySnd
trigger1 = time = 25
value = 8,0

;ontop = 1

; P2 pára
;[State 1304, 1]
;/type = VelSet
;trigger1 = P2BodyDist X <= 10
;trigger1 = vel x = 4
;trigger1 = time != 0
;x = 0

; Animação de início
[State 1304, 1]
type = ChangeAnim2
Trigger1 = Time = 25
value =  5161
;trigger1 =
;value = 0
;elem = 1
;ignorehitpause =
;persistent =

;trigger1 =
;text = "var(10) = %d  vel x = %f"
;params = var(10),vel x
;ignorehitpause =
;persistent =


;[State 1304, 1]
;type = Changeanim
;trigger1 = P2BodyDist X <= 10
;trigger1 = anim != 5300
;value = 5300
;persistent = 0

; É derrubado
[State 1304, 1]
type = SelfState
;Trigger1 = P2movetype = H
trigger1 = movecontact = 1
value = 5050
ctrl = 1

; É derrubado
[State 1304, 1]
type = SelfState
trigger1 = time = 40
value = 5050
ctrl = 1

;flecha pulando pra depois
[StateDef 1115]
type = A
movetype = A
physics = A
anim = 1007
poweradd = 15
ctrl = 0
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2 && time < 23
y = -0.1


; voice
[State 1115, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1115, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1115, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1111
projanim = 1111
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 16,0;10
offset = -10,-60
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,5
pausetime = 4,4
sparkno = s1121
guard.sparkno = s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2
;;p2stateno = 1121
;

;flecha trick pulo
;flecha fogo
[StateDef 1116]
type = A
movetype = A
physics = A
anim = 1008
poweradd = 15
ctrl = 0
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2 && time < 23
y = -0.1


; voice
[State 1115, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1115, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1115, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1009
projanim = 1009
projhitanim = 3103
projremanim = 3103
projcancelanim = 3103
velocity = 11,11
offset = 30,-70
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 130,5
pausetime = 4,4
;postype = P2
sparkno = s1126
guard.sparkno = s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2
p2stateno = 7697 ;fogo
;

;flecha pulando pra depois
[StateDef 1117]
type = A
movetype = A
physics = A
anim = 1008
poweradd = 15
ctrl = 0
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2 && time < 23
y = -0.1


; voice
[State 1115, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1115, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1115, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1009
projanim = 1009
projhitanim = 3104
projremanim = 3104
projcancelanim = 3104
velocity = 14,14
offset = 30,-70
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 110,5
pausetime = 4,4
;postype = P2
sparkno = s1126
guard.sparkno = s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2
p2stateno = 7696
;

;flecha pulando pra depois
[StateDef 1118]
type = A
movetype = A
physics = A
anim = 1008
poweradd = 15
ctrl = 0
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2 && time < 23
y = -0.1


; voice
[State 1115, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = S111,1
channel = 0

; sfx
[State 1115, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1115, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1009
projanim = 1009
projhitanim = 3105
projremanim = 3105
projcancelanim = 3105
velocity = 11,11
offset = 30,-70
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,5
pausetime = 4,4
;postype = P2
sparkno = s1126
guard.sparkno = s9993
hitsound = S111, 3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 0,0
air.velocity = -2,-2
p2stateno = 907
;





