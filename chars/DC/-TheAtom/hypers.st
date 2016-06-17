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
;Indigo
; Death      [StateDef 66699]
; WILL       [StateDef 3000]          ;[StateDef 3000] [StateDef 9999999]
; FEAR       [StateDef 3001]
; Greed      [StateDef 3002]
; Love       [StateDef 3010]
; RAGE       [StateDef 3003]
; Compassion [StateDef 3004]
; Hope       [StateDef 3005]
;
;Sub atomic surprise     [StateDef 30077]
;Atomic Punch            [StateDef 33001]
;Sub-atomic Adventure    [StateDef 800]
;adv end                 [StateDef 88819]
;Sub-atomic Adventure AI [StateDef 9999800]
;ATOMIC PINBALL          [Statedef 3020]
;;Atom-spliter           [Statedef 43210]
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Death
[StateDef 66699]
type = A
movetype = A
physics = N
anim = 66699
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0


[State 3000, letemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4


; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 6
time = 40
sound = S10,1
pos = -50,-74
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 10001
ID = 10001
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

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) % 10 = 1
value = 50,0

[State 191, effect]
type = Explod
trigger1 = AnimElem = 3
anim = 66698
ID = 2307
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = -1
ontop = 0
removeongethit = 1

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(6) % 10 = 1
ProjID = 3010
projanim = 6663
projhitanim = 66632
projremanim = 66632
projcancelanim = 1020
velocity = 4, (2 - Random/250)
offset = -15,-100
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 25,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(6) % 10 = 1
ProjID = 3010
projanim = 6663
projhitanim = 66632
projremanim = 66632
projcancelanim = 1020
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = -15,-100
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,3
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(6) % 10 = 1
ProjID = 3010
projanim = 6663
projhitanim = 66632
projremanim = 66632
projcancelanim = 1020
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = -15,-100
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 30,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 3006
ctrl = 1

;--------------------------------------------------------
; WILL
[StateDef 3000]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0


[State 3000, letemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4


; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 40
sound = S10,1
pos = -60,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 10001
ID = 10001
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

[State 100, emotion]
type = PlaySnd
trigger1 = AnimElem = 5
value = 300,6

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) % 10 = 1
value = 50,0


[State 3000, Explod]
type = Explod
trigger1 = AnimElemTime(5) % 10 = 1
anim = 1023
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1


[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 4, (2 - Random/250)
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 21,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 11,1
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 21,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 3009
ctrl = 1

;--------------------------------------------

; FEAR
[StateDef 3001]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 3000, letemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4

; hide lifebars
[State 3001, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3001, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 40
sound = S10,1
pos = -60,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3001, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 10001
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3001, portraitBG]
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

[State 3001, superBG]
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
[State 100, emotion]
type = PlaySnd
trigger1 = AnimElem = 5
value = 300,3

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) % 10 = 1
value = 50,0

[State 3000, Explod]
type = Explod
trigger1 = AnimElemTime(5) % 10 = 1
anim = 1022
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

