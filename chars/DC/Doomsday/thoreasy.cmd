
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Button Remapping |-----------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Default Values |-------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;--------------AI commands
[Command]
name = "C01"
command =  c, c, c, c, c
time = -2

[Command]
name = "C02"
command =  z, z, z, z, z
time = -2

[Command]
name = "C03"
command =  c, c, c, c, c
time = -2

[Command]
name = "C04"
command =  z, z, z, z, z
time = -2

[Command]
name = "C05"
command =  c, c, c, c, c
time = -2

[Command]
name = "C06"
command = U, D, U, D, U
time = -2

[Command]
name = "C07"
command = U, D, U, D, U
time = -2

[Command]
name = "C08"
command =  D, U, D, U, D
time = -2

[Command]
name = "C09"
command = F, B, F, B, F
time = -2

[Command]
name = "C10"
command =  D, U, D, U, D
time = -2

[Command]
name = "C11"
command = F, B, F, B, F
time = -2

[Command]
name = "C12"
command = D, U, D, U, D
time = -2

[Command]
name = "C13"
command = F, B, F, B, F
time = -2

[Command]
name = "C14"
command =  y, y, y, y, y
time = -2

[Command]
name = "C15"
command =  x, x, x, x, x
time = -2

[Command]
name = "C16"
command =  y, y, y, y, y
time = -2

[Command]
name = "C17"
command = a, a, a, a, a
time = -2

[Command]
name = "C18"
command =  y, y, y, y, y
time = -2

[Command]
name = "C19"
command = a, a, a, a, a
time = -2

[Command]
name = "C20"
command =  x, x, x, x, x
time = -2

[Command]
name = "C21"
command =  D, U, D, U, D
time = -2

[Command]
name = "C22"
command = F, B, F, B, F
time = -2

[Command]
name = "C23"
command = D, U, D, U, D
time = -2

[Command]
name = "C24"
command = F, B, F, B, F
time = -2

[Command]
name = "C25"
command =  y, y, y, y, y
time = -2

[Command]
name = "C26"
command =  y, y, y, y, y
time = -2

[Command]
name = "C27"
command = a, a, a, a, a
time = -2

[Command]
name = "C28"
command =  y, y, y, y, y
time = -2

[Command]
name = "C29"
command = a, a, a, a, a
time = -2

[Command]
name = "C30"
command =  x, x, x, x, x
time = -2

[Command]
name = "C31"
command =  c, c, c, c, c
time = -2

[Command]
name = "C32"
command =  z, z, z, z, z
time = -2

[Command]
name = "C33"
command =  c, c, c, c, c
time = -2

[Command]
name = "C34"
command =  z, z, z, z, z
time = -2

[Command]
name = "C35"
command =  c, c, c, c, c
time = -2



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Super Motions |--------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
[Command]
name = "mystic_rainfall"
command = ~F, D, F, a+b
time = 20

[Command]
name = "mystic_rainfall"
command = ~F, D, F, a+c
time = 20

[Command]
name = "mystic_rainfall"
command = ~F, D, F, b+c
time = 20

[Command]
name = "mighty_uru_comet"
command = ~F, D, F, x+y
time = 20

[Command]
name = "mighty_uru_comet"
command = ~F, D, F, y+z
time = 20

[Command]
name = "mighty_uru_comet"
command = ~F, D, F, x+z
time = 20

[Command]
name = "tear_of_the_sky"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "tear_of_the_sky"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "viking_rage"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "viking_rage"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "viking_rage"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "ragnarok_hammer"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "ragnarok_hammer"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "ragnarok_hammer"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "warriors_of_asgard"
command = ~D, DB, B, x+a
time = 20

[Command]
name = "warriors_of_asgard"
command = ~D, DB, B, y+b
time = 20

[Command]
name = "warriors_of_asgard"
command = ~D, DB, B, z+c
time = 20

[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Special Motions |------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Command]
name = "mjolnir_launch"
command = ~D, DF, F, x
[Command]
name = "mjolnir_launch"
command = ~D, DF, F,~x
[Command]
name = "mjolnir_launch"
command = ~D, DF, F, y
[Command]
name = "mjolnir_launch"
command = ~D, DF, F,~y
[Command]
name = "mjolnir_launch"
command = ~D, DF, F, z
[Command]
name = "mjolnir_launch"
command = ~D, DF, F,~z

