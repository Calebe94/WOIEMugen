;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WONDER WOMAN RELOADED  -  Version 2.0   02/17/2007
;Edits & Codes by Loganir 
;-----------     Loganir@gmail.com ------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
; States that are always executed (use statedef -2)
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Statedef -2]


[State -2, ai]
type = VarSet
triggerall = (Var(59) > 0)
trigger1 = (RoundState != 2)
trigger2 = (!Alive)
var(59) = -2

[State -2, a0]
type = VarAdd
trigger1 = Var(8) > 0
V = 8
value = -1

[State -2, A3]
type = VarSet
trigger1 = (Var(20) = 1) && (MoveType != H)
var(20) = 0

[State -2, A4]
type = VarSet
trigger1 = RoundState != 4 
v = 52
value = ceil(P2Dist X)
ignorehitpause = 1


[State -2, a5]
type = PlaySnd
triggerall = var(18)=1
trigger1 = (p2stateno = 5110) && (enemy, Time = 1)
value = 7, 2
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[State -2, p2] ;explodpedr
type = helper
triggerall = var(18)=1
trigger1 = (p2stateno = 5110) && (enemy, Time = 1)
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = -15,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State -2, copyright]
type = DisplayToClipboard
trigger1 = 1
text="Wonder Woman Reloaded by Loganir"


[State -2, Hit Wall] ;Based in HIT WALL CODES - Thanks to DG && SMI (Bia)
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9020
triggerall = target(0), vel X < -6;-7
trigger1 = StateNo = 220 && movehit 
trigger1 = target(0), BackEdgeBodyDist <= 20
trigger1 = var(50) :=1
trigger2 = StateNo = 220 && movehit
trigger2 = target(0), FrontEdgeBodyDist <= 20 
trigger2 = var(50) :=1
trigger3 = StateNo = 245 && movehit 
trigger3 = target(0), BackEdgeBodyDist <= 20
trigger3 = var(50) :=1
trigger4 = StateNo = 245 && movehit
trigger4 = target(0), FrontEdgeBodyDist <= 20 
trigger4 = var(50) :=1
trigger5 = StateNo = 1505 && Time > 20
trigger5 = target(0), BackEdgeBodyDist <= 20
trigger5 = var(50) :=1
trigger6 = StateNo = 1505 && Time > 20
trigger6 = target(0), FrontEdgeBodyDist <= 20 
trigger6 = var(50) :=1
trigger7 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger7 = target(0), BackEdgeBodyDist <= 20
trigger7 = var(50) :=1
trigger8 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger8 = target(0), FrontEdgeBodyDist <= 20 
trigger8 = var(50) :=1
value = 9020
ID = 0

[State -2, a9];p2 bounce ground mvsc style 
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9023
trigger1 = !var(1) && StateNo = 620 && movehit 
trigger1 = target(0), stateno=5100
trigger1 = var(50) :=1
trigger2 = !var(1) && StateNo = 650 && movehit 
trigger2 = target(0), stateno=5100
trigger2 = var(50) :=1
trigger3 = !var(1) && prevStateNo = 620 
trigger3 = target(0), stateno=5100
trigger3 = var(50) :=1
trigger4 = !var(1) && prevStateNo = 650 
trigger4 = target(0), stateno=5100
trigger4 = var(50) :=1
value = 9023
ID = 0

[State -2, reset var(50)] 
type = VarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1

[State -2, reset parent var(50)] 
type = ParentVarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0 
ignorehitpause = 1


[State -2, Hit Wall Spark] 
type = Explod
triggerall =!var(55)
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H 
trigger2 = target(0), Time = 1
anim = 8720
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,1,-1) 
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Spark] 
type = Explod
triggerall =var(55)=1
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H 
trigger2 = target(0), Time = 1
anim = F72 ;ifelse(!var(55),8720,Fifelse(72)) 
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,-1,1) 
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit ground Spark] 
type = Explod
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time=0
anim = 8725
pos = 0,0;floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = p2
sprpriority = 9
ownpal = 1
ignorehitpause = 1
bindtime = 4
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time = 1
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H 
trigger2 = target(0), Time = 1
value = 40, 2
ignorehitpause = 0
supermovetime =99
pausemovetime = 99

[State -2, Hit ground Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time = 1
value = 40, 1
ignorehitpause = 0
supermovetime =99
pausemovetime = 99

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWW====== -2 DCvsMARVEL SCREENPACK SECTION ==========
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

[State -2, AssertSpecial] ;will be removed for the screenpack release, stage reflection issues. 
type = AssertSpecial
triggerall = var(55)=1
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = var(55)=1
trigger1 = numhelper(9010) = 0; && statetype != A && statetype != L
helpertype = normal ;player
name = "Shadow"
ID = 9010
stateno = 9010
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
size.xscale = 1
size.yscale = 1


[State -2, a0];oponnent indicator
type = Explod
triggerall = var(55)=1
triggerall = (NumExplod(705) = 0)
trigger1 = Pos Y <= -200 && (P2Dist Y > 50)
anim = F705
ID = 705
pos = 0,-140
postype = p2
removetime = -1
bindtime = -1
ontop = 1
ownpal = 1
[State -2, a1]
type = RemoveExplod
triggerall = var(55)=1
trigger1 = p2Dist Y < 50
ID = 705

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWW====== END DCvsMARVEL SCREENPACK SECTION ==========
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW


