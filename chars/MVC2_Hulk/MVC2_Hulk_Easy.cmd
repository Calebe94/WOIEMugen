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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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

;--------|Ai Activation|------------------------------------------
[Command] 
name = "cpu01" 
command = F, D,DF, F,x,x,x,x,x 
time = 1 

[Command] 
name = "cpu02" 
command = F, D,DF, F,x,x,x,x,y 
time = 1 

[Command] 
name = "cpu03" 
command = F,x,x,x,y,x 
time = 1 

[Command] 
name = "cpu04" 
command = F, D,DF, F,x,x,y,x,x 
time = 1 

[Command] 
name = "cpu05" 
command = F, D,DF, F,x,y,x,x,x 
time = 1 

[Command] 
name = "cpu06" 
command = F, D,DF, F,y,x,x,x,x 
time = 1 

[Command] 
name = "cpu07" 
command = F, D,DF, F,y,x,x,x,y 
time = 1 

[Command] 
name = "cpu08" 
command = F, D,DF, F,y,x,x,y,x 
time = 1 

[Command] 
name = "cpu09" 
command = F, D,DF, F,y,x,y,x,x 
time = 1 

[Command] 
name = "cpu10" 
command = F, D,DF, F,y,y,x,x,x 
time = 1

[Command] 
name = "cpu11" 
command = F, D,DF, F,a,x,x,x,x 
time = 1 

[Command] 
name = "cpu12" 
command = F, D,DF, F,a,x,x,x,y 
time = 1 

[Command] 
name = "cpu13" 
command = F, D,DF, F,a,x,x,y,x 
time = 1 

[Command] 
name = "cpu14" 
command = F, D,DF, F,a,x,y,x,x 
time = 1 

[Command] 
name = "cpu15" 
command = F, D,DF, F,a,y,x,x,x 
time = 1 

[Command] 
name = "cpu16" 
command = F, D,DF, F,y,x,x,x,a 
time = 1 

[Command]
name = "cpu17" 
command = F, D,DF, F,y,x,x,a,x 
time = 1 

[Command] 
name = "cpu18" 
command = F, D,DF, F,y,x,a,x,x 
time = 1 

[Command] 
name = "cpu19" 
command = F, D,DF, F,y,a,x,x,x 
time = 1 

[Command] 
name = "cpu20" 
command = F, D,DF, F,a,a,x,x,x 
time = 1

[Command] 
name = "cpu21" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu22" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu23" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu24" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu25" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu26" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu27" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu28" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu29" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu30" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu31" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu32" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu33" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu34" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu35" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu36" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu37" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu38" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu39" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu40" 
command = F, D,DF, F,b,b,x,x,x 
time = 1


[Command] 
name = "cpu41" 
command = F, D,DF, F,b,x,x,x,x 
time = 1 

[Command] 
name = "cpu42" 
command = F, D,DF, F,b,x,x,x,y 
time = 1 

[Command] 
name = "cpu43" 
command = F, D,DF, F,b,x,x,y,x 
time = 1 

[Command] 
name = "cpu44" 
command = F, D,DF, F,b,x,y,x,x 
time = 1 

[Command] 
name = "cpu45" 
command = F, D,DF, F,b,y,x,x,x 
time = 1 

[Command] 
name = "cpu46" 
command = F, D,DF, F,y,x,x,x,b 
time = 1 

[Command] 
name = "cpu47" 
command = F, D,DF, F,y,x,x,b,x 
time = 1 

[Command] 
name = "cpu48" 
command = F, D,DF, F,y,x,b,x,x 
time = 1 

[Command] 
name = "cpu49" 
command = F, D,DF, F,y,b,x,x,x 
time = 1 

[Command] 
name = "cpu50" 
command = F, D,DF, F,b,b,x,x,x 
time = 1

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

;Gamma Wave
[Command]
name = "Gamma Wave"
command = ~D, DF, F, x+y


;Gamma Crush
[Command]
name = "Gamma Crush"
command = ~D, DB, B, x+y


;Gamma Quake
[Command]
name = "Gamma Quake"
command = ~D, DF, F, a+b



;-| Special Motions |------------------------------------------------------

;Gamma Slam Near
[Command]
name = "QCF_x"
command = ~D, DF, F, x



;Gamma Slam Mid
[Command]
name = "QCF_y"
command = ~D, DF, F, y


;Gamma Slam Far
[Command]
name = "QCF_z"
command = ~D, DF, F, z

;Gamma Tornado
[Command]
name = "QCB_x"
command = ~D, DB, B, x

;Gamma Tornado
[Command]
name = "QCB_x"
command = ~D, DB, B, y

;Gamma Tornado
[Command]
name = "QCB_x"
command = ~D, DB, B, z

;Gamma Charge H Near
[Command]
name = "BF_a"
command = ~B, F, a

;Gamma Charge H Mid
[Command]
name = "BF_b"
command = ~B, F, b

;Gamma Charge H Far
[Command]
name = "BF_c"
command = ~B, F, c


;Gamma Charge U Near
[Command]
name = "DD_a"
command = ~D, D,a

;Gamma Charge U Mid
[Command]
name = "DD_b"
command = ~D, D,b

;Gamma Charge U Far
[Command]
name = "DD_c"
command = ~D, D,c


;Gamma Charge UF Near
[Command]
name = "BF_x"
command = ~B, F, x

