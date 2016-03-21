; States file for (Character) -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper1 (D,DF,F + PP)
;   (Move description goes here)
;
; Amalgam Hyper (D,DF,F + HP+HK)
;   (Move description goes here)
;
; (etc.)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper1 (intro)
[StateDef 3000]
type    = S
physics = S
ctrl = 1
anim = 0        ; change this to the anim char will perform when the Hyper starts
velset = 0,0

[State 3000, superpause]
type = SuperPause
trigger1 = time = 2
time = 40
sound = S10,1
pos = 0,-50
darken = 1
poweradd = -1000

[State 3000, orb]
type = Explod
trigger1 = time = 2
name = "Orb"
pos = 0,-50
postype = p1
anim = 8000
supermove = 40
pausemovetime = 1
scale = .35, .35
ownpal = 1

[State 3000, superbg]
type = Explod
trigger1 = time = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = time = 2
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



;---------------------------------------------------------------------------
; Amalgam Hyper
; (incomplete -- only the intro portraits are done at this point)
[StateDef 4000]
type    = S
physics = S
ctrl = 1
anim = 0        ; change this to the anim char will perform when the Hyper starts
velset = 0,0
poweradd = -3000

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1


[State 4000, Char Portrait]
type = Explod
trigger1 = Time = 0
anim = 4010
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 1
supermovetime = 40
removeongethit = 1

[State 4000, Partner Portrait]
type = Explod
trigger1 = Time = 0
anim = 4011
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 1
supermovetime = 40
removeongethit = 1
