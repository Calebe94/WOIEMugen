; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; 14: dano do atom
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
 ;-----------------
;hyper atom
; Hyper 1
[StateDef 1900]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1900, 0]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0



; hide lifebars
[State 1900, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1900, 0]
type = PlaySnd
trigger1 = AnimElem = 6
value = S111,4
channel = 0

[State 1900, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1900, 3]
type = Explod
trigger1 = AnimElem = 6
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

[State 1900, 4]
type = Explod
trigger1 = AnimElem = 6
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

;[State 1900, 5]
;type = Helper
;trigger1 = AnimElem = 6
;name = "Super BG"
;ID = 8005
;stateno = 8005
;postype = back
;facing = 1
;ownpal = 1
;supermovetime = 999999
;pausemovetime = 999999
;ownpal = 1
; end DCvM stuff
;-------------------

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0


; voice
[State 1900, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1900, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1900, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 2001
projanim = 2001
projhitanim = 2002
projremanim = 2003
projcancelanim = 2003
velocity = 12,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,5
pausetime = 4,4
sparkno = s2003
guard.sparkno = s2003
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 7172

[State 1900, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 7172]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5050

[State 7172, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 7172, 2]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7172, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
; Hyper 1

[StateDef 3000]
type = A
movetype = A
physics = N
anim = 1006
ctrl = 0
velset = 0,0

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

[State 1900, 6]
type = PlaySnd
trigger1 = AnimElem = 6
value = 171,8
channel = 0

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 6
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 8
value = S9,1

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElem = 8
ProjID = 3010
projanim = 1010
projhitanim = 1026
projremanim = 1026
projcancelanim = 1026
velocity = 16, (2 - Random/250);
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 30,2
pausetime = 10,10
sparkno = s1120
guard.sparkno = s9994
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2


[State 3000, logoFlurry]
type = Projectile
triggerall = p3name = "Hal Jordan"
trigger1 = AnimElem = 8
ProjID = 3010
projanim = 1112
projhitanim = 1026
projremanim = 1026
projcancelanim = 1026
velocity = 12, 4;(2 - Random/250)
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 5,2
pausetime = 4,4
sparkno = s1113
guard.sparkno = s1113
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
triggerall = p3name = "Hal Jordan"
trigger1 =AnimElem = 8
ProjID = 3010
projanim = 1112
projhitanim = 1026
projremanim = 1026
projcancelanim = 1026
velocity = 12, -2;(2 - Random/250)
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 5,2
pausetime = 4,4
sparkno = s1113
guard.sparkno = s1113
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
triggerall = p3name = "Hal Jordan"
trigger1 = AnimElem = 8
ProjID = 3010
projanim = 1112
projhitanim = 1026
projremanim = 1026
projcancelanim = 1026
velocity = 12, 2;(2 - Random/250)
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 5,2
pausetime = 4,4
sparkno = s1113
guard.sparkno = s1113
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2

[State 3000, logoFlurry]
type = Projectile
triggerall = p3name = "Hal Jordan"
trigger1 = AnimElem = 8
ProjID = 3010
projanim = 1112
projhitanim = 1026
projremanim = 1026
projcancelanim = 1026
velocity = 12, -4;(2 - Random/250)
offset = 0,-80
postype = p1
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 5,Hit
damage = 5,2
pausetime = 4,4
sparkno = s1113
guard.sparkno = s1113
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
;[State 3000, logoFlurry]
;type = Projectile
;trigger1 = AnimElemTime(3) % 10 = 1
;ProjID = 3010
;projanim = 1010
;projhitanim = 1026
;projremanim = 1026
;projcancelanim = 1026
;velocity = 3.5, (4 - Random/125)
;accel = 1.25, 0-Random/500
;offset = 0,-80
;; HitDef
;attr = S,HP
;hitflag = MAFD
;guardflag = MA
;animtype = medium
;priority = 5,Hit
;damage = 10,1
;pausetime = 4,4
;sparkno = s1121
;guard.sparkno = s9993
;hitsound = S2,2
;guardsound = S3,0
;ground.type = Low
;ground.slidetime = 8
;ground.hittime  = 8
;ground.velocity = -6,0
;air.velocity = -2,-2

;[State 3000, logoFlurry]
;type = Projectile
;trigger1 = AnimElemTime(3) % 10 = 1
;ProjID = 3010
;projanim = 1010
;projhitanim = 1026
;projremanim = 1026
;projcancelanim = 1026
;velocity = 2.5, (3 - Random/333)
;accel = 1.5, 0
;offset = 0,-80
;; HitDef
;attr = S,HP
;hitflag = MAFD
;guardflag = MA
;animtype = medium
;priority = 5,Hit
;damage = 20,2
;pausetime = 4,4
;sparkno = s1121
;guard.sparkno = s9993
;hitsound = S2,2
;guardsound = S3,0
;ground.type = Low
;ground.slidetime = 8
;ground.hittime  = 8
;ground.velocity = -6,0
;air.velocity = -2,-2

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 130
value = 0
ctrl = 1

 ;----weak point - boxe
[StateDef 1400]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0
sprpriority = 0


[State 1401, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1401, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1401, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1410
ID =  1410
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1

;-------------------
; DCvM hyper portrait/BG
[State 1401, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1401, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; voice
[State 1400, 0]
type = PlaySnd
trigger1 = AnimElem = 7
value = S111,3
channel = 0


[State 1400, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1410
projanim = 1410
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 12,0
offset = 0,-80
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = High
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 160,5
pausetime = 4,4
sparkno = s9992
sparkxy = 0,0
guard.sparkno = s9990
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 18
ground.velocity = -6,0
air.velocity = -2,-2
fall= 1
air.fall = 1
;p2stateno = 7670





[State 1400, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1





 ;----weak point - kryptonita
[StateDef 1401]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0


; voice
[State 1401, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1401, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1401, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1401, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1401, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1401, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
;-------------------

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1412
ID =  1412
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1

; voice
[State 1401, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1401, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1401, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1412
projanim = 1412
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 13,0
offset = 0,-80
sparkxy = -10,-30
postype = p1
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,5
pausetime = 4,4
sparkno = s9998
guard.sparkno = s9990
hitsound = S111,3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 7670


[State 1401, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 ;----weak point - emp
[StateDef 1402]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1402, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1402, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1402, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1402, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1402, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1402, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
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

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1411
ID =  1411
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1
; voice
[State 1402, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1402, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1402, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1411
projanim = 1411
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 13,0
offset = 0,-80
sparkxy = 30,20
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 180,5
pausetime = 4,4
sparkno = s9996
guard.sparkno = s9990
hitsound = S111, 14
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 76702

[State 1402, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 ;----weak point - fogo
[StateDef 1403]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1403, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1403, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1
; hide lifebars
[State 1403, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1403, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1403, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1403, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
;-------------------

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1413
ID =  1413
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1

; voice
[State 1403, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1403, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1403, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1413
projanim = 1413
projhitanim = 9995
projremanim = 9995
projcancelanim = 9995
velocity = 13,0
offset = 0,-80
sparkxy = 40,75
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 5,5
pausetime = 4,4
sparkno = s1503
guard.sparkno = s9990
hitsound = S12,7
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 76703



[State 1403, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



   ;----weak point - sonic
[StateDef 1404]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1404, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1404, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1404, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1404, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1404, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1404, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
;-------------------

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1414
ID =  1414
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1
; voice
[State 1404, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1404, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1404, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1414
projanim = 1414
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 13,0
offset = 0,-80
sparkxy = 20,-30
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 10,0
pausetime = 4,4
sparkno = s9997
guard.sparkno = s9990
hitsound = S12, 4
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 76704

[State 1404, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 ;----weak point - gelo
[StateDef 1405]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1405, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1405, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1405, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1405, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1405, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1405, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
;-------------------

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1415
ID =  1415
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1
; voice
[State 1405, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1405, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

;[State 1403, 8]
;type = Projectile
;trigger1 = AnimElem = 7
;ProjID = 1415
;projanim = 1415
;projhitanim = 1126
;projremanim = 1126
;projcancelanim = 1126
;velocity = 13,0
;offset = 0,-80
;sparkxy = 40,75
;; HitDef
;attr = S,SP
;hitflag = MAF        ;HLAFD+-
;guardflag = MA         ;HLA
;animtype = medium
;priority = 4,Hit   ;Hit,Miss,Dodge
;damage = 5,5
;pausetime = 4,4
;sparkno = s1503
;guard.sparkno = s9990
;hitsound = S12,7
;guardsound = S3,0
;ground.type = Low
;ground.slidetime = 8
;ground.hittime  = 8
;ground.velocity = -6,0
;air.velocity = -2,-2
;p2stateno = 76703

[State 1405, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1415
projanim = 1415
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 13,0
offset = 0,-80
sparkno = s1505
sparkxy = 50,10
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,5
pausetime = 4,4
guard.sparkno = s9990
hitsound = S12, 6
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 76705


[State 1405, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 ;----weak point - boomerang
[StateDef 1406]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1406, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1406, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1406, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1406, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1406, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1406, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
;-------------------

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1416
ID =  1416
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1
; voice
[State 1406, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1406, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1406, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1416
projanim = 1416
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 12,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 500 ,5
pausetime = 4,4
sparkno = s1126
guard.sparkno = s9990
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
;p2stateno = 76706

[State 1406, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

 ;blue kryptonite
  ;----weak point - kryptonita
[StateDef 1407]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1407, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1407, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1407, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1407, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1407, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1407, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1


[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1415
ID =  1415
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1

; voice
[State 1407, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1407, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1407, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1415
projanim = 1415
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 13,0
offset = 0,-80
sparkxy = 10,-10
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,5
pausetime = 4,4
sparkno = s8999
guard.sparkno = s9990
hitsound = S111,3
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 76709

[State 1407, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


  ;----weak point - energy pulse
[StateDef 1408]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 1408, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1408, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1408, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1408, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1408, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1408, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1


[State 1408, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1408, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1417
ID =  1417
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1

; voice
[State 1408, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1408, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal ;player
ID = 14081
stateno =  14081
pos = 0,-80
postype = p1    ;p2,front,back,left,right

[State 1408, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 14081]
type = A
movetype = A
physics = N
anim = 1417
velset = 13,0


[State 0, HitDef]
type = HitDef
trigger1 =  time = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
hitsound = S111,14
guardsound = S111,14
sparkno = S1504
sparkxy = 0,0
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,0
p2stateno = 14080



[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 50
trigger2 = movecontact > 0



  ;----weak point - net
[StateDef 1409]
type = A
movetype = A
physics = N
anim = 997
ctrl = 0
velset = 0,0

; voice
[State 1409, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 1409, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1409, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1409, 2]
type = SuperPause
trigger1 = AnimElem = 5
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1409, 3]
type = Explod
trigger1 = AnimElem = 5
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1409, 4]
type = Explod
trigger1 = AnimElem = 5
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1


; voice
[State 1409, 6]
type = PlaySnd
trigger1 = AnimElem = 6
value = S9,0
channel = 0

; sfx
[State 1409, 7]
type = PlaySnd
trigger1 = AnimElem = 6
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 6
helpertype = normal ;player
ID = 14091
stateno =  14091
pos = 0,-80
postype = p1    ;p2,front,back,left,right

[State 1409, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 14091]
type = A
movetype = A
physics = N
anim = 996
velset = 9,-9

[State 0, ChangeState]
type = ChangeState
trigger1 =  p2bodydist x < 10
value = 14092


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 50




[Statedef 14092]
type = A
movetype = A
physics = N
anim = 995
velset = 1,7

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 0
value = 0,2

[State 0, HitDef]
type = HitDef
trigger1 =  time = 0
attr = A, HT    ;;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;hitflag = M-        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
hitsound = 3,1
guardsound = 3,1
sparkno = -1
sparkxy = -10,20
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,0
p2stateno = 14090

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = pos y > 0
value = 993
;elem = 1
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 =  pos y > 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
trigger1 =  pos y > 0
y = 0
;ignorehitpause =
;persistent =





[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 150
trigger2 = movecontact > 0
trigger3 = anim = 993 && animtime=0


 ;-----------------
;hyper atom
; Hyper 1
[StateDef 2000]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
[State 2000, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,4
channel = 0

; hide lifebars
[State 2000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 2000, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 60
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 2000, 3]
type = Explod
trigger1 = AnimElem = 6
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

[State 2000, 4]
type = Explod
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
;-------------------

;[StateDef 2000, 6]
;type = S
;movetype = A
;physics = S
;anim = 1001
;poweradd = 15
;ctrl = 0
;velset = 0,0

; voice
[State 2000, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 2000, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 2000, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 2001
projanim = 2001
projhitanim = 2002
projremanim = 2003
projcancelanim = 2003
velocity = 12,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 150,5
pausetime = 4,4
sparkno = s2003
guard.sparkno = s2003
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 7171

[State 2000, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 7171]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5050

[State 7171, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -5

[State 7171, 2]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7171, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;----boomerang
;Batarang toss



[Statedef 11000]
type    = S
movetype= A
physics = S
;poweradd= 110
velset = 0,0
anim = 1002
ctrl = 0
sprpriority = 0

[State 11000, 0]
type = PlaySnd
trigger1 = Time = 0
value = S111,6
channel = 0

[State 11000, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 11000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 11000, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 11000, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 11000, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 1401, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1401, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1416
ID =  1416
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1

[State 11000, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 3

[State 11000, 7]
type = VarSet
trigger1 = AnimElem = 7
fvar(10) = ifelse(command = "z", 4.5, ifelse(command = "y", 3.25, 2.0))

[State 11000, 8]
type = Helper
trigger1 = AnimElem = 7;, =1
name = "Batarang"
ID = 1005
pos = 93, -70
postype = p1
stateno = 10055


[State 11000, 9]
type = ChangeState
trigger1 = AnimElem = 7
value = 0
ctrl = 1

[State 11000, 10];2170, width]
type = Width
trigger1 = AnimElem = 7;, >= 0
value = 45,0

;
[Statedef 10025]
type = S
movetype = H
physics = S
velset = 0
ctrl = 0
anim = 0

[State 10025, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(2) = 0
value = 1

[State 10025, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

; --
[Statedef 10055]
type = A
movetype = A
physics = N
velset = 10.55 + root,fvar(10), 0
juggle  = 4
ctrl = 0
anim = 1416
poweradd = 0



[State 10055, Boomerang]
type = VelAdd
trigger1 = 1
x = -0.3

[State 10055, ChangeAnim]
type = ChangeAnim
trigger1 = time = 18
value = 1419

[State 10050, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, SP
damage = 200,20
animtype = Hard
guardflag = MA
pausetime = 0,9
sparkno = -1
sparkxy = 10, 0
hitsound   = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -4
air.animtype = Back
air.velocity = -3,-5
air.juggle = 3
id = 10055
fall = 1
air.fall = 1

[State 10055, CatchDef]
type = HitDef
trigger1 = RootDist X <= 20 && RootDist X >= -20
trigger1 = root,Statetype != A && root,Movetype = I
trigger1 = Vel X <= 0
attr = A, SP
damage = 0
animtype = Hard
guardflag =
pausetime = 0,0
sparkno = -1
sparkxy = 10, 0
hitsound   = S0,0
ground.type = High
;ground.slidetime = 14
;ground.hittime  = 16
;ground.velocity = -8
air.animtype = Back
;air.velocity = -2.5,-5
;air.juggle = 3
affectteam = F
p2stateno = 10025
p2getp1state = 0
ID = 9999
numhits = 0
givepower = 40

[State 10055, DestroySelf]
type = DestroySelf
trigger1 = MoveContact
trigger1 = NumTarget(9999) != 0
trigger2 = Vel X < 0 && facing = 1 && Screenpos X <= -20
trigger3 = Vel X < 0 && facing = -1 && Screenpos X >= 340

[State 10055, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(9999) = 0
value = 10065

[State 10055, ProjHitOverride1]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 10055, ProjHitOverride2]
type = HitOverride
trigger1 = 1
attr = SCA, AP
slot = 7
stateno = 10065

; Destroy Batarang
[StateDef 10065]
type = A
movetype = H
physics = N
anim = 1500
velset = 0,0

[State 10065, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0



[Statedef 1800]
type = S
movetype= A
physics = S
;poweradd= -500
anim = 0
ctrl = 0

;[state 4100, snd]
;type = playsnd
;trigger1 = time = 0
;value = 21,2

[State 1800,helper]
type = Helper
;trigger1 = StateNo = 4100
trigger1 = animelem = 1
ID = 1901
pos = 60,0
postype = back
stateno = 1901
helpertype = normal
keyctrl = 0
ownpal = 1

[state 1800, changestate]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------
[statedef 1901]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1900
velset = 0,0
sprpriority = 3

 [State 1901, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

 [State 1901, 1]
type = SuperPause
trigger1 = AnimElem = 7
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1901, 3]
type = Explod
trigger1 = AnimElem = 7
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

[State 1901, 4]
type = Explod
trigger1 = AnimElem = 7
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
trigger1 = AnimElem = 7
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; voice
[State 1901, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1901, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 1901, 7]
type = PlaySnd
trigger1 = time = 45
trigger2 = time = 55
trigger3 = time = 65
trigger4 = time = 75
trigger5 = time = 85
trigger6 = time = 95
trigger7 = time = 105
value = S111,12

[State 1901, 8]
type = Projectile
trigger1 = time = 45
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 55
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 65
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 75
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 85
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 95
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 105
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 115
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 125
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 8]
type = Projectile
trigger1 = time = 135
ProjID = 1904
projanim = 1904
projhitanim = -1
projremanim = -1
projcancelanim = -1
velocity = 12,0
offset = 25,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 30,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S0,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p2stateno = 19002

[State 1901, 4]
type = Explod
trigger1 = time = 45
anim = 1905
ID = 0
pos = 70, -70
postype = P1
bindtime = -1
removetime = 100
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 1901, ChangeAnim]
type = ChangeAnim
trigger1 = time = 200
value = 1902

[state 1901, destroy]
type = Destroyself
trigger1 = time = 228

[state 1901, gethit]
type = hitoverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1902



;--------------
[statedef 1902]
type = S
movetype = I
physics = S
anim = 1901


[state 1902, destroy]
type = Destroyself
trigger1 = time = 40
;---------------------------------------------------------------------------
 [Statedef 19002]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5010

[State 19002, 1]
type = VelSet
trigger1 = Time = 0
x = -4
;y = -1

[State 19002, 3]
type = SelfState
trigger1 = Pos y != 0
value = 5100

[State 19002, 3]
type = SelfState
trigger1 = time = 50
value = 5100



 ;flecha meio
[StateDef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = 15
ctrl = 0
velset = 0,0

; hide lifebars
[State 1710, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1710, 2]
type = SuperPause
trigger1 = AnimElem = 4
time = 40
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 1710, 3]
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

[State 1710, 4]
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

[State 1710, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 1710, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2
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
trigger1 = AnimElem = 5
ProjID = 3101
projanim = 3101
projhitanim = -1
projremanim = 3101
projcancelanim = -1
velocity = 0,-13
offset = -10,-100

[State 1011, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 171,4

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal ;player
name =  "mina"
ID = 3101
stateno = 3101
pos = (110- random/100),(-1500 - random/20)
postype = p1    ;p2,front,back,left,right
facing = 1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal ;player
name =  "mina"
ID = 3101
stateno = 3101
pos = (90- random/100),(-1500 - random/20)
postype = p1    ;p2,front,back,left,right
facing = 1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal ;player
name =  "mina"
ID = 3101
stateno = 3101
pos = (150- random/100),(-1500 - random/20)
postype = p1    ;p2,front,back,left,right
facing = 1


[State 1011, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3101]
type = A
movetype = A
physics = N
anim = 3102
velset = 0,13
sprpriority = 5



[State 0, HitDef]
type = HitDef
trigger1 =  time = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 60,5
pausetime = 0,0
sparkno = 3103
guard.sparkno = 0
sparkxy = 0,0
hitsound = 12,8
guardsound = 12,8
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
hittime = 20
ground.velocity = -4,-3
air.velocity = -3,-3

[State 0, VelSet]
type = VelSet
trigger1 =  pos y > (6+ random/250)
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = vel y = 0 && pos y < 6
y = 7
;ignorehitpause =
;persistent =


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3103
trigger1 = movecontact > 0
trigger2 = time > (400 + random/10)
value = 3103
;elem = 1
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3103 && animelem = 1
value = 12,8



[State 1050, 5]
type = DestroySelf
trigger1 = animtime = 0 && anim = 3103



;ATOM........

[StateDef 1410]
type = A
movetype = A
physics = N
anim = 1002
ctrl = 0
velset = 0,0

; voice
;[State 1408, 0]
;type = PlaySnd
;trigger1 = Time = 0
;value = S111,6
;channel = 0

[State 1408, 0]
type = PlaySnd
trigger1 = Time = 1
value = S9,1

; hide lifebars
[State 1408, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1408, 2]
type = SuperPause
trigger1 = AnimElem = 6
time = 80
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -1000


[State 1408, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 14100
ID = 14100
pos = 0,-60
postype = p1
bindtime = -1
removetime = 84
supermovetime = 84
pausemovetime = 84
removeongethit = 1
sprpriority = 3
ownpal = 1
;-------------------
; DCvM hyper portrait/BG
[State 1408, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermovetime = 80
pausemovetime = 80
sprpriority = -1
ownpal = 1

[State 1408, 4]
type = Explod
trigger1 = AnimElem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 80
supermove = 80
pausemovetime = 80
sprpriority = -2
ownpal = 1


[State 1408, 3] ;braço
type = Explod
trigger1 = AnimElem = 6
anim = 1110
ID = 1110
pos =  0,0
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 2
ownpal = 1

[State 1408, 3] ;flecha
type = Explod
trigger1 = AnimElem = 6
anim =  1320
ID =  1320
pos =  16,-83
postype = p1
bindtime = 999
removetime = 84
supermovetime = 80
pausemovetime = 80
sprpriority = 1
ownpal = 1

[State 1402, 8]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1320
projanim = 1320
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 13,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 0,0


; voice
[State 1408, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,0
channel = 0

; sfx
[State 1408, 7]
type = PlaySnd
trigger1 = AnimElem = 7
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 7
helpertype = normal; player
ID = 14101
stateno = 14101
pos = 0,-60
postype = p1    ;p2,front,back,left,right

[State 1408, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 14101]
type = A
movetype = A
physics = N
anim = 14000
velset = 13,0

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = 20
length = 20
trans = none
palbright = 40,20,200
paladd = 20,20,40
palmul = 1,1,20
ignorehitpause = 1
palcolor = 0
TimeGap  = 1

[State 0, HitDef]
type = HitDef
trigger1 =  time = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
hitsound = S111,14
guardsound = S111,14
sparkno = S9992
sparkxy = -10,-80
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 100,0
p1stateno = 14100
fall = 1
air.fall = 1
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -10,-7
air.velocity = -10,-7
p2stateno = 9020

;3252-0200

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 50


;14001 - queda frente
;14002 - baixo
;14003 - stance
;14004 - frente
;14005 - dash
;14006 - cair reto
;14007 - get hit
;14008 - soco forte
;14009 - soco fraco
;14010 - shoryuken

[StateDef 14100]
anim = ifelse(P2Dist X > 5,14006,14106)
ctrl = 0
type = A
movetype = A
physics = N
velset = ifelse(P2Dist X > 5,3,-3),0
poweradd = 30

[State 0, VelAdd]
type = VelAdd
triggerall = vel y < 3
trigger1 = anim = 14006
trigger2 = anim = 14106
y = 0.3
;ignorehitpause =
;persistent =


[state 1101, twister]
type = afterimage
trigger1 = 1
;trigger1 = anim = 14006
;trigger2 = anim = 14106
;trigger3 = anim = 14004
;trigger4 = anim = 14005
;trigger5 = anim = 14104
;trigger6 = anim = 14105
Time = 150
length = 20
trans = none
palbright = 40,20,200
paladd = 20,20,40
palmul = 1,1,20
ignorehitpause = 1
palcolor = 0
TimeGap  = 1

[State 0, PosSet]
type = PosSet
trigger1 =  pos y > 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = anim = 14008 || anim = 14108
trigger2 = anim = 14009 || anim = 14109
trigger3 = anim = 14010 || anim = 14110
trigger4 = anim = 14003 || anim = 14103
trigger5 = anim = 14002 || anim = 14102
x = 0


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 14008 && anim != 14108
triggerall = anim != 14009 && anim != 14109
triggerall = anim != 14010 && anim != 14110
triggerall = anim != 14002 && anim != 14102
triggerall = anim != 14003 && anim != 14103
triggerall = anim != 14004 && anim != 14104
triggerall = anim != 14015 && anim != 14105
triggerall = anim != 14200
trigger1 = pos y = 0
value = ifelse(P2Dist X > 5,14002,14102)

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animtime = 0
trigger1 = anim = 14002
trigger2 = anim = 14102
value = ifelse(P2Dist X > 5,14003,14103)

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x <= 9
triggerall = random < 100 && anim !=14108 && anim !=14008
trigger1 = anim = 14003
trigger2 = anim = 14006  && p2bodydist y > 50 && p2bodydist y < 100
value =  14008

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x >= -9
triggerall = random < 100 && anim !=14108 && anim !=14008
trigger1 = anim = 14103
trigger2 = anim = 14106  && p2bodydist y > 50 && p2bodydist y < 100
value = 14108

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x <= 9
triggerall = random < 100 && anim !=14109 && anim !=14009
trigger1 = anim = 14003
trigger2 = anim = 14006  && p2bodydist y > 50  && p2bodydist y < 100
value =  14009

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x >= -9
triggerall = random < 100 && anim !=14109 && anim !=14009
trigger1 = anim = 14103
trigger2 = anim = 14106  && p2bodydist y > 5 && p2bodydist y < 100
value = 14109

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x < 15 && p2bodydist y < 0
triggerall = random < 450 && anim !=14110 && anim !=14010
trigger1 = anim = 14003
value =  14010

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x > -15 && p2bodydist y < 0
triggerall = random < 450 && anim !=14108 && anim !=14008
trigger1 = anim = 14103
value = 14110

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x >= 10 && random < 50
trigger1 = anim = 14003
value = 14004

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x <= -10 && random < 50
trigger1 = anim = 14103
value =  14104

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x > 90 && random < 150
trigger1 = anim = 14003
value = 14005

[State 0, ChangeState]
type = ChangeAnim
triggerall = p2bodydist x < -90 && random < 150
trigger1 = anim = 14103
value = 14105

[State 0, VelSet]
type = VelSet
trigger1 =  anim = 14004
trigger2 =  anim = 14104
x = ifelse(P2Dist X > 5,2,-2)
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = anim = 14005
trigger2 =  anim = 14105
x = ifelse(P2Dist X > 5,3,-3)
y = -7

[State 0, VelSet]
type = VelSet
triggerall = animelem = 2
trigger1 = anim = 14010
trigger2 =  anim = 14110
x = ifelse(P2Dist X > 5,1,-1)
y = -5

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animtime = 0
trigger1 = anim = 14004
trigger2 = anim = 14005
trigger3 = anim = 14010
trigger4 = anim = 14008 && pos y < 0
trigger5 = anim = 14009 && pos y < 0
value = 14006

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animtime = 0
trigger1 = anim = 14104
trigger2 = anim = 14105
trigger3 = anim = 14110
trigger4 = anim = 14108 && pos y < 0
trigger5 = anim = 14109 && pos y < 0
value = 14106


;kanguru - 3224-7026


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = animtime = 0
trigger1 = anim = 14008
trigger2 = anim = 14108
trigger3 = anim = 14009
trigger4 = anim = 14109
trigger5 = anim = 14010
trigger6 = anim = 14110
value = ifelse(P2Dist X > 5,14003,14103)





[State 0, HitDef]
type = HitDef
triggerall = animelem = 2
trigger1 =  anim = 14008
trigger2 =  anim = 14108
numhits = 1; && movecontact = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
hitsound = 2,0
guardsound = 2,0
sparkno = S9990
sparkxy = -7,-5
;fall.animtype = Back
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 10,0
ground.velocity = -1
guard.velocity = 0
air.velocity = -1,-1
ground.slidetime = 5
ground.hittime  = 5

[State 0, HitDef]
type = HitDef
triggerall = animelem = 2
trigger1 =  anim = 14009
trigger2 =  anim = 14109
numhits = 1; && movecontact = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
hitsound = 2,0
guardsound = 2,0
sparkno = S9990
sparkxy = -10,-5
;fall.animtype = Back
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 8,0
ground.velocity = -1
guard.velocity = 0
air.velocity = -1,-1
ground.slidetime = 5
ground.hittime  = 5

[State 0, HitDef]
type = HitDef
triggerall = animelem = 3
trigger1 =  anim = 14010
trigger2 =  anim = 14110
numhits = 1; && movecontact = 0
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
hitsound = 2,0
guardsound = 2,0
sparkno = S9990
sparkxy = -10,-5
;fall.animtype = Back
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 12,0
ground.velocity = -2
guard.velocity = 0
air.velocity = -2,-2
ground.slidetime = 8
ground.hittime  = 8

[state 4000, gethit]
type = hitoverride
trigger1 = parent,var(14) != 5
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 14102

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 14200
trigger1 = win = 1 || lose = 1
trigger2 = parent,stateno= 4002
trigger3 = parent,var(14) = 5
value = 14200

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 && anim = 14200


[StateDef 14102]
anim = 14007
ctrl = 0
type = A
movetype = A
physics = N
velset = (ifelse(P2Dist X > 5,-8,8))*(ifelse(parent,var(14)=4,0,1)),-1*(ifelse(parent,var(14)=4,0,1))

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = time = 0
v = 14
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 =  time = 30
value =  14100