;Gamma Charge UF Mid
[Command]
name = "BF_y"
command = ~B, F, y

;Gamma Charge UF Far
[Command]
name = "BF_z"
command = ~B, F, z

;Flight
;[Command]
;name = "QCB_ax"
;command = ~D, DB, B, x+a


;[Command]
;name = "FFx"
;command = F, F, x


;[Command]
;name = "FFy"
;command = F, F, y


;[Command]
;name = "Oiuchi"
;command = $U,a


;[Command]
;name = "Giga Crush"
;command = x+y


;[Command]
;name = "Recharge Power"
;command = y+z


[Command]
name = "Counter"
command = /B,c


[Command]
name = "Super Jump"
command = D,$U



;----|Combo Motions|---------------------------------------


;----|Throw Motions|---------------------------------------
;Throw, F/B + z
;Throw, F/B + c


;[Command]
;name = "Forward Slam"  ;while standing
;command = ~B,F,z


;Toss
;[Command]
;name = "Toss"
;command = ~B,F,y



;----|Basic Motions|---------------------------------------


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
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---|Hold Buttons|------------------------

[Command]
name = "holdx"
command = /x
time = 1


[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
command = /s
time = 1

;---|Relase Buttons|------------------------


;---|Press then Release no other key in between|------------------


;--------------

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
;This is not a move, but it sets up var(3) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(17) = 0

[State -1, Move Cancel condition Reset]
type = VarSet
trigger1 = 1
var(51) = 0


[State -1, Move Miss Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 300
trigger3 = stateno = 400
trigger4 = stateno = 500
var(17) = 1


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 310
trigger3 = stateno = 410
trigger4 = stateno = 510
var(17) = 2

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = 320
trigger3 = stateno = 420
trigger4 = stateno = 520
var(17) = 3


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 700
var(17) = 5


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 710
var(17) = 6


[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 620
trigger2 = stateno = 720
var(17) = 7



[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [200,790]
trigger2 = stateno = [8016,8018]
var(51) = 1


[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [1240,1300]
trigger2 = stateno = [1450,1700]
var(51) = 2


;-------------------
; Get modified Enemy Y dist
[State -1]
type = VarSet
trigger1 = 1;var(59)
var(8) = floor(P2Dist Y - (abs(EnemyNear, const(size.mid.pos.y)) - abs(const(size.mid.pos.y))))


;-------------------
; Get modified Enemy Y dist
[State -1]
type = null;VarSet
trigger1 = 1;var(59)
var(8) = floor(P2BodyDist Y - (abs(EnemyNear, const(size.head.pos.y)) - abs(const(size.head.pos.y))))

;-------------------
[State -1]
type = VarSet
trigger1 = 1;var(59)
var(7) = abs(enemynear,const(size.head.pos.y))

;===========================================================================
;===========================================================================
;------|AI Moves|-----------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu01"
trigger2 = command = "cpu02"
trigger3 = command = "cpu03"
trigger4 = command = "cpu04"
trigger5 = command = "cpu05"
trigger6 = command = "cpu06"
trigger7 = command = "cpu07"
trigger8 = command = "cpu08"
trigger9 = command = "cpu09"
trigger10 = command = "cpu10"
var(59) = 1
;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu11"
trigger2 = command = "cpu12"
trigger3 = command = "cpu13"
trigger4 = command = "cpu14"
trigger5 = command = "cpu15"
trigger6 = command = "cpu16"
trigger7 = command = "cpu17"
trigger8 = command = "cpu18"
trigger9 = command = "cpu19"
trigger10 = command = "cpu20"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu21"
trigger2 = command = "cpu22"
trigger3 = command = "cpu23"
trigger4 = command = "cpu24"
trigger5 = command = "cpu25"
trigger6 = command = "cpu26"
trigger7 = command = "cpu27"
trigger8 = command = "cpu28"
trigger9 = command = "cpu29"
trigger10 = command = "cpu30"
var(59) = 1


;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu31"
trigger2 = command = "cpu32"
trigger3 = command = "cpu33"
trigger4 = command = "cpu34"
trigger5 = command = "cpu35"
trigger6 = command = "cpu36"
trigger7 = command = "cpu37"
trigger8 = command = "cpu38"
trigger9 = command = "cpu39"
trigger10 = command = "cpu40"
var(59) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
triggerall = var(59) != 1
trigger1 = command = "cpu41"
trigger2 = command = "cpu42"
trigger3 = command = "cpu43"
trigger4 = command = "cpu44"
trigger5 = command = "cpu45"
trigger6 = command = "cpu46"
trigger7 = command = "cpu47"
trigger8 = command = "cpu48"
trigger9 = command = "cpu49"
trigger10 = command = "cpu50"
var(59) = 1

;---------------------------------------------------------------------------

[State -1,AI]
type = Varset
trigger1 = !Var(56)
var(56) = 0

;------------------------------------------------------------------
[State -1,AI]
type = Varset
trigger1 = var(59) && var(56) < 1
var(59) = 0 + random < 100 
;------------------------------------------------------------------

;-----------------------------------------------------------------------------
;max hit combo each type
[State -1]
type = varset
trigger1 = var(36) != 1 
trigger2 = var(56) != 4
var(36) = 1

;max hit combo each type
[State -1]
type = varset
trigger1 = var(56) = 4
trigger1 = var(36) != 4
var(36) = 4
;---------------------------------------------------------------------------

[State -1,AI]
type = Varset
triggerall = var(59)
triggerall = time = 1
trigger1 = p2life <= 0
trigger2 = life <= 0
var(59) = 0


;---------------------------------
[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "x" && command = "y"
var(56) = 0


[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "a" && command = "b"
var(56) = 1


[state -1,Mode Set]
type = VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "z" && command = "c"
var(56) = 4

;---------------------------------------------------------------------------
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = Var(59)
triggerall = ctrl
triggerall = StateType = S
triggerall = random <= 100
trigger1 = p2statetype = L


;---------------------------------------------------------------------------
[State -1, testing flight atk mode]
type = null;ChangeState
value = ifelse(Statetype = A, 1330,1333)
triggerall = Var(59) && enemynear,stateno != 7321
triggerall = !var(54)
triggerall = ctrl && enemynear,movetype != A
trigger1 = random < 1+300*(life < lifemax/2)

;---------------------------------------------------------------------------
[State -1,Flight Mode]
type = null;ChangeState
triggerall = Var(59) && !Var(54) && var(51) = 1 && !var(19) && !var(20) && !var(21)
;triggerall = Var(54) = 0
;triggerall = var(51) = 1
triggerall = movetype = A
triggerall = inguarddist
trigger1 = random < 700
value = 1330


;---------------------------------------------------------------------------
[State -1,Flight Cancel]
type = null;ChangeState
triggerall = Var(59) && Var(54) && var(51) = 1 && !var(19) && !var(20) && !var(21)
;triggerall = Var(54)
;triggerall = var(51) = 1
;triggerall = movetype = A
triggerall = inguarddist
trigger1 = ctrl
trigger1 = random < 700
value = 1331


;---------------------------------------------------------------------------
[State -1,Flight Dodge]
type = null;ChangeState
triggerall = Var(59) && Var(54); && var(51) = 1 && !var(19) && !var(20) && !var(21)
;triggerall = Var(54)
;triggerall = var(51) = 1
;triggerall = movetype = A
trigger1 = inguarddist
trigger1 = random < 700
value = 1342

;---------------------------------------------------------------------------
[State -1, Oiuchi]
type = null;ChangeState
value = 500+10*(random%3)
triggerall = Var(59)
triggerall = p2bodydist x < 100
trigger1 = p2statetype = L && statetype != A && ctrl && p2stateno != 5120

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 7720;ifelse(FrontEdgeDist < 90,7720,7720)
triggerall = numenemy > 1
triggerall = enemynear(0),life > 0 && enemynear(1),life > 0
triggerall = Var(59)
triggerall = var(57) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = random < 700
trigger1 = screenpos x = [enemynear(0),screenpos x,enemynear(1),screenpos x]
trigger2 = screenpos x = [enemynear(1),screenpos x,enemynear(0),screenpos x]

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
triggerall = numenemy < 2
triggerall = Var(59)
triggerall = BackEdgeDist > 90
triggerall = stateno != 105
triggerall = p2bodydist x < 100
triggerall = ctrl
triggerall = StateType != A
trigger1 = p2statetype = L && random < 300

;---------------------------------------------------------------------------
[State -1]
type = null;ChangeState
value = 1415
triggerall = numenemy < 2
triggerall = Var(59)
triggerall = p2bodydist X <= 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = enemynear,statetype != A
trigger1 = BackEdgeDist < 20
trigger1 = random < 500
trigger2 = p2statetype = L && random < 300
trigger2 = BackEdgeDist < 50

;---------------------------------------------------------------------------
[State -1, anti crouch spam]
type = ChangeState
value = 131
triggerall = Var(59)
triggerall = statetype != A
triggerall = p2bodydist x < 80
triggerall = random <= 900
triggerall = p2statetype = A && ctrl
trigger1 = prevstateno = 5120
trigger2 = prevstateno = 52

;---------------------------------------------------------------------------
[State -1, Reversal]
type = null;ChangeState
value = 7970
triggerall = Var(59)
triggerall = var(56) > 0
triggerall = p2movetype = A
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = enemynear, hitdefattr = SCA, NA, SA, HA, AA,AP, NT, ST,HT, NP, SP, HP
trigger1 = p2bodydist X <= 80
trigger1 = random < 100

;---------------------------------------------------------------------------
;Escape

[State -1]
type = ChangeState
triggerall = var(59) && Stateno != [7800,7801]
triggerall = p2bodydist x < 100
triggerall = movetype != A
triggerall = p2stateno != 0
triggerall = StateType != A
trigger1 = p2stateno = var(43)
trigger2 = p2stateno = var(44)
trigger3 = p2stateno = var(45)
trigger4 = p2stateno = var(46)
trigger5 = p2stateno = var(47)
trigger6 = p2stateno = var(48)
value = 7800 + (backedgedist > 100)

[State -1]
type = null;ChangeState
triggerall = var(59)
triggerall = p2bodydist x < 80
triggerall = movetype != A
triggerall = p2stateno != 0
triggerall = StateType = A
triggerall = p2statetype = A
trigger1 = p2stateno = var(43)
trigger2 = p2stateno = var(44)
trigger3 = p2stateno = var(45)
trigger4 = p2stateno = var(46)
trigger5 = p2stateno = var(47)
trigger6 = p2stateno = var(48)
trigger7 = p2stateno = var(49)
value = 7620


;-------------------------------------------------------------------------------
;Guarding states

;---------------------------------------------------------------------------


[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155]) ;&& !var(54)
triggerall =!(enemynear,hitdefattr=SCA,AT)
;triggerall = statetype != A
triggerall = inguarddist
trigger1 = ctrl
value = 120


;-------------------------------------
[State -1, Stand Parry]
type = hitoverride
triggerall = var(56) > 1
triggerall = var(59) && roundstate = 2 && statetype = S
trigger1 = 1
attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
stateno = ifelse(random < 500,130, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)


;-------------------------------------
[State -1, Crouch Parry]
type = hitoverride
triggerall = var(56) > 1
triggerall = var(59) && roundstate = 2 && statetype = C
trigger1 = 1
attr = C,NA, SA, HA, NP, HP, SP, AA, AT, AP,NT,ST,HT
stateno = ifelse(random < 500,131, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)


;-------------------------------------
[State -1, Air Parry]
type = hitoverride
triggerall = var(56) > 1
triggerall = var(59) && roundstate = 2 && (statetype = A || Pos Y < 0)
trigger1 = 1
attr = SA,NA, SA, HA, NP, HP, SP, AA, AT, AP
stateno = 132
;forceair = 1
slot = 0
time = ifelse((stateno=[154,155]),6,8)


;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7610
triggerall = Var(59) 
triggerall = p2bodydist x =[0,40]
triggerall = StateType = S
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Crouching)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7615
triggerall = Var(59) 
triggerall = p2bodydist x =[0,40]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Air)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7620
triggerall = Var(59)
triggerall = p2bodydist x =[0,40]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Recovery Roll after KnockDown
;------------------------------------
[State -1]
type = ChangeState
value = 7800 + (backedgedist > 100)
triggerall = Var(59); && Stateno != [7800,7801]
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x < 100
trigger1 = Random < 300;+500*(BackEdgeDist < 100) 
trigger1 = Time >= 1

;------------------------------------
;AI Recovery Roll after KnockDown
;------------------------------------
[State -1]
type = null;ChangeState
value = 7801
triggerall = Var(59); && Stateno != [7800,7801]
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x < 100
trigger1 = Random < 100+500*(BackEdgeDist > 100) 
trigger1 = Time >= 1

;-----------------------------------------------------------------------------
;Basic Attacks

;---------------------------------------------------------------------------
[State -1, Follow Launcher]
type = ChangeState
value = 7720
triggerall = Var(59)
triggerall = movehit
trigger1 = stateno = 420
;trigger2 = (enemynear,HitDefAttr = SCA,HA,HP,HT)
;trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = null;ChangeState
value = 102
triggerall = var(59)
triggerall = stateno != 102
triggerall = statetype != A
triggerall = ctrl
triggerall = !inguarddist
;trigger1 = random <= 200
;trigger1 = (var(17) = [2,3]) && enemynear,movetype = H
;trigger1 = p2bodydist X > 50
trigger1 = var(57) && random < 500
trigger1 = p2bodydist x > 50


;---------------------------------------------------------------------------
;Throws


;---------------------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800;ifelse(random < 300,800,830)
triggerall = var(59)
triggerall = p2bodydist X <= 20
triggerall = random < 300
triggerall = statetype = S
trigger1 = p2bodydist y = [-25,25]
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger2 = enemynear,moveguarded

;---------------------------------------------------------------------------

[State -1, Air Throw]
type = ChangeState
value = 920;ifelse(random < 500,920,950)
triggerall = var(59)
triggerall = p2bodydist X <= 20
triggerall = p2bodydist y = [-25,25]
triggerall = random < 300
trigger1 = statetype = A && ctrl 
trigger1 = p2movetype != H
trigger1 = pos Y < -50


;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = stateno != 100
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl
trigger1 = p2movetype != A
trigger1 = p2bodydist X > 100
trigger1 = random <= 50
;trigger2 = (var(17) = [1,2]) && Movehit
;trigger2 = p2bodydist X > 50




;trigger1 = enemy, numproj = 0
;trigger1 = enemy, numhelper = 0

;---------------------------------------------------------------------------
[State -1,AI run back]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = stateno != 105
triggerall = backedgedist > 70
triggerall = statetype != A
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X < 120
triggerall = random <= 200
;trigger2 = stateno = 512 && MoveGuarded

;---------------------------------------------------------------------------
[State -1,AI run fwd stop]
type = ChangeState
value = 0
triggerall = var(59)
triggerall = stateno = 100
trigger1 = p2movetype = A
trigger1 = p2bodydist X <= 105


;-----------------------------------------------------------------------------
;AI Combo
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1,AI standing light punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = p2bodydist X = [0,90]
triggerall =  -85 <= p2bodydist y <= -85+var(7)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 500
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = var(59)
triggerall = statetype != A
trigger1 = p2bodydist X = [0,75]
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != A  && ctrl && random < 500
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500
;trigger3 = p2statetype = L && statetype != A && ctrl && p2stateno != 5120




;---------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 300
triggerall = var(59)
triggerall = statetype != A
trigger1 = p2bodydist X = [0,65]
trigger1 = p2bodydist y = [-5,5]
;triggerall =  -70 <= p2bodydist y <= -70+var(7)
trigger1 = ctrl
trigger1 = random < 300
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300

;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = p2bodydist X = [0,100]
;triggerall =  -50 <= p2bodydist y <= -50+var(7)
triggerall = p2bodydist y = [-5,5]
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 300
trigger1 = p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400


;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = p2bodydist X = [0,130]
triggerall =  -95 <= p2bodydist y <= -95+var(7)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 400
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, over head atk]
type = ChangeState
value = 590
triggerall = var(59)
triggerall = p2bodydist X = [4,70]
triggerall =  -40 <= p2bodydist y <= -40+var(7)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 100 + 100*(p2statetype = C)
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 590
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,70]
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != L; && p2statetype != A
trigger1 = ctrl && random < 300
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,110]
triggerall =  -65 <= p2bodydist y <= -65+var(7)
;triggerall = p2bodydist y = [-5,5]
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 200
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310
trigger4 = var(17) = 5 && stateno = 52 && random < 200

;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59)
triggerall = Statetype != A
triggerall = p2bodydist X = [0,100]
triggerall = p2bodydist y = [-5,5]
trigger1 = random < 300
trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
trigger1 = ctrl
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410
trigger4 = var(17) = 5 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,20+40*(enemynear,statetype = A)]
;triggerall = var(8) = [-50,5]
;triggerall =  -80 <= p2bodydist y <= -80+var(7)
triggerall = p2bodydist y = [-150,5]
trigger1 = ctrl && p2movetype != A; && p2statetype != A
trigger1 = p2statetype != L && random < 250
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 320; && random < 200
trigger5 = var(17) = 6 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,180]
;triggerall = p2bodydist y = [-5,5]
;triggerall =  -70 <= p2bodydist y <= -70+var(7)
trigger1 = ctrl && p2movetype != A
trigger1 = p2statetype != L && random < 200
;trigger1 = enemynear,statetype != C
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 220
trigger5 = var(17) = 6 && stateno = 52 && random < 200
;trigger5 = (stateno = 520 || Stateno = 512) && MoveHit; && random < 300

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,70]
triggerall =  -75 <= p2bodydist y <= -75+var(7)
;triggerall = p2bodydist y = [-5,5]
trigger1 = p2statetype != L && ctrl  && random < 250 ; && p2movetype = H
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 520
;trigger5 = stateno = 420 && MoveHit
trigger5 = var(17) = 6 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,90]
;triggerall =  -70 <= p2bodydist y <= -70+var(7)
;triggerall = p2bodydist y = [-105,5]
trigger1 = p2movetype != A
trigger1 = p2statetype != L && ctrl  && random < 250 ;&& p2movetype = H
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 420; && random < 300
;trigger5 = stateno = 520 && MoveHit; && random < 300
trigger5 = var(17) = 6 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, Gamma Charge H]
type = ChangeState
value = 1450+10*(p2bodydist x = [150,210])+20*(p2bodydist x = [211,270])
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X > 50
triggerall = p2bodydist Y > -90
;triggerall =  -75 <= p2bodydist y <= -75+var(7)
triggerall = random < 100-50*(prevstateno = [1450,1470])
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)
trigger4 = (stateno = [1510,1530])
trigger4 = var(39) = 1 && Movecontact && random < 300

