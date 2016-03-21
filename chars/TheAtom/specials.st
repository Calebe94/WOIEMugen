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
; mite punch startup HP    [StateDef 1001]
; mite punch startup MP    [StateDef 1003]
; mite punch startup lp    [StateDef 1005]
; subatomic startup        [StateDef 1007]
; Air Mite-Kick startup    [StateDef 1009]
; ground Mite-Kick         [StateDef 1014]
; SubAtomic SideStep start [Statedef 1011]
;---------------------------------------------------------------------------
; mite punch startup HP
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1001
ctrl = 0
velset = 0,0

[State 220, AfterImage]
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

[State 100, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 100, mitepunch]
type = PlaySnd
trigger1 = Time = 0
value = 80,2


[State 1001, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1002
ctrl = 0
;---------
; mite punch Hp
[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1002
ctrl = 0
velset = 30,0


[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 10,3
guardflag = MA
pausetime = 5,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-80
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -5
guard.velocity = -3
air.velocity = -1,-1
priority = 4,Hit


[State 1002, HitDef]
type = HitDef
trigger1 = AnimElem = 3    ;Activate at time = 0 (start of state)
attr = S, SA           ;Attributes of the HitDef (explained later)
damage = 80,10            ;Damage points to deal
guardflag = MA
pausetime = 15,15
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -25
air.velocity = -10,-3
priority = 4,Hit
guard.velocity = -9

[State 1002, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 7
length = 15
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1



[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
trigger1 = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1


[State 1001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;------------------------------

; mite punch startup MP
[StateDef 1003]
type = S
movetype = A
physics = S
anim = 1003
ctrl = 0
velset = 0,0

[State 1003, AfterImage]
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

[State 1003, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 100, mitepunch]
type = PlaySnd
trigger1 = Time = 0
value = 80,2

[State 1003, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1004
ctrl = 0
;---------
; mite punch Mp
[StateDef 1004]
type = S
movetype = A
physics = S
anim = 1002
ctrl = 0
velset = 20,0

[State 1004, HitDef]
type = HitDef
trigger1 = time = 0     ;Activate at time = 0 (start of state)
attr = S, SA
damage = 5,3
guardflag = MA
pausetime = 5,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-80
animtype = Light
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -5
guard.velocity = -3
air.velocity = -1,-1
priority = 4,Hit

[State 1004, HitDef]
type = HitDef
trigger1 = AnimElem = 3     ;Activate at time = 0 (start of state)
attr = S, SA           ;Attributes of the HitDef (explained later)
damage = 80,10            ;Damage points to deal
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
ground.type = High     ;*** Add this line ***
animtype = Medium
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -20
air.velocity = -10,-3
priority = 4,Hit
guard.velocity = -9


[State 1004, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 6
length = 15
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
triggerall = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1

[State 1004, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;------------------------------

; mite punch startup lp
[StateDef 1005]
type = S
movetype = A
physics = S
anim = 1004
ctrl = 0
velset = 0,0

[State 1005, AfterImage]
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

[State 1005, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 100, mitepunch]
type = PlaySnd
trigger1 = Time = 0
value = 80,2

[State 1005, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1006
ctrl = 0
;---------------
; mite punch Lp
[StateDef 1006]
type = S
movetype = A
physics = S
anim = 1002
ctrl = 0
velset = 12,0

[State 1006, HitDef]
type = HitDef
trigger1 = Time = 2    ;Activate at time = 0 (start of state)
attr = S, SA           ;Attributes of the HitDef (explained later)
damage = 80,10            ;Damage points to deal
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
ground.type = High     ;*** Add this line ***
animtype = Medium
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -20
air.velocity = -10,-3
priority = 4,Hit
guard.velocity = -9

[State 1006, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 5
length = 15
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
triggerall = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1


[State 1006, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; subatomic startup lp
[StateDef 1017]
type = S
movetype = A
physics = S
anim = 1005
ctrl = 0
velset = 0,0

[State 1007, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 10
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1007, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 1007, subattomic]
type = PlaySnd
trigger1 = Time = 0
value = 80,1

[State 1007, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1018
ctrl = 1
;----------------------------------
; subatomic startup mp
[StateDef 1007]
type = S
movetype = A
physics = S
anim = 1005
ctrl = 0
velset = 0,0

[State 1007, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 10
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1007, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 1007, subattomic]
type = PlaySnd
trigger1 = Time = 0
value = 80,1

[State 1007, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1008
ctrl = 1
;---------------------------------------------------------------------------
; subatomic startup hp
[StateDef 1027]
type = S
movetype = A
physics = S
anim = 1005
ctrl = 0
velset = 0,0

[State 1007, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 10
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1007, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 1007, subattomic]
type = PlaySnd
trigger1 = Time = 0
value = 80,1

[State 1007, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028
ctrl = 1
;---------------
; subatomic LP
[StateDef 1018]
type = S
movetype = A
physics = S
anim = 991006
ctrl = 0
velset = 6,0
juggle = 5

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 20,3
guardflag = MA
pausetime = 0,5
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
priority = 4,Hit


[State 200, Hit 2]
type = HitDef
trigger1 = AnimElem = 6    ;Activate at time = 0 (start of state)
attr = S, SA           ;Attributes of the HitDef (explained later)
damage = 85,5            ;Damage points to deal
guardflag = MA
pausetime = 12,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-8
air.velocity = -10,-3
fall = 1
priority = 4,Hit


[State 1008, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 15
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
trigger1 = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1

[State 600, mitePcancel]
type = ChangeState
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = (movecontact = 1)
value = 1001

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1014

[State 1008, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------
; subatomic MP
[StateDef 1008]
type = S
movetype = A
physics = S
anim = 1006
ctrl = 0
velset = 6,0
juggle = 5

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 20,3
guardflag = MA
pausetime = 0,5
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
priority = 4,Hit


[State 200, Hit 2]
type = HitDef
trigger1 = AnimElem = 6    ;Activate at time = 0 (start of state)
attr = S, SA           ;Attributes of the HitDef (explained later)
damage = 85,5            ;Damage points to deal
guardflag = MA
pausetime = 12,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-8
air.velocity = -10,-3
fall = 1
priority = 4,Hit


[State 1008, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 15
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
trigger1 = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1

[State 600, mitePcancel]
type = ChangeState
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = (movecontact = 1)
value = 1001

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1014

[State 1008, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------
; subatomic hp
[StateDef 1028]
type = S
movetype = A
physics = S
anim = 9991006
ctrl = 0
velset = 6,0
juggle = 5

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 20,3
guardflag = MA
pausetime = 0,5
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
priority = 4,Hit


[State 200, Hit 2]
type = HitDef
trigger1 = AnimElem = 6    ;Activate at time = 0 (start of state)
attr = S, SA           ;Attributes of the HitDef (explained later)
damage = 85,5            ;Damage points to deal
guardflag = MA
pausetime = 12,0
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 8
ground.hittime  = 7
ground.velocity = -12,-8
air.velocity = -10,-3
fall = 1
priority = 4,Hit


[State 1008, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 15
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1001, ChangeState] ;atomic punch cancel
type = ChangeState
triggerall = power >= 1000
trigger1 = Movehit = 1
trigger1 = command = "qcf_2p"
value = 33001
ctrl = 1

[State 600, mitePcancel]
type = ChangeState
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = (movecontact = 1)
value = 1001

[State 600, miteKcancel]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (movecontact = 1)
value = 1014

[State 1008, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------------------

;Air Mite-Kick startup  LK
[StateDef 1009]
type = A
movetype = A
physics = N
anim = 1007
ctrl = 0
velset = 0,0

[State 1009, AfterImage]
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

[State 1009, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 1009, mitekick]
type = PlaySnd
trigger1 = Time = 0
value = 80,3

[State 1009, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1010
ctrl = 0
;----------

; Air Mite-kick LK
[StateDef 1010]
type = A
movetype = A
physics = N
anim = 1008
ctrl = 0
velset = 10,15

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 5,2
guardflag = MA
pausetime = 0,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
hitflag = MAFD

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
damage = 10,3
guardflag = MA
pausetime = 0,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
hitflag = MAFD

[State 1010, HitDef]
type = HitDef
trigger1 = AnimElem = 3    ;Activate at time = 0 (start of state)
attr = A, SA           ;Attributes of the HitDef (explained later)
damage = 65,5            ;Damage points to deal
guardflag = MA
pausetime = 15,14
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-40
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -25
air.velocity = -10,-3
priority = 4,Hit
hitflag = MAFD

[State 1010, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 7
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1


[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 52

[State 1010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;--------------------------------------------------
;------------------------------------------------

;Air Mite-Kick startup  MK
[StateDef 1809]
type = A
movetype = A
physics = N
anim = 1007
ctrl = 0
velset = 0,0

[State 1009, AfterImage]
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

[State 1009, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 1009, mitekick]
type = PlaySnd
trigger1 = Time = 0
value = 80,3

[State 1009, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1810
ctrl = 0
;---------

; Air Mite-kick  MK
[StateDef 1810]
type = A
movetype = A
physics = N
anim = 1008
ctrl = 0
velset = 20,15

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 5,2
guardflag = MA
pausetime = 0,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
hitflag = MAFD

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
damage = 10,3
guardflag = MA
pausetime = 0,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
hitflag = MAFD

[State 1010, HitDef]
type = HitDef
trigger1 = AnimElem = 3    ;Activate at time = 0 (start of state)
attr = A, SA           ;Attributes of the HitDef (explained later)
damage = 65,5            ;Damage points to deal
guardflag = MA
pausetime = 15,14
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-40
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -25
air.velocity = -10,-3
priority = 4,Hit
hitflag = MAFD

[State 1010, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 7
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1


[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 52

[State 1010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;--------------------------------------------------
;------------------------------------------------

;Air Mite-Kick startup  HK
[StateDef 1909]
type = A
movetype = A
physics = N
anim = 1007
ctrl = 0
velset = 0,0

[State 1009, AfterImage]
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

[State 1009, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 1009, mitekick]
type = PlaySnd
trigger1 = Time = 0
value = 80,3

[State 1009, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1910
ctrl = 0
;---------

; Air Mite-kick  HK
[StateDef 1910]
type = A
movetype = A
physics = N
anim = 1008
ctrl = 0
velset = 30,9;25,10

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 5,2
guardflag = MA
pausetime = 0,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
hitflag = MAFD

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
damage = 10,3
guardflag = MA
pausetime = 0,2
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
hitflag = MAFD

[State 1010, HitDef]
type = HitDef
trigger1 = AnimElem = 3    ;Activate at time = 0 (start of state)
attr = A, SA           ;Attributes of the HitDef (explained later)
damage = 65,5            ;Damage points to deal
guardflag = MA
pausetime = 15,14
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-40
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -25
air.velocity = -10,-3
priority = 4,Hit
hitflag = MAFD

[State 1010, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 7
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1


[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 52

[State 1010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;--------------------------------------------------
;------------------------------------------------

;Air Mite-Kick startup  cancel
[StateDef 1709]
type = A
movetype = A
physics = N
anim = 1007
ctrl = 0
velset = 0,-2

[State 1009, AfterImage]
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

[State 1009, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 1009, mitekick]
type = PlaySnd
trigger1 = Time = 0
value = 80,3

[State 1009, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1910
ctrl = 0
;---------

; Air Mite-kick  cancel
[StateDef 1710]
type = A
movetype = A
physics = N
anim = 1008
ctrl = 0
velset = 25,9;25,10

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 5,2
guardflag = HA
pausetime = 7,7
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
;fall= 1

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
damage = 10,3
guardflag = HA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-99
animtype = High
ground.type = Low
ground.slidetime = 2
ground.hittime  = 2
ground.velocity = -1
guard.velocity = -1
air.velocity = -1,-1
priority = 4,Hit
;fall= 1

[State 1010, HitDef]
type = HitDef
trigger1 = AnimElem = 3    ;Activate at time = 0 (start of state)
attr = A, SA           ;Attributes of the HitDef (explained later)
damage = 65,5            ;Damage points to deal
guardflag = HA
pausetime = 15,15
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-40
ground.type = High     ;*** Add this line ***
animtype = Hard
ground.slidetime = 16
ground.hittime  = 15
ground.velocity = -25
air.velocity = -10,-3
priority = 4,Hit
;fall= 1

[State 1010, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 7
length = 15
FrameGap = 4
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1


[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 52

[State 1010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;--------------------------------------------------

;ground Mite-Kick LK
[StateDef 1014]
type = S
movetype = A
physics = S
anim = 1050
ctrl = 0
velset = 2,0

[State 1009, mitekick]
type = PlaySnd
trigger1 = Time = 0
value = 80,3

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 4
x = 13
y = 0
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 5
x = 2
y = 0

[State 191, dust]
type = Explod
trigger1 = animelem = 5
anim = 918
ID = 918
pos = 0,0
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

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, SA
hitflag = MA
damage = 35
guardflag = L
pausetime = 9,9
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
priority = 4,Hit

[State 0, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 30
length = 15
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelem = 8
time = 0
;ignorehitpause =
;persistent =


[State 1001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
;--------------------------------------------------
;ground Mite-Kick MK
[StateDef 1015]
type = S
movetype = A
physics = S
anim = 1051
ctrl = 0
velset = 5,0

[State 1009, mitekick]
type = PlaySnd
trigger1 = Time = 0
value = 80,3

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 4
x = 13
y = 0
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 5
x = 3
y = 0

[State 191, dust]
type = Explod
trigger1 = animelem = 5
anim = 918
ID = 918
pos = 0,0
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

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, SA
hitflag = MA
damage = 35
guardflag = L
pausetime = 9,9
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
priority = 4,Hit

[State 0, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 30
length = 15
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelem = 8
time = 0
;ignorehitpause =
;persistent =


[State 1001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
;--------------------------------------------------
;ground Mite-Kick HK
[StateDef 1016]
type = S
movetype = A
physics = S
anim = 1052
ctrl = 0
velset = 10,0     ;9,0

[State 1009, mitekick]
type = PlaySnd
trigger1 = Time = 0
value = 80,3

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 4
x = 13
y = 0
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 6
x = 4
y = 0

[State 191, dust]
type = Explod
trigger1 = animelem = 5
anim = 918
ID = 918
pos = 0,0
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

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, SA
hitflag = MA
damage = 35
guardflag = L
pausetime = 9,9
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
priority = 4,Hit

[State 0, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 30
length = 15
FrameGap = 2
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = animelem = 8
time = 0
;ignorehitpause =
;persistent =


[State 1001, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
; SubAtomic SideStep start
[Statedef 1011]
type = S
ctrl = 0
anim = 1009
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 1011, AfterImage]
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

[State 10011, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 1011]
type = ChangeState
triggerall = animtime = 0
trigger1 = command = "hold"
trigger2 = var(59)
value = 1012


[State 1011]
type = ChangeState
trigger1 = AnimTime = 0 &&  command != "hold"
value = 1013
ctrl = 1

;----------------------------

; SubAtomic SideStep mid
[Statedef 1012]
type = S
ctrl = 0
anim = 10099
velset = 0,0
movetype = I
physics = S
sprpriority = 2

;[State 1012, PowerAdd]
;type = PowerAdd
;trigger1 = AnimElemTime(2) % 10 = 1
;value = 3
;ignorehitpause =
;persistent =

[State 0, atomictime]
type = VarAdd
Triggerall =  var(20) > 0
trigger1 = gametime % 25;20
v = 20
value = -4;-2



[State 0, AssertSpecial]
type = AssertSpecial
Triggerall = PalNo = 7  ||  PalNo = 8 ||  PalNo = 9 ||  PalNo = 10 ||  PalNo = 11 ||  PalNo = 12
trigger1 = time > 0
flag = timerfreeze


[State 1012, 3]
type = ChangeState
Triggerall = PalNo = 1  ||  PalNo = 2 ||  PalNo = 3 ||  PalNo = 4 ||  PalNo = 5 ||  PalNo = 6
triggerall = animtime = 0
trigger1 = command != "hold"
trigger2 = time > 50 && var(59)
trigger3 = var(20)< 1
;trigger3 = time > 150
value = 1013
ctrl = 1


[State 1012, 3]
type = ChangeState
Triggerall = PalNo = 7  ||  PalNo = 8 ||  PalNo = 9 ||  PalNo = 10 ||  PalNo = 11 ||  PalNo = 12
triggerall = animtime = 0
trigger1 = command != "hold"
trigger2 = time > 50 && var(59)
;trigger3 = time > 300
value = 1013
ctrl = 1

[State 1012, subattack]
type = ChangeState
Triggerall = PalNo = 7  ||  PalNo = 8 ||  PalNo = 9 ||  PalNo = 10 ||  PalNo = 11 ||  PalNo = 12
triggerall = power >= 1000
trigger1 = command = "subattack"
value = 3007779
ctrl = 1

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x) + 1

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x) - 1

;-----------------------

; SubAtomic SideStep end
[Statedef 1013]
type = S
ctrl = 0
anim = 100999
velset = 0,0
movetype = I
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

[State 1011, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 3
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

[State 1008, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;--------------------------

; SubAtomic SideStep Cancel
[Statedef 1020]
type = S
ctrl = 0
anim = 991009
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = -1000

[State 0, VarSet]
type = VarSet
trigger1 = time =0
v = 20   ;fv = 10
value = 500
;ignorehitpause =
;persistent =


[State 1011, AfterImage]
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

[State 10011, shift]
type = PlaySnd
trigger1 = Time = 0
value = 31,1

[State 1011]
type = ChangeState
triggerall = animtime = 0
trigger1 = command = "hold"
trigger2 = var(59)
value = 1012


[State 1011]
type = ChangeState
trigger1 = AnimTime = 0 &&  command != "hold"
value = 1013
ctrl = 1

;----------------------------
;---------------------------------------------------------------------------
; subatomic Cancel
[StateDef 1021]
type = S
movetype = A
physics = S
anim = 991005
ctrl = 0
velset = 0,0


[State 1007, AfterImage]
type = AfterImage
trigger1  = time = 0
time = 10
length = 15
FrameGap = 3
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
trans = add1

[State 1007, shift]
type = PlaySnd
trigger1 = Time = 0
value = 32,1

[State 1007, subattomic]
type = PlaySnd
trigger1 = Time = 0
value = 80,1

[State 1007, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3007780
ctrl = 1

;--------------
;-----------------------

; SubAtomic S cancel
[Statedef 3007780]
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
trigger1 = AnimElem = 2
attr = C, HA
damage = 20,3
guardflag = MA
pausetime = 0,2
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

; end DCvM stuff
[State 1008, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------

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
