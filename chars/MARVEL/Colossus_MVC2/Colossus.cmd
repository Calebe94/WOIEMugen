; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Super Armor"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "Super Dive"
command = ~D, DF, F, x+y
time = 20
;-| Special Motions |------------------------------------------------------
[Command]
name = "Super Dash"
command = ~D, DF, F, a
time = 20
[Command]
name = "Mid Super Dash"
command = ~D, DF, F, b
time = 20
[Command]
name = "Heavy Super Dash"
command = ~D, DF, F, c
time = 20
;[Command]
;name = "Super Throw_X"
;command = ~D, DF, F, x
;time = 20
;[Command]
;name = "Super Throw_Y"
;command = ~D, DF, F, y
;time = 20
;[Command]
;name = "Super Throw_Z"
;command = ~D, DF, F, z
;time = 20
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "FF"
command = x+y
time = 1

[Command]
name = "FF"
command = z+y
time = 1

[Command]
name = "BB"
command = /B, x+y
time = 1

[Command]
name = "BB"
command = /B, z+y
time = 1

[command]
name = "SuperJump"
command = D, U
time = 20

[command]
name = "SuperJump"
command = D, UF
time = 12

[command]
name = "SuperJump"
command = D, UB
time = 12

[command] 
name = "Advguard"
command = x+y
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
time = 1

[Command]
name = "Dive"
command = /$D,x
time = 1

[Command]
name = "Dive"
command = /$D,y
time = 1

[Command]
name = "Dive"
command = /$D,z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
; Super Armor
[State -1, Super Armor]
type = ChangeState
value = 3500
triggerall = var(50) = 0
triggerall = power >= 1000
triggerall = command = "Super Armor"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
; Super Dive
[State -1, Super Dive]
type = ChangeState
value = 3000
triggerall = command = "Super Dive"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [1000, 1010]
trigger3 = Stateno = 450
trigger3 = movecontact
;===========================================================================
; Super Dive
[State -1, Super Dive]
type = ChangeState
value = 3000
triggerall = command = "Super Dive"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [1011, 1020]
trigger3 = Stateno = [600, 650]
trigger4 = Stateno = 625
;===========================================================================
;---------------------------------------------------------------------------
; Heavy Super Dash
[State -1, Heavy Super Dash]
type = ChangeState
value = 1010
triggerall = command = "Heavy Super Dash"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200, 210]
trigger2 = movecontact
trigger3 = Stateno = [230, 250]
trigger3 = movecontact
trigger4 = Stateno = [400, 410]
trigger4 = movecontact
trigger5 = Stateno = [430, 450]
trigger5 = movecontact
;---------------------------------------------------------------------------
; Air Heavy Super Dash
[State -1, Air Heavy Super Dash]
type = ChangeState
value = 1017
triggerall = command = "Heavy Super Dash"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600, 610]
trigger2 = movecontact
trigger3 = Stateno = [630, 650]
trigger3 = movecontact
;---------------------------------------------------------------------------
; Mid Super Dash
[State -1, Mid Super Dash]
type = ChangeState
value = 1005
triggerall = command = "Mid Super Dash"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200, 210]
trigger2 = movecontact
trigger3 = Stateno = [230, 250]
trigger3 = movecontact
trigger4 = Stateno = [400, 410]
trigger4 = movecontact
trigger5 = Stateno = [430, 450]
trigger5 = movecontact
;---------------------------------------------------------------------------
; Air Mid Super Dash
[State -1, Air Mid Super Dash]
type = ChangeState
value = 1016
triggerall = command = "Mid Super Dash"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600, 610]
trigger2 = movecontact
trigger3 = Stateno = [630, 650]
trigger3 = movecontact
;---------------------------------------------------------------------------
; Super Dash
[State -1, Super Dash]
type = ChangeState
value = 1000
triggerall = command = "Super Dash"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200, 210]
trigger2 = movecontact
trigger3 = Stateno = [230, 250]
trigger3 = movecontact
trigger4 = Stateno = [400, 410]
trigger4 = movecontact
trigger5 = Stateno = [430, 450]
trigger5 = movecontact
;---------------------------------------------------------------------------
; Air Super Dash
[State -1, Air Super Dash]
type = ChangeState
value = 1015
triggerall = command = "Super Dash"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600, 610]
trigger2 = movecontact
trigger3 = Stateno = [630, 650]
trigger3 = movecontact
;---------------------------------------------------------------------------
; Super Throw
;[State -1, Super Throw]
;type = ChangeState
;value = 1100
;triggerall = command = "Super Throw_X"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Throw
;[State -1, Super Throw]
;type = ChangeState
;value = 1101
;triggerall = command = "Super Throw_Y"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Throw
;[State -1, Super Throw]
;type = ChangeState
;value = 1102
;triggerall = command = "Super Throw_Z"
;trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Punch (Foward)
[State -1]
type = ChangeState
value = 620
triggerall = command = "fwd_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600,610]
trigger2 = movecontact
trigger3 = Stateno = [630,640]
trigger3 = movecontact

; Stand Strong Punch (Foward)
[State -1]
type = ChangeState
value = 225
triggerall = command = "fwd_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Advance Guard (Stand)
[State -1, Advance Guard]
type = ChangeState
value = 710
triggerall = command = "Advguard"
trigger1 = stateno = [150,151]

;Advance Guard (Crouch)
[State -1, Advance Guard]
type = ChangeState
value = 711
triggerall = command = "Advguard"
trigger1 = stateno = [152,153]

;Advance Guard (Air)
[State -1, Advance Guard]
type = ChangeState
value = 712
triggerall = command = "Advguard"
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Air Throw
[State -1, Throw]
type = ChangeState
value = 814
triggerall = command = "y"
triggerall = P2bodyDist y <= 5
triggerall = P2bodyDist y <= -5
triggerall = statetype = A 
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 50
trigger1 = (p2statetype = A) 
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 50
trigger2 = (p2statetype = A) 
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 230
trigger2 = movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 230
trigger2 = movecontact
trigger3 = Stateno = 200
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 400
trigger2 = movecontact
trigger3 = Stateno = 200
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 430
trigger2 = movecontact
trigger3 = Stateno = 200
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = 600
trigger2 = movecontact
trigger3 = Stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 625
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [600, 610]
trigger2 = movecontact
trigger3 = Stateno = [630, 640]
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = 630
trigger2 = movecontact
trigger3 = Stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [630, 640]
trigger2 = movecontact
trigger3 = Stateno = 620
trigger3 = movecontact

;---------------------------------------------------------------------------
; Super Jump After Launcher
[state -1, Launcher Jump]
type = changestate
value = 700
triggerall = command = "holdup"
trigger1 = MoveHit
trigger1 = stateno = 250

;---------------------------------------------------------------------------
;Super Jump
[state -1, Super Jump]
type = ChangeState
value = 700
triggerall = command = "SuperJump"
trigger1 = statetype != A
trigger1 = ctrl



