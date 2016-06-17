; States file for Sinestro -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
;
; Ravenous Beam (D, DF, F + K) -- states 1000-1010
;   Just your basic ring energy beam... with teeth. >:}
;
; Deadly Gaze (Skull Beam) (D, DF, F + P) -- states 1100-1120
;   Beam attack. All ring-sligners have one; this is his.
;
; Sinister Spear (F, D, DF + P) -- states 1200
;   Anti-air: throw a spear upwards
;
; Chains of Despair (D, DB, B + P) -- states 1500-1510
;   Immobilization move: chains appear and temporarily trap the opponent
;---------------------------------------------------------------------------


;-----------------------------------
; Ravenous Beam
[StateDef 1000]
anim = 1000
ctrl = 0
type    = S
MoveType= A
physics = S
velset = 0,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1
volume = 100
channel = 0

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "beam"
ID = 1005
pos = 75,-100
postype = p1
stateno = 1005
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = NumHelper(1005) = 0
;trigger2 = Time = 31
value = 1009


;--------
; Ravenous Beam -- beam helper state
[StateDef 1005]
type = A
movetype = A
physics = C
anim = 1005
ctrl = 0
sprpriority = 2

[State 1005, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (75 * parent, facing)
y = parent, Pos Y - 100

[State 1005, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,0
volume = 100
channel = -1

[State 1005, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1005, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,SP
hitflag = MAF
guardflag = MAF
animtype = Heavy
air.animtype = Medium
fall.animtype = Medium
damage = 100,10
guardflag = MA
pausetime = 6,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 8
guard.velocity = -2
air.velocity = 4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 40,0,-250
palfx.mul = 256,256,256
palfx.sinadd = 20,20,0,10

[State 1005, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
;trigger2 = MoveContact

;---------
; Ravenous Beam - end
[StateDef 1009]
type = S
movetype = A
physics = S
anim = 1009

[State 1009, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------
; Deadly Stare
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0

; voice
[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,20
channel = 0

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 1100, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1105
ID = 1105
bindtime = -1
removetime = -1
sprpriority = 2
ontop = 1
ownpal = 1
removeongethit = 1

[State 1100, beam]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "beam"
ID = 1110
;pos = -12,-85
postype = p1
stateno = 1110
ownpal = 1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = back
priority = 5,Hit
damage = 10,1
pausetime = 0,0
sparkno = S9992
sparkxy = 0,-76
hitsound = S2,2
guardsound = S3,0
ground.slide = 10
ground.hit = 8
air.hittime = 20
ground.velocity = -9,-1
;guard.velocity = 0
air.velocity = -8,-2
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
sprpriority = 2
kill = 0
guard.kill = 0

[State 1100, changestate]
type = ChangeState
trigger1 = !AnimTime & NumHelper(1110) = 0
value = 1120

[State 1100, changestate]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------
; Deadly Stare -- beam helper state
[StateDef 1110]
type = A
movetype = A
physics = C
anim = 1110
ctrl = 0

[State 1110, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1110, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S9,2

[State 1110, hitdef]
type = HitDef
triggerall = ifelse(movecontact,(timemod >= 4,2),1)
trigger1 = hitcount < 6
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = medium
priority = 4,Hit
damage = 20,0
pausetime = 0,4
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-80
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -8,0
air.velocity = -9,0
sprpriority = 2

[State 1110, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = parent, Anim != 1100


;---------
; Deadly Stare - end
[StateDef 1120]
type = S
movetype = A
physics = S
anim = 1120

[State 1120, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
id = 1105

[State 1120, changestate]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;------------------------------
; Sinister Spear
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0

; voice
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,3
channel = 0

; woosh
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S0,2

; sfx
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,10

[State 1200, spear]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1210
projanim = 1210
projhitanim = 1210
projremanim = 1210
projcancelanim = 1210
velocity = 5,-7
offset = 0,0
; HitDef
attr = A,SP
hitflag = MAFD          ;HLM
guardflag = MA
animtype = DiagUp
priority = 3,Miss
damage = 50,8
pausetime = 7,7
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -1,-12
air.velocity = -2,-14
fall = 1

[State 1200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------------------------
; Chains of Despair
[StateDef 1500]
anim = 1500
ctrl = 0
type    = S
MoveType= A
physics = S
velset = 0,0

; determine distance away from me to summon the chains
[State 1500, varset]
type = VarSet
trigger1 = !Time
v = 1
value = IfElse(command = "qcb_x", 80, IfElse(command = "qcb_y", 130, 180))

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S9,10
;volume = 250
channel = 0

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,11
;volume = 250

[State 1500, ring spark]
type = Explod
trigger1 = AnimElem = 2
anim = 700
id = 700
pos = 45,-110
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 120
ontop = 1
removeongethit = 1

[State 1500, Helper1]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "chains"
ID = 1505
stateno = 1505
pos = var(1),-80
scale = 0.5,0.5
postype = p1
facing = 1

[State 1500, Helper2]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "chains"
ID = 1507
stateno = 1507
pos = var(1),-80
scale = 0.5,0.5
postype = p1
facing = 1

[State 1500, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
id = 700

[State 1500, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Chains of Despair - helper #1
[StateDef 1505]
anim = 1505
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = -1

[State 1505, hitdef]
type = HitDef
trigger1 = !Time
attr = S,SA
hitflag = MAF
guardflag = MAF
animtype = Back
air.animtype = Medium
fall.animtype = Medium
damage = 25,3
guardflag = MA
pausetime = 10,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 8
guard.velocity = -2
air.velocity = 4,8
kill = 0
guard.kill = 0
p2stateno = 1510

[State 1505, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = MoveHit && P2StateNo != 1510
value = 1506


; Chains of Despair - helper #1 fadeout
[StateDef 1506]
anim = 1506
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = -1

[State 1506, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


; Chains of Despair - helper #2
[StateDef 1507]
anim = 1507
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = 3

[State 1507, hitdef]
type = HitDef
trigger1 = !Time
attr = S,SA
hitflag = MAF
guardflag = MAF
animtype = Back
air.animtype = Medium
fall.animtype = Medium
damage = 25,3
guardflag = MA
pausetime = 10,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = 8
guard.velocity = -2
air.velocity = 4,8
kill = 0
guard.kill = 0
p2stateno = 1510

[State 1507, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = MoveHit && P2StateNo != 1510
value = 1508


; Chains of Despair - helper #2 fadeout
[StateDef 1508]
anim = 1508
ctrl = 0
type    = S
MoveType= A
physics = S
sprpriority = 3

[State 1508, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0


; Chains of Despair, P2 custom hitstate
[StateDef 1510]
type    = U
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 1510, custom anim]
type = ChangeAnim2
trigger1 = !Time
value = 1510

[State 1510, unchained]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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