;---------------------------------------------------------------------------
[State -1, Gamma Charge U]
type = ChangeState
value = 1510+10*(p2bodydist Y/p2bodydist X = [-2,-1.6])+20*(p2bodydist Y/p2bodydist X = [-1.5,-1])
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [1,90]
;triggerall = p2bodydist Y > -340
triggerall = p2bodydist Y/p2bodydist X = [-340,-1]
;triggerall =  -75 <= p2bodydist y <= -75+var(7)
triggerall = random < 100-50*(prevstateno = [1510,1530])
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)
trigger4 = (stateno = [1450,1470]) || (stateno = [1510,1530])
trigger4 = var(39) = 1 && Movecontact && random < 300


;---------------------------------------------------------------------------
[State -1, Gamma Charge UF]
type = ChangeState
value = 1480+10*(p2bodydist X = [90,170])+20*(p2bodydist X = [170,270])
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [1,270]
;triggerall = p2bodydist Y > -340
triggerall = p2bodydist Y/p2bodydist X = [-2,-0.8]
;triggerall =  -75 <= p2bodydist y <= -75+var(7)
triggerall = random < 100-50*(prevstateno = [1510,1530])
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)
trigger4 = (stateno = [1450,1470]) || (stateno = [1510,1530])
trigger4 = var(39) = 1 && Movecontact && random < 300