[State 3001, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3011
projanim = 1011
projhitanim = 1021
projremanim = 1021
projcancelanim = 1020
velocity = 4, (2 - Random/250)
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -9,0
air.velocity = -2,-2
getpower = 0,0

[State 3001, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3011
projanim = 1011
projhitanim = 1021
projremanim = 1021
projcancelanim = 1021
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 10,1
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -9,0
air.velocity = -2,-2
getpower = 0,0

[State 3001, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3011
projanim = 1011
projhitanim = 1021
projremanim = 1021
projcancelanim = 1021
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -9,0
air.velocity = -2,-2
getpower = 0,0

[State 3001, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 3009
ctrl = 1

;-----------------------------------------------------


; Greed
[StateDef 3002]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3002, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 3000, letemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4

; hide lifebars
[State 3002, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3002, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 40
sound = S10,1
pos = -60,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3002, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 10001
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3002, portraitBG]
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

[State 3002, superBG]
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
[State 100, emotion]
type = PlaySnd
trigger1 = AnimElem = 5
value = 300,5

[State 3002, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) % 10 = 1
value = 50,0

[State 3002, Explod]
type = Explod
trigger1 = AnimElemTime(5) % 10 = 1
anim = 1027
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

[State 3002, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3011
projanim = 1012
projhitanim = 10122
projremanim = 1021
projcancelanim = 1020
velocity = 4, (2 - Random/250)
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,8
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 6,0
air.velocity = 2,-2
getpower = 0,0

[State 3002, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3011
projanim = 1012
projhitanim = 10122
projremanim = 1021
projcancelanim = 1021
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 10,1
pausetime = 4,8
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 6,0
air.velocity = 2,-2
getpower = 0,0

[State 3002, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 3011
projanim = 1012
projhitanim = 10122
projremanim = 1021
projcancelanim = 1021
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,8
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = 6,0
air.velocity = 2,-2
getpower = 0,0

[State 3002, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 3009
ctrl = 1

;---------------------------------------------------
; Love
[StateDef 3010]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0


[State 3000, lightemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4


; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 40
sound = S10,1
pos = -60,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 10001
ID = 10001
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
[State 100, emotion]
type = PlaySnd
trigger1 = AnimElem = 5
value = 300,1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) % 10 = 1
value = 50,0

[State 3000, Explod]
type = Explod
trigger1 = AnimElemTime(5) % 10 = 1
anim = 1028
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 6
helpertype = normal
name = "beam"
ID = 1010
pos = 0,0
postype = p1
stateno = 3011
ownpal = 1

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 80
value = 3009
ctrl = 1
;-------------------------------
;Love beam
; Special 1 -- beam helper state
[StateDef 3011]
type = A
movetype = A
physics = C
anim = 10123
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X - (0 * parent, facing)
y = parent, Pos Y - 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 50,1

[State 1010, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 10,5
guardflag = MA
pausetime = 6,12
hitsound = S9,1
guardsound = S3,0
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 64,0,0
getpower = 0,0
priority = 5,Hit

[State 1010, hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 20,5
guardflag = MA
pausetime = 6,12
hitsound = S9,1
guardsound = S3,0
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 64,0,0
getpower = 0,0
priority = 5,Hit

[State 1010, hitdef]
type = HitDef
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 30,5
guardflag = MA
pausetime = 6,12
hitsound = S9,1
guardsound = S3,0
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 64,0,0
getpower = 0,0
priority = 5,Hit

[State 1010, hitdef]
type = HitDef
trigger1 = AnimElem = 8
attr = S,SA
hitflag = MF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 10,5
guardflag = MA
pausetime = 6,12
hitsound = S9,1
guardsound = S3,0
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
getpower = 0,0
palfx.time = 25
palfx.add = 64,0,0
p2stateno = 1122
p1stateno = 30099
priority = 5,Hit

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 3000
;---------------------------------------------
[Statedef 1122]
type    = S
physics = N
anim = 7990

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = -1000
;ignorehitpause =
;persistent =


[State 1012]
type = selfstate
Trigger1 = time = 250
value = 0
ctrl = 1
ignorehitpause = 0
;----------------------------------
;Indigo love end
[StateDef 30099]
type = S
ctrl = 0
velset = 0,0

[State 3000, Explod]
type = Explod
trigger1 = time = 0
anim = 101235
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = -1
ontop = 1
removeongethit = 0

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
;-------------------------------------------

;Indigo end
[StateDef 3009]
type = S
ctrl = 0
anim = 3001
velset = 0,0

[State 3009, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------
;------------------
; RAGE
[StateDef 3003]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0


[State 3000, letemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4


; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 40
sound = S10,1
pos = -60,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 10001
ID = 10001
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
[State 100, emotion]
type = PlaySnd
trigger1 = AnimElem = 5
value = 300,0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) % 10 = 1
value = 50,0

[State 3000, Explod]
type = Explod
trigger1 = AnimElemTime(5) % 10 = 1
anim = 1030
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(6) % 10 = 1
ProjID = 3010
projanim = 1032
projhitanim = 10322
projremanim = 1032
projcancelanim = 1032
velocity = 4, (2 - Random/250)
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(6) % 10 = 1
ProjID = 3010
projanim = 1032
projhitanim = 10322
projremanim = 1032
projcancelanim = 1032
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 10,1
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(6) % 10 = 1
ProjID = 3010
projanim = 1032
projhitanim = 10322
projremanim = 1032
projcancelanim = 1032
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 3009
ctrl = 1

;---------------------------------------------
; Compassion
[StateDef 3004]
type = A
movetype = A
physics = N
anim = 3000
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 3000, letemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 40
sound = S10,1
pos = -60,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 10001
ID = 10001
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
[State 100, emotion]
type = PlaySnd
trigger1 = AnimElem = 5
value = 300,4

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(5) % 10 = 1
value = 50,0

[State 3000, Explod]
type = Explod
trigger1 = AnimElemTime(5) % 10 = 1
anim = 3007
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(5) % 10 = 2 ;1
ProjID = 1040
projanim = 1040
projhitanim = 1041
projremanim = 1041
projcancelanim = 1041
velocity = 4, (1 + Random/260)   ;(2 - Random/250)
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = (Life <= 775)
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 1040
projanim = 1040
projhitanim = 1041
projremanim = 1041
projcancelanim = 1041
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 10,1
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = (Life <= 500)
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 1040
projanim = 1040
projhitanim = 1041
projremanim = 1041
projcancelanim = 1041
velocity = 4, (2 - Random/250)
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = (Life <= 350)
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 1040
projanim = 1040
projhitanim = 1041
projremanim = 1041
projcancelanim = 1041
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,2
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, logoFlurry]
type = Projectile
trigger1 = (Life <= 100)
trigger1 = AnimElemTime(5) % 10 = 1
ProjID = 1040
projanim = 1040
projhitanim = 1041
projremanim = 1041
projcancelanim = 1041
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = -20,-130
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 20,1
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = 50,1
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
getpower = 0,0

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 3009
ctrl = 1

;--------------------------------------------
;--------------------------------------------
; Hope
[StateDef 3005]
type = A
movetype = A
physics = N
anim = 1042
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 3000, letemup]
type = PlaySnd
trigger1 = Time = 0
value = 80,4

[State 3000, hope]
type = PlaySnd
trigger1 = Time = 20
value = 300,2

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = -60,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10001
ID = 10001
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
trigger1 = AnimElem = 1
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
trigger1 = AnimElem = 1
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
[State 3000, hope]
type = Explod
trigger1 = AnimElem = 7
anim = 3008
ID = 3008
pos = -0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
ontop = 1
removeongethit = 1

[State 191, effect]
type = Explod
trigger1 = AnimElem = 3
anim = 1813
ID = 2306
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 1
ontop = 0
removeongethit = 1

[State 191, effect]
type = Explod
trigger1 = AnimElem = 1
anim = 1044
ID = 1044
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 1
ontop = 0
removeongethit = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
id = 1044

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 6
id = 2306

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = time = 149
id = 3008

[State 33002, HitDef]
type = HitDef
trigger1 = AnimElem = 1   ;Activate at time = 0 (start of state)
attr = S, NA           ;Attributes of the HitDef (explained later)
damage = 0,0            ;Damage points to deal
guardflag = MA
pausetime = 0,40
hitsound = S2,2
guardsound = S3,0
sparkno = -1
sparkxy = 60,30
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-8
air.velocity = -17,-8
fall = 1
getpower = 0,0
priority = 5,Hit

[State 0, LifeAdd]
type = LifeAdd
trigger1 = AnimElem = 9
value = 100
absolute = 0
;ignorehitpause =
;persistent =


[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 150
value = 3006
ctrl = 1

;--------------------------------------------


;Indigo hope end
[StateDef 3006]
type = S
ctrl = 0
anim = 1043
velset = 0,0

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 1
id = 2307


[State 3009, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;------------------------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;Sub atomic surprise
[StateDef 30077]
type = A
movetype = A
physics = N
anim = 1009
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 20    ;fv = 10
value = 500
ignorehitpause = 1
;persistent =


; voice
[State 30077, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 30077, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 1,-52
darken = 1
poweradd = -1000

;-------------------------------------

; SubAtomic Surprise start


[State 30077, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 5
length = 7
FrameGap = 1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 30077, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 100, subatomic]
type = PlaySnd
triggerall = time = 0
trigger1 = Random <= 350
value = 100,4

[State 30077]
type = ChangeState
triggerall = animtime = 0
trigger1 = command = "hold"
trigger2 = var(59)
value = 300777

[State 1011]
type = ChangeState
trigger1 = AnimTime = 0 &&  command != "hold"
value = 3007777
ctrl = 1

;----------------------------

; SubAtomic S mid
[Statedef 300777]
type = A
ctrl = 0
anim = 10099
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 0, atomictime]
type = VarAdd
Triggerall =  var(20) > 0
trigger1 = gametime % 20;20
v = 20
value = -4


[State 0, AssertSpecial]
Triggerall = PalNo = 7  ||  PalNo = 8 ||  PalNo = 9 ||  PalNo = 10 ||  PalNo = 11 ||  PalNo = 12
type = AssertSpecial
trigger1 = time > 0
flag = timerfreeze



[State 300777, 3]
type = ChangeState
Triggerall = PalNo = 1  ||  PalNo = 2 ||  PalNo = 3 ||  PalNo = 4 ||  PalNo = 5 ||  PalNo = 6
triggerall = animtime = 0
trigger1 = command != "hold"
trigger2 = time > 50 && var(59)
trigger3 = var (20) < 1
;trigger3 = time > 300
value = 3007777
ctrl = 1


[State 300777, 3]
type = ChangeState
Triggerall = PalNo = 7  ||  PalNo = 8 ||  PalNo = 9 ||  PalNo = 10 ||  PalNo = 11 ||  PalNo = 12
triggerall = animtime = 0
trigger1 = command != "hold"
trigger2 = time > 50 && var(59)
;trigger3 = time > 350
value = 3007777
ctrl = 1

[State 300777, 1]
type = VelSet
trigger1 = command = "holdfwd"
trigger2 = var(59) && p2bodydist x > 0
x = const(velocity.run.fwd.x)

[State 300777, 2]
type = VelSet
trigger1 = command = "holdback"
trigger2 = var(59) && p2bodydist x < 0
x = const(velocity.run.back.x)

;-----------------------

; SubAtomic S end
[Statedef 3007777]
type = A
ctrl = 0
anim = 1006
velset = 0,0
movetype = A
physics = S
sprpriority = 2

[State 0, Turn]
type = Turn
trigger1 = facing = 1
trigger1 = (Time = 0) && (enemy,facing = 1)
;ignorehitpause =
;persistent =

[State 0, Turn]
type = Turn
trigger1 = facing = -1
trigger1 = (Time = 0) && (enemy,facing = -1)

[State 100, subattomic]
type = PlaySnd
trigger1 = Time = 1
value = 100,1 + ((Random * 3) / 1000)

[State 1011, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 10
length = 10
FrameGap = 1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 10011, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

;hitflag = MAFD

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, HA
damage = 7,3
hitflag = MAFD
guardflag = MA
pausetime = 7,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = C, HA
damage = 7,3
hitflag = MAFD
guardflag = MA
pausetime = 7,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = C, HA
damage = 10,5
hitflag = MAFD
guardflag = MA
pausetime = 7,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit

[State 200, Hit 2]
type = HitDef
trigger1 = AnimElem = 6    ;Activate at time = 0 (start of state)
attr = C, HA           ;Attributes of the HitDef (explained later)
damage = 165,20          ;Damage points to deal
hitflag = MAFD
guardflag = MA
pausetime = 35,40
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-15
air.velocity = -12,-15;-17,-8
fall = 1
getpower = 0,0
priority = 5,Hit

[State 33001, Dust]
type = Explod
trigger1 = AnimElem = 4
persistent = 0
ID = 75
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 33001, envshake]
type = EnvShake
trigger1 = MoveHit
time = 20
;freq = 60
;ampl = -4
;phase =

; hide lifebars
[State 30077, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


;-------------------
; DCvM hyper portrait/BG
[State 30077, superportrait]
type = Explod
trigger1 = AnimElem = 1
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

[State 30077, portraitBG]
type = Explod
trigger1 = AnimElem = 1
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

[State 30077, superBG]
type = Helper
trigger1 = AnimElem = 1
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
[State 1008, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;-----------------------

; SubAtomic S cancel
[Statedef 3007779]
type = A
ctrl = 0
anim = 1006
velset = 0,0
movetype = A
physics = S
sprpriority = 2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = -1000
;ignorehitpause =
;persistent =


[State 0, Turn]
type = Turn
trigger1 = facing = 1
trigger1 = (Time = 0) && (enemy,facing = 1)
;ignorehitpause =
;persistent =

[State 0, Turn]
type = Turn
trigger1 = facing = -1
trigger1 = (Time = 0) && (enemy,facing = -1)

[State 100, subattomic]
type = PlaySnd
trigger1 = Time = 1
value = 100,1 + ((Random * 3) / 1000)

[State 1011, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 10
length = 10
FrameGap = 1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 10011, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, HA
damage = 5,3
guardflag = MA
pausetime = 7,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = C, HA
damage = 7,3
guardflag = MA
pausetime = 7,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = C, HA
damage = 10,5
guardflag = MA
pausetime = 7,15
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit

[State 200, Hit 2]
type = HitDef
trigger1 = AnimElem = 6    ;Activate at time = 0 (start of state)
attr = C, HA           ;Attributes of the HitDef (explained later)
damage = 165,20          ;Damage points to deal
guardflag = MA
pausetime = 35,40
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-15
air.velocity = -17,-8
fall = 1
getpower = 0,0
priority = 5,Hit

[State 33001, Dust]
type = Explod
trigger1 = AnimElem = 4
persistent = 0
ID = 75
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 33001, envshake]
type = EnvShake
trigger1 = MoveHit
time = 20
;freq = 60
;ampl = -4
;phase =

; hide lifebars
[State 30077, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


;-------------------
; DCvM hyper portrait/BG
[State 30077, superportrait]
type = Explod
trigger1 = AnimElem = 1
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

[State 30077, portraitBG]
type = Explod
trigger1 = AnimElem = 1
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

[State 30077, superBG]
type = Helper
trigger1 = AnimElem = 1
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
[State 1008, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;Atomic Punch
; subpunch startup
[StateDef 33001]
type = S
movetype = A
physics = S
anim = 33001
ctrl = 0
velset = 0,0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 100, subattomicpunch]
type = PlaySnd
trigger1 = Time = 0
value = 80,0

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = -40,-45
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10001
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
trigger1 = AnimElem = 1
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
trigger1 = AnimElem = 1
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
[State 33001, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 2
length = 10
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 33001, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 33001, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 33002
ctrl = 0
;---------------------------
; subpunch
[StateDef 33002]
type = S
movetype = A
physics = S
anim = 33002
ctrl = 0
velset = 30,0

[State 191, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
pos = -37,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 33
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 110,110,110
removeongethit = 0


[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
damage = 7,3
guardflag = MA
pausetime = 5,4
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-66
animtype = Light
ground.type = Low
ground.slidetime = 3
ground.hittime  = 3
ground.velocity = -5
guard.velocity = -2
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit
p2facing = 1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 7,3
guardflag = MA
pausetime = 5,4
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-66
animtype = Light
ground.type = Low
ground.slidetime = 3
ground.hittime  = 3
ground.velocity = -5
guard.velocity = -2
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit
p2facing = 1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 7,3
guardflag = MA
pausetime = 5,4
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-66
animtype = Light
ground.type = Low
ground.slidetime = 3
ground.hittime  = 3
ground.velocity = -5
guard.velocity = -2
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit
p2facing = 1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 7,3
guardflag = MA
pausetime = 5,4
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-66
animtype = Light
ground.type = Low
ground.slidetime = 3
ground.hittime  = 3
ground.velocity = -5
guard.velocity = -2
air.velocity = -1,-1
getpower = 0,0
priority = 5,Hit
p2facing = 1

[State 33002, HitDef]
type = HitDef
trigger1 = AnimElem = 7   ;Activate at time = 0 (start of state)
attr = S, HA           ;Attributes of the HitDef (explained later)
damage = 185,60            ;Damage points to deal
guardflag = MA
pausetime = 40,40
hitsound = S2,2
guardsound = S3,0
sparkno = S33022
sparkxy = 60,30
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-8
air.velocity = -17,-8
fall = 1
getpower = 0,0
priority = 5,Hit
guard.velocity = -9
p2facing = 1




[State 33001, envshake]
type = EnvShake
trigger1 = MoveHit
time = 20
;freq = 60
;ampl = -4
;phase =

[State 33001, shift]
type = PlaySnd
trigger1 = AnimElem = 5
value = 31,1

[State 33002, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 12
length = 15
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 33002, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;-----------------------------------

;----------------------------------------------------

; Sub-atomic Adventure
[StateDef 800]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 40,-75
darken = 1
poweradd = -1000

[State 100, subattomic]
type = PlaySnd
trigger1 = Time = 1
value = 90,1 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

----------------
[State 800, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 800, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 800, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, HA
hitflag = MA-
damage = 0
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-69
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -3
air.velocity = -3,-6
getpower = 0,0
p2stateno = 820
priority = 5,hit

[State 800, 1]
type = ChangeState
trigger1 = Movehit = 1
value = 801
ctrl = 1

[State 800, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------
;adv mid

[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 182

[State 801, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 35
length = 12
FrameGap = 1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 801, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 801, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 802
ctrl = 1

;----------
;adv mid 2

[Statedef 802]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 183

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
time = -1
id = -1
pos = 45,0
;ignorehitpause =
;persistent =


[State 830, hit]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2,0

[State 802, Pause]
type = Pause
trigger1 = AnimElem = 10
time = 75
movetime = 1
;ignorehitpause =
;persistent =


; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 10
anim = 10002
ID = 10001
pos = 0,0
postype = back
bindtime = 999
removetime = 55
supermovetime = 55
pausemovetime = 55
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
triggerall = AnimElem = 10
trigger1 = enemy,name = "Metallo" || enemy,name = "ultron" || enemy,name = "brainiac" || enemy,name = "Cyborg Superman" || enemy,name = "cyborg" || enemy,name = "Red Tornado" || enemy,name = "Sentinel" || enemy,name = "vision"
trigger2 = enemy,name= "Megaman" || enemy,name= "Rockman" || enemy,name= "Megaman PLUS" || enemy,name = "Bastion"
anim = 10007
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 55
supermove = 55
pausemovetime = 55
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
triggerall = AnimElem = 10
trigger1 = enemy,name!= "Metallo" || enemy,name!= "ultron" || enemy,name!= "brainiac" || enemy,name!= "Cyborg Superman" || enemy,name!= "cyborg" || enemy,name!= "Red Tornado" || enemy,name!= "Sentinel" || enemy,name!= "vision"
trigger2 = enemy,name!= "Megaman" || enemy,name!= "Rockman" || enemy,name!= "Megaman PLUS" || enemy,name != "Bastion"
anim = 10006
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 55
supermove = 55
pausemovetime = 55
sprpriority = -1
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 10
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 11
value =  830
ID = -1
;ignorehitpause =
;persistent =


; end DCvM stuff
;-------------------

[State 192, Robo Body]
type = Explod
triggerall = Time = 35
trigger1 = enemy,name = "Metallo" || enemy,name = "ultron" || enemy,name = "brainiac" || enemy,name = "Cyborg Superman" || enemy,name = "cyborg" || enemy,name = "Red Tornado" || enemy,name = "Sentinel" || enemy,name = "vision"
trigger2 = enemy,name= "Megaman" || enemy,name= "Rockman" || enemy,name= "Megaman PLUS" || enemy,name = "Bastion"
anim = 777
ID = 666
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = -1
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1


[State 192, Body]
type = Explod
triggerall= Time= 35
trigger1 = enemy,name!= "Metallo" || enemy,name!= "ultron" || enemy,name!= "brainiac" || enemy,name!= "Cyborg Superman" || enemy,name!= "cyborg" || enemy,name!= "Red Tornado" || enemy,name!= "Sentinel" || enemy,name!= "vision"
trigger2 = enemy,name!= "Megaman" || enemy,name!= "Rockman" || enemy,name!= "Megaman PLUS" || enemy,name != "Bastion"
anim = 666
ID = 666
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = -1
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 192, command mp]
type = Explod
trigger1 = Time = 35
anim = ifelse(facing=1,677,9677)
ID = 677
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 830, hit]
type = PlaySnd
trigger1 = Time = 45
trigger2 = Time = 40
trigger3 = Time = 50
value = 2,0

[State 830, hit2]
type = PlaySnd
trigger1 = Time = 35
trigger2 = Time = 55
trigger3 = Time = 65
trigger4 = Time = 70
value = 2,2

-----------------------------------
[State 802]
type = Changestate
triggerall = time > 34
trigger1 = command = "y"
ctrl = 1
value = 803

[State 0, TargetBind]
type = TargetBind
trigger1 = time > 0
time = -1
id = -1
pos = 45,0

[State 802]
triggerall = time > 34
type = Changestate
trigger1 = command = "z"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "a"
trigger5 = command = "x"
ctrl = 0
value = 804

[State 801, 2]
type = ChangeState
Trigger1 = Time = 75
value = 804
ctrl = 1
;------------------------------------------------
;------------------------------------------------------

;adv mid 3 yes
[Statedef 803]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time > 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678


[State 803, b ul]
type = Explod
trigger1 = Time = 0
anim = 667
ID = 667
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 803, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 803, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 677

[State 803, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 803, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 20
value = 2,0

[State 803, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 30
value = 2,2

[State 803, command lp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,675,9675)
ID = 675
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1


[State 803]
triggerall = time > 10
type = Changestate
trigger1 = command = "x"
ctrl = 1
value = 805

[State 803]
triggerall = time > 10
type = Changestate
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 806

[State 803]
type = ChangeState
Trigger1 = Time = 50
value = 806
ctrl = 1
;----------------------------------------------
;adv mid 3  no
[Statedef 804]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time > 0
time = -1
id = -1
pos = 45,0


[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no mp]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,678,9678)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod no]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 803, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 677

[State 803, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 803, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 20
value = 2,0

[State 803, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 30
value = 2,2

[State 803, command lp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,675,9675)
ID = 675
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1


[State 803]
triggerall = time > 10
type = Changestate
trigger1 = command = "x"
ctrl = 1
value = 805

[State 803]
triggerall = time > 10
type = Changestate
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 806

[State 803]
type = ChangeState
Trigger1 = Time = 50
value = 806
ctrl = 1


;-----------------------------------
;-----------------------------------
;adv mid 4 yes
[Statedef 805]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 805, b ml]
type = Explod
trigger1 = Time = 0
anim = 668
ID = 668
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 192, command lk]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,681,9681)
ID = 681
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 805, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 805, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id =675

[State 805, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 805, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 805, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 805]
triggerall = time > 10
type = Changestate
trigger1 = command = "a"
ctrl = 1
value = 807

[State 805]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "c"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 808

[State 805]
type = ChangeState
Trigger1 = Time = 50
value = 808
ctrl = 1
;-------------------------------
;adv mid 4  no
[Statedef 806]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no lp]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,676,9676)
ID = 676
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 3
id = 676

[State 192, command lk]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,681,9681)
ID = 681
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 805, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id =675

[State 805, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 805, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 805, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 805]
triggerall = time > 10
type = Changestate
trigger1 = command = "a"
ctrl = 1
value = 807

[State 805]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "c"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 808

[State 805]
type = ChangeState
Trigger1 = Time = 50
value = 808
ctrl = 1

;-------------------------------

;------------------
;adv mid 5 yes
[Statedef 807]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 807, b Ll]
type = Explod
trigger1 = Time = 0
anim = 669
ID = 669
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 807, command Hk]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,685,9685)
ID = 685
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 807, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 807, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 681

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "c"
ctrl = 1
value = 809

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 810

[State 807]
type = ChangeState
Trigger1 = Time = 50
value = 810
ctrl = 1

;-----------------
;adv mid 5  no
[Statedef 808]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no lk]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,682,9682)
ID = 682
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 3
id = 682

[State 807, command Hk]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,685,9685)
ID = 685
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 807, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 681

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "c"
ctrl = 1
value = 809

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 810

[State 807]
type = ChangeState
Trigger1 = Time = 50
value = 810
ctrl = 1
;-------------------------------
;-------------------------------
;adv mid 6 yes
[Statedef 809]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 809, b Rl]
type = Explod
trigger1 = Time = 0
anim = 670
ID = 670
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 809, command Mk]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,683,9683)
ID = 683
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 809, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 809, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 685

[State 809, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 809, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 809, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 809]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
ctrl = 1
value = 811

[State 809]
triggerall = time > 10
type = Changestate
trigger1 = command = "c"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 812

[State 809]
type = ChangeState
Trigger1 = Time = 50
value = 812
ctrl = 1

;-------------------------------------
;adv mid 6 no
[Statedef 810]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no hk]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,686,9686)
ID = 686
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod no]
type = RemoveExplod
trigger1 = Time= 3
id = 686

[State 809, command Mk]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,683,9683)
ID = 683
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 809, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 685

[State 809, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 809, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 809, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 809]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
ctrl = 1
value = 811

[State 809]
triggerall = time > 10
type = Changestate
trigger1 = command = "c"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 812

[State 809]
type = ChangeState
Trigger1 = Time = 50
value = 812
ctrl = 1

;-----------------------------------
;------------------------------------
;adv mid 7 yes
[Statedef 811]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 811, b MM]
type = Explod
trigger1 = Time = 0
anim = 671
ID = 671
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 811, command Hp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,679,9679)
ID = 679
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 811, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 811, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 683

[State 811, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 811, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 811, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 811]
triggerall = time > 10
type = Changestate
trigger1 = command = "z"
ctrl = 1
value = 813

[State 811]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "c"
ctrl = 0
value = 814

[State 811]
type = ChangeState
Trigger1 = Time = 50
value = 814
ctrl = 1

;--------------------------------------------
;adv mid 7 no
[Statedef 812]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no mk]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,684,9684)
ID = 684
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod no]
type = RemoveExplod
trigger1 = Time= 3
id = 684

