; States file for {character} -- Basics
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
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 7
value = 6,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 17
value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 7) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = Time = 17
value = 5,2

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Explod]
type = Explod
Trigger1 = AnimElem=2
anim = 1882
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
sprpriority = 2
removeongethit = 1

[State 182, Explod]
type = Explod
Trigger1 = AnimElem=5
anim = 1883
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
sprpriority = 2
removeongethit = 1

[State 182,0]
type = PlaySnd
Trigger1 = AnimElem=5
value = 60,8


[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 8,0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver

;-----------------------
;Win Pose 3  "CATCH ME IF YOU CAN"
[Statedef 183] ;Motorcycle
type = S
movetype = I
physics = S
ctrl = 0
anim = 183
velset = 0,0

[state 183, Assert]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 15,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S19,5
volume = 300
freqmul = .96

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 15,7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 200
value = S15,8

[state 191, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,550]
flag = roundnotover

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 300
value = 19,0
volume = 300

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 350
value = 19,0
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = 19,2
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 300
value = 19,3
volume = 300

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 306
trigger1 = time = 300
trigger2 = time = 320
trigger3 = time = 330
trigger4 = time = 340
trigger5 = time = 350
trigger4 = time = 360
trigger5 = time = 370
value = S15,17

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 310
value = 19,4
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 320
value = 19,4
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 330
value = 19,4
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 340
value = 19,4
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 350
value = 19,4
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 360
value = 19,4
volume = 300

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 370
value = 19,4
volume = 300

[State 191, 4];Policecar1
type = Explod
trigger1 = time = 300
Anim = 1200
Pos = -1000, 10
vel = 12,0
sprpriority = -5
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 191, 4];Policecar1wheels
type = Explod
trigger1 = time = 300
Anim = 1201
Pos = -1000, 10
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1

[State 191, 4];Policecar1lamp
type = Explod
trigger1 = time = 300
Anim = 1202
Pos = -1000, 13
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

;[State 191, 4];Policecar1number
;type = Explod
;trigger1 = time = 250
;Anim = 1203
;Pos = -1000, -5
;vel = 12,0
;sprpriority = -4
;removetime = 200
;Bindtime = 1

[State 191, 4];Policecar1policeman
type = Explod
trigger1 = time = 300
Anim = 1207
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0



[State 191, 4];Policecar1policeman   crooked
type = Explod
trigger1 = time = 300
Anim = 1302
Pos = -973, 6
vel = 12,0
sprpriority = 3
removetime = 200
Bindtime = 1
shadow = -1,0,0
scale = 1.3, 1.3

;[State 191, 4];Policecar1blueglow
;type = Explod
;trigger1 = time = 250
;Anim = 1214
;Pos = -1000, -5
;vel = 12,0
;sprpriority = -4
;removetime = 200
;Bindtime = 1
;Trans = add
;alpha=200,75
;xscale = 0.5
;yscale = 0.5

;[State 191, 4];Policecar1redglow
;type = Explod
;trigger1 = time = 250
;Anim = 1213
;Pos = -1000, -5
;vel = 12,0
;sprpriority = -6
;removetime = 200
;Bindtime = 1
;Trans = add
;alpha=200,75
;xscale = 0.5
;yscale = 0.5

;[State 191, 4];Dustcloud
;type = Explod
;trigger1 = time = 340
;Anim = 1216
;Pos = 120, -5
;sprpriority = -1
;Bindtime = 1
;shadow = -1,0,0

;[State 191, 5];Dustcloud2
;type = Explod
;trigger1 = time = 330
;Anim = 1216
;Pos = 160, 5
;sprpriority = 2
;Bindtime = 1
;shadow = -1,0,0
;Trans = add
;alpha=200,75

;[State 191, 5];Dustcloud3
;type = Explod
;trigger1 = time = 360
;Anim = 189
;Pos = 160, 5
;sprpriority = -1
;Bindtime = 1
;shadow = -1,0,0