;---------------------------------------------------------------------------
[State -1, Gamma Slam]
type = ChangeState
value = 1240+10*(p2bodydist x = [150,210])+20*(p2bodydist x = [211,270])
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X > 70
triggerall = p2bodydist Y > -70
;triggerall =  -75 <= p2bodydist y <= -75+var(7)
triggerall = random < 100-50*(prevstateno = [1240,1260])
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)



;---------------------------------------------------------------------------
[State -1, Flight]
type = null;ChangeState
value = 1330
triggerall = var(59) && !var(54)
trigger1 = p2bodydist X = [120,270]
trigger1 = p2statetype != L
trigger1 = ctrl
trigger1 = random < 100

;---------------------------------------------------------------------------
[State -1, Flight Cancel]
type = null;ChangeState
value = 1331
triggerall = var(59) && var(54)
trigger1 = p2bodydist X = [120,270]
trigger1 = statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 100

;---------------------------------------------------------------------------
[State -1, Jump in]
type = ChangeState
value = ifelse(random < 500,100,631)
triggerall = stateno != 100 || stateno != 631
triggerall = var(59)
trigger1 = p2bodydist X = [120,270]
trigger1 = statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 100


;---------------------------------------------------------------------------
[State -1, Warp In]
type = null;ChangeState
value = 1400+5*(random%6)
triggerall = var(59)
triggerall = random < 100
trigger1 = !inguarddist
trigger1 = p2statetype != L && p2statetype != A
trigger1 =  enemynear,movetype = A ;(enemynear,HitDefAttr = SCA,HA,HP,HT)
trigger1 = (var(9) || var(51)) || ctrl