[State 811, command Hp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,679,9679)
ID = 679
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 811, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 683

[State 811, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 811, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 811, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 811]
triggerall = time > 10
type = Changestate
trigger1 = command = "z"
ctrl = 1
value = 813

[State 811]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "y"
trigger5 = command = "c"
ctrl = 0
value = 814

[State 811]
type = ChangeState
Trigger1 = Time = 50
value = 814
ctrl = 1

;-----------------------------------------------
;-------------------------------------------------
;adv mid 8 yes
[Statedef 813]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 813, b Mr]
type = Explod
trigger1 = Time = 0
anim = 672
ID = 672
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 813, command Mp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,677,9677)
ID = 677
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 813, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 813, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 679

[State 813, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 813, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 813, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 813]
triggerall = time > 10
type = Changestate
trigger1 = command = "y"
ctrl = 1
value = 815

[State 813]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "c"
trigger5 = command = "z"
ctrl = 0
value = 816

[State 813]
type = ChangeState
Trigger1 = Time = 50
value = 816
ctrl = 1

;--------------------------------------------
;adv mid 8 no
[Statedef 814]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no HP]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,680,9680)
ID = 680
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod no]
type = RemoveExplod
trigger1 = Time= 3
id = 680

[State 813, command Mp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,677,9677)
ID = 677
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 813, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 679