[Command]
name = "thunderstrike"
command = ~D, DB, B, x
[Command]
name = "thunderstrike"
command = ~D, DB, B,~x
[Command]
name = "thunderstrike"
command = ~D, DB, B, y
[Command]
name = "thunderstrike"
command = ~D, DB, B,~y
[Command]
name = "thunderstrike"
command = ~D, DB, B, z
[Command]
name = "thunderstrike"
command = ~D, DB, B,~z

[Command]
name = "bonovox"
command = ~D, DB, B, a+b

[Command]
name = "bonovox"
command = ~D, DB, B, a+c

[Command]
name = "bonovox"
command = ~D, DB, B, b+c

[Command]
name = "Mjolniryuu-Ken_x"
command = ~F, D, F, x
[Command]
name = "Mjolniryuu-Ken_x"
command = ~F, D, F,~x

[Command]
name = "Mjolniryuu-Ken_y"
command = ~F, D, F, y
[Command]
name = "Mjolniryuu-Ken_y"
command = ~F, D, F,~y

[Command]
name = "Mjolniryuu-Ken_z"
command = ~F, D, F, z
[Command]
name = "Mjolniryuu-Ken_z"
command = ~F, D, F,~z


[Command]
name = "gungnir"
command = ~D, DF, F, a
time = 10
[Command]
name = "gungnir"
command = ~D, DF, F,~a
time = 10

[Command]
name = "gungnir"
command = ~D, DF, F,b
time = 10
[Command]
name = "gungnir"
command = ~D, DF, F,~b
time = 10

[Command]
name = "gungnir"
command = ~D, DF, F, c
[Command]
name = "gungnir"
command = ~D, DF, F,~c

[Command]
name = "aesir_missile"
command = ~D, DF, F, x
[Command]
name = "aesir_missile"
command = ~D, DF, F,~x

[Command]
name = "aesir_missile"
command = ~D, DF, F, y
[Command]
name = "aesir_missile"
command = ~D, DF, F,~y

[Command]
name = "aesir_missile"
command = ~D, DF, F, z
[Command]
name = "aesir_missile"
command = ~D, DF, F,~z


[Command]
name = "thunderbolt_a"
command = ~D, DF, F, a
[Command]
name = "thunderbolt_a"
command = ~D, DF, F,~a

[Command]
name = "thunderbolt_b"
command = ~D, DF, F, b

[Command]
name = "thunderbolt_b"
command = ~D, DF, F,~b

[Command]
name = "thunderbolt_c"
command = ~D, DF, F, c
[Command]
name = "thunderbolt_c"
command = ~D, DF, F,~c

[Command]
name = "counter"
command = ~B, DB, D, x
[Command]
name = "counter"
command = ~B, DB, D,~x

[Command]
name = "counter"
command = ~B, DB, D, y
[Command]
name = "counter"
command = ~B, DB, D,~y

[Command]
name = "counter"
command = ~B, DB, D, z
[Command]
name = "counter"
command = ~B, DB, D,~z
[Command]
name = "recovery_roll"
command = ~B, DB, D, a
[Command]
name = "recovery_roll"
command = ~B, DB, D, ~a

[Command]
name = "recovery_roll"
command = ~B, DB, D, b
[Command]
name = "recovery_roll"
command = ~B, DB, D,~b

[Command]
name = "recovery_roll"
command = ~B, DB, D,c
[Command]
name = "recovery_roll"
command = ~B, DB, D,~c

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Double Tap |-----------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| 2/3 Button Combination |-----------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "superj3press"
command = a+b+c
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "dash2press"
command = x+y+z
time = 8

[Command]
name = "troca"
command = z+c
time = 8

[Command] 
name = "Assist"
command = y+b
time = 8
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Dir + Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-|hold Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[Command]
name = "mjolnirspin"
command = /x
time = 5

[Command]
name = "mjolnirspin"
command = /y
time = 5

[Command]
name = "mjolnirspin"
command = /z
time = 5

[Command]
name = "hold_c"
command = /c
time = 5