;----|AI Hypers |---------------------------------------------------


;-------------------------------------------------------------------------

[State -1,Gamma Wave]
type = ChangeState
value = 3000
triggerall = enemynear,life > 300 && NumHelper(21300) = 0
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,3500]) 
triggerall = power >= 1000 
triggerall = statetype != A
triggerall = p2bodydist X > 50
triggerall =  p2bodydist y > -120
triggerall = random < 100 + 50*floor(enemynear,backedgedist/50) 
triggerall = p2statetype != L
trigger1 = ctrl
trigger3 = random < (var(17)*100)
trigger4 = var(51) && random < 100+100*(var(9) > 0)

;-------------------------------------------------------------------------

[State -1,Gamma Crush]
type = ChangeState
value = 3040
triggerall = enemynear,life > 300
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,3500]) 
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X > 80
triggerall =  p2bodydist y > -340
triggerall = random < 100; + 100*(enemynear,movetype, = H)
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = random < (var(17)*100)
trigger3 = var(51) && random < 100+100*(var(9) > 0)



;-------------------------------------------------------------------------

[State -1,Gamma Quake]
type = ChangeState
value = 3080
triggerall = enemynear,life > 300
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,3500]) 
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X = [10,150]
triggerall =  p2bodydist y > -240
triggerall = random < 100; + 100*(enemynear,movetype, = H)
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = random < (var(17)*100)
trigger3 = var(51) && random < 100+100*(var(9) > 0)