[State 813, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 813, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 813, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 813]
triggerall = time > 10
type = Changestate
trigger1 = command = "y"
ctrl = 1
value = 815

[State 813]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "x"
trigger4 = command = "c"
trigger5 = command = "z"
ctrl = 0
value = 816

[State 813]
type = ChangeState
Trigger1 = Time = 50
value = 816
ctrl = 1

;----------------------------------------
;-------------------------------------------
;adv mid 9 yes
[Statedef 815]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 807, b UR]
type = Explod
trigger1 = Time = 0
anim = 673
ID = 673
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 807, command Lp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,675,9675)
ID = 675
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 807, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 807, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 677

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "x"
ctrl = 1
value = 817

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "c"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 818

[State 807]
type = ChangeState
Trigger1 = Time = 50
value = 818
ctrl = 1
;------------------------------------
;adv mid 9 no
[Statedef 816]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185


[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0


[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no mp]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,678,9678)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod no]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 807, command Lp]
type = Explod
trigger1 = Time = 11
anim = ifelse(facing=1,675,9675)
ID = 675
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 807, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 677

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "x"
ctrl = 1
value = 817

[State 807]
triggerall = time > 10
type = Changestate
trigger1 = command = "b"
trigger2 = command = "a"
trigger3 = command = "c"
trigger4 = command = "y"
trigger5 = command = "z"
ctrl = 0
value = 818

[State 807]
type = ChangeState
Trigger1 = Time = 50
value = 818
ctrl = 1

;--------------------------------------
;------------------------------------------
;adv mid 10 yes last
[Statedef 817]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 192, command Okay]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,687,9687)
ID = 678
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod okay]
type = RemoveExplod
trigger1 = Time= 3
id = 678

[State 807, b head]
type = Explod
trigger1 = Time = 0
anim = 674
ID = 674
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 807, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 807, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 675

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 802, Pause]
type = Pause
Trigger1 = Time = 33
time = 75
movetime = 1
;ignorehitpause =
;persistent =

[State 819, TargetState]
type = TargetState
trigger1 = time = 34
value = 841
ignorehitpause = 0
;persistent =

[State 807]
type = ChangeState
Trigger1 = Time = 35
value = 88819
ctrl = 1

;-----------------------------------
;adv mid 10 No last
[Statedef 818]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0


[State 830, no]
type = PlaySnd
trigger1 = time = 0
value = 200,11

[State 192, command no]
type = Explod
trigger1 = Time = 0
anim = ifelse(facing=1,676,9676)
ID = 676
pos = 50,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
removeongethit = 1

[State 819, RemoveExplod no]
type = RemoveExplod
trigger1 = Time= 3
id = 676

[State 807, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 675

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -3
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 802, Pause]
type = Pause
Trigger1 = Time = 33
time = 75
movetime = 1
;ignorehitpause =
;persistent =

[State 819, TargetState]
type = TargetState
trigger1 = time = 34
value = 841
ignorehitpause = 0
;persistent =

[State 807]
type = ChangeState
Trigger1 = Time = 35
value = 88819
ctrl = 1

;---------------------------------
;---------------------------------------
;-------------------------------
;adv end

[StateDef 88819]
anim = 184
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 819, TargetState]
type = TargetState
trigger1 = time = 0
value = 841
ignorehitpause = 0
;persistent =

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 666

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 667

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 668

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 669

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 670

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 671

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 672

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 673

