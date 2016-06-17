; States file for Lobo -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: Super Jump direction flag (0=vertical, 1=forward, -1=backward)
;   1: Mr. Hook hit flag (0: missed, 1=hit)
;   2: "levelup" sounds
;   5: Frag ammo counter
;   6: "no ammo" flag for Air Frag
;  10: Main Men clone timer
;  12: AI activation
;  20: RotGut special states
;     (1: attack power up; 2: super armor; 3: superspeed)
;  21: RotGut effect timer
;  22: RotGut power multiplier
; FVars:
;   0: RotGut move speed multiplier
; Helpers:
;   0: superjump opponent position indicator
;   5: Frag ammo display
;  10: "Main Men" clone #1
;  11: "Main Men" clone #2
;  25: Frag grenade
;3305: BFG shell
; Explods:
;  10: "Main Men" clone #1 timer bar
;  11: "Main Men" clone #2 timer bar
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; States in this file:
; 
; Super Jump: 910
; Frag (D,DF,F + P): 1000-1002
; Frag (air): 1100
; Mr. Hook (D,DB,DB + P): 1200-1240
; Rot Gut (D,DB,B + K): 2000-2006
; Fraggaboom! (D,F,DF + K): 2500
;---------------------------------------------------------------------------



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


;---------------------------------------------------------------------------
; Frag! (ground, weak)
[StateDef 1000]
anim = 1000
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 15

[State 1000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, "frag!"]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 1000, blam!]
type = PlaySnd
trigger1 = Time = 7
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1000, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = Time = 7
anim = 1001
pos = 84,-100
postype = p1

[State 1000, spendBullet]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
v = 5
value = -1

