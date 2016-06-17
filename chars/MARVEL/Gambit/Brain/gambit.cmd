; Gambit by Buckus
;
;===============================================================================
;Button Remaping
;===============================================================================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;===============================================================================
;Default Values
;===============================================================================

[Defaults]

command.time = 15
command.buffer.time = 1


;===============================================================================
;A.I.
;===============================================================================

[Command]
name = "cpu1"
command = U, D, F
time = 1

[Command]
name = "cpu2"
command = U, B, F
time = 1

[Command]
name = "cpu3"
command = U, D, D
time = 1

[Command]
name = "cpu4"
command = F, B, U
time = 1

[Command]
name = "cpu5"
command = U, F, U, B
time = 1

[Command]
name = "cpu6"
command = U, D, B
time = 1

[Command]
name = "cpu7"
command = F, F, B
time = 1

[Command]
name = "cpu8"
command = U, D, U
time = 1

[Command]
name = "cpu9"
command = F, B, B
time = 1

[Command]
name = "cpu10"
command = F, F, B, B
time = 1

[Command]
name = "cpu11"
command = U, U, F
time = 1

[Command]
name = "cpu12"
command = U, B, B
time = 1

[Command]
name = "cpu13"
command = U, B, F, F
time = 1

[Command]
name = "cpu14"
command = U, F, B, U
time = 1

[Command]
name = "cpu15"
command = U, B, F, U
time = 1

[Command]
name = "cpu16"
command = U, B, B, B
time = 1

[Command]
name = "cpu17"
command = U, D, B, F
time = 1

[Command]
name = "cpu18"
command = U, D, B, D
time = 1

[Command]
name = "cpu19"
command = U, D, F, U
time = 1

[Command]
name = "cpu20"
command = U, D, U, B
time = 1

[Command]
name = "cpu21"
command = U, D, F, F
time = 1

[Command]
name = "cpu22"
command = F, F, F, F
time = 1

[Command]
name = "cpu23"
command = U, U, U, D
time = 1

[Command]
name = "cpu24"
command = B, B, B
time = 1

[Command]
name = "cpu25"
command = D, D, D, D
time = 1

[Command]
name = "cpu26"
command = D, D, D
time = 1

[Command]
name = "cpu27"
command = F, F, F
time = 1

[Command]
name = "cpu28"
command = U, U, U
time = 1

[Command]
name = "cpu29"
command = U, U, B, B
time = 1

[Command]
name = "cpu30"
command = D, D, F, F
time = 1

;===============================================================================
;Super Motions
;===============================================================================