[State 819, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 0
id = 674

[State 819, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, HA
hitflag = M
damage = 90            ;Damage points to deal
guardflag = MA
pausetime = 10,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
getpower = 0,0
priority = 5,hit

[State 819, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 19
length = 12
FrameGap = 1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 819, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 819, headache]
type = PlaySnd
trigger1 = Time = 0
value = 90,4

[State 819, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;--------------------------
;p2 state

[Statedef 820]
type    = S
physics = N
anim = 5300
movetype= H

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
ignorehitpause = 0
;persistent =


[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  999

[State 820, 2]
type = selfstate
Trigger1 = Time = 80
value = 0
ctrl = 1
;------------------

[Statedef 830]
type    = S
physics = S
movetype= H
juggle  = 0
velset = 0,0
ctrl = 0
anim = 5300

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  6800

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 1
trigger2 = Time = 11
trigger3 = Time = 21
trigger4 = Time = 31
trigger5 = Time = 41
trigger6 = Time = 51
trigger7 = Time = 61
trigger8 = Time = 71
trigger9 = Time = 81
trigger10 = Time = 91
trigger11 = Time = 101
trigger12 = Time = 111
trigger13 = Time = 121
trigger14 = Time = 131
value = 5000
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 35
trigger5 = Time = 45
trigger6 = Time = 55
trigger7 = Time = 65
trigger8 = Time = 75
trigger9 = Time = 85
trigger10 = Time = 95
trigger11 = Time = 105
trigger12 = Time = 115
trigger13 = Time = 125
trigger14 = Time = 135
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 30
trigger4 = Time = 40
trigger5 = Time = 50
trigger6 = Time = 60
trigger7 = Time = 70
trigger8 = Time = 80
trigger9 = Time = 90
trigger10 = Time = 100
trigger11 = Time = 110
trigger12 = Time = 120
trigger13 = Time = 130
trigger14 = Time = 140
trigger15 = Time = 150
trigger16 = Time = 160
trigger17 = Time = 170
trigger18 = Time = 180
trigger19 = Time = 190
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 131
trigger2 = Time = 141
trigger3 = Time = 151
trigger4 = Time = 161
trigger5 = Time = 171
trigger6 = Time = 181
trigger7 = Time = 191
trigger8 = Time = 201
trigger9 = Time = 211
trigger10 = Time = 221
trigger11 = Time = 231
trigger12 = Time = 241
trigger13 = Time = 251
trigger14 = Time = 261
trigger15 = Time = 271
trigger16 = Time = 281
trigger17 = Time = 291
value = 5000
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 135
trigger2 = Time = 145
trigger3 = Time = 155
trigger4 = Time = 165
trigger5 = Time = 175
trigger6 = Time = 185
trigger7 = Time = 195
trigger8 = Time = 205
trigger9 = Time = 215
trigger10 = Time = 225
trigger11 = Time = 235
trigger12 = Time = 245
trigger13 = Time = 255
trigger14 = Time = 265
trigger15 = Time = 275
trigger16 = Time = 285
trigger17 = Time = 295
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 140
trigger2 = Time = 150
trigger3 = Time = 160
trigger4 = Time = 170
trigger5 = Time = 180
trigger6 = Time = 190
trigger7 = Time = 200
trigger8 = Time = 210
trigger9 = Time = 220
trigger10 = Time = 230
trigger11 = Time = 240
trigger12 = Time = 250
trigger13 = Time = 260
trigger14 = Time = 270
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 301
trigger2 = Time = 311
trigger3 = Time = 321
trigger4 = Time = 331
trigger5 = Time = 341
trigger6 = Time = 351
trigger7 = Time = 361
trigger8 = Time = 371
trigger9 = Time = 381
trigger10 = Time = 391
value = 5000
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 401
trigger2 = Time = 411
trigger3 = Time = 421
trigger4 = Time = 431
trigger5 = Time = 441
trigger6 = Time = 451
trigger7 = Time = 461
trigger8 = Time = 471
trigger9 = Time = 481
trigger10 = Time = 491
value = 5000
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 501
trigger2 = Time = 511
trigger3 = Time = 521
trigger4 = Time = 531
trigger5 = Time = 541
trigger6 = Time = 551
trigger7 = Time = 561
trigger8 = Time = 571
trigger9 = Time = 581
trigger10 = Time = 591
value = 5000
;elem = 1
;ignorehitpause =
;persistent =


[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 601
trigger2 = Time = 61
trigger3 = Time = 621
trigger4 = Time = 631
trigger5 = Time = 641
trigger6 = Time = 651
trigger7 = Time = 661
trigger8 = Time = 671
trigger9 = Time = 681
trigger10 = Time = 691
value = 5000
;elem = 1
;ignorehitpause =
;persistent =


[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 701
trigger2 = Time = 711
trigger3 = Time = 721
trigger4 = Time = 731
trigger5 = Time = 741
trigger6 = Time = 751
trigger7 = Time = 761
trigger8 = Time = 771
trigger9 = Time = 781
trigger10 = Time = 791
value = 5000
;elem = 1
;ignorehitpause =
;persistent =


[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 801
trigger2 = Time = 811
trigger3 = Time = 821
trigger4 = Time = 831
trigger5 = Time = 841
trigger6 = Time = 851
trigger7 = Time = 861
trigger8 = Time = 871
trigger9 = Time = 881
trigger10 = Time = 891
value = 5000
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = Time = 901
trigger2 = Time = 911
trigger3 = Time = 921
trigger4 = Time = 931
trigger5 = Time = 941
trigger6 = Time = 951
trigger7 = Time = 961
trigger8 = Time = 971
trigger9 = Time = 981
trigger10 = Time = 991
value = 5000
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 305
trigger2 = Time = 315
trigger3 = Time = 325
trigger4 = Time = 335
trigger5 = Time = 345
trigger6 = Time = 355
trigger7 = Time = 365
trigger8 = Time = 375
trigger9 = Time = 385
trigger10 = Time = 395
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 405
trigger2 = Time = 415
trigger3 = Time = 425
trigger4 = Time = 435
trigger5 = Time = 445
trigger6 = Time = 455
trigger7 = Time = 465
trigger8 = Time = 475
trigger9 = Time = 485
trigger10 = Time = 495
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 505
trigger2 = Time = 515
trigger3 = Time = 525
trigger4 = Time = 535
trigger5 = Time = 545
trigger6 = Time = 555
trigger7 = Time = 565
trigger8 = Time = 575
trigger9 = Time = 585
trigger10 = Time = 595
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 605
trigger2 = Time = 615
trigger3 = Time = 625
trigger4 = Time = 635
trigger5 = Time = 645
trigger6 = Time = 655
trigger7 = Time = 665
trigger8 = Time = 675
trigger9 = Time = 685
trigger10 = Time = 695
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 705
trigger2 = Time = 715
trigger3 = Time = 725
trigger4 = Time = 735
trigger5 = Time = 745
trigger6 = Time = 755
trigger7 = Time = 765
trigger8 = Time = 775
trigger9 = Time = 785
trigger10 = Time = 795
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 805
trigger2 = Time = 815
trigger3 = Time = 825
trigger4 = Time = 835
trigger5 = Time = 845
trigger6 = Time = 855
trigger7 = Time = 865
trigger8 = Time = 875
trigger9 = Time = 885
trigger10 = Time = 895
value = 5010
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 905
trigger2 = Time = 915
trigger3 = Time = 925
trigger4 = Time = 935
trigger5 = Time = 945
trigger6 = Time = 955
trigger7 = Time = 965
trigger8 = Time = 975
trigger9 = Time = 985
trigger10 = Time = 995
value = 5010
;elem = 1
;ignorehitpause =
;persistent =


[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 300
trigger2 = Time = 310
trigger3 = Time = 320
trigger4 = Time = 330
trigger5 = Time = 340
trigger6 = Time = 350
trigger7 = Time = 360
trigger8 = Time = 370
trigger9 = Time = 380
trigger10 = Time = 390
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 400
trigger2 = Time = 410
trigger3 = Time = 420
trigger4 = Time = 430
trigger5 = Time = 440
trigger6 = Time = 450
trigger7 = Time = 460
trigger8 = Time = 470
trigger9 = Time = 480
trigger10 = Time = 490
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 500
trigger2 = Time = 510
trigger3 = Time = 520
trigger4 = Time = 530
trigger5 = Time = 540
trigger6 = Time = 550
trigger7 = Time = 560
trigger8 = Time = 570
trigger9 = Time = 580
trigger10 = Time = 590
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 600
trigger2 = Time = 610
trigger3 = Time = 620
trigger4 = Time = 630
trigger5 = Time = 640
trigger6 = Time = 650
trigger7 = Time = 660
trigger8 = Time = 670
trigger9 = Time = 680
trigger10 = Time = 690
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 700
trigger2 = Time = 710
trigger3 = Time = 720
trigger4 = Time = 730
trigger5 = Time = 740
trigger6 = Time = 750
trigger7 = Time = 760
trigger8 = Time = 770
trigger9 = Time = 780
trigger10 = Time = 790
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 800
trigger2 = Time = 810
trigger3 = Time = 820
trigger4 = Time = 830
trigger5 = Time = 840
trigger6 = Time = 850
trigger7 = Time = 860
trigger8 = Time = 870
trigger9 = Time = 880
trigger10 = Time = 890
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 830, ChangeAnim3]
type = ChangeAnim
trigger1 = Time = 900
trigger2 = Time = 910
trigger3 = Time = 920
trigger4 = Time = 930
trigger5 = Time = 940
trigger6 = Time = 950
trigger7 = Time = 960
trigger8 = Time = 970
trigger9 = Time = 980
trigger10 = Time = 990
value = 5002
;elem = 1
;ignorehitpause =
;persistent =

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause =
;persistent =


[State 830, 2]
type = changestate
Trigger1 = P2StateNo = 88819
value = 841
ctrl = 1

[State 830, 2]
type = changestate
Trigger1 = enemy, stateNo = 88819
value = 841
ctrl = 1

;-------------------------

;-------------------------
[Statedef 841]
type    = S
physics = S
movetype= H
juggle  = 0
velset = 0,0
ctrl = 0
anim = 5300

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = -1
time =  0

[State 830, 2]
type = selfstate
Trigger1 = Time = 400
value = 0
ctrl = 1
;--------------------------------------------------------------------
;----------------------------------------------------

; Sub-atomic Adventure AI
[StateDef 9999800]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0


[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 40,-75
darken = 1
poweradd = -1000

[State 100, subattomic]
type = PlaySnd
trigger1 = Time = 1
value = 90,1 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

----------------
[State 800, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 800, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 800, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, HA
hitflag = M-
damage = 0
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-69
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -3
air.velocity = -3,-6
getpower = 0,0
p2stateno = 820
priority = 5,hit


[State 800, 1]
type = ChangeState
trigger1 = Movehit = 1
value = 9999801
ctrl = 1

[State 800, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------
;adv mid

[Statedef 9999801]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 182

[State 801, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 35
length = 12
FrameGap = 1
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 801, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 801, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 9999802
ctrl = 1

;----------
;adv mid 2

[Statedef 9999802]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 183

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
time = -1
id = -1
pos = 45,0
;ignorehitpause =
;persistent =


[State 830, hit]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2,0

[State 802, Pause]
type = Pause
trigger1 = AnimElem = 10
time = 75
movetime = 1
;ignorehitpause =
;persistent =


; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 10
anim = 10002
ID = 10001
pos = 0,0
postype = back
bindtime = 999
removetime = 55
supermovetime = 55
pausemovetime = 55
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
triggerall = AnimElem = 10
trigger1 = enemy,name = "Metallo" || enemy,name = "ultron" || enemy,name = "brainiac" || enemy,name = "Cyborg Superman" || enemy,name = "cyborg" || enemy,name = "Red Tornado" || enemy,name = "Sentinel" || enemy,name = "vision"
trigger2 = enemy,name= "Megaman" || enemy,name= "Rockman" || enemy,name= "Megaman PLUS" || enemy,name = "Bastion"
anim = 10007
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 55
supermove = 55
pausemovetime = 55
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
triggerall = AnimElem = 10
trigger1 = enemy,name!= "Metallo" || enemy,name!= "ultron" || enemy,name!= "brainiac" || enemy,name!= "Cyborg Superman" || enemy,name!= "cyborg" || enemy,name!= "Red Tornado" || enemy,name!= "Sentinel" || enemy,name!= "vision"
trigger2 = enemy,name!= "Megaman" || enemy,name!= "Rockman" || enemy,name!= "Megaman PLUS" || enemy,name != "Bastion"
anim = 10006
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 55
supermove = 55
pausemovetime = 55
sprpriority = -1
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 10
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 11
value =  830
ID = -1
;ignorehitpause =
;persistent =


; end DCvM stuff
;-------------------

[State 192, Robo Body]
type = Explod
triggerall = Time = 35
trigger1 = enemy,name = "Metallo" || enemy,name = "ultron" || enemy,name = "brainiac" || enemy,name = "Cyborg Superman" || enemy,name = "cyborg" || enemy,name = "Red Tornado" || enemy,name = "Sentinel" || enemy,name = "vision"
trigger2 = enemy,name= "Megaman" || enemy,name= "Rockman" || enemy,name= "Megaman PLUS" || enemy,name = "Bastion"
anim = 777
ID = 666
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = -1
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1


[State 192, Body]
type = Explod
triggerall= Time= 35
trigger1 = enemy,name!= "Metallo" || enemy,name!= "ultron" || enemy,name!= "brainiac" || enemy,name!= "Cyborg Superman" || enemy,name!= "cyborg" || enemy,name!= "Red Tornado" || enemy,name!= "Sentinel" || enemy,name!= "vision"
trigger2 = enemy,name!= "Megaman" || enemy,name!= "Rockman" || enemy,name!= "Megaman PLUS" || enemy,name != "Bastion"
anim = 666
ID = 666
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = -1
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1


[State 830, hit]
type = PlaySnd
trigger1 = Time = 45
trigger2 = Time = 40
trigger3 = Time = 50
value = 2,0

[State 830, hit2]
type = PlaySnd
trigger1 = Time = 35
trigger2 = Time = 55
trigger3 = Time = 65
trigger4 = Time = 70
value = 2,2

-----------------------------------
[State 802]
type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999803


[State 0, TargetBind]
type = TargetBind
trigger1 = time > 0
time = -1
id = -1
pos = 45,0

;------------------------------------------------
;------------------------------------------------------

;adv mid 3 yes
[Statedef 9999803]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time > 0
time = -1
id = -1
pos = 45,0

[State 803, b ul]
type = Explod
trigger1 = Time = 0
anim = 667
ID = 667
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 803, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 803, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -10
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 803, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 20
value = 2,0

[State 803, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 30
value = 2,2

[State 803]
type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999805
;----------------------------------------------
;-----------------------------------
;-----------------------------------
;adv mid 4 yes
[Statedef 9999805]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 805, b ml]
type = Explod
trigger1 = Time = 0
anim = 668
ID = 668
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 805, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 805, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -10
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 805, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 805, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 805]
type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999807
;-------------------------------

;-------------------------------

;------------------
;adv mid 5 yes
[Statedef 9999807]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 807, b Ll]
type = Explod
trigger1 = Time = 0
anim = 669
ID = 669
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 807, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -10
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 807]
type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999809
;-----------------
;-------------------------------
;-------------------------------
;adv mid 6 yes
[Statedef 9999809]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 809, b Rl]
type = Explod
trigger1 = Time = 0
anim = 670
ID = 670
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 809, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 809, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 809, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 809, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 809]

type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999811

;-------------------------------------
;-----------------------------------
;------------------------------------
;adv mid 7 yes
[Statedef 9999811]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 811, b MM]
type = Explod
trigger1 = Time = 0
anim = 671
ID = 671
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 811, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 811, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 811, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 811, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 811]
type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999813

;--------------------------------------------
;-----------------------------------------------
;-------------------------------------------------
;adv mid 8 yes
[Statedef 9999813]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0


[State 813, b Mr]
type = Explod
trigger1 = Time = 0
anim = 672
ID = 672
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 813, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 813, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 813, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 813, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 813]
type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999815

;--------------------------------------------
;----------------------------------------
;-------------------------------------------
;adv mid 9 yes
[Statedef 9999815]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 807, b UR]
type = Explod
trigger1 = Time = 0
anim = 673
ID = 673
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 807, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10


[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 807]
type = Changestate
trigger1 = time > 34
ctrl = 1
value = 9999817

;------------------------------------
;--------------------------------------
;------------------------------------------
;adv mid 10 yes last
[Statedef 9999817]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
id = -1
pos = 45,0

[State 807, b head]
type = Explod
trigger1 = Time = 0
anim = 674
ID = 674
pos = 10,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 0
removeongethit = 1
ignorehitpause = 1
pausemovetime = -1

[State 807, yes]
type = PlaySnd
trigger1 = time = 0
value = 200,10

[State 807, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 1
value = -20
kill = 0
absolute = 1
;ignorehitpause =
;persistent =

[State 807, hit]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 10
trigger3 = Time = 20
value = 2,0

[State 807, hit2]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 30
value = 2,2

[State 802, Pause]
type = Pause
Trigger1 = Time = 33
time = 75
movetime = 1
;ignorehitpause =
;persistent =

[State 819, TargetState]
type = TargetState
trigger1 = time = 34
value = 841
ignorehitpause = 0
;persistent =

[State 807]
type = ChangeState
Trigger1 = Time = 35
value = 88819
ctrl = 1

;-----------------------------------
;---------------------------------
;---------------------------------------
;-------------------------------
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;ATOMIC PINBALL
[Statedef 3020]
type = A
movetype = A
ctrl = 0
anim = 712
velset = 0,0
movetype = I
physics = S

[State 33001, shift]
type = PlaySnd
trigger1 = AnimElem = 6
value = 32,1

[State 33002, AfterImage]
type = AfterImage
trigger1 = AnimElem = 6
time = 20
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 33002, AfterImage]
type = AfterImage
trigger1 = AnimElem = 22
time = 20
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 33001, shift]
type = PlaySnd
trigger1 = AnimElem = 22
value = 32,1

; voice
[State 3020, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 3020, here we go placeholder]
type = PlaySnd
trigger1 = Time = 0
trigger1 = Time = 0
value = 400,1 + ((Random * 3) / 1000)

; hide lifebars
[State 3020, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3020, superpause]
type = SuperPause
trigger1 = AnimElem = 5
time = 55
sound = S10,1
pos = 2,-60
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3020, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10001
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3020, portraitBG]
type = Explod
trigger1 = AnimElem = 1
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

