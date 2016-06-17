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

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 1


; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
darken = 1
poweradd = -1000
movetime = 40
anim = s1500
pos = 10,-90

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
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
trigger1 = AnimElem = 2
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
trigger1 = AnimElem = 3
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


[State 191, 1]
type = PlaySnd
trigger1 =  animelem = 1
value = 172,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3001
ID = 3009
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 150
sprpriority = 0
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, Explod]
type = Explod
trigger1 = time = 150
anim = 3005
ID = 3005
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 0
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3004
ID = 3004
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 140
sprpriority = 2
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, Helper]
type = Helper
trigger1 = time = 48
helpertype = normal
name = "raio"
ID = 3001
stateno = 3001
bindtime = -1
pos = 0,0
postype = p1

[State 3000, back to normal]
type = ChangeState
trigger1 = time = 150
value = 0
ctrl = 1

[Statedef 3001]
type = A
movetype = A
physics = N
anim = 3002
velset = 0,0
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x
y = parent, pos y

[State 191, 1]
type = PlaySnd
trigger1 =  timemod = 4,0
value = 173,4

[State 220, HitDef]
type = HitDef
trigger1 = timemod = 4,0
attr = S, NA
damage = 10,1
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-76
animtype = Heavy
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim = 3002
value = 3003
;elem = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0 && anim = 3003
trigger2 = parent, numexplod(3009) = 0
;ignorehitpause =
;persistent =


;Special1_X
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,12


[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3099
ID = 3099
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 50
sprpriority = 5
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 60
sound = S10,1
darken = 1
poweradd = -1000
movetime = 60
anim = s1500
pos = 15,-120

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 60
pausemovetime = 60
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermove = 60
pausemovetime = 60
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 2
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3101
ID = 3001
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 60
sprpriority = 2
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 3101
ctrl = 0


[Statedef 3101]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3112
ctrl = 0
sprpriority = 2


[State 0, ]
type = PlaySnd
trigger1 = timemod = 10,0
value = 173,8
volume = 5
channel = 2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3102
ID = 3102
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 1
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2dist x < -20
id = 3102
;ignorehitpause =
;persistent =
[State 0, Explod]
type = Explod
trigger1 = p2dist x < -20
anim = 3102
ID = 3102
pos = 0,0
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 1
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 1101,Turn]
type = Turn
trigger1 = P2Dist X < -20

[State 1003, ]
type = VelAdd
triggerall = anim != 3105
triggerall = anim != 3106
triggerall = anim != 3107
triggerall = anim != 3108
triggerall = Vel X >= -2 && time >= 5
trigger1 = command = "holdback"
x = -1.2

[State 1003, ]
type = VelAdd
triggerall = anim != 3105
triggerall = anim != 3106
triggerall = anim != 3107
triggerall = anim != 3108
triggerall = Vel X <= 2 && time >= 5
trigger1 = command = "holdfwd"
x = 1.3

[State 1003, 3] ;tiro normal
type = ChangeAnim
triggerall = anim != 3105
triggerall = anim != 3107
triggerall = anim != 3108
trigger1 = (command = "a" || command = "x") && anim != 3106
value = 3106

[State 1003, 3] ;tiro diagonal
type = ChangeAnim
triggerall = anim != 3105
triggerall = anim != 3106
triggerall = anim != 3108
trigger1 = (command = "y" || command = "b") && anim != 3107
value = 3107

[State 1003, 3] ;tiro diagonal
type = ChangeAnim
triggerall = anim != 3107
triggerall = anim != 3106
triggerall = anim != 3108
trigger1 = (command = "z" || command = "c") && anim != 3105
value = 3105



[State 1003, 3]
type = ChangeAnim
triggerall = anim != 3105
triggerall = anim != 3106
triggerall = anim != 3107
triggerall = anim != 3108
trigger1 = vel x > 0 && anim != 3103
value = 3103

[State 1003, 4]
type = ChangeAnim
triggerall = anim != 3105
triggerall = anim != 3106
triggerall = anim != 3107
triggerall = anim != 3108
trigger1 =  vel x < 0 && anim != 3104
value = 3104