[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,x+y
time=30
[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,x+z
time=30
[Command]
name="2QCB+2p"
command=~D,DB,B,D,DB,y+z
time=30

[Command]
name="2QCF+2p"
command=~D,DF,F,D,DF,x+y
time=30
[Command]
name="2QCF+2p"
command=~D,DF,F,D,DF,x+z
time=30
[Command]
name="2QCF+2p"
command=~D,DF,F,D,DF,y+z
time=30

[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,a
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,b
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,c
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~a
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~b
time = 30
[Command]
name = "2QCF_k"
command = ~D,DF,F,D,DF,F,~c
time = 30

[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,a
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,b
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,c
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,~a
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,~b
time = 30
[Command]
name = "2QCB_k"
command = ~D,DB,B,D,DB,B,~c
time = 30

[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,x
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,y
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,z
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~x
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~y
time = 30
[Command]
name = "2QCF_p"
command = ~D,DF,F,D,DF,F,~z
time = 30

[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,x
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,y
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,z
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~x
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~y
time = 30
[Command]
name = "2QCB_p"
command = ~D,DB,B,D,DB,B,~z
time = 30

;===============================================================================
;Special Motions
;===============================================================================

[Command]
name = "HCF_a"
command = ~B,DB,D,DF,F,a
time = 25
[Command]
name = "HCF_b"
command = ~B,DB,D,DF,F,b
time = 25
[Command]
name = "HCF_c"
command = ~B,DB,D,DF,F,c
time = 25
[Command]
name = "HCF_a"
command = ~B,DB,D,DF,F,~a
time = 25
[Command]
name = "HCF_b"
command = ~B,DB,D,DF,F,~b
time = 25
[Command]
name = "HCF_c"
command = ~B,DB,D,DF,F,~c
time = 25

[Command]
name = "HCB_a"
command = ~F,DF,D,DB,B,a
time = 25
[Command]
name = "HCB_b"
command = ~F,DF,D,DB,B,b
time = 25
[Command]
name = "HCB_c"
command = ~F,DF,D,DB,B,c
time = 25
[Command]
name = "HCB_a"
command = ~F,DF,D,DB,B,~a
time = 25
[Command]
name = "HCB_b"
command = ~F,DF,D,DB,B,~b
time = 25
[Command]
name = "HCB_c"
command = ~F,DF,D,DB,B,~c
time = 25

[Command]
name = "HCF_x"
command = ~B,DB,D,DF,F,x
time = 25
[Command]
name = "HCF_y"
command = ~B,DB,D,DF,F,y
time = 25
[Command]
name = "HCF_z"
command = ~B,DB,D,DF,F,z
time = 25
[Command]
name = "HCF_x"
command = ~B,DB,D,DF,F,~x
time = 25
[Command]
name = "HCF_y"
command = ~B,DB,D,DF,F,~y
time = 25
[Command]
name = "HCF_z"
command = ~B,DB,D,DF,F,~z
time = 25

[Command]
name = "HCB_x"
command = ~F,DF,D,DB,B,x
time = 25
[Command]
name = "HCB_y"
command = ~F,DF,D,DB,B,y
time = 25
[Command]
name = "HCB_z"
command = ~F,DF,D,DB,B,z
time = 25
[Command]
name = "HCB_x"
command = ~F,DF,D,DB,B,~x
time = 25
[Command]
name = "HCB_y"
command = ~F,DF,D,DB,B,~y
time = 25
[Command]
name = "HCB_z"
command = ~F,DF,D,DB,B,~z
time = 25

[Command]
name = "upper_x"
command = ~F,D,DF,x
time = 20
[Command]
name = "upper_y"
command = ~F,D,DF,y
time = 20
[Command]
name = "upper_z"
command = ~F,D,DF,z
time = 20
[Command]
name = "upper_x"
command = ~F,D,DF,~x
time = 20
[Command]
name = "upper_y"
command = ~F,D,DF,~y
time = 20
[Command]
name = "upper_z"
command = ~F,D,DF,~z
time = 20

[Command]
name = "QCF_a"
command = D,DF,F,~a
time = 20
[Command]
name = "QCF_b"
command = D,DF,F,~b
time = 20
[Command]
name = "QCF_c"
command = D,DF,F,~c
time = 20
[Command]
name = "QCF_a"
command = D,DF,F,~a
time = 20
[Command]
name = "QCF_b"
command = D,DF,F,~b
time = 20
[Command]
name = "QCF_c"
command = D,DF,F,~c
time = 20

[Command]
name = "QCF_x"
command = ~D,DF,F,x
time = 20
[Command]
name = "QCF_y"
command = ~D,DF,F,y
time = 20
[Command]
name = "QCF_z"
command = ~D,DF,F,z
time = 20
[Command]
name = "QCF_x"
command = ~D,DF,F,~x
time = 20
[Command]
name = "QCF_y"
command = ~D,DF,F,~y
time = 20
[Command]
name = "QCF_z"
command = ~D,DF,F,~z
time = 20

[Command]
name = "QCB_x"
command = ~D,DB,B,x
time = 20
[Command]
name = "QCB_y"
command = ~D,DB,B,y
time = 20
[Command]
name = "QCB_z"
command = ~D,DB,B,z
time = 20
[Command]
name = "QCB_x"
command = ~D,DB,B,~x
time = 20
[Command]
name = "QCB_y"
command = ~D,DB,B,~y
time = 20
[Command]
name = "QCB_z"
command = ~D,DB,B,~z
time = 20

[Command]
name = "dive"
command = /DF, c

;===============================================================================
;Double Tap
;===============================================================================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "super jump"
command = $D, $U

;===============================================================================
;2/3 Button Combinations
;===============================================================================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "counter"
command = a+b
time = 1

[Command]
name = "throw1"
command = x+y
time = 1
[Command]
name = "throw1"
command = y+z
time = 1
[Command]
name = "throw1"
command = x+z
time = 1

[Command]
name = "throw2"
command = a+b
time = 1
[Command]
name = "throw2"
command = b+c
time = 1
[Command]
name = "throw2"
command = a+c
time = 1

;===============================================================================
;Dir + Buttons
;===============================================================================

[Command]
name = "forward_a"
command = /$F,a
time = 1
[Command]
name = "forward_b"
command = /$F,b
time = 1
[Command]
name = "forward_c"
command = /$F,c
time = 1

[Command]
name = "forward_x"
command = /$F,x
time = 1
[Command]
name = "forward_y"
command = /$F,y
time = 1
[Command]
name = "forward_z"
command = /$F,z
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

;===============================================================================
;Single Buttons
;===============================================================================

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

;===============================================================================
;Single Dir
;===============================================================================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1

;===============================================================================
;Hold Dir
;===============================================================================

[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1

[Command]
name = "Launcher"
command = $U
time = 20

;===============================================================================
;Hold Buttons
;===============================================================================

[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1

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

[State -1, AI TRIGGER]
type = Varset
triggerall = RoundState = 2
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
v = 7
value = 1
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != 243
trigger2 = movecontact
var(1) = 1

;===========================================================================
;---------------------------------------------------------------------------
;Hyper Cajun Slash
;三烈カンフー突き手（ゲージレベル１）
[State -1, Kinetic Overload]
type = ChangeState
value = 4000
triggerall = var(7) != 1 && stateno!=4000
triggerall = command = "2QCF+2p"
triggerall = power >= 3000
triggerall = statetype!= A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
;trigger4 = var(3)
;---------------------------------------------------------------------------
;Hyper Cajun Slash
;三烈カンフー突き手（ゲージレベル１）
[State -1, Cajun Assault]
type = ChangeState
value = 3050
triggerall = var(7) != 1 && stateno!=3050
triggerall = command = "2QCB_p"
triggerall = power >= 1000
triggerall = statetype!= A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Cajun Explosion Forward
;三烈カンフー突き手（ゲージレベル１）
[State -1, Cajun Explosion Forward]
type = ChangeState
value = 3010
triggerall = var(7) != 1 && stateno!=3010
triggerall = command = "2QCF_k"
triggerall = power >= 2000
triggerall = statetype!= A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Cajun Explosion Backward
;三烈カンフー突き手（ゲージレベル１）
[State -1, Cajun Explosion Backward]
type = ChangeState
value = 3011
triggerall = var(7) != 1 && stateno!=3011
triggerall = command = "2QCB_k"
triggerall = power >= 2000
triggerall = statetype!= A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Royal Flush
;三烈カンフー突き手（ゲージレベル１）
[State -1, Royal Flush]
type = ChangeState
value = 3000
triggerall = var(7) != 1 && stateno!=3000
triggerall = command = "2QCF_p"
triggerall = power >= 1000
triggerall = statetype!= A
trigger1 = ctrl
trigger2 = var(1)
trigger3 = var(2)
trigger4 = var(3)
;---------------------------------------------------------------------------
;Cajun Strike Punch Forward
;カンフー突き手（弱）
[State -1, Cajun Strike Punch Forward]
type = ChangeState
value = 1200
triggerall = var(7)!= 1
triggerall = command = "HCF_x"||command = "HCF_y"||command = "HCF_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Cajun Strike Punch Backward
;カンフー突き手（弱）
[State -1, Cajun Strike Punch Backward]
type = ChangeState
value = 1201
triggerall = var(7)!= 1
triggerall = command = "HCB_x"||command = "HCB_y"||command = "HCB_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Light Cajun Slash
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Light Cajun Slash]
type = ChangeState
value = 1100
triggerall = var(7)!= 1
triggerall = command = "upper_x"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Strong Cajun Slash
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Strong Cajun Slash]
type = ChangeState
value = 1110
triggerall = var(7)!= 1
triggerall = command = "upper_y"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fierce Cajun Slash
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Fierce Cajun Slash]
type = ChangeState
value = 1120
triggerall = var(7)!= 1
triggerall = command = "upper_z"
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Light Kinetic Card
;カンフー突き手（弱）
[State -1, Light Kinetic Card]
type = ChangeState
value = 1000
triggerall = var(7)!= 1
triggerall = command = "QCF_x"
triggerall = !numhelper(1005)
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kinetic Card
;カンフー突き手（強）
[State -1, Strong Kinetic Card]
type = ChangeState
value = 1010
triggerall = var(7)!= 1
triggerall = command = "QCF_y"
triggerall = !numhelper(1005)
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fierce Kinetic Card
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Fierce Kinetic Card]
type = ChangeState
value = 1020
triggerall = var(7)!= 1
triggerall = command = "QCF_z"
triggerall = !numhelper(1005)
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Light Kinetic Card Air
[State -1, Light Kinetic Card Air]
type = ChangeState
value = 1150
triggerall = var(7) != 1
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = [600,620]) && movecontact
trigger4 = (stateno = [630,650]) && movecontact
;---------------------------------------------------------------------------
;Strong Kinetic Card Air
[State -1, Strong Kinetic Card Air]
type = ChangeState
value = 1160
triggerall = var(7) != 1
triggerall = command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = [600,620]) && movecontact
trigger4 = (stateno = [630,650]) && movecontact
;---------------------------------------------------------------------------
;Fierce Kinetic Card Air
[State -1, Fierce Kinetic Card Air]
type = ChangeState
value = 1170
triggerall = var(7) != 1
triggerall = command = "QCF_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = [600,620]) && movecontact
trigger4 = (stateno = [630,650]) && movecontact
;---------------------------------------------------------------------------
;Light Trick Card
;カンフー突き手（弱）
[State -1, Light Trick Card]
type = ChangeState
value = 1050
triggerall = var(7)!= 1
triggerall = command = "QCB_x"
triggerall = !numhelper(1005)
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Strong Trick Card
;カンフー突き手（弱）
[State -1, Strong Trick Card]
type = ChangeState
value = 1060
triggerall = var(7)!= 1
triggerall = command = "QCB_y"
triggerall = !numhelper(1005)
trigger1 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fierce Trick Card
;カンフー突き手（弱）
[State -1, Fierce Trick Card]
type = ChangeState
value = 1070
triggerall = var(7)!= 1
triggerall = command = "QCB_z"
triggerall = !numhelper(1005)
trigger1 = var(1) ;Use combo condition (above)
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(7) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(7) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------------------------
[State -1, Standing Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && (statetype=S || stateno=5120)
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
trigger1= var(21):=1
attr=SA,AA,AP
stateno=99
slot=0
time=8
;----------------------------------------------------
[State -1, Crouching Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && statetype!=A
trigger1= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= ctrl || (stateno=[700,701]) || stateno=5120
trigger1= var(21):=2
attr=C,AA,AP
stateno=98
slot=0
time=8
;-----------------------------------------------------
[State -1, Air Parry]
type=hitoverride
trigger1= var(7) != 1
trigger1= roundstate=2 && statetype=A
trigger1= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= ctrl || stateno=702
trigger1= var(21):=3
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7
;---------------------------------------------------------------------------
[State -1, Counter- Away]
type = ChangeState
value = 700
triggerall = var(7) != 1
triggerall = command = "throw1" && statetype != A
trigger1 = (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger2 = command = "holdfwd" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger3 = command = "holdback" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
;---------------------------------------------------------------------------
[State -1, Counter- Stun]
type = ChangeState
value = 701
triggerall = var(7) != 1
triggerall = command = "throw2" && statetype != A
trigger1 = (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger2 = command = "holdfwd" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
trigger3 = command = "holdback" && (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153) && power >= 1500
;---------------------------------------------------------------------------
[State -1, Guard Breaker]
type = ChangeState
value = 710
triggerall = var(7)!= 1  && p2stateno != 720 && power>= 180
trigger1 = ctrl && (command = "y" && command = "b") && statetype != A
;---------------------------------------------------------------------------
[State -1, Back Side Step]
type = ChangeState
value = 718
triggerall = var(7)!= 1
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdback") && statetype != A
;---------------------------------------------------------------------------
[State -1, Forward Side Step]
type = ChangeState
value = 719
triggerall = var(7)!= 1
trigger1 = ctrl && (command = "x" && command = "a" && command = "holdfwd") && statetype != A
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(7) != 1
triggerall = command = "throw1"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = ctrl
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(7) != 1
triggerall = command = "throw2"
triggerall = statetype = S
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = ctrl
;---------------------------------------------------------------------------
;==============
; Super Jump
;===============
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = var(7) != 1
trigger1 = command = "super jump"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 420
trigger2 = (movehit) && (command = "holdup") && animelemtime(4)>0
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Stand Fierce Punch
;立ち強パンチ
[State -1, Stand Fierce Punch]
type = ChangeState
value = 220
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = [240,241]) && movecontact;||(stateno = 244) && movecontact
trigger6 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Standing Fierce Kick
;立ち強キック
[State -1, Standing Fierce Kick]
type = ChangeState
value = 250
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = [210,211]) && movecontact
trigger5 = (stateno = [240,241]) && movecontact;||(stateno = 244) && movecontact
trigger6 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(7) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(7) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(7) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact||(stateno = 230) && movecontact
trigger3 = (stateno = 400) && movecontact||(stateno = 430) && movecontact
trigger4 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Crouching Fierce Punch
;しゃがみ強パンチ
[State -1, Crouching Fierce Punch]
type = ChangeState
value = 420
triggerall = var(7) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [230,241]) && movecontact;||(stateno = 244) && movecontact
trigger5 = (stateno = [430,440]) && movecontact
trigger6 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(7) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
trigger4 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(7) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact||(stateno = 430) && movecontact
trigger4 = (stateno = [210,211]) && movecontact||(stateno = 410) && movecontact
trigger5 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Crouching Fierce Kick
;しゃがみ強キック
[State -1, Crouching Fierce Kick]
type = ChangeState
value = 450
triggerall = var(7) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = 230) && movecontact||(stateno = 430) && movecontact
trigger4 = (stateno = [210,211]) && movecontact||(stateno = 410) && movecontact
trigger5 = (stateno = 240) && movecontact||(stateno = 440) && movecontact
trigger6 = (stateno = 220) && movecontact||(stateno = 420) && movecontact
trigger7 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(7) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 13
trigger3 = stateno = 1350 ;Air blocking
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(7) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 620
triggerall = var(7) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact||(stateno = 640) && movecontact
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(7) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact
;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(7) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 600) && movecontact||(stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact
;---------------------------------------------------------------------------
;Jump Fierce Kick
;空中強キック
[State -1, Jump Fierce Kick]
type = ChangeState
value = 650
triggerall = var(7) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630||stateno=610||stateno=640 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking


;===========================================================================
;===============Artifical Intelligence======================================
;===========================================================================
;---------------------------------------------------------------------------
;Block
[State -1, guard]
type=changestate
value=120
trigger1= var(7)>=1 && random<500
trigger1= roundstate=2 && (stateno!=[120,155]) && ctrl
trigger1= inguarddist && (prevstateno!=[97,99])
trigger1=!(enemynear,hitdefattr=SCA,AT)
;Taunt
[State -1, taunt]
type=changestate
value=195
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
trigger1= p2dist x>160 && (enemynear,vel y>0) && ctrl && random<100
trigger1= !(enemynear,ctrl) && (enemynear,movetype=H)
;---------------------------------------------------------------------------
;A.I. Parry
;---------------------------------------------------------------------------
[State -1, Standing Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<200) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=1
attr=SA,AA,AP
stateno=99
slot=0
time=8

[State -1, Crouching Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype!=A
trigger1= (ctrl && random<200) || ((stateno=[98,99]) && random<333)
trigger1= var(21):=2
attr=C,AA,AP
stateno=98
slot=0
time=8

[State -1, Air Parry]
type=hitoverride
triggerall= var(7)>=1 && numenemy
triggerall= roundstate=2 && statetype=A
trigger1= (ctrl && random<200) || (stateno=97 && random<333)
trigger1= var(21):=3
attr=SA,AA,AP
stateno=97
forceair=1
slot=0
time=7

[State -1, Reset Parry]
type=hitoverride
trigger1= (!ctrl && (stateno!=[97,99]) && stateno!=5120) || var(20)
trigger2= movetype!=I || (stateno=[100,106]) || (stateno=[120,132])
trigger3= var(7)<= 0 && (command="holdback" || command="holdup")
trigger4= (statetype=S || statetype=C) && var(21)!=1 && var(21)!=2
trigger5= statetype=A && var(21)!=3
slot=0
time=0
;---------------------------------------------------------------------------
[State -1, Counter]
type=null
value=ifelse(random<333,701,700)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1000
triggerall= (stateno = 150 || stateno = 151||stateno = 152 || stateno = 153)
trigger1= (p2bodydist x=[0,60]) && (life<.5*lifemax) && random<33
;--------------------------------------------------------------------------
[State -1, Guard Breaker]
type=Changestate
value=710
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && p2stateno!= 720  && power>=180
trigger1= ctrl && (p2bodydist x=[0,110])
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power >=750 && random<75
trigger2= ctrl && (p2bodydist x=[0,110])
trigger2= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && power <750 && random<25
trigger3= ctrl && p2statetype=L && (p2bodydist x=[0,110]) && power >=750 && random<75
;--------------------------------------------------------------------------
[State -1, Side Step]
type=changestate
value=ifelse(random<600,718,719)
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && ctrl; && random<50
trigger1= enemynear,movetype=A && (enemy,hitdefattr=SCA,AA) && p2bodydist x<80 && random<150
;---------------------------------------------------------------------------
;Throw
[State -1, throw]
type=changestate
value=ifelse(random<333,900,800)
triggerall= var(7)>=1 && roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,21]) && (p2bodydist y=[-25,25]) && random<33
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,21]) && (p2bodydist y=[-25,25]) && random<500
;---------------------------------------------------------------------------
;Run Fwd
[State -1, run]
type=changestate
value=100
trigger1= var(7)>=1 && statetype=S && roundstate=2 && ctrl && random<200
trigger1= (stateno!=[100,105]) && enemynear,movetype!=A && p2bodydist x>120
;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, dash]
type=changestate
value=105
triggerall= var(7)>=1 && numenemy
triggerall= statetype=S && roundstate=2 && ctrl
triggerall= (p2bodydist x=[0,80]) && backedgebodydist>80 && (stateno!=[100,105])
trigger1= enemynear,movetype=A && random<50
trigger2= enemynear,stateno=5120 && enemynear,animtime=-3 && random<500
;----------------------------------------------------------------------------
[State -1, Jump]
type=changestate
value=40
trigger1= var(7)>=1
trigger1= roundstate=2 && statetype!=A && ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT

;---------------------------------------------------------------------------
;==============
; Super Jump
;===============
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = var(7)>= 1 && roundstate=2 && statetype!=A
trigger1=  ctrl
trigger1= enemynear,movetype=A && p2bodydist x<160 && enemynear,hitdefattr=SC,AT
trigger2= ctrl
trigger2= enemynear,statetype=A && p2bodydist x<190 && p2bodydist y>200
trigger3 = stateno = 420 && animelemtime(4)>=0 && movehit && random<450
;========================================================================
[State -1, Kinetic Explosion]
type = ChangeState
value = 4000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power >= 3000
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,150]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && random<33
trigger2= (stateno=220||stateno=250) && movehit && random<50
trigger3= stateno=1100 && movehit && anim=1100 && animelemtime(4)>=0 && random<50
trigger4= stateno=1112 && movehit && anim=1112 && animelemtime(5)>=0 && random<75
trigger5= stateno=1122 && movehit && anim=1122 && animelemtime(3)>=0 && random<100
;=====================================================================
[State -1, Royal Flush]
type=changestate
value=3000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1000
triggerall= !numhelper(3005)
triggerall= !(enemynear,ctrl) && ((p2stateno!=[120,155])||p2statetype=A)
triggerall= (p2bodydist x=[0,200]) && (p2statetype!=L)
triggerall= (p2dist y=[-100,75]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-2)
trigger1= ctrl && (p2bodydist x=[15,125]) && random<50
trigger2= (stateno=220||stateno=240||stateno=250) && movehit && random<50
trigger3= stateno=1112 && movehit && anim=1112 && animelemtime(5)>=0 && random<75
trigger4= stateno=1122 && movehit && anim=1122 && animelemtime(3)>=0 && random<75
;=====================================================================
[State -1, CajunAssault]
type=changestate
value=3050
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=1000
triggerall= !(enemynear,ctrl) && ((p2stateno!=[120,155])||p2statetype=A)
triggerall= (p2bodydist x=[0,100]) && (p2statetype!=L)
triggerall= (p2dist y=[-100,0]) && (enemynear,vel y=[-7,1]) && (enemynear,vel x>-2)
trigger1= ctrl && (p2bodydist x=[0,80]) && random<50
trigger2= (stateno=220||stateno=250) && movehit && random<50
trigger3= stateno=1100 && movehit && anim=1100 && animelemtime(4)>=0 && random<50
trigger4= stateno=1112 && movehit && anim=1112 && animelemtime(5)>=0 && random<75
trigger5= stateno=1122 && movehit && anim=1122 && animelemtime(3)>=0 && random<100
;trigger7= (stateno=[1000,4999]) && numhelper(stateno+5) && stateno!=3000 && stateno!=3020
;trigger7= helper(stateno+5),var(3) && random<50
;====================================================================
;Cajun Explosion Forward
[state -1, Cajun Explosion Forward]
type = changestate
value = 3010
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=2000
triggerall= (p2stateno!=[120,155])
triggerall= p2bodydist x>= 40 && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = ctrl && backedgebodydist < 20 && random<75
;====================================================================
;Cajun Explosion Backward
[State -1, Cajun Explosion Backward]
type = changestate
value = 3011
triggerall= var(7)>=1 && roundstate=2 && statetype!=A && power>=2000
triggerall= (p2stateno!=[120,155])
triggerall= (p2bodydist x=[0,82]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = ctrl && frontedgebodydist < 150 && random<75
;=======================================================================
[State -1, Light Kinetic Card]
type=changestate
value=1000
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (enemynear,vel y>-1)
triggerall= !numhelper(1005) && !numhelper(1025) && !numhelper(1015) && !numhelper(3005)
trigger1= ctrl && p2dist x>160 && random<33
trigger2= (stateno=[210,220]) && movehit && random<75
trigger2= (stateno=[240,250]) && movehit && random<75
;=====================================================================
[State -1, Strong Kinetic Card]
type=changestate
value=1010
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (enemynear,vel y>-1)
triggerall= !numhelper(1005) && !numhelper(1025) && !numhelper(1015) && !numhelper(3005)
trigger1= ctrl && p2dist x>160 && random<33
;trigger2= (stateno=[200,250]) && movehit && random<200
;=====================================================================
[State -1, Fierce Kinetic Card]
type=changestate
value=1020
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (enemynear,vel y>-1)
triggerall= !numhelper(1005) && !numhelper(1025) && !numhelper(1015) && !numhelper(3005)
trigger1= ctrl && p2dist x>160 && random<33
;trigger2= (stateno=[200,250]) && movehit && random<200
;====================================================================
;Light Cajun Slash
[State -1, Light Cajun Slash]
type=changestate
value=1100
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,70]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && random<100
trigger2= (stateno=[220,225]) && movehit && p2bodydist x<50 && random<200
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<50 && random<200
trigger4= (stateno=[210,215]) && movehit && p2bodydist x<50 && random<75
trigger5= (stateno=[240,245]) && movehit && p2bodydist x<50 && random<75
;====================================================================
;Strong Cajun Slash
[State -1, Strong Cajun Slash]
type=changestate
value=1110
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,82]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && random<33
trigger2= (stateno=[220,225]) && movehit && p2bodydist x<60 && random<75
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<60 && random<75
trigger4= (stateno=[210,215]) && movehit && p2bodydist x<60 && random<75
trigger5= (stateno=[240,245]) && movehit && p2bodydist x<60 && random<75
trigger6= ctrl && (p2statetype=C) && random<125
;====================================================================
;Fierce Cajun Slash
[State -1, Fierce Cajun Slash]
type=changestate
value=1120
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,82]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1= ctrl && random<100
trigger2= (stateno=[220,225]) && movehit && p2bodydist x<60 && random<200
trigger3= (stateno=[250,255]) && movehit && p2bodydist x<60 && random<200
trigger4= (stateno=[210,215]) && movehit && p2bodydist x<60 && random<75
trigger5= (stateno=[240,245]) && movehit && p2bodydist x<60 && random<75
;====================================================================
;Cajun Strike Forward
[state -1, Cajun Strike Punch Forward]
type = changestate
value = 1200
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= p2bodydist x>= 40 && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = ctrl && backedgebodydist < 20 && random<100
;====================================================================
;Cajun Strike Backward
[State -1, Cajun Strike Punch Backward]
type = changestate
value = 1201
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall= (p2bodydist x=[0,82]) && (enemynear,vel y>-1) && (enemynear,vel x>-2)
trigger1 = ctrl && frontedgebodydist < 150 && random<100
;====================================================================
[State -1, Light Kinetic Card Air]
type=changestate
value=1150
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= p2dist x>=0 && p2dist y>=-25
trigger1= ctrl && vel y>-2 && random<333
;====================================================================
[State -1, Strong Kinetic Card Air]
type=changestate
value=1160
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= p2dist x>=0 && p2dist y>=-25
trigger1= ctrl && vel y>-2 && random<100
;====================================================================
[State -1, Fierce Kinetic Card Air]
type=changestate
value=1170
triggerall= var(7)>=1
triggerall= roundstate=2 && statetype=A
triggerall= !(enemynear,ctrl) && (enemynear,stateno!=[120,155])
triggerall= p2dist x>=0 && p2dist y>=-25
trigger1= ctrl && vel y>-2 && random<50
;=====================================================================
[State -1, Light Trick Card]
type=changestate
value=1050
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype=A) && (enemynear,vel y>-1)
triggerall= !numhelper(1005) && !numhelper(1025) && !numhelper(1015) && !numhelper(3005)
trigger1= ctrl && (p2bodydist x=[0,200]) && p2dist y<-80 && random<33
;=====================================================================
[State -1, Strong Trick Card]
type=changestate
value=1060
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype=A) && (enemynear,vel y>-1)
triggerall= !numhelper(1005) && !numhelper(1025) && !numhelper(1015) && !numhelper(3005)
trigger1= ctrl && (p2bodydist x=[0,200]) && p2dist y<-80 && random<33
;=====================================================================
[State -1, Fierce Trick Card]
type=changestate
value=1070
triggerall= var(7)>=1 && roundstate=2 && statetype!=A
triggerall= (p2stateno!=[120,155]) && (p2statetype=A) && (enemynear,vel y>-1)
triggerall= !numhelper(1005) && !numhelper(1025) && !numhelper(1015) && !numhelper(3005)
trigger1= ctrl && (p2bodydist x=[0,200]) && p2dist y<-80 && random<33