[State 3020, superBG]
type = Helper
trigger1 = AnimElem = 1
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

[State 3020, Helper]
type = Helper
trigger1 = AnimElem = 10
helpertype = normal ;player
name = "ryan"
ID = 3021
stateno = 3021
pos = -20,-50
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 0
;persistent =

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
;------------------
;Ryan helper
[StateDef 3021]
type = A
movetype = A
physics = C
anim = 700
ctrl = 0
sprpriority = 2

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 5
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 3021, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
x = 4
y = 0


[State 181, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 33
length = 20
FrameGap = 5
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 10,5
guardflag = MA
pausetime = 7,7
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
getpower = 0,0
priority = 5,hit

[State 3021, ChangeState]
type = ChangeState
trigger1 = frontedgebodydist <= 35 && time > 5
value = 3022
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

;---------------
;Ryan helper 2
[StateDef 3022]
type = A
movetype = A
physics = C
anim = 706
ctrl = 0
sprpriority = 2

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 3021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3023
ctrl = 0
;---------------

;Ryan helper 3
[StateDef 3023]
type = A
movetype = A
physics = C
anim = 707
ctrl = 0
sprpriority = 2

[State 181, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 33
length = 20
FrameGap = 5
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 10,5
guardflag = MA
pausetime = 7,7
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
getpower = 0,0
priority = 5,hit

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
x = -6
y = -3

[State 3021, ChangeState]
type = ChangeState
trigger1 = Pos Y <= -185
value = 3024
ctrl = 0

;--------------------------
;Ryan helper 4
[StateDef 3024]
type = A
movetype = A
physics = C
anim = 708
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 3021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3025
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 90
;ignorehitpause =
;persistent =
;--------------------------
;Ryan helper 5
[StateDef 3025]
type = A
movetype = A
physics = C
anim = 709
ctrl = 0
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
x = -6
y = 3

[State 181, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 33
length = 20
FrameGap = 5
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 10,5
guardflag = MA
pausetime = 7,7
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
getpower = 0,0
priority = 5,hit

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 3021, ChangeState]
type = ChangeState
trigger1 = frontedgebodydist <= 35
trigger2 = Pos Y >= -50
value = 3026
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 90
;ignorehitpause =
;persistent =

;--------------------------
;Ryan helper 6
[StateDef 3026]
type = A
movetype = A
physics = C
anim = 703
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =


[State 3021, ChangeState]
type = ChangeState
trigger1 = Time = 1
value = 3027
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 90
;ignorehitpause =
;persistent =

;--------------------------
;Ryan helper 7
[StateDef 3027]
type = A
movetype = A
physics = C
anim = 704
ctrl = 0
sprpriority = 2

[State 181, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 33
length = 20
FrameGap = 5
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 10,5
guardflag = MA
pausetime = 7,7
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
getpower = 0,0
priority = 5,hit

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
x = 6
y = 2

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 3021, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -2
value = 3028
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 90
;ignorehitpause =
;persistent =

;-----------------------
;Ryan helper 8
[StateDef 3028]
type = A
movetype = A
physics = C
anim = 701
ctrl = 0
sprpriority = 2


[State 3021, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3029
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 90
;ignorehitpause =
;persistent =

;---------------

;Ryan helper 9
[StateDef 3029]
type = A
movetype = A
physics = C
anim = 702
ctrl = 0
sprpriority = 2

[State 181, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 33
length = 20
FrameGap = 5
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 10,5
guardflag = MA
pausetime = 7,7
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3
getpower = 0,0
priority = 5,hit

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
x = 6
y = -3

[State 3021, ChangeState]
type = ChangeState
trigger1 = Pos Y <= -250
value = 3030
ctrl = 0

;--------------------------
;Ryan helper 10
[StateDef 3030]
type = A
movetype = A
physics = C
anim = 185
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3020, Helper]
type = Helper
trigger1 = Time = 30
helpertype = normal ;player
name = "Boomstick"
ID = 3031
stateno = 3031
pos = -15,-50
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 0
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 =time = 100
;ignorehitpause =
;persistent =
;---------------------------
;boomstick

[StateDef 3031]
type = A
movetype = A
physics = C
anim = 710
ctrl = 0
sprpriority = 2

[State 3031, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
x = 5
y = 0

[State 3031, Explod]
type = Explod
trigger1 = time = 11
anim = 711
ID = 711
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3031, RemoveExplod]
type = RemoveExplod
trigger1 = time = 99
id = 711
;ignorehitpause =
;persistent =

[State 3031, HitDef]
type = HitDef
trigger1 = time = 0   ;Activate at time = 0 (start of state)
attr = S, HP           ;Attributes of the HitDef (explained later)
damage = 100,30            ;Damage points to deal
guardflag = MA
pausetime = 40,40
hitsound = S2,2
guardsound = S3,0
sparkno = S33022
sparkxy = 60,73
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-8
air.velocity = -17,-8
fall = 1
getpower = 0,0
priority = 5,hit

[State 3031, Helper]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal ;player
name = "ryanjump"
ID = 3032
stateno = 3032
pos = 0,50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 0
;persistent =


[State 3031, DestroySelf]
type = DestroySelf
trigger1 = time = 100
;ignorehitpause =
;persistent =

;-------------------------
; ryan jump
[Statedef 3032]
type = S
ctrl = 0
anim = 713
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 220, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 30
length = 10
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 100, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 100, land]
type = PlaySnd
trigger1 = AnimElem = 15
value = 8,1

[State 33001, Dust]
type = Explod
trigger1 = AnimElem = 15
persistent = 0
ID = 75
anim = 60
postype = p1
pos = 50, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 24
trigger2 = AnimElem = 25
x = -17
y = 0

[State 3032, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
;ignorehitpause =
;persistent =

--------------------------------------------------------------
--------------------------------------------------------------
;Atom-spliter
[Statedef 43210]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 0

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[State 100, subattomicpunch]
type = PlaySnd
trigger1 = Time = 2
value = 90,3

; hide lifebars
[State 3000, noBars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
sound = S10,1
pos = 40,-75
darken = 1
poweradd = -3000


;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10000
ID = 10001
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
trigger1 = AnimElem = 1
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


; end DCvM stuff
;-------------------


[State 800, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 800, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 800, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C, HA
hitflag = MA-
damage = 0
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-69
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -3
air.velocity = -3,-6
getpower = 0,0
p2stateno = 43221
priority = 5,hit


[State 800, 1]
type = ChangeState
trigger1 = Movehit = 1
value = 43211
ctrl = 1

[State 800, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


------------------------------------
;Atom State
[Statedef 43211]
anim = 43210
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time > 0
value = 1
movecamera = 0,0


[State 80180]
type = AssertSpecial
trigger1 = Time >= 135
flag = noFG
flag2 = noBG

[State 0, Explod ATOM]
type = Explod
trigger1 = time = 40
anim = 43220
ID = 43220
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, Explod enemy]
type = Explod
trigger1 = time = 40
anim = 43220
ID = 43220
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 40
trigger1 = time < 112
scale = 1+(-.008*time),1+(-.008*time)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 111
scale = .025,.025

[State 801, AfterImage]
type = AfterImage
trigger1  = time = 40
time = 130
length = 25
FrameGap = 10
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 801, shift]
type = PlaySnd
trigger1 = time = 40
value = 32,0
volume = 2

[State 8005, Black]
type = Explod
trigger1 = Time = 135
anim = 999667
ID = 999777
supermovetime = 999999
pausemovetime = 999999
removeongethit = -1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = 999994
bindtime = -1
ownpal = 1
shadow = 0,0,0

[State 43211, 1]
type = ChangeState
trigger1 = Time = 165
value = 432120
ctrl = 1
---------------------------------------
------------------------------------
;Atom State 1B
[Statedef 432120]
anim = 43219
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time > 0
value = 1
movecamera = 0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 3
id = 999777

[State 0, Helper BG]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Atomicbg"
ID = 1007
stateno = 43241
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999
pausemovetime = 999999

[State 0, Turn]
type = Turn
Triggerall =  facing = -1
trigger1 =  time = 0

[State 43212, PosSet]
type = PosSet
trigger1 = time = 0
x = -35
y = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 0
trigger1 = time < 39
scale = 3+(-.05*time),3+(-.05*time)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 40
scale = 1,1

[State 801, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 60
length = 25
FrameGap = 10
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 801, shift]
type = PlaySnd
trigger1 = time = 0
value = 32,0
volume = 2

[State 43211, 1]
type = ChangeState
trigger1 = Time = 90
value = 43212
ctrl = 1
---------------------------------------
;Enemy State
[Statedef 43221]
anim = 5300
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 49
trigger1 = time < 121
scale = 1+(-.008*time),1+(-.008*time)


[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 120
scale = .025,.025

[State 801, AfterImage]
type = AfterImage
trigger1  = time = 49
time = 131
length = 25
FrameGap = 10
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time > 0
value = 0
;ignorehitpause =
;persistent =

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  999999


[State 43221, 1]
type = selfstate
trigger1 = Time = 150
Trigger1 = enemy, stateNo !=43211
value = 0
ctrl = 1

[State 43221, 1]
type = ChangeState
trigger1 = Time = 173
value = 432210
ctrl = 1
---------------------------------------
---------------------------------------
;Enemy State 1B
[Statedef 432210]
anim = 5300
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0

[State 0, Turn]
type = Turn
Triggerall =  facing = 1
trigger1 =  time = 0

[State 0, PosSet]
type = PosSet
trigger1 = time >= 0
x = 0
y = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 0
trigger1 = time < 39
scale = 3+(-.05*time),3+(-.05*time)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 40
scale = 1,1

[State 801, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 60
length = 25
FrameGap = 10
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time > 0
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  183

[State 43221, 1]
type = ChangeState
trigger1 = Time = 90
value = 43222
ctrl = 1
---------------------------------------
---------------------------------------
;Ryan State 1
[Statedef 43231]
anim = 43215
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  300

[State 220, AfterImage intro]
type = AfterImage
trigger1 = time  = 0
time = 12
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1


[State 220, Punch AfterImage]
type = AfterImage
trigger1 = time  = 90
time = 12
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 105, 1]
type = VelSet
trigger1 = Time = 90
x = const(velocity.run.back.x) + 19

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 183

[State 43221, 1]
type = ChangeState
trigger1 = Time = 184
value = 0
ctrl = 1
---------------------------------------
;BGhelp
[Statedef 43241]
type = A
physics  = N
sprpriority = 5

[State 80180]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = invisible
flag3 = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  300

[State 8005, hyperBG2]
type = Explod
trigger1 = Time = 0
anim = 999666
ID = 1001
supermovetime = 999999
pausemovetime = 999999
removeongethit = -1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = -999995
bindtime = -1
ownpal = 1
shadow = 0,0,0

[State 8005, hyperforeground]
type = Explod
trigger1 = Time = 0
anim = 999670
ID = 3001
supermovetime = 999999
pausemovetime = 999999
removeongethit = -1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = 999999
bindtime = -1
ownpal = 1
shadow = 0,0,0

[State 8005, Black]
type = Explod
trigger1 = Time = 350
anim = 999667
ID = 2002
supermovetime = 999999
pausemovetime = 999999
removeongethit = -1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = 999994
bindtime = -1
ownpal = 1
shadow = 0,0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 350
id = 1001

[State 0, RemoveExplod Black]
type = RemoveExplod
trigger1 = time = 460
id = 2002

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 350
id = 3001

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 350
value = 500,0
volume = 0
channel = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 460


---------------------------------------
;Atom State 2
[Statedef 43212]
anim = 43211
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0


[State 0, Pause 1]
type = Pause
trigger1 = time = 240
time = 5
movetime = 0

[State 0, Pause 2]
type = Pause
trigger1 = time = 244
time = 5
movetime = 0

[State 0, Pause 4]
type = Pause
trigger1 = time = 265
time = 210
movetime = 0
;ignorehitpause =
;persistent =


[State 0, Turn]
type = Turn
Triggerall =  facing = -1
trigger1 =  time = 0

[State 43212, PosSet]
type = PosSet
trigger1 = time = 0
x = -35
y = 0

[State 43212, hit light]
type = PlaySnd
trigger1 = time = 2
trigger2 = time = 16
trigger3 = time = 39
trigger4 = time = 95
value = 2,0

[State 0, Explod LP]
type = Explod
trigger1 = time = 2
trigger2 = time = 16
trigger3 = time = 39
trigger4 = time = 95
anim = 9990
ID = 300
pos = 0,-66
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod MEDPunch]
type = Explod
trigger1 = time = 27
trigger2 = time = 51
trigger3 = time = 82
trigger4 = time = 108
anim = 9991
ID = 300
pos = 0,-69
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod HARDPunch]
type = Explod
trigger1 = time = 132
anim = 9992
ID = 300
pos = 0,-85
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod HARDPunch]
type = Explod
trigger1 = time = 65
anim = 9992
ID = 300
pos = 0,-50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 43212, hit med]
type = PlaySnd
trigger1 = time = 27
trigger2 = time = 51
trigger3 = time = 82
trigger4 = time = 108
value = 2,1

[State 43212, hit hard]
type = PlaySnd
trigger1 = time = 65
trigger2 = time = 132
value = 2,2

[State 100, shift]
type = PlaySnd
trigger1 = AnimElem = 120
value = 31,1

[State 100, subattomicpunch]
type = PlaySnd
trigger1 = Time = 234
value = 80,2

[State 100, dash back]
type = PlaySnd
trigger1 = time = 150
value = 8,0

[State 100, dash forwards]
type = PlaySnd
trigger1 = time = 240
value = 8,0


[State 220, AfterImage Hpunch]
type = AfterImage
trigger1 = time  = 120
time = 12
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 220, Dash AfterImage]
type = AfterImage
trigger1 = time  = 151
time = 12
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 220, Punch AfterImage]
type = AfterImage
trigger1 = time  = 240
time = 12
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 105, 3]
type = ChangeAnim
trigger1 = time = 150
value = 43212

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time > 0
value = 1
movecamera = 0,0

