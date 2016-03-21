; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;   5: vida do escudo
;  10: AI naum repetir hyper
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
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 172,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "raio"
ID = 1001
stateno = 1001
bindtime = -1
pos = 0,0
postype = p1    ;p2,front,back,left,right


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1001]
type = A
movetype = A
physics = N
anim = 1001
velset = 0,0
sprpriority = 2

[State 220, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 96
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-76
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1000
;ignorehitpause =
;persistent =


;------------------------------
; Special 1
[StateDef 1010]
type = A
movetype = A
physics = N
anim = 1010
ctrl = 0
velset = 0,0
sprpriority = 0

; voice
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 172,0


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "raio2"
ID = 1011
stateno = 1011
bindtime = -1
pos = 6,-23
postype = p1    ;p2,front,back,left,right


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


[Statedef 1011]
type = A
movetype = A
physics = N
anim = 1011
velset = 0,0
sprpriority = 2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 96
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-76
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1012 && parent, anim != 1010
;ignorehitpause =
;persistent =
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


; Stand Hard Punch
[StateDef 1100]
anim = 1100
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 50
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 9,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1101
ID = 1101
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1


[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 116
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -14
guard.velocity = -5
air.velocity = -14,8
fall = 1
air.fall = 1


[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Special furadeira
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 172,3

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1202
ID = 1202
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "fura"
ID = 1201
stateno = 1201
bindtime = -1
pos = 0,0
postype = p1    ;p2,front,back,left,right


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1201]
type = A
movetype = A
physics = N
anim = 1203
velset = 6,0
sprpriority = 2

[State 191, 1]
type = PlaySnd
trigger1 = timemod = 5,0
value = 8,0

[State 220, HitDef]
type = HitDef
trigger1 = timemod = 5,0
attr = S, NA
damage = 6
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-76
animtype = Heavy
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
airguard.velocity = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time >= 100
;ignorehitpause =
;persistent =


; Special escudo
[StateDef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 172,1


[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1301
ID = 1301
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1


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

[State 0, Helper]
type = Helper
trigger1 = animtime = 0
helpertype = player
name = "escudo"
ID = 1301
stateno = 1301
bindtime = -1
pos = 0,0
postype = p1    ;p2,front,back,left,right


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1301]
type =U
movetype = U;A
physics = U
anim = 1302
velset = 0,0
sprpriority = 4


[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y
;ignorehitpause =
;persistent =


[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1302


[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = parent, command = "start"
v = 5    ;fv = 10
value = 0
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,var(5) = 2
trigger2 = parent,command = "start"
trigger3 = win || lose
;ignorehitpause =
;persistent =


[StateDef 1302]
anim = 1303
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 5

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y
;ignorehitpause =
;persistent =

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = time = 0
v = 5
value = 1

[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1301

[State 0, ChangeState]
type = ChangeState
trigger1 =  time = 12
value =  1301

[Statedef 1303]
MoveType = H

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

[State 3210, 5]
type = ChangeState
trigger1 = time = 3
value = ifelse(pos y < 0,50,0)
ctrl = 1

;--------Begin ZVitor-----
[Statedef 2500]
type    = S
movetype= A
physics = S
juggle  = 4
anim = 2505
ctrl = 0
sprpriority = 2

;[State 3301, pararVel]
;type = VarSet
;trigger1 = var(27) = 0
;var(25)= 0

;[State 3301, pararVel]
;type = VarSet
;trigger1 = var(27) = 0
;var(26)= 0


[State 2500, projeção]
type = helper
stateno = 2501
helpertype = normal ;
trigger1 = animelem = 1 && var(27) = 0
pos = 0,-100
postype = p1
ID=2501
ownpal = 1
name = "helicptero"
sprpriority = -3


;[state 4000, gethit]
;type = hitoverride
;trigger1 = 1
;time = 1
;attr = SCA, AA, AT, AP
;slot = 1
;stateno = 2502

[State 3301, pararVel]
type = VarSet
triggerall = var(25)!= 5 && time > 20
triggerall = var(25)!= 6 &&  var(25)!= 0
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = Pos Y < -305
trigger4 = Pos Y > -40
var(25)= 0

[State 3301, pararVel]
type = VarSet
trigger1 = command != "holdup"; && time > 20
trigger2 = command != "holddown"
trigger3 = Pos Y < -305
trigger4 = Pos Y > -40
var(26)= 0


;[State 3301, MoveBack]
;type = VarSet
;trigger1 = (var(25)= 5 || var(25)= 6) && (var(26)= 3 || var(26)= 4)
;var(25)= 0
[State 0, VarSet]
type = VarSet
trigger1 = command = "holdfwd" && var(25) != 5 && time > 20
var(25)= 1

[State 3301, MoveBack]
type = VarSet
trigger1 = command = "holdback" && var(25) != 6 && time > 20
var(25)= 2


[State 3101, Up]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holdup" && time > 20
triggerall = var(26)!= 3
;triggerall = command != "holdback"
;triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
var(26)= 3
;
[State 3301, Down]
type = VarSet
trigger1 = command = "holddown" && time > 20
trigger1 = var(26)!= 4
;triggerall = command != "holdback"
;triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
var(26)= 4

[State 3301, Jump_Light_Punch]
type = VarSet
trigger1 = (command = "z" || command = "c") && time > 20
var(25)= 10

[State 3301, Jump_Medium_Punch]
type = VarSet
trigger1 = (command = "a" || command = "x") && time > 20
var(25)= 11

[State 3301, Jump_Strong_Punch]
type = VarSet
trigger1 = (command = "y" || command = "b") && time > 20
var(25)= 12

[State 0, VarSet]
type = VarSet ;sair
trigger1 = command = "start"; && time > 20
trigger2 = var(59) && time > 500
var(25)= 20


[State 0, Explod]
type = Explod
triggerall = numexplod(2504) = 0
trigger1 = animelem = 3
anim = 2504
ID = 2504
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999



[State 3301, vitoria]
type = VarSet
trigger1 = win = 1
var(25)= 20

[State 2500, fim]
type = ChangeState
trigger1 = var(25)= 20
value = 11
ctrl = 1

[Statedef 2501]
type    = A
movetype= H
physics = N
ctrl = 0
anim = 2506
velset = 0,0
sprpriority = 1


[State 191, 1]
type = PlaySnd
triggerall = anim != 2590 && anim != 2690
triggerall = anim != 2591 && anim != 2691
trigger1 = timemod = 5,0
value = 173,7
volume = 5
channel = 2




[State 0, ChangeAnim]  ;; enemynear,facing=-1
type = ChangeAnim
triggerall = prevstateno = 2505
trigger1 = time = 0 ; tempo da anim 2506
value = 2500 + ifelse((P2Dist X > 5),0,100)


[State 0, ChangeAnim]  ;; enemynear,facing=-1
type = ChangeAnim
triggerall = prevstateno != 2505
trigger1 = time = 24 ; tempo da anim 2506
value = 2500 + ifelse((P2Dist X > 5),0,100)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 2500 && P2Dist X < -5
value = 2600

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 2600 && P2Dist X > 5
value = 2500

[State 3301, pararVel]
type = VelSet
trigger1 = (root,var(25) = 0)
trigger2 =  anim = 2510
x = 0
y = 0




[State 3101, Up]
type = ChangeAnim
triggerall = Anim != 2510 &&  Anim != 2610
triggerall = Anim != 2530 &&  Anim != 2630
triggerall = Anim != 2520 &&  Anim != 2620
trigger1 = (root,var(26) = 3)
trigger1 = Anim != 2507 && Anim != 2607
value = 2507  + ifelse((P2Dist X > 5),0,100)  ;pra cima
;
[State 3301, Down]
type = ChangeAnim
triggerall = Anim != 2510 &&  Anim != 2610
triggerall = Anim != 2530 &&  Anim != 2630
triggerall = Anim != 2520 &&  Anim != 2620
trigger1 = (root,var(26) = 4)
trigger1 = Anim != 2508 && Anim != 2608
value = 2508  + ifelse((P2Dist X > 5),0,100);pra baixo



;


[State 3301, Back]
type = ChangeAnim
triggerall = anim != 2510 && anim != 2520 && anim != 2530
triggerall = anim != 2540 && anim != 2550 && anim != 2560
triggerall = anim != 2610 && anim != 2620 && anim != 2630
triggerall = anim != 2640 && anim != 2650 && anim != 2660
triggerall = anim != 2690 && anim != 2590
trigger1 = (root,var(25) = 2)
trigger1 = Anim != 2502 && Anim != 2602
value = 2502  + ifelse((P2Dist X > 5),0,100);pra tras
;
[State 3101, Forward]
type = ChangeAnim
triggerall = anim != 2510 && anim != 2520 && anim != 2530
triggerall = anim != 2540 && anim != 2550 && anim != 2560
triggerall = anim != 2610 && anim != 2620 && anim != 2630
triggerall = anim != 2640 && anim != 2650 && anim != 2660
triggerall = anim != 2690 && anim != 2590
trigger1 = (root,var(25) = 1)
trigger1 = Anim != 2501 && anim != 2601
value = 2501  + ifelse((P2Dist X > 5),0,100)  ;pra frente
;



;

;
;[State 3301,Turn]
;type = Turn
;trigger1 = P2bodydist X < -100 && anim = 2501
;
[State 3301, MoveUp]
type = VelSet
trigger1 = (root,var(26) = 3)
y = -3

[State 3301, MoveDown]
type = VelSet
trigger1 = (root,var(26) = 4)
y = 3

[State 3301, MoveBack]
type = VelSet
trigger1 = anim = 2502
trigger2 = anim = 2602
x = -4


[State 3301, MoveForward]
type = VelSet
trigger1 = anim = 2501
trigger2 = anim = 2601
x = 4

[State 3301, UpBorder]
type = PosSet
trigger1 = Pos Y < -300
y = -300

[State 3301, DownBorder]
type = PosSet
trigger1 = Pos Y > -40
y = -40


[State 3101, Forward]
type = ChangeAnim
triggerall = Anim != 2510 &&  Anim != 2610
triggerall = Anim != 2530 &&  Anim != 2630
trigger1 = (root,var(25) = 10)
trigger1 = Anim != 2510 && Anim != 2610
value = 2510   + ifelse((P2Dist X > 5),0,100)

[State 3101, Forward]
type = ChangeAnim
triggerall = Anim != 2510 &&  Anim != 2610
triggerall = Anim != 2530 &&  Anim != 2630
trigger1 = (root,var(25) = 11)
trigger1 = Anim != 2520 &&  Anim != 2620
value = 2520  + ifelse((P2Dist X > 5),0,100)  ;soco medio

[State 3101, Forward]
type = ChangeAnim
triggerall = Anim != 2510 &&  Anim != 2610
triggerall = Anim != 2520 &&  Anim != 2620
trigger1 = (root,var(25) = 12)
trigger1 = Anim != 2530 &&  Anim != 2630
value = 2530  + ifelse((P2Dist X > 5),0,100)  ;soco forte

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animtime = 0
trigger1 = anim = 2510 || anim = 2520 || anim = 2530
trigger2 = anim = 2610 || anim = 2620 || anim = 2630
value = 2500  + ifelse((P2Dist X > 5),0,100)

[state 4000, gethit]
type = hitoverride
trigger1 = 1
time = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2505

[State 600, HitDef]
type = HitDef
trigger1 = timemod = 70,10
attr = A, NA
damage = 15
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-40
numhits = 1
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 0, Explod]
type = Explod
trigger1 = anim = 2510 && animelem = 2
anim = 9991
ID = 1111
pos = 7,-52
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 5

[State 191, 1]
type = PlaySnd
trigger1 =  (anim = 2610 || anim = 2510) && animelem = 2
value = 173,1

[State 0, Projectile]
type = Projectile
trigger1 = anim = 2510 && animelem = 2
ProjID = 2605
projanim = 2605
projhitanim = 9992
projremanim = 9992
projcancelanim = 9992
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 9,3
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 7,-52
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,0
pausetime = 0,0
sparkno = -1;s9992
guard.sparkno = -1;0
sparkxy = 0,-5
hitsound = 30,0
guardsound = 30,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -10,0
air.velocity = -10,0
sprpriority = 1
p1getp2facing = 0
fall = 1
air.fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 191, 1]
type = PlaySnd
triggerall =  (anim = 2620 || anim = 2520)
trigger1 =  animelem = 3
trigger2 =  animelem = 5;4
trigger3 =  animelem = 7;5
trigger4 =  animelem = 9;6
trigger5 =  animelem = 11;7
value = 173,3

[State 0, Projectile]
type = Projectile
triggerall = anim = 2520
trigger1 =  animelem = 3
trigger2 =  animelem = 5;4
trigger3 =  animelem = 7;5
trigger4 =  animelem = 9;6
trigger5 =  animelem = 11;7
ProjID = 2604
projanim =2604
projhitanim = 9990
projremanim = 9990
projcancelanim = 9990
velocity = (2-random/250),8
offset = 15,0
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 3,1
pausetime = 0,0
sparkno = -1;s9990
guard.sparkno = -1
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
sprpriority = 3
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 191, 1]
type = PlaySnd
triggerall =  (anim = 2630 || anim = 2530)
trigger1 =  animelem = 3
trigger2 =  animelem = 5;4
trigger3 =  animelem = 7;5
trigger4 =  animelem = 9;6
trigger5 =  animelem = 11;7
value = 173,3

[State 0, Projectile]
type = Projectile
triggerall = anim = 2530
trigger1 =  animelem = 3
trigger2 =  animelem = 5;4
trigger3 =  animelem = 7;5
trigger4 =  animelem = 9;6
trigger5 =  animelem = 11;7
ProjID = 2604
projanim =2604
projhitanim = 9990
projremanim = 9990
projcancelanim = 9990
velocity = (9-random/250),8
offset = 40,0
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 3,1
pausetime = 0,0
sparkno = -1;s9990
guard.sparkno = -1
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
sprpriority = 3
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1


[State 0, Explod]
type = Explod
trigger1 = anim = 2610 && animelem = 2
anim = 9991
ID = 1111
pos = -7,-52
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 5




[State 0, Projectile]
type = Projectile
trigger1 = anim = 2610 && animelem = 2
ProjID = 2605
projanim = 2605
projhitanim = 9992
projremanim = 9992
projcancelanim = 9992
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = -9,3
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = -7,-52
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,0
pausetime = 0,0
sparkno = -1;s9992
guard.sparkno = -1;0
sparkxy = 0,-5
hitsound = 30,0
guardsound = 30,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -10,0
air.velocity = -10,0
sprpriority = 1
p1getp2facing = 0
fall = 1
air.fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 0, Projectile]
type = Projectile
triggerall = anim = 2620
trigger1 =  animelem = 3
trigger2 =  animelem = 5;4
trigger3 =  animelem = 7;5
trigger4 =  animelem = 9;6
trigger5 =  animelem = 11;7
;trigger6 =  animelem = 8
;trigger7 =  animelem = 9
;trigger8 =  animelem = 10
;trigger9 =  animelem = 11
ProjID = 2604
projanim =2604
projhitanim = 9990
projremanim = 9990
projcancelanim = 9990
velocity = -(2-random/250),8
offset = -15,0
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 3,1
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
sprpriority = 3
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 0, Projectile]
type = Projectile
triggerall = anim = 2630
trigger1 =  animelem = 3
trigger2 =  animelem = 5;4
trigger3 =  animelem = 7;5
trigger4 =  animelem = 9;6
trigger5 =  animelem = 11;7
;trigger6 =  animelem = 8
;trigger7 =  animelem = 9
;trigger8 =  animelem = 10
;trigger9 =  animelem = 11
;trigger10 =  animelem = 2
ProjID = 2604
projanim =2604
projhitanim = 9990
projremanim = 9990
projcancelanim = 9990
velocity = -(9-random/250),8
offset = -40,0
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 3,1
pausetime = 0,0
sparkno = -1;s9990
guard.sparkno = -1
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
sprpriority = 3
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1


[State 3301, pararAnim]
type = ChangeAnim
triggerall = time > 20
trigger1 = (root,var(25) = 0); && (root,var(26) = 3)
triggerall = anim != 2500 && anim != 2510 && anim != 2520 && anim != 2530
triggerall = anim != 2540 && anim != 2550 && anim != 2560
triggerall = anim != 2600 && anim != 2610 && anim != 2620 && anim != 2630
triggerall = anim != 2640 && anim != 2650 && anim != 2660
triggerall = anim != 2690 && anim != 2590
triggerall = anim != 2691 && anim != 2591
triggerall = anim != 2507 && anim != 2508
triggerall = anim != 2607 && anim != 2608
value = 2500 + ifelse((P2Dist X > 5),0,100)

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 2591 && anim != 2691
trigger1 = root,var(25)>= 20
trigger2 = win = 1
trigger3 = lose = 1
trigger4 = parent, stateno != 2500
value = 2591 + ifelse((P2Dist X > 5),0,100)

[State 2501, fim]
type = DestroySelf
triggerall = animtime = 0
trigger1 = anim = 2591
trigger2 = anim = 2691


[StateDef 2502]
type = S
movetype= H
physics = N
anim = 2509
ctrl = 0

[state 4000, gethit]
type = hitoverride
trigger1 = 1
time = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 2502

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 27
value = var(27)+1


[State 0, VarSet]
type = VarSet
trigger1 = time = 0;var(27) > 0
v = 25
value = 20

[State 0, VarSet]
type = VarSet
trigger1 = var(27) > 0
v = 27
value = 0

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = 5000

[State 2502, changestate]
type = ChangeState
trigger1 = time = 10 && var(25)>= 20
value = 5000
ctrl = 1

[State 2502, changestate]
type = ChangeState
trigger1 = time = 10 && var(27) < 0
value = 2500


[StateDef 2505] ;copetro levando sola
anim = 2590
ctrl = 0
type = A
movetype = A
physics = N
velset = (ifelse(P2Dist X > 5,-8,8))*(ifelse(parent,var(14)=4,0,1)),-1*(ifelse(parent,var(14)=4,0,1))


[State 0, ChangeState]
type = ChangeState
trigger1 =  time = 20
value =  2501


; Special 1
[StateDef 1600]
type = S
movetype = A
physics = S
anim = 1600
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1602
ID = 1602
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
bindtime = -1
removeongethit = 1
scale = 1,1
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1601
ID = 1601
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = 44
bindtime = -1
removeongethit = 1
scale = 1,1
sprpriority = 2

[State 191, 1]
type = PlaySnd
trigger1 =  animelem = 3
value = 173,0

[State 191, 1]
type = PlaySnd
trigger1 =  animelem = 5
trigger2 =  animelem = 6
trigger3 =  animelem = 7
trigger4 =  animelem = 8
trigger5 =  animelem = 9
trigger6 =  animelem = 10
trigger7 =  animelem = 11
trigger8 =  animelem = 12
trigger9 =  animelem = 13
trigger10 =  animelem = 14
value = 173,2

[State 0, Projectile]
type = Projectile
trigger1 =  animelem = 5
trigger2 =  animelem = 6
trigger3 =  animelem = 7
trigger4 =  animelem = 8
trigger5 =  animelem = 9
trigger6 =  animelem = 10
trigger7 =  animelem = 11
trigger8 =  animelem = 12
trigger9 =  animelem = 13
trigger10 =  animelem = 14
ProjID = 1603
projanim =1603
projhitanim = 1604
projremanim = 1604
projcancelanim = 1604
velocity = 12,(2-random/250)
offset = 70,-55
postype = p1         ;p2,front,back,left,right
projshadow = 10,10,10
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 12,1
pausetime = 0,0
sparkno = -1;s9990
guard.sparkno = -1
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Stand Hard Punch
[StateDef 1700]
anim = 1700
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0
poweradd = 50
sprpriority = 0

[State 191, 1]
type = PlaySnd
trigger1 =  animelem = 3
value = 8,0

[state 1101, twister]
type = afterimage
triggerall = palno != 10 && palno != 11 && palno != 12
trigger1 = animelem = 3
time = 30
length = 20
palbright = 30,30,30
palcontrast = 120,220,120
;paladd = 200, 249, 39
paladd = 10,25,10
palmul = .65,.75,.55
framegap = 5
trans = add

[state 1101, twister]
type = afterimage
triggerall = palno = 12
trigger1 = animelem = 3
time = 30
length = 20
palbright = 30,30,30
palcontrast = 220,120,120
;paladd = 200, 249, 39
paladd = 25,10,10
palmul = .75,.65,.55
framegap = 5
trans = add

[state 1101, twister]
type = afterimage
triggerall = palno = 10 ;&& palno != 11 && palno = != 12
trigger1 = animelem = 3
time = 30
length = 20
palbright = 30,30,30
palcontrast = 120,120,220
;paladd = 200, 249, 39
paladd = 10,10,25
palmul = .65,.65,.75
framegap = 5
trans = add

[state 1101, twister]
type = afterimage
triggerall =palno = 11; && palno = != 12
trigger1 = animelem = 3
time = 30
length = 20
palbright = 30,30,30
palcontrast = 220,220,120
;paladd = 200, 249, 39
paladd = 25,25,10
palmul = .75,.75,.55
framegap = 5
trans = add

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 3
x = 10
y = -1
;ignorehitpause =
;persistent =
[State 100, lines]
type = Explod
trigger1 = timemod = 3,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -20, -80
random = 0,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1701
ID = 1701
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1


[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 116
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -14,-8
guard.velocity = -5
air.velocity = -14,-8
fall = 1
air.fall = 1


[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1
