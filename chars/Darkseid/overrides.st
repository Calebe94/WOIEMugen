; States file for Darkseid -- Overrides and Common states
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
; Walk -- can't walk
[Statedef 20]
type    = S
physics = S

[State 20, ChangeState]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Start -- can't jump
[Statedef 40]
type    = S
physics = S

[State 40, ChangeState]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA
slot = 0
stateno = 2000
time = 1
forceair = 0

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
triggerall = Alive && (Time = 1)
triggerall = Random < 300
trigger1 = stateno = [5000,5022] ; standing hard hit high
trigger2 = stateno = 5030   ; air hit
trigger3 = stateno = 5070   ; tripped
channel = 1
value = 4,0


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
;[Statedef -3]



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
