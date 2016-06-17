; States file for (Character) -- Overrides and Common states
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
[Statedef 100]
type    = A
physics = A
ctrl = 0
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.fwd.x)*2
y = const(velocity.run.back.y)

[State 100, 2]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 100, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, jump landing sound]   ; custom jump-landing sound
trigger1 = stateno = 52
trigger1 = Time = 1
type = PlaySnd
persistent = 0
value = 8,1

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
;Combo Damage Control Thanks to Loganir :D
[State -3, a1]
type = varadd
trigger1 = time = 1 && movetype = A && fvar(10)<.8
fvar(10)= ifelse((stateno = [3000,4999]),.35,ifelse((stateno = [1000,2999]),.25,.15))
ignorehitpause = 1

[State -3, a2];reset
type = varset
trigger1 = numenemy && fvar(10)
trigger1 = (enemynear,movetype!=H)
fvar(10) = 0
persistent = 0
ignorehitpause = 1

[State -3, a3]
type = attackmulset
trigger1 = 1
value = ifelse(fvar(10)>=.8,.1,1-fvar(10))
ignorehitpause = 1