[State 1003, 5]
type = ChangeAnim
triggerall = anim != 3105
triggerall = anim != 3106
triggerall = anim != 3107
triggerall = anim != 3108
trigger1 =  vel x = 0  && anim != 3112 ;&& command != "holdup"
value = 3112


[State 1003, 5]
type = ChangeAnim
triggerall = anim != 3105
triggerall = anim != 3106
triggerall = anim != 3109
triggerall =  vel x = 0  && anim != 3108 ;&& command != "holdup"
trigger1 anim = 3107 && animtime = 0
value = 3108

[State 1003, 5]
type = ChangeAnim  ;stance do tank
triggerall =  vel x = 0  && anim != 3112 ;&& command != "holdup"
trigger1 anim = 3106 && animtime = 0
trigger2 anim = 3108 && animtime = 0
trigger3 anim = 3105 && animtime = 0
value = 3112



[State 0, Explod]
type = Explod
trigger1 = anim = 3105 && animelem = 3
anim =  3115
ID = 3115
pos = 0,-8
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 6
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 3107 && animelem = 4
anim =  3111
ID = 3111
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 6
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 3106 && animelem = 2
anim =  3110
ID = 3110
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 6
removeongethit = 1

[State 0, ]
type = PlaySnd
trigger1 = anim = 3105 && animelem = 5
value = 173,5

[State 0, ]
type = PlaySnd
trigger1 = anim = 3107 && animelem = 4
value = 173,6

[State 0, ]
type = PlaySnd
trigger1 = anim = 3106 && animelem = 2
value = 173,6


[State 0, Projectile]
type = Projectile
trigger1 = anim = 3105 && animelem = 5
ProjID = 3116
projanim = 3116
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 18,0
projsprpriority = 3
projedgebound = 140
projstagebound = 140
projheightbound = -340
offset = 60,-95
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,0
pausetime = 0,0
sparkno = s9992
guard.sparkno = 0
sparkxy = 0,-5
hitsound = 30,0
guardsound = 30,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -14,-4
air.velocity = -14,-4
sprpriority = 1
p1getp2facing = 0
fall = 1
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
trigger1 = anim = 3107 && animelem = 4
ProjID = 3114
projanim = 3114
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,-10
projsprpriority = 3
projedgebound = 140
projstagebound = 140
projheightbound = -340
offset = -20,-20
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,0
pausetime = 0,0
sparkno = s9991
guard.sparkno = 0
sparkxy = 0,-5
hitsound = 2,2
guardsound = 2,2
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -10,-7
air.velocity = -10,-7
sprpriority = 1
p1getp2facing = 0
fall = 1
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
trigger1 = anim = 3107 && animelem = 4
ProjID = 3114
projanim = 3114
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,-10
projsprpriority = 3
projedgebound = 140
projstagebound = 140
projheightbound = -340
offset = -40,-20
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,0
pausetime = 0,0
sparkno = s9991
guard.sparkno = 0
sparkxy = 0,-5
hitsound = 2,2
guardsound = 2,2
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -10,-7
air.velocity = -10,-7
sprpriority = 1
p1getp2facing = 0
fall = 1
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
trigger1 = anim = 3106 && animelem = 2
ProjID = 3113
projanim = 3113
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 13,0
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,-20
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,0
pausetime = 0,0
sparkno = s9991
guard.sparkno = 0
sparkxy = 0,-5
hitsound = 2,2
guardsound = 2,2
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -10,0
air.velocity = -10,0
sprpriority = 1
p1getp2facing = 0
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
trigger1 = anim = 3106 && animelem = 2
ProjID = 3113
projanim = 3113
projhitanim = -1
projremanim = -1
projcancelanim = -1
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 11,0
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,-30
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,0
pausetime = 0,0
sparkno = s9990
guard.sparkno = 0
sparkxy = 0,-5
hitsound = 2,2
guardsound = 2,2
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -10,0
air.velocity = -10,0
sprpriority = 1
p1getp2facing = 0
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

 [state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3102

[State 0, Explod]
type = Explod
;trigger1 = time >= 3300
trigger1 = command = "start"
trigger2 = win || lose
trigger3 = var(10) >= 10
anim = 3118
ID = 3118
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 1
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 1003, ]
type = ChangeState
trigger1 = command = "start"
trigger2 = win || lose
trigger3 = var(10) >= 10
value = 11
ctrl = 1