[Command]
name = "superjump"
command = $D, $U
time = 10
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Single Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Hold Dir |--------------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTT  Thor      A.I. TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[State -1, AI];1st activation
type = VarSet
;triggerall = (!Var(59))
;triggerall = (MatchNo = 1) || (NumPartner && !IsHomeTeam)
trigger1 = command = "C01"
trigger2 = command = "C02"
trigger3 = command = "C03"
trigger4 = command = "C04"
trigger5 = command = "C05"
trigger6 = command = "C06"
trigger7 = command = "C07"
trigger8 = command = "C08"
trigger9 = command = "C09"
trigger10 = command = "C10"
trigger11 = command = "C11"
trigger12 = command = "C12"
trigger13 = command = "C13"
trigger14 = command = "C14"
trigger15 = command = "C15"
trigger16 = command = "C16"
trigger17 = command = "C17"
trigger18 = command = "C18"
trigger19 = command = "C19"
trigger20 = command = "C20"
trigger21 = command = "C21"
trigger22 = command = "C22"
trigger23 = command = "C23"
trigger24 = command = "C24"
trigger25 = command = "C25"
trigger26 = command = "C26"
trigger27 = command = "C27"
trigger28 = command = "C28"
trigger29 = command = "C29"
trigger30 = command = "C30"
trigger31 = command = "C31"
trigger32 = command = "C32"
trigger33 = command = "C33"
trigger34 = command = "C34"
trigger35 = command = "C35"
v = 59
value = 1


;-------------- guarding
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl&& EnemyNear, Facing != Facing
trigger1 = P2StateType != C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 130
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
triggerall = P2StateType = C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 150
trigger1 = random <= 420
value = 152
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
trigger1 = P2StateType = C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 131
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
triggerall = P2StateType != C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 152
trigger1 = random <= 420
value = 150
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType = A && Ctrl && EnemyNear, Facing != Facing
trigger1 = P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 132
persistent = 0
;-------------------guardpush
[State -1,ChangeState]
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1 && StateType != A &&  life > 10 
trigger1 = random <= 200
trigger1 = stateno = [150,153] 
value = 6300


[State -1,ChangeState]
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1&& StateType != A &&  life > 10
trigger1 = random <= 200
trigger1 = stateno = [150,153]
value = 6310


[State -1,ChangeState]
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1&& StateType = A &&  life > 10
trigger1 = random <= 200
trigger1 = stateno = [154,155]
value = 6320

[State -1,ChangeState];rroll
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1&& stateno = 5100
trigger1 = random <= 500
value = 6500

;--------- airecover
[State -1, changestate]
type = changestate
triggerall = var(59)>=1 &&  stateno = 5050
triggerall = alive = 1
trigger1 = vel y > 2 
trigger1 = random <= 500
value = 5200


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Warriors Asgard level 3 hyper
[State -1, Warriors_of_Asgard]
type = ChangeState
triggerall =  command = "warriors_of_asgard" && power >= 3000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = stateno = 1100 
trigger3 = helper,movecontact
value = 3500


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Hyper Mystic rainfall
[State -1, mystic_rainfall]
type = ChangeState
triggerall = !NumExplod(3310)
trigger1 = power >= 1000
trigger1 = statetype !=A && ctrl && command = "mystic_rainfall"
value = 3300
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Hyper Mighty Uru Comet
[State -1, mighty_Uru_Comet]
type = ChangeState
triggerall =  command = "mighty_uru_comet" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = stateno = 1100&&animelemtime(4)>=10  
trigger3 = helper,movecontact
trigger4 = stateno = 2000&&animelemtime(6)>=10  
trigger4 = helper,movecontact
trigger5 = stateno = 3200 && movecontact
value = 3100
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Ragnarok Hammer
[State -1, ragnarok_hammer]
type = ChangeState
triggerall = command = "ragnarok_hammer" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = stateno = 1100&&animelemtime(4)>=10 
trigger3 = helper,movecontact
trigger4 = stateno = 2000&&animelemtime(6)>=10 
trigger4 = helper,movecontact
value = 3200

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Tear of the Sky - Hyper Thunderstrike
[State -1, Tear_of_the_Sky]
type = ChangeState
triggerall = command = "tear_of_the_sky" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = stateno = 1100&&animelemtime(4)>=10 
trigger3 = helper,movecontact
trigger4 = stateno = 3200 && movecontact
value = 2000

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Hyper NORDIC rage
[State -1, viking]
type = ChangeState
triggerall =  command = "viking_rage" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = stateno = 1100&&animelemtime(4)>=10   
trigger3 = helper,movecontact
trigger4 = stateno = 2000&&animelemtime(6)>=10  
trigger4 = helper,movecontact
trigger5 = stateno = 3200 && movecontact
value = 3400

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Mjol....whatever :P 
[State -1, Mjolniryuu-KenXYZ]
type = ChangeState
triggerall =  statetype !=A && command = "Mjolniryuu-Ken_x" 
trigger1 = ctrl 
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1300
 
[State -1, Mjolniryuu-KenY]
type = ChangeState
triggerall =  statetype !=A && command = "Mjolniryuu-Ken_y" 
trigger1 = ctrl 
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1310