;----|AI Specials |---------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = var(59)
;triggerall = var(8) = [50,50+50*(p2statetype != A)]
trigger1 = p2bodydist X <= 80
trigger1 = statetype = A && ctrl
;trigger1 =  -80 <= p2bodydist y <= -80+var(7)
trigger1 = var(8) = [-25,25] ;&& p2statetype = A
trigger1 = random < 400
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = var(59)
trigger1 = statetype = A && ctrl && random < 300
trigger1 = var(8) = [-25,25]
;trigger1 =  -80 <= p2bodydist y <= -80+var(7)
trigger1 = p2bodydist X = [0,90]
trigger2 = var(17) = 5 && var(19) = var(36) && random < 300
trigger2 = stateno != 700


;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)
triggerall = p2bodydist X = [0,90]
trigger1 = statetype = A && ctrl && random < 300
trigger1 = var(8) = [-25,25]
;trigger1 =  -90 <= p2bodydist y <= -90+var(7)
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610



;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = var(59)
trigger1 = statetype = A && ctrl && random < 200
;trigger1 =  -30 <= p2bodydist y <= -30+var(7)
trigger1 = var(8) = [-25,25]
trigger1 = p2bodydist X = [0,90]
trigger2 = var(17) = 5 && random < 300
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 710



;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = var(59)
triggerall = var(8) = [-25,25]
trigger1 = p2bodydist X = [0,90]
;trigger1 =  -30 <= p2bodydist y <= -30+var(7)
trigger1 = statetype = A && ctrl && random < 200
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 620



;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = var(59)
triggerall = var(8) = [30,50+40*(p2statetype != A)]
triggerall = p2bodydist X = [0,90]
;triggerall =  -40 <= p2bodydist y <= -40+var(7)
trigger1 = statetype = A && ctrl && random < 200
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 720



;----|AI Hypers |---------------------------------------------------

;------------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Triangle Jump]
type = null;ChangeState
value = 7730
triggerall = var(59)
triggerall = StateType = A
triggerall = MoveType != A
triggerall = Ctrl
triggerall = Vel Y > 2
triggerall = Pos Y < -50
trigger1 = random < 200
trigger1 = FrontEdgeBodyDist <= 3
trigger2 = BackEdgeBodyDist <= 3


;---------------------------------------------------------------------------
[State -1, Air Dash]
type = null;ChangeState
value = ifelse(random < 500,1343,1344)
triggerall = Var(59) && !var(54)
stateno != [7720,7721]
triggerall = StateType = A
triggerall = Ctrl
triggerall = Vel Y > 2
triggerall = Pos Y < -100
trigger1 = random < 200
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Down Kick]
type = ChangeState
value = 8018
triggerall = Var(59)
triggerall = stateno != [7720,7721]
triggerall = StateType = A
triggerall = Ctrl
triggerall = Vel Y > 2
triggerall = Pos Y < -170
trigger1 = random < 200
trigger1 = ctrl