[State 1000, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 3
anim = 1002
pos = 116,-93
bindtime = 100
sprpriority = 4

[State 1000, hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = MA
sparkxy = -140,-90
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
pausetime = 15,1
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
ground.velocity = -4, -2
guard.velocity = -5
air.velocity = -6, -3
damage = 10,5

[State 1000, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 3
projanim = 1004
velocity = 50,0
projsprpriority = 3
offset = 74,-92
attr = S,SP
hitflag = MAF
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
ground.velocity = -2, 0
guard.velocity = -4
air.velocity = -5, -2
fall = 1
damage = 50,10

[State 1000, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Frag! (ground, medium)
[StateDef 1001]
anim = 1006
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 1000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, "frag!"]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 1001, blam!]
type = PlaySnd
trigger1 = Time = 7
trigger2 = Time = 27
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1001, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = Time = 7
trigger2 = Time = 27
anim = 1001
pos = 84,-100
postype = p1

[State 1001, spendBullets]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
trigger2 = Time = 28
v = 5
value = -1

[State 1001, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
anim = 1002
pos = 116,-93
bindtime = 100
sprpriority = 4

[State 1001, hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = MA
sparkxy = -140,-90
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
pausetime = 15,1
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
ground.velocity = -4, -2
guard.velocity = -5
air.velocity = -6, -3
damage = 10,5

[State 1001, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
projanim = 1004
velocity = 50,0
projsprpriority = 3
offset = 74,-92
attr = S,SP
hitflag = MAF
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
ground.velocity = -2, 0
guard.velocity = -4
air.velocity = -5, -2
fall = 1
damage = 50,10

[State 1001, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Frag! (ground, strong)
[StateDef 1002]
anim = 1007
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45

[State 1000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1002, "frag!"]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 1002, sfx]
type = PlaySnd
trigger1 = Time = 7
trigger2 = Time = 27
trigger3 = Time = 47
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1002, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = Time = 7
trigger2 = Time = 27
trigger3 = Time = 47
anim = 1001
pos = 84,-100
postype = p1

[State 1002, clip]
type = Explod
triggerall = var(5) = 0
trigger1 = Time = 7
trigger2 = Time = 27
trigger3 = Time = 47
anim = 1020

[State 1002, spendBullets]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
trigger2 = Time = 28
trigger3 = Time = 48
v = 5
value = -1

[State 1002, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
anim = 1002
pos = 116,-93
bindtime = 100
sprpriority = 4

[State 1002, hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
hitflag = MAF
guardflag = MA
sparkxy = -140,-90
hitsound = S2,2
guardsound = S3,0
animtype = Hard
ground.type = High
pausetime = 15,1
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
ground.velocity = -4, -2
guard.velocity = -5
air.velocity = -6, -3
damage = 10,5

[State 1002, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
projanim = 1004
velocity = 50,0
projsprpriority = 3
offset = 74,-92
attr = S,SP
hitflag = MAFD
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = DiagUp
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
ground.velocity = -4, -3
guard.velocity = -4
fall = 1
air.velocity = -5, -2
damage = 50,10

[State 1002, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Frag! (air)
[StateDef 1100]
anim = 1100
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 40

[State 1100, varset]
type = VarSet
triggerall = Var(5) = 0
trigger1 = Time = 0
v = 6
value = 1

[State 1100, "frag!"]
type = PlaySnd
triggerall = var(5) > 0
trigger1 = Time = 5
value = 9,0

[State 1100, blam!]
type = PlaySnd
trigger1 = AnimElem = 2
channel = 1
value = 9, ifelse(var(5) > 0, 1, 3)

[State 1100, shell]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 2
anim = 1001
pos = 80,-65
postype = p1

[State 1100, spendBullets]
type = VarAdd
triggerall = var(5) > 0
trigger1 = Time = 8
v = 5
value = -1

[State 1100, muzzleflash]
type = Explod
triggerall = var(5) > 0
trigger1 = AnimElem = 2
anim = 1102
scale = .5, .5
pos = 83,-45
bindtime = 10
sprpriority = 4

[State 1000, bullet]
type = Projectile
triggerall = var(5) > 0
trigger1 = AnimElem = 2
projanim = 1104  ;1103
velocity = 50, 25
projsprpriority = 3
offset = 67,-40
attr = S,SP
hitflag = MAF
guardflag = MA
sparkxy = 0,0
hitsound = S2,2
guardsound = S3,0
animtype = DiagUp ;Hard
ground.type = High
ground.hittime = 20
guard.hittime = 12
ground.slidetime = 13
guard.slidetime = 9
;ground.velocity = -2, 0
ground.velocity = -4, -3
air.velocity = -5, -2
damage = 50,10

[State 1100, veladd1]
type = VelAdd
triggerall = var(5) > 0
trigger1 = AnimElem = 2,5
x = -2
y = -12

[State 1100, drop back to ground]
type = ChangeState
trigger1 = Var(6) = 0 && AnimTime = 0
value = 48



;---------------------------------------------------------------------------
; Mr. Hook

; chain throw
[StateDef 1200]
anim = 1200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 50

[State 1000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 1200, chain kaching]
type = PlaySnd
trigger1 = AnimElem = 4
channel = 1
value = 9,10

[State 1200, hitdef]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
attr = S,SA
hitflag = MA
guardflag = MA
animtype = Hard
air.animtype = Hard
ground.type = Low
air.type = Low
priority = 6,Hit
damage = 50,10
sparkno = S9992
;guard.sparkno = 
sparkxy = -65,-75
hitsound = S9,11
guardsound = S3,0
p1stateno = 1210 + AnimElemNo(0)
p2stateno = 1220

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

; if hook missed or was blocked
[State 1200, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = 1240
ctrl = 1


; push hooked opponent back a little
[StateDef 1214]
anim = 1214
type = S
movetype = A
physics = S
ctrl = 0

[State 1214, TargetBind]
type = TargetBind
trigger1 = Time = 0
time = 3
id = -1
pos = 156,0

[State 1214, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1215
ctrl = 0

; push hooked opponent back a little
[StateDef 1215]
anim = 1215
type = S
movetype = A
physics = S
ctrl = 0

[State 1215, TargetBind]
type = TargetBind
trigger1 = Time = 0
time = 3
id = -1
pos = 180,0

[State 1215, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1216
ctrl = 0

; push hooked opponent back a little
[StateDef 1216]
anim = 1216
type = S
movetype = A
physics = S
ctrl = 0

[State 1216, TargetBind]
type = TargetBind
trigger1 = Time = 0
time = 3
id = -1
pos = 205,0

[State 1216, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1217
ctrl = 0

; push hooked opponent back a little
[StateDef 1217]
anim = 1217
type = S
movetype = A
physics = S
ctrl = 0

[State 1217, TargetBind]
type = TargetBind
trigger1 = Time = 0
time = 3
id = -1
pos = 225,0

[State 1217, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1218
ctrl = 0

; push hooked opponent back a little
[StateDef 1218]
anim = 1218
type = S
movetype = A
physics = S
ctrl = 0

[State 1218, TargetBind]
type = TargetBind
trigger1 = Time = 0
time = 3
id = -1
pos = 250,0

[State 1218, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1219
ctrl = 0

; got the opponent hooked, about to yank him in
[StateDef 1219]
type = S
movetype = A
physics = S
ctrl = 0
poweradd = 50

[State 1219, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
time = 5
pos = 275,0

[State 1219, hook fragged him... return to normal]
type = ChangeState
trigger1 = (Time = 0) && (P2Life <= 0)
value = 1240

[State 1219, let go & smack the daylights out of him!]
type = ChangeState
trigger1 = AnimTime = 0
value = 1230


; Mr Hook - opponent hooked (custom p2 gethit state)
[StateDef 1220]
type    = U
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1220, KOed by hook]
type = SelfState
trigger1 = !Alive
value = 5050

[State 1220, get hooked anim]
type = ChangeAnim2
trigger1 = Alive && (Time = 0)
value = 1220

[State 1220, dragged & dazed]
type = ChangeState
trigger1 = Alive && (P2Dist X <= 75)
trigger2 = (enemynear, stateno < 1200) || (enemynear, stateno > 1230)
value = 1221


; opponent dizzy (custom p2 gethit state)
[StateDef 1221]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1221, feet on the ground]
type = PosSet
trigger1 = Pos Y <= 0
y = 0

[State 1221, dizzy anim]
type = ChangeAnim
trigger1 = (Time = 0) && SelfAnimExist(5300)
value = 5300

[State 1221, custom dizzy anim]
type = ChangeAnim2
trigger1 = (Time = 0) && !(SelfAnimExist(5300))
value = 5310

[State 1221, back to normal]
type = SelfState
trigger1 = (Time > 100) && (Alive = 1)
value = 0
ctrl = 1


; Mr Hook - dragging P2
[StateDef 1230]
anim = 1230
ctrl = 0
type = S
movetype = A
physics = S

[State 1230, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
time = 5
pos = 235,0

[State 1230, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
time = 4
pos = 215,0

[State 1230, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
time = 3
pos = 175,0

[State 1230, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
time = 3
pos = 130,0

[State 1230, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
time = 3
pos = 75,0

[State 1230, back to normal]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Hook missed, or was blocked, or killed opponent before they could get yanked
[Statedef 1240]
anim = 1240
ctrl = 0
type = S
movetype = I
physics = S

[State 1240, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; RotGut
[StateDef 2000]
anim = 2000
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 2000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 2000, gulp sound]
type = PlaySnd
trigger1 = (Time%25)= 5 && (Time < 60)
value = 9,20

[State 2001, bubble]
type = Explod
trigger1 = AnimElem = 3
anim = 2010
facing = 1 ;Facing
pos = 0,-110
postype = p1
bindtime = -1
sprpriority = 0

[State 2000, random effect]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001 + ((Random * 6) / 1000)     ; (Random * x): x == number of target states


; rotgut effect #1: health up
[StateDef 2001]
type = S
movetype = I
physics = S
velset = 0,0

[State 2001, lifeup]
type = LifeAdd
trigger1 = Time = 0
value = (Random / 6) + 100
absolute = 1

[State 2001, descrip]
type = Explod
trigger1 = Time = 5
anim = 2011
facing = Facing
pos = IfElse(Facing=1, 0, -50), -110
postype = p1
bindtime = -1
sprpriority = 1

[State 2001, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
trigger1 = Time = 0
time = 5
add = 0,0,0
mul = 512,512,256
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 2001, burp]
type = PlaySnd
trigger1 = Time = 0
value = 9,23

[State 2001, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


; rotgut effect #2: poison
[StateDef 2002]
type = S
movetype = I
physics = S
velset = 0,0

[State 2002, lifedown]
type = LifeAdd
trigger1 = Time = 0
value = (Random / -6) - 100
kill = 0
absolute = 1

[State 2002, descrip]
type = Explod
trigger1 = Time = 5
anim = 2012
facing = Facing
pos = IfElse(Facing=1, 0, -50), -110
postype = p1
bindtime = -1
sprpriority = 1

[State 2002, PalFXWiz]
type = PalFX
trigger1 = Time = 0
time = 5
add = 0,0,0
mul = 512,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
;ignorehitpause = 0
;persistent = 1

[State 2002, ugh sound]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 2002, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


; rotgut effect #3: power up
[StateDef 2003]
;anim = 2000
;ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 2003, powerup]
type = PowerAdd
trigger1 = Time = 0
value = 1000

[State 2003, descrip]
type = Explod
trigger1 = Time = 5
anim = 2013
facing = Facing
pos = IfElse(Facing=1, 0, -50), -110
postype = p1
bindtime = -1
sprpriority = 1

[State 2003, PalFXWiz]
type = PalFX
trigger1 = Time = 0
time = 5
add = 0,0,0
mul = 256,256,512
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 2003, "yeah" sound]
type = PlaySnd
trigger1 = Time = 0
value = 9,22

[State 2003, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1


; rotgut effect #4: attack powerup
[StateDef 2004]
type = S
movetype = I
physics = S
velset = 0,0

[State 2004, set powerup on]
type = VarSet
trigger1 = Time = 0
v = 20
value = 1

[State 2004, set powerup multipler]
type = VarSet
trigger1 = Time = 0
v = 22
value = 2

[State 2004, set powerup timeout]
type = VarSet
trigger1 = Time = 0
v = 21
value = 300

[State 2004, descrip]
type = Explod
trigger1 = Time = 5
anim = 2014
facing = Facing
pos = IfElse(Facing=1, 0, -50), -110
postype = p1
bindtime = -1
sprpriority = 1

[State 2004, afterimage]
type = AfterImage
trigger1 = Time = 1
time = Var(21)
length = 20
palcolor = 256
palpostbright = 64,64,64
timegap = 1
framegap = 4
trans = Add1

[State 2004, voice]
type = PlaySnd
trigger1 = Time = 0
value = 9,24

[State 2004, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1

; rotgut effect #5: super armor
[StateDef 2005]
type = S
movetype = I
physics = S
velset = 0,0

[State 2005, set powerup on]
type = VarSet
trigger1 = Time = 0
v = 20
value = 2

[State 2005, set powerup timeout]
type = VarSet
trigger1 = Time = 0
v = 21
value = 300

[State 2005, set speed multipler]
type = VarSet
trigger1 = Time = 0
fv = 0
value = 0.65

[State 2005, set jump speed multipler]
type = VarSet
trigger1 = Time = 0
fv = 1
value = 0.8

[State 2005, DefenceMulSet]
type = DefenceMulSet
trigger1 = Time = 0
value = 2

[State 2005, descrip]
type = Explod
trigger1 = Time = 5
anim = 2015
facing = Facing
pos = IfElse(Facing=1, 0, -50), -110
postype = p1
bindtime = -1
sprpriority = 1

[State 2005, afterimage]
type = AfterImage
trigger1 = Time = 1
time = Var(21)
length = 20
palcolor = 0
palpostbright = 64,64,64
timegap = 1
framegap = 4
trans = Add1

[State 2005, voice]
type = PlaySnd
trigger1 = Time = 0
value = 9,24

[State 2005, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1

; rotgut effect #6: super speed
[StateDef 2006]
type = S
movetype = I
physics = S
velset = 0,0

[State 2006, set powerup on]
type = VarSet
trigger1 = Time = 0
v = 20
value = 3

[State 2006, set speed multipler]
type = VarSet
trigger1 = Time = 0
fv = 0
value = 2.5

[State 2006, set jump speed multipler]
type = VarSet
trigger1 = Time = 0
fv = 1
value = 1.2

[State 2006, set powerup timeout]
type = VarSet
trigger1 = Time = 0
v = 21
value = 300

[State 2006, descrip]
type = Explod
trigger1 = Time = 5
anim = 2016
facing = Facing
pos = IfElse(Facing=1, 0, -50), -110
postype = p1
bindtime = -1
sprpriority = 1

[State 2006, afterimage]
type = AfterImage
trigger1 = Time = 1
time = Var(21)
length = 20
palcolor = 0
paladd = 128,128,0
palbright = 64,64,0
timegap = 1
framegap = 4
trans = Add1

[State 2006, voice]
type = PlaySnd
trigger1 = Time = 0
value = 9,25

[State 2006, back to normal]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1



;-----------------------------------------------------------
; Fraggaboom! (grenade special)
;-----------------------------------------------------------
[Statedef 2500]
anim = 2500
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 2500, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 2500, "catch!"]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,30

[State 2500, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal ;player
name = "Frag Grenade"
ID = 25
stateno = 2510
pos = 95,-80
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
size.ground.back = 9
size.ground.front = 11
size.air.back = 9
size.air.front = 11
size.height = 20
size.mid.pos = 9,9

[State 2500, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Grenade: thrown & falling
[StateDef 2510]
type    = S
MoveType= A
physics = N
ctrl = 0
anim = 2510
VelSet = 4,-2
sprpriority = -1

[State 2510, 0]
type = VelAdd
trigger1 = (Time >= 4) && (Pos Y <= 0)
y = .35

[State 2510, 0a]
type = NotHitBy
trigger1 = IsHelper
value = SCA

[State 2510, SprPriority]
type = SprPriority
trigger1 = Time > 5
value = 2

[State 2510, 1]
type = HitDef
trigger1 = time = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
affectteam = E
priority = 2,Hit
sprpriority = 2
p1stateno = 2525

[State 2510, 2]
type = ChangeState
trigger1 = pos y >= 0
value = 2520

[State 2510, Ricochet]
type = PlaySnd
trigger1 = MoveGuarded && Vel X > 0
value = 9,31

[State 2510, VelMul]
type = VelMul
trigger1 = MoveGuarded && Vel X > 0
x = -1


; Grenade: idle state (bouncing on the ground)
[StateDef 2520]
type    = S
MoveType= A
physics = N
ctrl = 0
anim = 2520

[State 2520, VelMul]
type = VelMul
trigger1 = Vel Y > 0 && Pos Y >= -1
x = 0.75
y = -0.4

[State 2520, Ricochet]
type = PlaySnd
trigger1 = (Pos Y >= 0) && (abs(Vel Y) > 0.5)
value = 9,31

[State 2520, 0]
type = VelAdd
trigger1 = (Time >= 4) && (Pos Y < 0)
y = .35

[State 2520, sprpriority]
type = sprpriority
trigger1 = IsHelper
value = -5

[State 2520, 0]
type = AssertSpecial
trigger1 = IsHelper
flag = unguardable
flag2 = noshadow

[State 2520, HitDef]
type = HitDef
trigger1 = IsHelper
attr = S,SP
hitflag = MAFD
guardflag = MA
affectteam = B
priority = 2,Hit
sprpriority = 2
p1stateno = 2525

;Generated by Fighter Factory PalFX Editor
[State 2520, PalFXWiz]
type = PalFX
trigger1 = Time > 50 && (Time % 5 = 0)
time = 3
add = 2*Time,0,0

[State 2520, Ricochet]
type = PlaySnd
trigger1 = MoveGuarded && Vel X > 0
value = 9,31

[State 2520, VelMul]
type = VelMul
trigger1 = MoveGuarded && Vel X > 0
x = -1

[State 2520, 3]
type = ChangeState
trigger1 = movehit
trigger2 = time >= 120
value = 2525


; Grenade: exploding state
[StateDef 2525]
type    = S
MoveType= A
physics = N
ctrl = 0
anim = 2521
VelSet = 0,0
sprpriority = 4

[State 2525, 0]
type = AssertSpecial
trigger1 = IsHelper
flag = noshadow

[State 2525, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,32
volume = 100

[State 2525, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = Up
affectteam = B
priority = 2,Hit
sprpriority = 2
damage = 100,30
pausetime = 1,8
ground.type = Low
ground.slidetime = 2
ground.hittime = 5
ground.velocity = 3, -4
air.velocity = -4, -5
fall = 1
fall.recover = 0
down.bounce = 1
kill = 1
;palfx.time = 20
;palfx.add = 64,32,0
;palfx.mul = 512,384,256
p2stateno = 7697

[State 2525, 1]
type = EnvShake
trigger1 = (!Time)
time = 30
freq = 50
ampl = -5
phase = 90

[State 2525, 0]
type = DestroySelf
trigger1 = AnimTime = 0


; Burned by grenade - custom P2 state
[Statedef 7697]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7696, 5]
type = VelSet
trigger1 = Time = 0
x = -3
y = -4

[State 7697, changeAnim]
type = ChangeAnim
trigger1 = AnimExist(7697) && Anim != 7697
value = 7697

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = Time = 0
time = 25
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0

[State 7696, gravity]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100



;-----------------------------------------------------------
; Fraggaboom! (grenade special) -- air version
;-----------------------------------------------------------
[Statedef 2600]
anim = 2600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 30

[State 2600, "catch!"]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9,30

[State 2600, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
y = -3

[State 2600, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Frag Grenade"
ID = 25
stateno = 2610
pos = 12,-95
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 3
size.ground.back = 9
size.ground.front = 11
size.air.back = 9
size.air.front = 11
size.height = 20
size.mid.pos = 9,9

[State 2600, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 48

; Grenade: thrown & falling (air)
[StateDef 2610]
type    = A
MoveType= A
physics = N
ctrl = 0
anim = 2510
sprpriority = 2

[State 2610, VelSet]
type = VelSet
trigger1 = 1
x = 4

[State 2610, 0]
type = VelAdd
trigger1 = Pos Y <= 0
y = .35

[State 2610, 0a]
type = NotHitBy
trigger1 = IsHelper
value = SCA

[State 2610, 1]
type = HitDef
trigger1 = time = 0
attr = S,SP
hitflag = MAFD
guardflag = MA
affectteam = E
priority = 2,Hit
sprpriority = 2
p1stateno = 2525

[State 2610, 2]
type = ChangeState
trigger1 = pos y >= 0
value = 2520

[State 2610, Ricochet]
type = PlaySnd
trigger1 = MoveGuarded && Vel X > 0
value = 9,31

[State 2610, VelMul]
type = VelMul
trigger1 = MoveGuarded && Vel X > 0
x = -1



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