[State 105, 1]
type = VelSet
trigger1 = Time = 151
x = const(velocity.run.back.x) + (-15)

[State 105, 3]
type = ChangeAnim
trigger1 = time = 171
value = 43213

[State 0, Helper ryan]
type = Helper
trigger1 = time = 150
helpertype = normal ;player
name = "Ryan"
ID = 1006
stateno = 43231
pos = 178,0
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 0

[State 105, 1]
type = VelSet
trigger1 = Time = 240
x = const(velocity.run.back.x) + 19

[State 8005, black attack]
type = Explod
trigger1 = Time = 260
anim = 999668
ID = 20012
supermovetime = 999999
pausemovetime = 999999
removeongethit = -1
removetime = -1
vel = 0, 0
postype = p1
pos = -0, 0
sprpriority = 999995
bindtime = -1
ownpal = 1
shadow = 0,0,0

[State 43221, 1]
type = ChangeState
trigger1 = Time = 264
value = 43213
ctrl = 1
---------------------------------------
;Atom State 3
[Statedef 43213]
anim = 43219
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0

[State 8005, Black]
type = Explod
trigger1 = Time = 0
anim = 999667
ID = 999667
supermovetime = 999999
pausemovetime = 999999
removeongethit = -1
removetime = -1
vel = 0, 0
postype = back
pos = 0, 0
sprpriority = 999994
bindtime = -1
ownpal = 1
shadow = 0,0,0

