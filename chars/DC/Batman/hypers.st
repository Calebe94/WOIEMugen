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
pos = 0,-80
darken = 1
poweradd = -1000

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
sprpriority = 3
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

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) % 10 = 1
value = 9,2

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 4, (2 - Random/250)
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 20,2
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

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 3.5, (4 - Random/125)
accel = 1.25, 0-Random/500
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 10,1
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

[State 3000, logoFlurry]
type = Projectile
trigger1 = AnimElemTime(3) % 10 = 1
ProjID = 3010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 2.5, (3 - Random/333)
accel = 1.5, 0
offset = 0,-80
; HitDef
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = medium
priority = 6,Hit
damage = 20,2
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

[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Bats Hyper
;---------------------------------------------------------------------------
[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 2150
ctrl = 0
sprpriority = 5

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1



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
pos = 0,-80
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10001
ID = 10001
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = 3
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

[State 3000, Gas]
type = Explod
trigger1 = animelem = 3
anim = 2152
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 2
supermovetime = 40

[State 2152, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 15,1
animtype = Light
hitflag = MA
guardflag = N
priority = 4, Hit
pausetime = 0,0
sparkno = -1
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime = 75
ground.velocity = 0,0
air.type = Low
air.hittime = 80
air.velocity = 0,0

[State 3000, Distortion]
type = Explod
trigger1 = movecontact
anim = 2214
ID = 2214
pos = 160,120
postype = left
bindtime = 999
removetime = -2
supermovetime = 999
pausemovetime = 999
sprpriority = 5
ownpal = 1
Persistent = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Movecontact
value = 2151
ctrl = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Movecontact = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Bats here - Batman watchs
;--------------------------------------------------------
[Statedef 2151]
type = S
movetype = I
physics = S
anim = 2151
sprpriority = 2
ctrl = 0

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

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "Crow"
ID = 2153
stateno = 2153
pos = -25,-150
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 14
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -35,-220
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 18
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -15,-185
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 22
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -45,-255
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 26
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -28,-157
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -38,-212
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 34
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -33,-193
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 38
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -19,-177
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 42
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -29,-209
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 46
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -36,-188
postype = Left
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -25,-150
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 14
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -35,-220
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 18
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -15,-185
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 22
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -45,-255
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 26
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -28,-157
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -38,-212
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 34
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -33,-193
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 38
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -19,-177
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 42
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -29,-209
postype = Right
facing = -1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 46
helpertype = normal ;player
name = "Bats"
ID = 2153
stateno = 2153
pos = -36,-188
postype = Right
facing = -1
ownpal = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = S99,0
channel = 0
volume = 250

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 20
trigger2 = time = 60
value = S666666,22
channel = 2
volume = 255

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 15
trigger2 = time = 60
value = S666666,23
channel = 3
volume = 150

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
; Crow Helper
;-----------------------------------------------------
[Statedef 2153]
type = A
movetype = A
physics = N
anim = 2153
sprpriority = 3

[State 3000, swoop down]
type = Velset
trigger1 = Time >=0 && time <=10
x = 2.5
y = 8

; voice
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,1
channel = 0

[State 3000, swoop down]
type = Velset
trigger1 = Time >=11 && time <=15
x = 4.5
y = 6

[State 3000, swoop down]
type = Velset
trigger1 = Time >=16 && time <=19
x = 5.5
y = 4

[State 3000, flying forward]
type = Velset
trigger1 = Time >=20
x = 8
y = -0.6

[State 2152, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA
damage = 10,3
animtype = Medium
hitflag = MA
guardflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = s8002
sparkxy = -15,0
;guard.sparkno = s8001
hitsound = s8000,0
guardsound = s8000,0
ground.type = High
ground.slidetime = 5
ground.hittime = 22
ground.velocity = -2.5,0
air.type = Low
air.hittime = 22
air.velocity = -2,0

[State 3000, DS]
type = DestroySelf
trigger1 = time = 62
;---------------------------------------
;Dragon Cannon - Start
[Statedef 4000]
type    = S
movetype= A
physics = S
poweradd= -1000
velset = 0, 0
ctrl = 0
anim = 4000
sprpriority = 3


[State 4000, Super Pause]
type = SuperPause
trigger1 = animelem = 4
time = 50
pos = 25, -57
anim = 4000
sound = s2000,5

[State 1100, assertspecial]
type = assertspecial
trigger1 = time = [0,50]
flag = noBG
flag2 = noFG
ignorehitpause = 1


[State 1100, Hyper Portrait]
type = explod
trigger1 = animelem = 4
anim = 950
postype = back
sprpriority = -3
supermovetime = -1
removetime = 50
pos = 0,90
bindtime = -1
removeongethit = 1
ownpal = 1


[State 2058, Hyper Initiation 1]
type = Explod
trigger1 = animelem = 4
anim = 920
postype = p1
pos = 5,-50
ownpal = 1
sprpriority = 5
supermovetime = 50

[State 1100, Hyper Initiation 2]
type = Explod
trigger1 = animelem = 4
anim = 921
postype = p1
pos = 5,-55
ownpal = 1
sprpriority = 5
supermovetime = 50
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)


[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NP,SP
time = 20
;ignorehitpause = 0
;persistent =

[State 3050, 1]
type = ChangeState
trigger1 = animtime = 0
value = 4005
ctrl = 0


;--------------------------------------------
;Dragon Cannon - Stance
[Statedef 4005]
type    = S
movetype= A
physics = S
velset = 0, 0
ctrl = 0
anim = 4005
sprpriority = 3
poweradd = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 19,3
channel = 3


[State 4000, Hyper BG Left]
type = Explod
trigger1 = time = 0
anim = 901
postype=left
pos = 160,0
scale = 0.642,1
sprpriority = -2
bindtime = -1
removetime = 125
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
ignorehitpause = 1
shadow = 68,68,68

[State 4000, Hyper BG Right]
type = Explod
trigger1 = time = 0
anim = 900
postype=right
pos = -160,0
scale = 0.642,1
sprpriority = -2
bindtime = -1
removetime = 125
removeongethit = 1
supermovetime = 99999999
pausemovetime = 99999999
ignorehitpause = 1
shadow = 68,68,68


[State 4005, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
name = "Dragon_Head"
ID = 4005
stateno = 4015
pos = -200,-60
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ignorehitpause = 1
;persistent =

[State 4005, Helper]
type = Helper
trigger1 = Time = 0
helpertype = normal ;player
name = "Dragon_Head"
ID = 4005
stateno = 4030
pos = -200,-60
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ignorehitpause = 1
;persistent =




[State 4005, 1]
type = ChangeState
trigger1 = animtime = 0
value = 4010
ctrl = 0

;---------------------------------------
;Dragon Cannon - End
[Statedef 4010]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0, 0
ctrl = 0
anim = 4010
sprpriority = 3
poweradd = 0


[State 4010, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Dragon Cannon - Blast (Hits)
[Statedef 4015]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 4030
sprpriority = 7
poweradd = 0


[State 4015, VelSet]
type = VelSet
trigger1 = time > 0 && time <= 100
x = 10.5
ignorehitpause = 1
;persistent =


[State 4015, 1]
type = HitDef
trigger1 = time%3 = 0
attr = S, HP			;Attribute: Standing, Normal Attack
damage = 25, 4			;Damage that move inflicts, guard damage
getpower = 0
animtype = back			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAFP			;Flags of conditions that move can hit
priority = 7, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,10			;Time attacker pauses, time opponent shakes
sparkno = S9992				;Spark anim no (Def: set above)
guard.sparkno = s935
sparkxy = -50, -20		;X-offset for the "hit spark" rel. to p2,
hitsound = s15,6			;Sound to play on hit
guardsound = s6300, 0			;Sound to play on guard
ground.type = high		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = -5, -1.5		;Velocity at which opponent is pushed
;airguard.velocity = -5,-4	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = high			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -5, -1.5		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air
Fall = 1
Air.Fall = 1
fall.recover = 0
palfx.time = 20
palfx.add = 40,-70, -200
palfx.mul = 256,256,256
palfx.sinadd = 40,30,0
Palfx.color = 0
palfx.invertall = 1;palfx.time = 30
ignorehitpause = 1
envshake.time = 4
envshake.ampl = 4


[State 4015, HitFX]
;triggerall = numhelper(4015) > 0
trigger1 = movehit = 1
type = Explod
anim = 982
;ID = 4001
pos = -5, -60
postype = p2  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 4015, HitFX2]
;triggerall = numhelper(4015) > 0
trigger1 = movehit = 1
type = Explod
anim = 983
;ID = 4001
pos = -5, -60
postype = p2  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 95
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
; Dragon Cannon - Blast (Image)
[Statedef 4030]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 4030;4035; 4015
sprpriority = 7
poweradd = 0

[State 4030, VelSet]
type = VelSet
trigger1 = time > 0 && time <= 100
x = 10.5
ignorehitpause = 1
;persistent =


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 5
trigger3 = time = 15
trigger4 = time = 25
trigger5 = time = 35
trigger6 = time = 45
trigger7 = time = 55
trigger8 = time = 65
trigger9= time = 75
trigger10 = time = 85
value = 4000,15
volume = 16


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 15,0
volume = 16

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (time % 3) = 0
anim = 4035;4030
ID = 4015
pos = 70,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 95
vel = 0,0
accel = 0,0
random = 0,0
removetime = 95
scale = .9,.9
sprpriority = 7
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =


[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (time % 3) = 0
anim = 4040;4030
ID = 4015
pos = -145,-10;-155,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100
scale = .9,1
sprpriority = 6
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = (time % 3) = 0
anim = 4040;4030
ID = 4015
pos = -295,-10;-275,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 110
vel = 0,0
accel = 0,0
random = 0,0
removetime = 100
scale = .9,1
sprpriority = 6
ownpal = 1
removeongethit = 0
ignorehitpause = 0
;persistent =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 95
;ignorehitpause =
;persistent =
