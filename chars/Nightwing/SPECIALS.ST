; States file for (Character) -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Super Jump (Vs Style)
; original code by MystikBlaze: http://mrev.infara.net/soldats/codearch.html
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jump Up (and Super Jump too)
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdback"
x = -1.0

[State 50, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdfwd"
x = 2.5

[State 660, Turn]
type = Turn
trigger1 = Var(3) = 1 && P2Dist X < -10

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0 && var(3) = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0 && var(3) = 1
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 41))

[State 50, 2]
type = null;ChangeAnim
trigger1 = Var(3) = 1 && Anim != 42 && vel x >= 0
value = 42

;------------------------------------------------------------------------------
;Super Jump adapted from Loganir's
[Statedef 1045]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 1045, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1045, d]
type = removeexplod
trigger1 = !time
id = 104


[State 1045, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 1045, 2]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = var(42) = -1
sysvar(1) = 1

[State 1045, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 1045, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x))) * 1.35
y = 1.65*const(velocity.jump.y)

[State 1045, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)


[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = time = 0
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 30


[State 1045, 7]
type = Explod
trigger1 = time = 0
anim = 61
pos = 0, 0
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1


[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 1045, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[State 1045, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 421


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
; Special Attacks
; 
; Special1 (F,D,DF + P)
;   (Move description goes here)
;
; (etc.)
;
;---------------------------------------------------------------------------