[State 191, 5];Policecar2
type = Explod
trigger1 = time = 350
Anim = 1200
Pos = -1000, 10
vel = 12,0
sprpriority = 2
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 191, 5];Policecar2wheels
type = Explod
trigger1 = time = 350
Anim = 1201
Pos = -1000, 10
vel = 12,0
sprpriority = 3
removetime = 200
Bindtime = 1

[State 191, 5];Policecar2lamp
type = Explod
trigger1 = time = 350
Anim = 1202
Pos = -1000, 13
vel = 12,0
sprpriority = 2
removetime = 200
Bindtime = 1
shadow = -1,0,0

;[State 191, 5];Policecar2number
;type = Explod
;trigger1 = time = 350
;Anim = 1204
;Pos = -1000, 5
;vel = 12,0
;sprpriority = 3
;removetime = 200
;Bindtime = 1

[State 191, 5];Policecar2policeman
type = Explod
trigger1 = time = 350
Anim = 1208
Pos = -1000, 5
vel = 12,0
sprpriority = 3
removetime = 200
Bindtime = 1
shadow = -1,0,0

;[State 191, 5];Policecar2policeman   crooked
;type = Explod
;trigger1 = time = 350
;Anim = 1301
;Pos = -973, 6
;vel = 12,0
;sprpriority = 3
;removetime = 85
;Bindtime = 1
;shadow = -1,0,0
;scale = 1.3, 1.3

;[State 191, 5];Policecar2 policeman crooked shot
;type = Explod
;trigger1 = time = 435
;Anim = 1303
;Pos = 30,0
;vel = 0,0
;sprpriority = 3
;removetime = 200
;Bindtime = 1
;shadow = -1,0,0
;scale = 1.3, 1.3

;[State 191, 5];Policecar2 policeman Ground Dust
;type = Explod
;trigger1 = time = 460
;Anim = 9016
;Pos = 0,0
;vel = 0,0
;sprpriority = 1
;removetime = 12

;[State 191, 5];Policecar2 policeman crooked shot (Blood)
;type = Explod
;trigger1 = time = 435
;Anim = 89
;Pos = 30,-30
;vel = 0,0
;facing = -1
;sprpriority = 4
;removetime = 16
;Bindtime = 1

;[State 191, 5];Policecar2blueglow
;type = Explod
;trigger1 = time = 350
;Anim = 1214
;Pos = -1000, 10
;vel = 12,0
;sprpriority = 5
;removetime = 200
;Bindtime = 1
;Trans = add
;alpha=200,75
;xscale = 0.5
;yscale = 0.5

;[State 191, 5];Policecar2redglow
;type = Explod
;trigger1 = time = 350
;Anim = 1213
;Pos = -1000, 5
;vel = 12,0
;sprpriority = 1
;removetime = 200
;Bindtime = 1
;Trans = add
;alpha=200,75
;xscale = 0.5
;yscale = 0.5

;[State 191, 5];Dustcloud
;type = Explod
;trigger1 = time = 440
;Anim = 1216
;Pos = 90, 5
;sprpriority = 8
;Bindtime = 1
;shadow = -1,0,0

;[State 191, 5];Dustcloud2
;type = Explod
;trigger1 = time = 400
;Anim = 7009
;Pos = 50, 5
;sprpriority = 2
;Bindtime = 1
;shadow = -1,0,0

[State 191, 6];Policecar3
type = Explod
trigger1 = time = 375
Anim = 1200
Pos = -1000, 10
vel = 12,0
sprpriority = -5
removetime = 200
Bindtime = 1
shadow = -1,0,0

[State 191, 6];Policecar3wheels
type = Explod
trigger1 = time = 375
Anim = 1201
Pos =-1000, 10
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1

[State 191, 6];Policecar3lamp
type = Explod
trigger1 = time = 375
Anim = 1202
Pos = -1000, 13
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

;[State 191, 6];Policecar3number
;type = Explod
;trigger1 = time = 375
;Anim = 1205
;Pos = -1000, -5
;vel = 12,0
;sprpriority = -4
;removetime = 200
;Bindtime = 1
;shadow = -1,0,0