;---------------------------------------------------------------------------





;---------------------------------------------------------------------------

[State -1, Gamma Wave]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Gamma Wave"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------

[State -1, Gamma Crush]
type = ChangeState
value = 3040
triggerall = !var(59)
triggerall = command = "Gamma Crush"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------

[State -1, Gamma Quake]
type = ChangeState
value = 3080
triggerall = !var(59)
triggerall = command = "Gamma Quake"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------
[State -1, Flight]
type = null;ChangeState
value = 1330
triggerall = !var(59) && !var(54)
triggerall = command = "x"
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Flight Cancel]
type = null;ChangeState
value = 1331
triggerall = !var(59) && var(54)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1



;---------------------------------------------------------------------------
[State -1, Gamma Slam Near]
type = ChangeState
value = 1240
triggerall = !var(59)
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Gamma Slam Mid]
type = ChangeState
value = 1250
triggerall = !var(59)
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Gamma Slam Far]
type = ChangeState
value = 1260
triggerall = !var(59)
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Gamma Tornado]
type = ChangeState
value = 1270
triggerall = !var(59)
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Gamma Charge UB Near]
type = ChangeState
value = 1540
triggerall = !var(59)
triggerall = var(39) = 1
triggerall = AnimElem = 3, >= 0
trigger1 = stateno = [1450,1470]
trigger1 = command = "holdback" && command != "holdup" && command = "a"
trigger2 = stateno = [1510,1530]
trigger2 = command = "holdback" && command = "holdup" && command = "a"

;---------------------------------------------------------------------------
[State -1, Gamma Charge UB Mid]
type = ChangeState
value = 1550
triggerall = !var(59)
triggerall = var(39) = 1
triggerall = AnimElem = 3, >= 0
trigger1 = stateno = [1450,1470]
trigger1 = command = "holdback" && command != "holdup" && command = "b"
trigger2 = stateno = [1510,1530]
trigger2 = command = "holdback" && command = "holdup" && command = "b"

;---------------------------------------------------------------------------
[State -1, Gamma Charge UB Far]
type = ChangeState
value = 1560
triggerall = !var(59)
triggerall = var(39) = 1
triggerall = AnimElem = 3, >= 0
trigger1 = stateno = [1450,1470]
trigger1 = command = "holdback" && command != "holdup" && command = "c"
trigger2 = stateno = [1510,1530]
trigger2 = command = "holdback" && command = "holdup" && command = "c"


;---------------------------------------------------------------------------
[State -1, Gamma Charge B Near]
type = ChangeState
value = 1570
triggerall = !var(59)
triggerall = var(39) = 1 && AnimElem = 3, >= 0
trigger1 = stateno = [1510,1530]
trigger1 = command = "holdback" && command != "holdup" && command = "a"

;---------------------------------------------------------------------------
[State -1, Gamma Charge B Mid]
type = ChangeState
value = 1580
triggerall = !var(59)
triggerall = var(39) = 1 && AnimElem = 3, >= 0
trigger1 = stateno = [1510,1530]
trigger1 = command = "holdback" && command != "holdup" && command = "b"


;---------------------------------------------------------------------------
[State -1, Gamma Charge B Far]
type = ChangeState
value = 1590
triggerall = !var(59)
triggerall = var(39) = 1 && AnimElem = 3, >= 0
trigger1 = stateno = [1510,1530]
trigger1 = command = "holdback" && command != "holdup" && command = "c"

;---------------------------------------------------------------------------
[State -1, Gamma Charge H Near]
type = ChangeState
value = 1450
triggerall = !var(59)
triggerall = command = "BF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------
[State -1, Gamma Charge H Near]
type = ChangeState
value = 1450
triggerall = !var(59)
triggerall = var(39) = 1 && AnimElem = 3, >= 0
trigger1 = stateno = [1510,1530]
trigger1 = command = "holdfwd" && command != "holdup" && command = "a"


;---------------------------------------------------------------------------
[State -1, Gamma Charge H Mid]
type = ChangeState
value = 1460
triggerall = !var(59)
triggerall = command = "BF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------
[State -1, Gamma Charge H Mid]
type = ChangeState
value = 1460
triggerall = !var(59)
triggerall = var(39) = 1 && AnimElem = 3, >= 0
trigger1 = stateno = [1510,1530]
trigger1 = command = "holdfwd" && command != "holdup" && command = "b"


;---------------------------------------------------------------------------
[State -1, Gamma Charge H Far]
type = ChangeState
value = 1470
triggerall = !var(59)
triggerall = command = "BF_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------
[State -1, Gamma Charge H Far]
type = ChangeState
value = 1470
triggerall = !var(59)
triggerall = var(39) = 1 && AnimElem = 3, >= 0
trigger1 = stateno = [1510,1530]
trigger1 = command = "holdfwd" && command != "holdup" && command = "c"


;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Near]
type = ChangeState
value = 1480
triggerall = !var(59)
triggerall = command = "BF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Near]
type = ChangeState
value = 1480
triggerall = !var(59)
triggerall = var(39) = 1
triggerall = AnimElem = 3, >= 0
trigger1 = stateno = [1450,1470]
trigger1 = command = "holdfwd" && command != "holdup" && command = "a"
trigger2 = stateno = [1510,1530]
trigger2 = command = "holdfwd" && command = "holdup" && command = "a"