[State -1, Mjolniryuu-Kenz]
type = ChangeState
triggerall =  statetype !=A && command = "Mjolniryuu-Ken_z" 
trigger1 = ctrl 
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1320

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; Gungnir dive (dive kick)
[State -1, gungnir]
type = ChangeState
triggerall =  statetype =A && command = "gungnir" 
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger2 = movecontact
trigger2 = stateno != 621
trigger3 = stateno = 12001 
value = 12100
 
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; Aesir missile (dive punch)
[State -1, aesir missile]
type = ChangeState
triggerall = statetype =A && command = "aesir_missile" 
trigger1 = ctrl
trigger2 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger2 = movecontact
trigger2 = stateno != 621
trigger3 = stateno = 12001 
value = 12200
  
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; Mjolnir Launch
[State -1, Mjolnir]
type = ChangeState
triggerall = statetype !=A && command = "mjolnir_launch"
trigger1 = ctrl 
value = 1009

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; Mjolnir Launch cancel
[State -1, Mjolnir]
type = ChangeState
triggerall = statetype !=A && command = "mjolnir_launch"
trigger1= (stateno = [200,250]) || (stateno = [400,450])
trigger1 = movecontact
value = 1000


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Thunderstrike 
[State -1, Thunderstrike]
type = ChangeState
triggerall = command = "thunderstrike" && statetype !=A
trigger1 = ctrl 
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1100

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Bifrost break far
[State -1, Thunderbolt3]
type = ChangeState
triggerall = statetype !=A && command = "thunderbolt_c"
trigger1 = ctrl
trigger2 = (stateno = 1400)||(stateno = 1410) 
trigger2 = movecontact
trigger3= (stateno = [200,250]) || (stateno = [400,450])
trigger3 = movecontact
value = 1420
persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;bifrost break mid
[State -1, Thunderbolt2]
type = ChangeState
triggerall = statetype !=A && command = "thunderbolt_b"
trigger1 = ctrl
trigger2 = stateno = 1400 
trigger2 = movecontact
trigger3= (stateno = [200,250]) || (stateno = [400,450])
trigger3 = movecontact
value = 1410
persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;bifrost break close
[State -1, Thunderbolt1]
type = ChangeState
triggerall = statetype !=A && command = "thunderbolt_a"
trigger1 = ctrl
trigger2= (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1400
persistent = 0
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Recovery Roll - based code by Flowagirl/Necromancer archive codes
[State -1, Fall]
type = VarSet
triggerall = alive 
trigger1 = command = "recovery_roll"
trigger1 = stateno = 5050 || stateno = 5071 || stateno = 5100
v = 20
value = 1

[State -1, roll]
type = ChangeState
triggerall = alive 
trigger1 = Var(20) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 6500

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;guard push - based code by Soldats/MystikBlaze archive codes
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Flying mode
[State -1, fly]
type = ChangeState
triggerall = command = "bonovox"
triggerall = stateno !=12001
trigger1 = ctrl 
value = 12000

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Hammer Crush] 
type = ChangeState
triggerall = statetype = A && ctrl && stateno = 100 && stateno != 621 
trigger1 = command = "z"
trigger1 = stateno != 52 
value = 621

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT   
[State -1, Super Jump]
type = ChangeState
triggerall = statetype != A && ctrl
trigger1 = command = "superjump"
trigger2 = command = "superj3press"
value = 2999

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Fwd]
type = ChangeState
triggerall = statetype = S && ctrl 
triggerall = stateno != 100 && stateno != 52
trigger1 = command = "FF" 
trigger2 = command = "dash2press" 
value = 100
;persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Back]
type = ChangeState
value = 105
triggerall =  statetype = S && ctrl
trigger1 = command = "BB"
persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Flying]
type = ChangeState
triggerall = statetype = A
trigger1 = stateno != 100 && stateno != 2999 && stateno != 106
trigger1 = PrevStateNo != 106
trigger1 = command = "FF"
trigger1 = ctrl
value = 106
persistent = 0


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Throw]
type = ChangeState
triggerall = command = "y" || command = "z"
triggerall = statetype = S || statetype = C
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
value = 800
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Taunt]
type = ChangeState
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
value = 195
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Standing medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 630 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno=630 && movecontact
trigger4 = stateno = 640 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Punch2]
type=ChangeState
value=615
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger2 = Time>=6

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 615 && movecontact


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 630 && movecontact



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 615 && movecontact
