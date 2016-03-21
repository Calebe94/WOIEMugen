; States file for Lobo -- Throws
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
; Standing throw: 810-814
; Air throw: 850-854
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Standing over-the-head throw: strong punch + forward when near P2
[StateDef 810]
anim = 810
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 100

[State 810, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M; M-          ;Affect only ground people who are not being hit (or not?)
guardflag = M
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark (except for guard)
sparkxy = -50,-80
sprpriority = 1       ;Draw in front of p2
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
;mindist = 
;maxdist = 
;snap = 0,0
sprpriority = 1
p2facing = 1
p1stateno = 812
p2stateno = 813

[State 810, missed]
type = ChangeState
trigger1 = AnimTime = 0
value = 811
ctrl = 1


;-------------------------------------------
; Standing throw (missed)
[StateDef 811]
anim = 811
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 811, oof!]
type = PlaySnd
trigger1 = Time = 0
value = 4,1
;volume = 0
channel = 1

[State 811, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------
; Standing throw (hit)
[StateDef 812]
anim = 812
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 812, 0]
type = PlaySnd
trigger1 = Time = 0
persistent = 0
value = 3,1

[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = const(size.ground.front), 0

[State 812, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 40, -30

[State 812, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 0, -130

[State 812, grunt]
type = PlaySnd
trigger1 = AnimElem = 6
channel = 0
value = 1,2

[State 812, targetdrop]
type = TargetDrop
trigger1 = AnimTime = -1

[State 812, turn]
type = Turn
trigger1 = AnimTime = -1

[State 812, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------
; Being grabbed (p2 custom hit state)
[StateDef 813]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 813, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 813

[State 813, 2] ; tossed
type = ChangeState
trigger1 = AnimTime = 0
value = 814

[State 813, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0


;-------------------------------------------
; Being thrown (p2 custom hit state)
[StateDef 814]
type = A
movetype = H
physics = N
ctrl = 0
velset = 10,-2

[State 814, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 814

[State 814, 0]
type = PosSet
trigger1 = Time = 0
y = Pos Y - 10

[State 814, turn around]
type = Turn
trigger1 = AnimTime = 0

[State 814, lifeadd]
type = LifeAdd
trigger1 = Time = 0
value = -120
kill = 1

[State 814, 2] ;dropped
type = SelfState
trigger1 = AnimTime = 0
value = 5050

;[State 814, screenbound]  ; don't move the camera to follow P2
;type = ScreenBound
;trigger1 = Alive
;movecamera = 0,0




;---------------------------------------------------------------------------
; Air over-the-head chain throw: strong punch + forward when near P2 in the air
[StateDef 850]
anim = 850
ctrl = 0
type = A
movetype = A
physics = A
velset = 0,0
poweradd = 100

[State 850, hitdef]
type = HitDef
trigger1 = Time = 0
attr = A, NT          ;Attributes: Standing, Normal Throw
hitflag = AF
guardflag = A
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark (except for guard)
sparkxy = -50,-80
sprpriority = 1       ;Draw in front of p2
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
;mindist = 
;maxdist = 
;snap = 0,0
sprpriority = 1
p2facing = 1
p1stateno = 852
p2stateno = 853
fall.recover = 0

[State 850, missed]
type = ChangeState
trigger1 = AnimTime = 0
value = 851
ctrl = 1


;-------------------------------------------
; Air throw (missed)
[StateDef 851]
anim = 851
ctrl = 0
type = A
movetype = I
physics = A
velset = 0,0

[State 851, oof!]
type = PlaySnd
trigger1 = Time = 0
value = 4,1
;volume = 0
channel = 1

[State 851, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1


;-------------------------------------------
; Throw 1 (hit)
[StateDef 852]
anim = 852
ctrl = 0
type = A
movetype = A
physics = N
velset = 0,0

[State 852, 0]
type = PlaySnd
trigger1 = Time = 0
persistent = 0
value = 3,1

[State 852, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 80, -94   ;Pos Y

[State 852, move behind]
type = SprPriority
trigger1 = AnimElem = 2
value = -1

[State 852, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40,-140

[State 852, move in front again]
type = SprPriority
trigger1 = AnimElem = 3
value = 1

[State 852, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -50,-110

[State 852, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 30,-100

[State 852, Down]
type = VelSet
trigger1 = AnimElem = 4
x = -1
y = 5

[State 852, grunt]
type = PlaySnd
trigger1 = AnimElem = 4
channel = 0
value = 1,2

[State 852, targetdrop]
type = TargetDrop
trigger1 = AnimTime = -1

[State 852, jump away]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;-------------------------------------------
; Being grabbed (p2 custom hit state)
[StateDef 853]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 853, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 853

[State 853, 2] ; tossed
type = ChangeState
trigger1 = AnimTime = 0
value = 854

[State 853, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0


;-------------------------------------------
; Being thrown (p2 custom hit state)
[StateDef 854]
type = A
movetype = H
physics = A
ctrl = 0
velset = -9,-3

[State 854, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 854

[State 854, lifeadd]
type = LifeAdd
trigger1 = Time = 0
value = -120
;kill = 1

[State 854, 2] ;dropped
type = SelfState
trigger1 = AnimTime = 0
value = 5050

;[State 854, screenbound]  ; don't move the camera to follow P2
;type = ScreenBound
;trigger1 = Alive
;movecamera = 0,0




;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
