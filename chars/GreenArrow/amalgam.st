; States file for {character} (amalgam)
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
; {move name} (Amalgam Hyper -- QCF + HP+HK)  -- states 4000-4200
;   {move description}
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Amalgam Hyper
[StateDef 4000]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 4000
velset = 0,0

; portrait collision

 [State 4000, 0]
type = PlaySnd
trigger1 = Time = 0
value = S10,10
channel = 0

[state 4000, gethit]
type = hitoverride
trigger1 = time = 0
time = 51
attr = SCA, AA, AT, AP
slot = 0
stateno = 4004


 [State 4000, 0]
type = PlaySnd
trigger1 = Time = 0
value = 8,0


 [State 4000, 0]
type = PlaySnd
trigger1 = AnimElem = 7
value = 111,17


; hide lifebars
[State 4000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 4000, 2]
type = SuperPause
trigger1 = AnimElem = 7
time = 100
sound = S10,1
pos = 0,-80
darken = 1
poweradd = -3000

;-------------------
; DCvM hyper portrait/BG
[State 4000, 3]
type = Explod
trigger1 = AnimElem = 7
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 100
supermovetime = 100
pausemovetime = 100
sprpriority = -1
ownpal = 1


[State 4000, 4]
type = Explod
trigger1 = time = 0
anim = 4020
ID = 4020
pos = 0,0
postype = p1
bindtime = 999
removetime = 200
;supermove = 40
;pausemovetime = 40
sprpriority = 1
ownpal = 1


[State 4000, 4]
type = Explod
trigger1 = AnimElem = 7
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 100
supermove = 100
pausemovetime = 100
sprpriority = -2
ownpal = 1

[State 4000, 4]
type = Explod
trigger1 = AnimElem = 7
anim = 4001
ID = 4001
pos = -1,-80
postype = p1
bindtime = 999
removetime = 100
supermove = 100
pausemovetime = 100
sprpriority = 5
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


[State 4000, 8]
type = Projectile
trigger1 = AnimElem = 8
ProjID = 4001
projanim = 4001
projhitanim = 1126
projremanim = 1126
projcancelanim = 1126
velocity = 14,0
offset = 0,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 80,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
p1stateno = 4002
p2stateno = 4003


[State 4000, RE]
type = removeexplod
trigger1 = AnimElem = 9
id = 4020
ignorehitpause = 1

[State 4000, 4]
type = Explod
trigger1 = AnimElem = 9
anim = 4104
ID = 4104
pos = 0,0
postype = p1
bindtime = 999
removetime = 18
;supermove = 40
;pausemovetime = 40
sprpriority = 1
ownpal = 1