;===========================================================================
; Initiate Ground Combos
;===========================================================================
[State -1, SLP]
type=changestate
value=200
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<300
trigger2= p2stateno = 1305 && random<500
trigger2= stateno!=[1300,1301]
trigger3 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
[State -1, SMP]
type=changestate
value=210
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && (p2statetype=S)
trigger1= ctrl && random<75
trigger2= (stateno=[200,205]) && movehit && random<300
trigger3= (stateno=[230,235]) && movehit && random<500
trigger4 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
[State -1, SHP]
type=changestate
value=220
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && p2bodydist x>50 && random<100
trigger2= (stateno=[210,215]) && movehit && random<33
trigger3= (stateno=[240,241]) && movehit && random<500
trigger4 = stateno = 100 && time > 2 && p2bodydist x>50
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, SLK]
type=changestate
value=230
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<300
trigger2= (stateno=[200,205]) && movehit && random<500
trigger3 = stateno = 100 && time > 2
;-----------------------------------------------------------------------------
[State -1, SMK]
type=changestate
value=240
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<33
trigger2= (stateno=[200,205]) && movehit && random<15
trigger3= (stateno=[210,215]) && movehit && random<500
trigger4= (stateno=[230,235]) && movehit && random<33
trigger5 = stateno = 100 && time > 2
;------------------------------------------------------------------------------
[State -1, SHK]
type=changestate
value=250
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<100
trigger2= (stateno=[210,215]) && movehit && random<33
trigger3= (stateno=[240,241]) && movehit && random<500
trigger4 = stateno = 100 && time > 2
;===========================================================================
; Initiate Crouch Combos
;===========================================================================
[State -1, CLP]
type=changestate
value=400
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,46]) && (p2bodydist y=[-50,50]) && p2statetype!=L
trigger1= ctrl && random<300
trigger2 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
[State -1, CMP]
type=changestate
value=410
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,53]) && (p2bodydist y=[-50,50]) && (p2statetype=S)
trigger1= ctrl && random<75
trigger2= (stateno=[400,405]) && movehit && random<33
trigger3= (stateno=[430,435]) && movehit && random<500
trigger4 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
[State -1, CHP]
type=changestate
value=420
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<100
trigger2= (stateno=[410,415]) && movehit && p2bodydist x<45 && random<33
trigger3= (stateno=[440,441]) && movehit && p2bodydist x<45 && random<500
trigger4= (stateno=[210,215]) && movehit && p2bodydist x<45 && random<33
trigger5= (stateno=[240,241]) && movehit && p2bodydist x<45 && random<500
trigger6 = stateno = 100 && time > 2 && p2bodydist x<30
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, CLK]
type=changestate
value=430
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=A)
trigger1= ctrl && random<300
trigger2= (stateno=[400,405]) && movehit && random<500
trigger3 = stateno = 100 && time > 2
;-------------------------------------------------------------------------
[State -1, CMK]
type=changestate
value=440
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,50]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<33
trigger2= (stateno=[400,405]) && movehit && random<15
trigger3= (stateno=[410,415]) && movehit && random<500
trigger4= (stateno=[430,435]) && movehit && random<33
trigger5 = stateno = 100 && time > 2
;----------------------------------------------------------------------------
[State -1, CHK]
type=changestate
value=450
triggerall= var(7)>=1 && statetype!=A && roundstate=2
triggerall= (p2bodydist x=[0,59]) && (p2bodydist y=[-50,50]) && (p2statetype!=L) && (p2statetype!=C)
trigger1= ctrl && random<100
trigger2= (stateno=[410,415]) && movehit && random<200
trigger3= (stateno=[440,441]) && movehit && random<500
trigger4 = stateno = 100 && time > 2
;---------------------------------------------------------------------------
;Air Comboes
;--------------------------------------------------------------------------------
[State -1, ALP]
type=changestate
value=600
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,54]) && (p2bodydist y=[-60,-20]) && (p2statetype!=L)
trigger1= ctrl && (enemy,movetype=H) && random<500

[State -1, AMP]
type=changestate
value=610
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,78]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[600,605]) && movehit && random<33
trigger3= (stateno=[630,635]) && movehit && random<500

[State -1, AHP]
type=changestate
value=620
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,110]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<100
trigger2= (stateno=[610,615]) && movehit && random<33
trigger3= (stateno=[640,641]) && movehit && random<500

[State -1, ALK]
type=changestate
value=630
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,70]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<50
trigger2= (stateno=[600,605]) && movehit && random<500


[State -1, AMK]
type=changestate
value=640
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[-50,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<75
trigger2= (stateno=[600,605]) && movehit && random<15
trigger3= (stateno=[610,615]) && movehit && random<500
trigger4= (stateno=[630,635]) && movehit && random<15

[State -1, AHK]
type=changestate
value=650
triggerall= var(7)>=1 && statetype=A && roundstate=2
triggerall= (p2bodydist x=[0,130]) && (p2bodydist y=[-50,50]) && (p2statetype!=L)
trigger1= ctrl && random<100
trigger2= (stateno=[610,615]) && movehit && random<20
trigger3= (stateno=[640,641]) && movehit && random<500