[State 191, 6];Policecar3policeman
type = Explod
trigger1 = time = 375
Anim = 1209
Pos = -1000, -5
vel = 12,0
sprpriority = -4
removetime = 200
Bindtime = 1
shadow = -1,0,0

;[State 191, 6];Policecar3blueglow
;type = Explod
;trigger1 = time = 375
;Anim = 1214
;Pos = -1000, -5
;vel = 12,0
;sprpriority = -3
;removetime = 200
;Bindtime = 1
;Trans = add
;alpha=200,75
;xscale = 0.5
;yscale = 0.5

;[State 191, 6];Policecar3redglow
;type = Explod
;trigger1 = time = 375
;Anim = 1213
;Pos = -1000, -5
;vel = 12,0
;sprpriority = -6
;removetime = 200
;Bindtime = 1
;Trans = add
;alpha=200,75
;xscale = 0.5
;yscale = 0.5

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 15
helpertype = normal ;player
name = "bike"
ID = 306
stateno = 306
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
;size.xscale (float)
;size.yscale (float)
;size.ground.back (int)
;size.ground.front (int)
;size.air.back (int)
;size.air.front (int)
;size.height (int)
;size.proj.doscale (int)
;size.head.pos (int,int)
;size.mid.pos (int,int)
;size.shadowoffset (int)
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = Animelem = 3
anim = 3002
ID = 3002
pos = -281, -4
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 11,0
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

[State 0, Explod]
type = Explod
trigger1 = Time = 45;AnimElem = 6
anim = 3001
ID = 3001
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
;ignorehitpause =
;persistent =

[State 181, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;-------------------------------------------------------------------------------------
 ;bike helper
[Statedef 306]
type = S
movetype = I
physics = S
ctrl = 0
anim = 306
velset = 0,0

;[State 0, PlaySnd]
;type = PlaySnd
;triggerall = anim = 306
;trigger1 = animelem = 5
;value = S19,6
;volume = 300
;freqmul = .96

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 306
trigger1 = animelem = 5
trigger2 = animelem = 8
trigger3 = animelem = 10
value = S15,7;6

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 306
trigger1 = animelem = 5
trigger2 = animelem = 8
trigger3 = animelem = 10
value = S15,7;17

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 306
trigger1 = animelem = 12
trigger2 = animelem = 15
trigger3 = animelem = 18
trigger4 = animelem = 20
trigger5 = animelem = 23
value = S15,7;6

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 306
trigger1 = animelem = 12
trigger2 = animelem = 15
trigger3 = animelem = 18
trigger4 = animelem = 20
trigger5 = animelem = 23
value = S15,17

[State 191, Explod]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 16
trigger5 = AnimElem = 19
anim =  1304
ID = 1304
pos = -122,5
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, Velset]
type = Velset
trigger1 = AnimElem = 5
x = 5
y = 0

[State 0, VelMul]
type = VelMul
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger8 = AnimElem = 13
trigger9 = AnimElem = 14
trigger10 = AnimElem = 15
x = 3
y = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
anim = 3003
ID = 3003
pos = -20,0
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
sprpriority = 3
ontop = 1
ownpal = 1
removeongethit = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Animtime = 0

;-----------------------
; Winpose #4
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184,0]
type = PlaySnd
trigger1 = Time = 15
value = 100,0

[State 184,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver
;-----------------------
; Winpose #5 - alfred calling
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 185,0]
type = PlaySnd
trigger1 = Time = 17
value = 100,1