[State 4000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
ctrl= 1
value = 0




[StateDef 4004]
;anim = 4009
ctrl = 0
type = S
movetype = A
physics = S

[State 4004, RE]
type = removeexplod
trigger1 = time = 0
id = 4020
ignorehitpause = 1

 [State 4004, 4]
type = Explod
trigger1 = time = 0
anim = 4104
ID = 4104
pos = 0,0
postype = p1
bindtime = 999
removetime = 18
;supermove = 40
;pausemovetime = 40
sprpriority = 1
ownpal = 1

[State 4004, changestate]
type = ChangeState
trigger1 = time = 0
ctrl= 1
value = 0


[StateDef 4002]
anim = 4009
ctrl = 0
type = S
movetype = A
physics = S
sprpriority = 0

 [State 4004, 4]
type = Explod
trigger1 = animelem = 17
anim = 4021
ID = 4021
pos = 0,0
postype = p1
bindtime = -1
removetime = 39
;supermove = 40
;pausemovetime = 40
sprpriority = 1
ownpal = 1

 [State 4002, 0]
type = PlaySnd
trigger1 = AnimElem = 1
value = 111,0

 [State 4002, 0]
type = PlaySnd
trigger1 = AnimElem = 10
value = 111,1

 [State 4002, 0]
type = PlaySnd
trigger1 = AnimElem = 17
value = 8,0

 [State 4002, 0]
type = PlaySnd
trigger1 = time = 30
trigger2 = time = 60
trigger3 = time = 90
trigger4 = time = 120
trigger5 = time = 150
trigger6 = time = 180
trigger7 = time = 210
trigger8 = time = 240
trigger9 = time = 270
trigger10 = time = 300
trigger11 = time = 330
value = 111,14

;boom
[State 4002, 0]
type = PlaySnd
trigger1 = time = 350
value = 111,19

 [State 4002, 0]
type = PlaySnd
trigger1 = AnimElem = 31
value = 8,0

[State 4002, 0]
type = PlaySnd
trigger1 = AnimElem = 47
value = 8,1

[State 4002, RE]
type = removeexplod
trigger1 = AnimElem = 17
id = 4020
ignorehitpause = 1



[State 4002, NotHitBy]
type = NotHitBy
trigger1 =  time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 351
;ignorehitpause =
;persistent =


[State 4002, 3]
type = Explod
trigger1 = time = 0
anim = 4003
ID = 4003
pos =  0, -70
facing = -1
postype = p2
bindtime = 999
removetime = 350
;supermovetime = 50
;pausemovetime = 50
sprpriority = -3
ownpal = 1

[State 4002, 3]
type = Explod
trigger1 = time = 0
anim = 4002
ID = 4002
pos =  0, -70
facing = -1
postype = p2
bindtime = 999
removetime = 350
;supermovetime = 50
;pausemovetime = 50
sprpriority = 3
ownpal = 1


[State 4002, 3]
type = Explod
trigger1 = time = 0
anim = 4004
ID = 4002
pos =  0, -70
facing = -1
postype = p2
bindtime = 999
removetime = 350
;supermovetime = 50
;pausemovetime = 50
sprpriority = 3
ownpal = 1

[State 4002, 3]
type = Explod
trigger1 = time = 350
anim = 4007
ID = 4002
pos =  175, 200
facing = -1
postype = back
bindtime = 999
removetime = 500
;supermovetime = 50
;pausemovetime = 50
sprpriority = -3
ownpal = 1

[State 4002, 3]
type = Explod
trigger1 = time = 350
anim = 4008
ID = 4002
pos = 175, 200
facing = -1
postype = back
bindtime = 999
removetime = 58
;supermovetime = 50
;pausemovetime = 50
sprpriority = 5
ownpal = 1

[State 4002, changestate]
type = ChangeState
trigger1 = AnimTime = 0
ctrl= 1
value = 0






[Statedef 4003]
type    = A
physics = N
movetype = H
velset = 0,0


[State 4003, 1]
type = ChangeAnim2
trigger1 = Time = 0 && pos y != 0
value =  5051

[State 4003, 1]
type = ChangeAnim
triggerall = AnimExist(5300)
trigger1 = Time = 0 && pos y = 0
value =  5300

[State 4003, 1]
type = ChangeAnim
triggerall = !AnimExist(5300)
trigger1 = Time = 0 && pos y = 0
value =   5051

[State 4003, 1]
type = VelSet
Trigger1 = time = 350
y = -12

[State 4003, 1]
type = ChangeAnim2
Trigger1 = Time = 350
value =  5051

[State 4003, FinalDamage]
type = LifeAdd
trigger1 = time = 350
value = -300


[State 4003, changestate]
type = ChangeState
trigger1 = time = 400
ctrl= 0
value = 15050


[Statedef 15050]
type    = A
movetype= H
physics = N


[State 15050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 15050

[State 15050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 15050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 15050, 4] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER


[State 15050, FinalDamage]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = -100


[State 15050, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
ctrl= 1
value = 5100 ;HIT_BOUNCE

[State 15050, 6]
type = SelfState
triggerall = Vel x != [-5,5]
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
ctrl= 1
value = 5400 ;HIT_BOUNCE (Wall)