;[State 1003, ]
;type = ChangeState
;trigger1 = time >= 3300
;value = 11
;ctrl = 1



[StateDef 3102] ;tank levando sola
anim = 3109
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0
sprpriority = 5

[State 0, ParentVarAdd]
type = VarAdd
trigger1 = time = 0
v = 10
value = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -20
kill = 1


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3117
ID = 3117
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 1
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3102

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
trigger2 = var(10) >= 12
value =  3101



; Hyper 1
[StateDef 3200]
type = A
movetype = A
physics = N
anim = 3200
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 3

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0 && anim != 3201
value = S10,10
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2 && anim != 3201
time = 40
sound = S10,1
darken = 1
poweradd = -1000
movetime = 40
anim = s1500
pos = -35,-110


;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2 && anim != 3201
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
trigger1 = AnimElem = 2 && anim != 3201
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -5
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3 && anim != 3201
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
trigger1 = AnimElemTime(3) % 10 = 1  && anim != 3201
value = S9,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 2 && anim != 3201
anim = 3203
ID = 3203
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 40
sprpriority = 1
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999


[State 0, Helper]
type = Helper
trigger1 = animelem = 3 && anim != 3201
helpertype = normal
name = "robo"
ID = 3201
stateno = 3201
bindtime = -1
pos = 0,-400
postype = p2

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = helper(3201), moveguarded = 0
trigger1 = helper(3201), movecontact > 0 && anim != 3201
value = 3201



[State 3000, back to normal]
type = ChangeState
trigger1 = animtime = 0 && anim != 3201
trigger2 = animtime = 0 && anim = 3201
value = 0
ctrl = 1

[Statedef 3201]
type = A
movetype = A
physics = N
anim = 3202
velset = 0,18
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 220, HitDef]
type = HitDef
trigger1 = pos y > -10 && vel y != 0
attr = S, NA
damage = 40,10
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Heavy
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 76702


[State 830, Shake]
type = EnvShake
trigger1 = pos y > -10 && vel y != 0
time = 20
ampl = -20

[State 0, VelSet]
type = VelSet
trigger1 = pos y > -10 && vel y !=0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = vel y = 0 &&  time > 70 && movecontact > 0 && pos y > -200
value = 8,0

[State 0, VelSet]
type = VelSet
trigger1 = vel y = 0 &&  time > 70 && movecontact > 0 && pos y > -200
x = 0
y = -10
;ignorehitpause =
;persistent =
[State 0, PosSet]
type = PosSet
triggerall = pos x != enemynear, pos x
trigger1 =  vel y = -10 && time > 70 &&  pos y < -200 && movecontact > 0
x = enemynear, pos x


[State 0, VelSet]
type = VelSet
trigger1 =  vel y = -10 && time > 70 &&  pos y < -200 && movecontact > 0
x = 0
y = 15


[State 0, PosSet]
type = PosSet
trigger1 =  vel y = 0 && pos y != 0
y = 0
;ignorehitpause =
;persistent =




[State 0, DestroySelf]
type = DestroySelf
trigger1 =  time > 230
trigger2 = time > 60 && movecontact = 0
trigger3 = moveguarded > 1
;ignorehitpause =
;persistent =

 [Statedef 76702]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5080

[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time > 18 && anim != 5110
value = 5110


[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7696, 6]
type = SelfState
trigger1 = Time = 100
ctrl = 1
value = 5120

;---------voando
;---------------------------------------------------------------------------
; flight
; player now has control
;---------------------------------------------------------------------------
[Statedef 3300]
type    = A
movetype= I
ctrl = 0
anim = 7
velset = 0,0

;[State 0, Helper]
;type = Helper
;trigger1 = time = 0
;helpertype = normal;player
;name = "aura"
;ID = 3399
;stateno = 3399
;bindtime = -1
;pos = 0,0
;postype = p1

[State 3101, Fly_Mode_End]
trigger1 = Win = 1
trigger2 = Lose = 1
trigger3 = command = "qcb_2k" && time > 20
type = ChangeState
value = 50
ctrl = 1

[State 3101, Check_for_Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -205
trigger6 = Pos Y > -20
x = 0
y = 0

[State 3101, Check_for_Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 7
value = 7 ;parado

[State 3101, Back]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = Anim != 7
value = 7 ;pra tras

[State 3101, Forward]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = Anim != 103
value = 103   ;pra frente

[State 3101, Up]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = Anim != 7
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
value = 7   ;pra cima

[State 1101, Down]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = Anim != 7
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
value = 7 ;pra baixo

[State 1101,Turn]
type = Turn
trigger1 = P2Dist X < -20 ;&& anim = 3100

;[State 3301,Turn]
;type = Turn
;trigger1 = P2bodydist X < -60 && anim = 3103

[State 1101, MoveUp]
type = VelSet
trigger1 = command = "holdup"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
y = -5

[State 1101, MoveDown]
type = VelSet
trigger1 = command = "holddown"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
y = 5

[State 1101, MoveBack]
type = VelSet
trigger1 = command = "holdback"
x = -3

[State 1101, MoveForward]
type = VelSet
trigger1 = command = "holdfwd"
x = 7

[State 1101, UpBorder]
type = PosSet
trigger1 = Pos Y < -200
y = -200

[State 1101, DownBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20

[State 1101, raio]
type = ChangeState
triggerall = numhelper(1301)=0 && numhelper(1302)=0 ;bolha
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
value = 3380

[State 1101, bolha]
type = ChangeState
triggerall = numhelper(1301)=0 && numhelper(1302)=0 && time > 21;bolha
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")
value = 3390


[State 1101, Jump_Light_Punch]
type = ChangeState
trigger1 = command = "x"; && time > 20
value = 3320

[State 1101, Jump_Medium_Punch]
type = ChangeState
trigger1 = command = "y"; && time > 20
value = 3330

[State 1101, Jump_Strong_Punch]
type = ChangeState
trigger1 = command = "z"; && time > 20
value = 3340

[State 1101, Jump_Strong_Kick]
type = ChangeState
trigger1 = command = "a"; && time > 20
value = 3350

[State 1101, Jump_Strong_Kick]
type = ChangeState
trigger1 = command = "b"; && time > 20
value = 3360

[State 1101, Jump_Strong_Kick]
type = ChangeState
trigger1 = command = "c"; && time > 20
value = 3370


;golpes voando fly
[Statedef 3320]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 603
poweradd = 15
sprpriority = 2

[State 600, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,0


[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 15
guardflag = HA
pausetime = 0,0
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
value = 3300

;---------------------------------------------------------------------------------------------
;Jumping medium punch

[Statedef 3330]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 613
poweradd = 35
sprpriority = 2

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

[State 610, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 8400,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
pausetime = 0,0
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
value = 3300

;---------------------------------------------------------------------------------------------
;Jumping strong punch

[Statedef 3340]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 623
poweradd = 55
sprpriority = 2

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
pausetime = 0,0
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
value = 3300

;---------------------------------------------------------------------------------------------
;Jumping light kick


[StateDef 3350]
anim = 633
ctrl = 0
type = A
movetype = A
physics = N
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
value = 3300


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 3360]
anim = 643
ctrl = 0
type = A
movetype = A
physics = N
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
value = 3300


 ;Jumping strong kick

[Statedef 3370]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 653
poweradd = 55
sprpriority = 2
velset = 0,0



[State 0, Explod]
type = Explod
trigger1 = animelem = 1 ;&& pos y < - 50
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
pausetime = 0,0
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
value = 3300


[Statedef 3380]
type = A
movetype = A
physics = N
anim = 1012
ctrl = 0
velset = 0,0
sprpriority = 0

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
value = 3300




;---------------------------------------------------------------------------------------------
;Jumping medium kick
[Statedef 3390]
type = A
movetype = A
physics = N
anim = 1304
ctrl = 0
velset = 0,0
sprpriority = 0


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

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 172,1

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

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3300

;---------------------------------------------------------------------------------------------



[Statedef 3399]
type =U
movetype = U;A
physics = U
anim = 7
velset = 0,0
sprpriority = -4

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  anim-3 != parent,anim
value = parent,anim + 3
;elem = 1
;ignorehitpause =
;persistent =



[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x ;+100
y = parent, pos y
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, anim != 4
trigger1 = parent, anim != 100
trigger1 = parent, anim != 600
trigger1 = parent, anim != 610
trigger1 = parent, anim != 620
trigger1 = parent, anim != 630
trigger1 = parent, anim != 640
trigger1 = parent, anim != 650

;ignorehitpause =
;persistent =



; Hyper 1
[StateDef 3400]
type = A
movetype = A
physics = N
anim = 3400
ctrl = 0
velset = 0,0
sprpriority = 3



[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 4

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
darken = 1
poweradd = -1000
movetime = 40
anim = s1500
pos = 10,-90

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
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
trigger1 = AnimElem = 2
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
trigger1 = AnimElem = 3
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

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3004
ID = 3004
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 40
sprpriority = 2
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

;[State 0, Helper]
;type = Helper
;trigger1 = animelem = 5
;helpertype = player
;name = "mira"
;ID = 3401
;stateno = 3401
;bindtime = -1
;pos = 0,-80
;postype = p2
[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3401
ID = 3401
pos = 0,0
postype = p1;back;,left,right
removetime = 70
bindtime = -1
sprpriority = 2
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3402
ID = 3402
pos = 0,0
postype = p1;back;,left,right
removetime = 30
bindtime = -1
sprpriority = 1
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 3
x = -7
y = -3
;ignorehitpause =
;persistent =
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0

[State 3000, back to normal]
type = ChangeState
trigger1 = animtime = 0
value = 3401
ctrl = 0

[Statedef 3401]
type = A
movetype = A
physics = N
anim = 3405
velset = 0,0
sprpriority = 10

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3407
ID = 3407
pos = 0,0
postype = p1;back;,left,right
removetime = -1
bindtime = -1
sprpriority = 9
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),floor(pos y)


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3404
ID = 3404
pos = -10,255
facing = -1
postype = back;,left,right
bindtime = -1
removetime = -1
sprpriority = 12
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3403
ID = 3403
pos = -10,255
facing = -1
postype = back;,left,right
removetime = -1
bindtime = -1
sprpriority = 15
removeongethit = 1
supermovetime = 999999
pausemovetime = 999999
ontop = 1




[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = enemynear, pos x -30
y = -80
;ignorehitpause =
;persistent =


 [State 3101, Check_for_Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -240
trigger6 = Pos Y > -20
x = 0
y = 0


[State 1101, MoveUp]
type = VelSet
trigger1 = command = "holdup"
y = -3

[State 1101, MoveDown]
type = VelSet
trigger1 = command = "holddown"
y = 3

[State 1101, MoveBack]
type = VelSet
triggerall = BackEdgeDist > 0
trigger1 = command = "holdback"
x = -3

[State 1101, MoveForward]
type = VelSet
triggerall = BackEdgeDist < 300
trigger1 = command = "holdfwd"
x = 3

[State 1101, UpBorder]
type = PosSet
trigger1 = Pos Y < -240
y = -240

[State 1101, DownBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20


[State 1101, Jump_Strong_Kick]
type = ChangeState
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = var(59) && time > 20
; && time > 20
value = 3402


[State 0, PosSet]
type = PosSet
trigger1 = time > 165
x = 100
y = -600
;ignorehitpause =
;persistent =


[State 600, ChangeState]
type = ChangeState
trigger1 = time > 165
value = 50
ctrl = 1

;golpes voando fly
[Statedef 3402]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 3406
sprpriority = 10

[State 191, 1]
type = PlaySnd
trigger1 = time = 0
value = 173,1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 9991
ID = 1111
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 12

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HT
damage = 220
guardflag = -1;MA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-3
fall = 1
air.fall = 1

[State 0, PosSet]
type = PosSet
trigger1 = AnimTime = 0
x = 100
y = -600
;ignorehitpause =
;persistent =


[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