[State 0, RemoveExplod Black]
type = RemoveExplod
trigger1 = time = 75
id = 999667


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 75
id = 20012

[State 0, Pause 2]
type = Pause
trigger1 = time = 74
time = 20
movetime = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 40
trigger1 = time < 112
scale = .025+(.008*time),.025+(.008*time)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 111
scale = 1,1

[State 801, AfterImage]
type = AfterImage
trigger1  = time = 40
time = 100
length = 25
FrameGap = 10
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 801, shift]
type = PlaySnd
trigger1 = time = 40
value = 32,0
volume = 2

[State 0, Explod ATOM]
type = Explod
trigger1 = time = 75
anim = 43221
ID = 43221
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Explod enemy]
type = Explod
trigger1 = time = 75
anim = 43222
ID = 43222
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 0, ScreenBound]
type = ScreenBound
trigger1 = time > 0
value = 1
movecamera = 0,0

[State 105, 3]
type = ChangeAnim
trigger1 = time = 171
value = 43214

[State 43221, 1]
type = ChangeState
trigger1 = Time = 179
value = 0
ctrl = 1
----------------------------------
----------------------------------
;Enemy State 2
[Statedef 43222]
anim = 0
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0

[State 0, Turn]
type = Turn
Triggerall =  facing = 1
trigger1 =  time = 0

[State 0, PosSet]
type = PosSet
trigger1 = time >= 0
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time > 0
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  300

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = time = 2
trigger2 = time = 39
trigger3 = time = 51
trigger4 = time = 95
value = 5000

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = time = 26
trigger2 = time = 82
trigger3 = time = 108
value = 5001

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = time = 133
value = 5002

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = time = 13
value = 5010

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = time = 65
value = 5012


[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = time = 135
value = 5300

[State 43221, 1]
type = ChangeState
trigger1 = Time = 150
value = 43223
ctrl = 1
---------------------------------------

;Enemy State 3
[Statedef 43223]
anim = 5300
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0
poweradd = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 155
trigger1 = time < 227
scale = 0.00025+(.004*time), 0.00025+(.004*time)

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 226
scale = 1,1


[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 189
value = -375
kill = 1
absolute = 0


[State 0, PosSet]
type = PosSet
trigger1 = time >= 0
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time > 0
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time =  300

[State 830, ChangeAnim1]
type = ChangeAnim
trigger1 = time = 140
value = 5150

[State 820, 2]
type = selfstate
Trigger1 = Time = 300
value = 5120
ctrl = 1