;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Mid]
type = ChangeState
value = 1490
triggerall = !var(59)
triggerall = command = "BF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Mid]
type = ChangeState
value = 1490
triggerall = !var(59)
triggerall = var(39) = 1
triggerall = AnimElem = 3, >= 0
trigger1 = stateno = [1450,1470]
trigger1 = command = "holdfwd" && command != "holdup" && command = "b"
trigger2 = stateno = [1510,1530]
trigger2 = command = "holdfwd" && command = "holdup" && command = "b"

;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Far]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = command = "BF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------
[State -1, Gamma Charge UF Far]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = var(39) = 1
triggerall = AnimElem = 3, >= 0
trigger1 = stateno = [1450,1470]
trigger1 = command = "holdfwd" && command != "holdup" && command = "c"
trigger2 = stateno = [1510,1530]
trigger2 = command = "holdfwd" && command = "holdup" && command = "c"

;---------------------------------------------------------------------------
[State -1, Gamma Charge U Near]
type = ChangeState
value = 1510
triggerall = !var(59)
triggerall = command = "DD_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------
[State -1, Gamma Charge U Near]
type = ChangeState
value = 1510
triggerall = var(39) = 1
trigger1 = (stateno = [1450,1470]) || (stateno = [1510,1530])
trigger1 = AnimElem = 3, >= 0
trigger1 = command = "a"

;---------------------------------------------------------------------------
[State -1, Gamma Charge U Mid]
type = ChangeState
value = 1520
triggerall = !var(59)
triggerall = command = "DD_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------
[State -1, Gamma Charge U Mid]
type = ChangeState
value = 1520
triggerall = !var(59)
triggerall = var(39) = 1
trigger1 = (stateno = [1450,1470]) || (stateno = [1510,1530])
trigger1 = AnimElem = 3, >= 0
trigger1 = command = "b"


;---------------------------------------------------------------------------
[State -1, Gamma Charge U Far]
type = ChangeState
value = 1530
triggerall = !var(59)
triggerall = command = "DD_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------
[State -1, Gamma Charge U Far]
type = ChangeState
value = 1530
triggerall = !var(59)
triggerall = var(39) = 1
trigger1 = (stateno = [1450,1470]) || (stateno = [1510,1530])
trigger1 = AnimElem = 3, >= 0
trigger1 = command = "c"




;===========================================================================

===========================================================================


;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = S
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Crouching)
[State -1, Guard Push]
type = ChangeState
value = 7615
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = C
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Air)
[State -1, Guard Push]
type = ChangeState
value = 7620
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = Stateno != 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "x" && command = "y"

;---------------------------------------------------------------------------


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = Stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"



;---------------------------------------------------------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z" && command = "y"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------

[State -1,Ground Toss]
type = null;ChangeState
value = 830
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "c" && command = "b"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S


;---------------------------------------------------------------------------

[State -1,Air Throw]
type = ChangeState
value = 920
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z"  && command = "y"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50


;---------------------------------------------------------------------------

[State -1,Air Throw]
type = null;ChangeState
value = 950
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "b"  && command = "c"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

[State -1, overhead atk]
type = ChangeState
value = 590
triggerall = !var(59)
triggerall = command = "y" && command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 590




;---------------------------------------------------------------------------

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200




;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300



;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500




;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210



;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310




;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410



;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510




;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 220



;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 320


;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 420


;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 520




;---------------------------------------------------------------------------
[State -1, Air Down Kick]
type = null;ChangeState
value = 8016
triggerall = !var(59)
triggerall = command = "a" && command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 8016

;---------------------------------------------------------------------------
[State -1, Air Down Kick]
type = null;ChangeState
value = 8017
triggerall = !var(59)
triggerall = command = "b" && command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 8017


;---------------------------------------------------------------------------
[State -1, Air Down Kick]
type = ChangeState
value = 8018
triggerall = !var(59)
triggerall = command = "c" && command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 8018



;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 700





;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610




;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 710


;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 620



;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 720

;---------------------------------------------------------------------------
[State -1, Triangle Jump]
type = null;ChangeState
value = 7730
triggerall = !var(59)
triggerall = StateType = A
triggerall = Ctrl
trigger1 = FrontEdgeBodyDist <= 3
trigger1 = Vel X > 0
trigger1 = command = "holdback"
trigger2 = BackEdgeBodyDist <= 3
trigger2 = Vel X < 0
trigger2 = command = "holdfwd"

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7710
triggerall = !var(59)
triggerall = statetype != A
trigger1 = command = "Super Jump"
trigger1 = ctrl
trigger2 = command = "Super Jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = stateno = 420

;---------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
value = 7970
triggerall = !var(59)
triggerall = command = "Counter"
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Roll recovery foward]
type = ChangeState
value = 7800
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1, Roll recovery Backward]
type = ChangeState
value = 7801
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1



;---------------------------------------------------------------------------


[State -1,Guard]
type = ChangeState
triggerall = NumHelper(8600)
triggerall = !var(59) && (stateno != [120,155]) ;&& Helper(8600),Numenemy
;triggerall = statetype != A
triggerall = p2bodydist x > 80
triggerall = enemynear,movetype = A ;inguarddist || Helper(8600),inguarddist
triggerall = command = "holdback"
trigger1 = ctrl
value = 120



