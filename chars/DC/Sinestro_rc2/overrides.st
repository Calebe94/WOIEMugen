; States file for Sinestro -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Stand - overridden for start/stop moving interstitial anims
[Statedef 0]
type = S
physics = S
sprpriority = 0

[State 0, a] ; customized: stop walking fwd
type = ChangeAnim
trigger1 = Anim = 20 && Vel X > 0
value = 19

[State 0, b] ; customized: stop walking back
type = ChangeAnim
trigger1 = Anim = 21 && Vel X <= 0
value = 23

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5 && Anim != 19 && Anim != 23
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
trigger3 = (Anim = 18 || Anim = 19) && AnimTime = 0 ;done with "stop moving fwd" anim
trigger4 = (Anim = 22 || Anim = 23) && AnimTime = 0 ;done with "stop moving back" anim
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050


;---------------------------------------------------------------------------
; Walk - overridden for start/stop moving interstitial anims
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3a] ; customized: start walking fwd
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 18 && Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 18

[State 20, 3b]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim = 18 && AnimTime = 0
value = 20

[State 20, 4a] ; customized: start walking back
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 22 && Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 22

[State 20, 4b]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim = 22 && AnimTime = 0
value = 21

[State 200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 && Vel X = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S8,0
persistent = 1

[State 100, dust]
type = Explod
trigger1 = !Time
anim = 918
ontop = 1

[State 100, lines]
type = Explod
trigger1 = timemod = 2,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = -10-ceil(random/20), 0
postype = p1
pos = -40, -80
random = 10,80
xscale = 0.5
yscale = 0.5
sprpriority = -3
bindtime = 1
ownpal = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd" && command != "3P"
value = 0


;---------------------------------------------------------------------------
; RUN_BACK (overrides back hop)
[Statedef 105]
type    = S
physics = S
anim = 105
sprpriority = 1

[State 105, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S8,0
persistent = 1

[State 105, lines]
type = Explod
trigger1 = timemod = 2,1
anim = 113
ID = 113
removeongethit = 1
removetime = 60
vel = 10+ceil(random/20), 0
postype = p1
pos = 40, -80
facing = -1
random = 10,80
xscale = 0.5
yscale = 0.5
sprpriority = 2
bindtime = 1
ownpal = 1

[State 105, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.back.x)

[State 105, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 105, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 105, 4]
type = ChangeState
trigger1 = command != "holdback" && command != "3P"
value = 0


;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 140 + (statetype = C) + (statetype = A)*2

; customize starts here
[State 140, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
id = 138
; customize ends here

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

; shield construct helper state
[Statedef 9120]
type = A
physics = N
movetype = I
ctrl = 0
anim = 138

[State 9120, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HA
slot = 1
stateno = 9120
time = 1
forceair = 0

[State 9120, PosSet]
type = PosSet
trigger1 = parent, statetype = S
x = parent, pos x
y = parent, pos y

[State 9120, PosSet]
type = PosSet
trigger1 = parent, statetype = C
x = parent, pos x
y = parent, pos y - 100



;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "Vel X: %f"
params = Vel X

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9


[State -2, jump landing sound]   ; custom jump-landing sound
trigger1 = stateno = 52
trigger1 = Time = 1
type = null ;PlaySnd
persistent = 0
value = 8,1

; remove shield construct if no longer guarding
[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = Anim != [120,152]
id = 138

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, power_aura]; aura's helper, helps to maintain its definitions
type = Helper
triggerall = numhelper(10050) <= 1 && alive
trigger1 = timemod = 4,2
helpertype = normal
ID = 10050
stateno = 10050
name = "PowerAura"
postype = right
facing = -1
pos = -9999999999999999999, -9999999999999999999
keyctrl = 0
size.xscale = 1
size.yscale = 1
supermovetime = 99999
pausemovetime = 99999
size.shadowoffset = -99999
ownpal = 1
persistent = 1
ignorehitpause = 1


;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, 0
postype = p1
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1


; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S12,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

[State -3, shield]
type = Explod
triggerall = NumExplod(138) = 0
trigger1 = Anim = [120,159]
anim = 138
ID = 138
pos = 0, ifelse(statetype = C, 30, 0)
bindtime = 999
removetime = -2
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 1

[State -3, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(138) = 1
trigger1 = StateType = C
ID = 138
pos = 0,30

[State -3, ModifyExplod]
type = ModifyExplod
triggerall = NumExplod(138) = 1
trigger1 = StateType != C
ID = 138
pos = 0,0


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