[State 185,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver
;-----------------------
; Winpose #6 - i warned you
[Statedef 186]
type = S
ctrl = 0
anim = 186
velset = 0,0

[State 186,0]
type = PlaySnd
trigger1 = Time = 19
value = 100,2

[State 186,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver
;-----------------------
; Winpose #7 - family
[Statedef 187]
type = S
ctrl = 0
anim = 187
velset = 0,0

[State 187,0]
type = PlaySnd
trigger1 = Time = 19
value = 10,1

[State 187,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver

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
;---------------------------------------------------------------------------
; Intros
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190



[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = intro
flag2 = nobardisplay


[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "Aquaman" || p2name = "Wonder Woman Reloaded"
trigger2 = p2name = "Green Lantern" || p2name = "Blackest Night Hal Jordan"
trigger3 = p2name = "Cyborg" || p2name = "flash"
trigger4 = p2name = "John Stewart"
value = 1944
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "Green Lantern Guy"
value = 1945
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "nightwing"
value = 1946
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "Bane"
value = 1947
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "sinestro"
value = 1948
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "The Joker"
value = 1949
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "superman"
value = 1950
ctrl = 0

[State 190, intro decider]
type = ChangeState
trigger1 = Time = 0
value = 191 + ((Random * 4) / 1000)

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 35
value = 5,0

[State 191, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305


;-----------------------
; Intro 2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,4
channel = 0

[State 192, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 192, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305


;-----------------------
; Intro 3
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1]
type = PlaySnd
trigger1 = Time = 23
value = 7,3

[State 193, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 193, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

;-----------------------
; INTRO 4 -  Smash
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, 1]
type = PlaySnd
trigger1 = Time = 0
value = 5,1

[State 194, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1
[State 194, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

; Intro jla
[Statedef 1944]
type = S
ctrl = 0
anim = 1196
velset = 0,0

[State 1196, 1]
type = PlaySnd
trigger1 = Time = 100
value = 30,0

[State 1196, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 1196, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

 ; Intro guy gardner
[Statedef 1945]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 197, 1]
type = PlaySnd
trigger1 = Time = 26
value = 5,6

[State 197, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 197, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

; Intro nightwing
[Statedef 1946]
type = S
ctrl = 0
anim = 1194
velset = 0,0

[State 1194, 1]
type = PlaySnd
trigger1 = Time = 66
value = 6,4


[State 1194, A0] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0
value = 0

; Intro Bane
[Statedef 1947]
type = S
ctrl = 0
anim = 1195
velset = 0,0

[State 1195, 1]
type = PlaySnd
trigger1 = Time = 146
value = 6,3

[State 1195, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 1195, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

; Intro sinestro
[Statedef 1948]
type = S
ctrl = 0
anim = 1198
velset = 0,0

[State 1198, 1]
type = PlaySnd
trigger1 = Time = 62
value = 8000,1

[State 1198, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 1198, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305

[State 1198, A0] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 1198

[state 1198, A1]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 1198, A2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1198, A0] ;Change to stand state when done
type = ChangeState
trigger1 = animtime = 0
value = 0

 ; Intro joker
[Statedef 1949]
type = S
ctrl = 0
anim = 1197
velset = 0,0

[State 1197, 1]
type = PlaySnd
trigger1 = Time = 60
value = 6,6

[State 1197, Explod]
type = Explod
trigger1 = Time = 0
anim = 2305
ID = 2305
pos = -48,23
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
scale = 1,1
sprpriority = 0
ontop = 1

[State 1197, RemoveExplod]
type = RemoveExplod
trigger1 = Time= 100
id = 2305
[State 187,0]
type = PlaySnd
trigger1 = Time = 19
value = 10,1

[State 187,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Taunt
[Statedef 199]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 199, 0]
type = PlaySnd
trigger1 = Time = 10
value = 199, ifelse(Random > 500, 0, 1)

[State 199, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 199, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S0,0
volume = 255
ignorehitpause = 1
persistent = 1

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,0



[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = S9991	;Spark anim no (Def: set above)
sparkxy = 0,-100		;X-offset for the "hit spark" rel. to p2,
guard.sparkno = s8840					;Y-offset for the spark rel. to p1
hitsound = S2, 0			;Sound to play on hit
guardsound = S3, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimElem = 2, > 0
trigger1 = command = "x"
value = 201

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing light punch 2
;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 201
poweradd = 20
sprpriority = 2



[State 1000, fx]
type = Explod
trigger1 = p2name = "superman" || p4name = "superman"
anim = 56701
postype =p1
scale = 1
sprpriority = 10


[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0


[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7,2

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,10
sparkno = S9991	;Spark anim no (Def: set above)
sparkxy = 0,-70		;X-offset for the "hit spark" rel. to p2,
guard.sparkno = s8840					;Y-offset for the spark rel. to p1
hitsound = S2, 0			;Sound to play on hit
guardsound = S3, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimElem = 4, > 0
trigger1 = command = "y"
value = 210

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-100
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 96
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 65
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 96
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = -10,-30
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-55
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 65
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;removetime = -2
;sprpriority = 2
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -6,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
pausetime = 4,8
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
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
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
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

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
damage = 96
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
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
damage = 22
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
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
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
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
damage = 65
guardflag = HA
pausetime = 4,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-10
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
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

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
damage = 92
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;===========================================================================
; THROWS
;===========================================================================
[StateDef 800] ; Throw 1 - attempt
type = S
movetype = A
physics = S
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 3

[State 800]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
guard.dist = 0
p2facing = 1
p1stateno = 810
p2stateno = 820

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------
[StateDef 810] ; Throw 1 - throwing
 type = S
 movetype = I
 physics = S
 anim = 810
 ctrl = 0
 velset = 0,0
 sprpriority = 3

[State 810, Bind1]
 type = TargetBind
 trigger1 = AnimElem = 1, >= 0
 trigger1 = AnimElem = 2, <0
 pos = 35,0

 [State 810, Turn]
 type = Turn
 trigger1 = AnimElem = 2

[State 810, Bind2]
 type = TargetBind
 trigger1 = AnimElem = 2, >= 0
 trigger1 = AnimElem = 3, <0
 pos = -22,0

 [State 810, Bind3]
 type = TargetBind
 trigger1 = AnimElem = 3, >= 0
 trigger1 = AnimElem = 4, <0
 pos = -3,-101

 [State 810, Under]
 type = SprPriority
 trigger1 = AnimElem = 4
 value = -3

[State 810, Bind4]
 type = TargetBind
 trigger1 = AnimElem = 4, >= 0
 trigger1 = AnimElem = 5, <0
 pos = 44,-88

 [State 810, Bind5]
 type = TargetBind
 trigger1 = AnimElem = 5
 pos = 57, -27

 [State 810, Drop]
 type = TargetVelSet
 trigger1 = AnimElem = 5, = 1
 X = 3
 Y = -7

 [State 810, Drop2]
 type = TargetDrop
 trigger1 = AnimElem = 5, = 1

 [State 810, End]
 type = ChangeState
 trigger1 = AnimTime = 0
 value = 0
 ctrl = 1
 

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 31
value = 15,6
channel = 0
;------------------------------------------------
[StateDef 820] ; Throw 1 - Thrown
 type = S
 movetype = H
 physics = N
 ctrl = 0
 velset = 0,0
 sprpriority = 0

 [State 820, Anim]
 type = ChangeAnim2
 trigger1 = Time = 0
 value = 820

 [State 820, InAir]
 type = StateTypeSet
 trigger1 = AnimElem = 3
 statetype = A

 [State 820, Hurt]
 type = LifeAdd
 trigger1 = Pos Y >= 0
 trigger1 = Vel Y > 0
 trigger2 = AnimElem = 5, < 0
 trigger2 = P2StateNo != 810
 value = -100

 [State 820, IfDrop]
 type = SelfState
 trigger1 = AnimElem = 5, < 0
 trigger1 = P2StateNo != 810
 value = 5050

 [State 820, AirGravity]
 type = Gravity
 trigger1 = AnimElem = 5, > 0

 [State 820, End]
 type = SelfState
 trigger1 = Pos Y >= 0
 trigger1 = Vel Y > 0
 value = 5100


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


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50


