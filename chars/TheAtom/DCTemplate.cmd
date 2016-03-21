; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = B, B, F
time = 1

[Command]
name = "CPU3"
command = B, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = F, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, F, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "2P"
command = x+y ;y+z   x+z
time = 1

[Command]
name = "2P"
command = y+z
time = 1

[Command]
name = "2P"
command = x+z
time = 1

[Command]
name = "2K"
command = a+b ;b+c  a+c
time = 1

[Command]
name = "2K"
command = b+c
time = 1

[Command]
name = "2K"
command = a+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_z"
command = /$D,z
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
;----------------------------------------------------
;long
[Command]
name = "aa"
command = a
time = 20

[Command]
name = "bb"
command = b
time = 20

[Command]
name = "cc"
command = c
time = 20

[Command]
name = "xx"
command = x
time = 1

[Command]
name = "yy"
command = y
time = 20

[Command]
name = "zz"
command = z
time = 20

[Command]
name = "startt"
command = s
time = 20



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

;----------------------------------------



;-| Hypers |-----------------------------------------------------------

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, a+x

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, b+y

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, c+z

[Command] ; QCF + punch & kick of equal strength
name = "fchain"
command = ~D, DF, F, a+x

[Command] ; QCF + punch & kick of equal strength
name = "fchain"
command = ~D, DF, F, b+y

[Command] ; QCB + punch & kick of equal strength
name = "fchain"
command = ~D, DF, F, c+z

;-| Specials |-----------------------------------------------------------
[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, a
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, b
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, c
time = 10
;----------------------------
[Command]
name = "subattack";Required (do not remove)
command = s
time = 1

[Command]
name = "subattack";Required (do not remove)
command = s
time = 1

[Command]
name = "subattack";Required (do not remove)
command = s
time = 1

;-------------------------
[Command]
name = "hold";Required (do not remove)
command = /a
time = 1

[Command]
name = "hold";Required (do not remove)
command = /b
time = 1

[Command]
name = "hold";Required (do not remove)
command = /c
time = 1
------------------------------------------


;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1

;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

[State -1, standGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)
trigger1 = StateNo = 150
;trigger2 = inguarddist
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType != C) && (P2MoveType = A)
trigger1 = StateNo = 152
;trigger2 = inguarddist
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 777
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A
;trigger2 = inguarddist
value = 132

;====================================================================
; Main Hyper - Long Range
;====================================================================
; Hyper1
;
;triggerall = power >= 1000 && var(59) && ctrl
;triggerall = StateType != A && MoveType != H && RoundState = 2
;trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
;trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random >= 500
;-----------------------------------------------------
;AI team mode
[State -1, compassion2 AI team]
type = ChangeState
value = 3004
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 50 && random < 200
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 11 || P2Name = "Hal jordan" && partner, PalNo = 11
trigger2 = P3Name= "Parasite" && partner, var(50) = 28 || P2Name = "Parasite" && partner, var(50) = 28
trigger3 = P3Name= "Parasite" && partner, var(51) = 28 || P2Name = "Parasite" && partner, var(51) = 28
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 11 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 11
trigger1 = ctrl = 1
trigger1 = (Life <= 600)

[State -1, Hope2 AI team]
type = ChangeState
value = 3005
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 50 && random < 200
triggerall = (Life <= 500)
trigger1 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 10 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 10
trigger2 = P3Name= "Hal jordan" && partner, PalNo = 10 || P2Name = "Hal jordan" && partner, PalNo = 10



[State -1, fear2 AI team]
type = ChangeState
value = 3001
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 9 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 9
trigger2 = P3Name= "Hal jordan" && partner, PalNo = 9 || P2Name = "Hal jordan" && partner, PalNo = 9
trigger3 = P3Name= "Parasite" && partner, var(50) = 13 || P2Name = "Parasite" && partner, var(50) = 13
trigger4 = P3Name= "Parasite" && partner, var(51) = 13 || P2Name = "Parasite" && partner, var(51) = 13

;----------

; Hyper3
[State -1, greed2 AI team]
type = ChangeState
value = 3002
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 8 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 8
trigger2 = P3Name= "Hal jordan" && partner, PalNo = 8 || P2Name = "Hal jordan" && partner, PalNo = 8
trigger3 = P3Name= "Parasite" && partner, var(50) = 27 || P2Name = "Parasite" && partner, var(50) = 27
trigger4 = P3Name= "Parasite" && partner, var(51) = 27 || P2Name = "Parasite" && partner, var(51) = 27
trigger5 = P3Name= "Lex luthor" && partner, PalNo = 12 || P2Name = "Lex luthor" && partner, PalNo = 12
;-----------

; Hyper4
[State -1, love2 AI team]
type = ChangeState
value = 3010
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P3Name= "Parasite" && partner, var(50) = 29 || P2Name = "Parasite" && partner, var(50) = 29
trigger2 = P3Name= "Parasite" && partner, var(51) = 29 || P2Name = "Parasite" && partner, var(51) = 29

;----------------

;Hyper 5
[State -1, rage2 AI team]
type = ChangeState
value = 3003
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 7 || P2Name = "Hal jordan" && partner, PalNo = 7
trigger2 = P3Name= "Parasite" && partner, var(50) = 26 || P2Name = "Parasite" && partner, var(50) = 26
trigger3 = P3Name= "Parasite" && partner, var(51) = 26 || P2Name = "Parasite" && partner, var(51) = 26
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 7 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 7

;----------------------
; Hyper1
[State -1, willpower2 AI team]
type = ChangeState
value = 3000
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
triggerall = P3Name= "Hal jordan" && partner, PalNo != 7 || P2Name = "Hal jordan" && partner, PalNo != 7
triggerall = P3Name= "Hal jordan" && partner, PalNo != 8 || P2Name = "Hal jordan" && partner, PalNo != 8
triggerall = P3Name= "Hal jordan" && partner, PalNo != 9 || P2Name = "Hal jordan" && partner, PalNo != 9
triggerall = P3Name= "Hal jordan" && partner, PalNo != 10 || P2Name = "Hal jordan" && partner, PalNo != 10
triggerall = P3Name= "Hal jordan" && partner, PalNo != 11 || P2Name = "Hal jordan" && partner, PalNo != 11

triggerall = P3Name= "Blackest Night Hal Jordan" && partner, PalNo != 7 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo != 7
triggerall = P3Name= "Blackest Night Hal Jordan" && partner, PalNo != 8 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo != 8
triggerall = P3Name= "Blackest Night Hal Jordan" && partner, PalNo != 9 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo != 9
triggerall = P3Name= "Blackest Night Hal Jordan" && partner, PalNo != 10 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo != 10
triggerall = P3Name= "Blackest Night Hal Jordan" && partner, PalNo != 11 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo != 11

trigger1 = P3Name= "Hal jordan" && partner, PalNo = 1 || P2Name = "Hal jordan" && partner, PalNo = 1
trigger2 = P3Name= "Hal jordan" && partner, PalNo = 2 || P2Name = "Hal jordan" && partner, PalNo = 2
trigger3 = P3Name= "Hal jordan" && partner, PalNo = 3 || P2Name = "Hal jordan" && partner, PalNo = 3
trigger4 = P3Name= "Hal jordan" && partner, PalNo = 4 || P2Name = "Hal jordan" && partner, PalNo = 4
trigger5 = P3Name= "Hal jordan" && partner, PalNo = 5 || P2Name = "Hal jordan" && partner, PalNo = 5
trigger6 = P3Name= "Hal jordan" && partner, PalNo = 6 || P2Name = "Hal jordan" && partner, PalNo = 6
trigger7 = P3Name= "Parasite" && partner, var(50) = 5 || P2Name = "Parasite" && partner, var(50) = 5
trigger8 = P3Name= "Parasite" && partner, var(51) = 5 || P2Name = "Parasite" && partner, var(51) = 5

trigger9 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 1 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 1
trigger10 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 2 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 2
trigger11 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 3 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 3
trigger12 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 4 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 4
trigger13 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 5 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 5
trigger14 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 6 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 6

;---------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------
;AI 1player
;Death
[State -1, Death AI 1player]
type = ChangeState
value = 66699
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 110 && random < 200
triggerall = (ctrl = 1)
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 12 || P4Name= "Hal jordan" && enemy, PalNo = 12 || P3Name= "Hal jordan" && enemy, PalNo = 12
trigger2 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12
trigger3 = P2Name= "aquaman" && enemy, PalNo = 9 || P4Name= "aquaman" && enemy, PalNo = 9 || P3Name= "aquaman" && enemy, PalNo = 9
trigger4 = P2Name= "firestorm" && enemy, PalNo = 9 || P4Name= "firestorm" && enemy, PalNo = 9 || P3Name= "firestorm" && enemy, PalNo = 9
trigger5 = P2Name= "The Question" && enemy, PalNo =6       || P3Name= "The Question" && enemy, PalNo =6        || P4Name= "The Question" && enemy, PalNo =6
trigger6 = P2Name= "Captain Boomerang" && enemy, PalNo =6  || P3Name= "Captain Boomerang" && enemy, PalNo =6   || P4Name= "Captain Boomerang" && enemy, PalNo =6
trigger7 = P2Name= "Green Arrow" && enemy, PalNo =6        || P3Name= "Green Arrow" && enemy, PalNo =6         || P4Name= "Green Arrow" && enemy, PalNo =6
trigger8 = P2Name= "superboy" && enemy, PalNo =6           || P3Name= "superboy" && enemy, PalNo =6            || P4Name= "superboy" && enemy, PalNo =6
trigger9 = P2Name= "Superman" && enemy, PalNo =6           || P3Name= "Superman" && enemy, PalNo =6            || P4Name= "Superman" && enemy, PalNo =6
trigger10 = P2Name= "batman" && enemy, PalNo =6            || P3Name= "batman" && enemy, PalNo =6              || P4Name= "batman" && enemy, PalNo =6
trigger11 = P2Name= "Azrael" && enemy, PalNo =6            || P3Name= "Azrael" && enemy, PalNo =6              || P4Name= "Azrael" && enemy, PalNo =6
trigger12 = P2Name= "ice" && enemy, PalNo =6               || P3Name= "ice" && enemy, PalNo =6                 || P4Name= "ice" && enemy, PalNo =6
trigger13 = P2Name= "Martian Manhunter" && enemy, PalNo =6 || P3Name= "Martian Manhunter" && enemy, PalNo =6   || P4Name= "Martian Manhunter" && enemy, PalNo =6
trigger14 = P2Name= "Hawkman" && enemy, PalNo =6           || P3Name= "Hawkman" && enemy, PalNo =6             || P4Name= "Hawkman" && enemy, PalNo =6
trigger15 = P2Name= "HawkGirl" && enemy, PalNo =6          || P3Name= "HawkGirl" && enemy, PalNo =6            || P4Name= "HawkGirl" && enemy, PalNo =6
trigger16 = P2Name= "Hawk" && enemy, PalNo =6              || P3Name= "Hawk" && enemy, PalNo =6                || P4Name= "Hawk" && enemy, PalNo =6
trigger17 = P2Name= "Jason Todd" && enemy, PalNo =6        || P3Name= "Jason Todd" && enemy, PalNo =6          || P4Name= "Jason Todd" && enemy, PalNo =6
trigger18 = P2Name= "animalman" && enemy, PalNo = 12        || P4Name= "animalman" && enemy, PalNo = 12         || P3Name= "animalman" && enemy, PalNo = 12


;compassion
[State -1, compassion AI 1player]
type = ChangeState
value = 3004
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 50 && random < 200
triggerall = (Life <= 600)
triggerall = (ctrl = 1)
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 11 || P4Name= "Hal jordan" && enemy, PalNo = 11 || P3Name= "Hal jordan" && enemy, PalNo = 11
trigger2 = P2Name="Indigo 1" || p4name = "Indigo 1" || p3name = "Indigo 1"
trigger3 = P2Name = "Parasite" && enemy, var(50) = 28 || P4Name= "Parasite" && enemy, var(50) = 28 || P3Name= "Parasite" && enemy, var(50) = 28
trigger4 = P2Name = "Parasite" && enemy, var(51) = 28 || P4Name= "Parasite" && enemy, var(51) = 28 || P3Name= "Parasite" && enemy, var(51) = 28
trigger5 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 11 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 11 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 11

; Hyper2
[State -1, hope AI 1player]
type = ChangeState
value = 3005
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 50 && random < 200
triggerall = (Life <= 500)
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 10 || P4Name= "Hal jordan" && enemy, PalNo = 10 || P3Name= "Hal jordan" && enemy, PalNo = 10
trigger2 = P2Name = "Barry Allen" || p4name = "Barry Allen" || p3name = "Barry Allen"
trigger3 = P2Name = "Saint Walker" || p4name = "Saint Walker" || p3name = "Saint Walker"
trigger4 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10
trigger5 = P2Name= "Starfire" && enemy, PalNo = 8 || P3Name = "Starfire" && enemy, PalNo = 8 || P4Name = "Starfire" && enemy, PalNo = 8

; Hyper2
[State -1, fear AI 1player]
type = ChangeState
value = 3001
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 9 || P4Name= "Hal jordan" && enemy, PalNo = 9 || P3Name= "Hal jordan" && enemy, PalNo = 9
trigger2 = P2Name="sinestro" || p4name = "sinestro" || p3name = "sinestro"
trigger3 = P2Name="Mongul DCvsM" || p4name = "Mongul DCvsM" || p3name = "Mongul DCvsM"
trigger4 = P2Name="Mongul" || p4name = "Mongul" || p3name = "Mongul"
trigger5 = P2Name = "Parasite" && enemy, var(50) = 13 || P4Name= "Parasite" && enemy, var(50) = 13 || P3Name= "Parasite" && enemy, var(50) = 13
trigger6 = P2Name = "Parasite" && enemy, var(51) = 13 || P4Name= "Parasite" && enemy, var(51) = 13 || P3Name= "Parasite" && enemy, var(51) = 13
trigger7 = P2Name="Superboy Prime" || p4name = "Superboy Prime" || p3name = "Superboy Prime"
trigger8 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9
trigger9 = P2Name="Scarecrow" || p4name = "Scarecrow" || p3name = "Scarecrow"

;----------

; Hyper3
[State -1, greed AI 1player]
type = ChangeState
value = 3002
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 8 || P4Name= "Hal jordan" && enemy, PalNo = 8 || P3Name= "Hal jordan" && enemy, PalNo = 8
trigger2 = P2Name = "Parasite" && enemy, var(50) = 27 || P4Name= "Parasite" && enemy, var(50) = 27 || P3Name= "Parasite" && enemy, var(50) = 27
trigger3 = P2Name = "Parasite" && enemy, var(51) = 27 || P4Name= "Parasite" && enemy, var(51) = 27 || P3Name= "Parasite" && enemy, var(51) = 27
trigger4 = P2Name = "Larfleeze" || p4name = "Larfleeze" || p3name = "Larfleeze"
trigger5 = P2Name = "Lex luthor" && enemy, PalNo = 12 || p4name = "Lex luthor" && enemy, PalNo = 12 || p3name = "Lex luthor" && enemy, PalNo = 12
trigger6 = P2Name = "Acerbus" || p4name = "Acerbus" || p3name = "Acerbus"
trigger7 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8
;-----------

; Hyper4
[State -1, love AI 1player]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P2Name="Wonder Woman" || p4name = "Wonder Woman" || p3name = "Wonder Woman"
trigger2 = P2Name="Wonder Woman Reloaded" || p4name = "Wonder Woman Reloaded" || p3name = "Wonder Woman Reloaded"
trigger3 = P2Name = "Parasite" && enemy, var(50) = 29 || P4Name= "Parasite" && enemy, var(50) = 29 || P3Name= "Parasite" && enemy, var(50) = 29
trigger4 = P2Name = "Parasite" && enemy, var(51) = 29 || P4Name= "Parasite" && enemy, var(51) = 29 || P3Name= "Parasite" && enemy, var(51) = 29
trigger5 = P2Name= "Carol Ferris" || p4name = "Carol Ferris" || p3name = "Carol Ferris"
trigger6 = P2Name= "Star Sapphire" || p4name = "Star Sapphire" || p3name = "Star Sapphire"
trigger7 = P2Name= "batgirl" && enemy, PalNo = 6 || P3Name = "batgirl" && enemy, PalNo = 6 || P4Name = "batgirl" && enemy, PalNo = 6

;----------------

;Hyper 5
[State -1, rage AI 1player]
type = ChangeState
value = 3003
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 7 || P4Name= "Hal jordan" && enemy, PalNo = 7 || P3Name= "Hal jordan" && enemy, PalNo = 7
trigger2 = P2Name = "Parasite" && enemy, var(50) = 26 || P4Name= "Parasite" && enemy, var(50) = 26 || P3Name= "Parasite" && enemy, var(50) = 26
trigger3 = P2Name = "Parasite" && enemy, var(51) = 26 || P4Name= "Parasite" && enemy, var(51) = 26 || P3Name= "Parasite" && enemy, var(51) = 26
trigger4 = P2Name= "Atrocitus" || p4name = "Atrocitus" || p3name = "Atrocitus"
trigger5 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7
trigger6 = P2Name= "Green Lantern Guy" && enemy, PalNo = 2 || P4Name= "Green Lantern Guy" && enemy, PalNo = 2 || P3Name= "Green Lantern Guy" && enemy, PalNo = 2
trigger7 = P2Name= "Dexstarr" || p4name = "Dexstarr" || p3name = "Dexstarr"
;----------------------
; Hyper1
[State -1, willpower AI 1player]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 200
triggerall = P2Name = "Hal jordan" && enemy, PalNo != 7 || P4Name = "Hal jordan" && enemy, PalNo != 7 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 7
triggerall = P2Name = "Hal jordan" && enemy, PalNo != 8 || P4Name = "Hal jordan" && enemy, PalNo != 8 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 8
triggerall = P2Name = "Hal jordan" && enemy, PalNo != 9 || P4Name = "Hal jordan" && enemy, PalNo != 9 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 9
triggerall = P2Name = "Hal jordan" && enemy, PalNo != 10 || P4Name = "Hal jordan" && enemy, PalNo != 10 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 10
triggerall = P2Name = "Hal jordan" && enemy, PalNo != 11 || P4Name = "Hal jordan" && enemy, PalNo != 11 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 11

triggerall = P2Name = "Blackest Night Hal Jordan" && enemy, PalNo != 7 || P4Name = "Blackest Night Hal Jordan" && enemy, PalNo != 7 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 7
triggerall = P2Name = "Blackest Night Hal Jordan" && enemy, PalNo != 8 || P4Name = "Blackest Night Hal Jordan" && enemy, PalNo != 8 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 8
triggerall = P2Name = "Blackest Night Hal Jordan" && enemy, PalNo != 9 || P4Name = "Blackest Night Hal Jordan" && enemy, PalNo != 9 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 9
triggerall = P2Name = "Blackest Night Hal Jordan" && enemy, PalNo != 10 || P4Name = "Blackest Night Hal Jordan" && enemy, PalNo != 10 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 10
triggerall = P2Name = "Blackest Night Hal Jordan" && enemy, PalNo != 11 || P4Name = "Blackest Night Hal Jordan" && enemy, PalNo != 11 || P3Name = "Blackest Night Hal Jordan" && enemy, PalNo != 11

trigger1 = P2Name = "Parasite" && enemy, var(50) = 5 || P3Name= "Parasite" && enemy, var(50) = 5 || P4Name= "Parasite" && enemy, var(50) = 5
trigger2 = P2Name = "Parasite" && enemy, var(51) = 5 || P3Name= "Parasite" && enemy, var(51) = 5 || P4Name= "Parasite" && enemy, var(51) = 5
trigger3 = P2Name = "John Stewart" || p4name = "John Stewart" || p3name = "John Stewart"
trigger4 = P2Name = "Guy Gardner" || p4name = "Guy Gardner" || p3name = "Guy Gardner"
trigger5 = P2Name = "Green Lantern Guy" || p4name = "Green Lantern Guy" || p3name = "Green Lantern Guy"
trigger6 = P2Name = "Hal jordan" || p4name = "Hal jordan" || p3name = "Hal jordan"
trigger7 = P2Name = "Blackest Night Hal Jordan" || p4name = "Blackest Night Hal Jordan" || p3name = "Blackest Night Hal Jordan"
;----------------------------
;Pinball
[State -1, pinball AI]
type = ChangeState
value = 3020
triggerall = power >= 1500
triggerall = (MoveType != H) && Var(59)
triggerall = (ctrl = 1) && (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 110 && random < 50
trigger1 = ctrl = 1

;---------------------
;Subatomic Suprise
[State -1, subatomic suprise AI]
type = ChangeState
value = 30077
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 75 && ctrl = 1
trigger1 =  random < 150
trigger2 = enemynear, numproj > 0 && random < 500

;----------------------
;Subatomic Punch
[State -1, subatomic punch AI]
type = ChangeState
value = 33001
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = enemynear, statetype != L
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 80 && random < 350
triggerall = p2bodydist X < 183
triggerall = p2bodydist X > -5
trigger1 = ctrl = 1
trigger2 = (stateno = 1002) && movehit
;----------------------
;Subatomic Adventure
[State -1, subatomic adventure AI]
type = ChangeState
value = 9999800
triggerall = power >= 1000
triggerall = (MoveType != H) && Var(59)
triggerall = enemynear, statetype != L
triggerall = enemynear, statetype != A
triggerall = enemynear, MoveType != H
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 40 && p2bodydist y < 1 && random < 250
trigger1 = ctrl = 1
;----------------------
;Atom-spliter
[State -1, Atom-spliter AI]
type = ChangeState
value = 43210
triggerall = power >= 3000
triggerall = (MoveType != H) && Var(59)
triggerall = enemynear, statetype != L
triggerall = enemynear, MoveType != H
triggerall = enemynear, statetype != A
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 40 && p2bodydist y < 1 && random < 800
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; atomic kick in air
[State -1, atomic kick AI]
type = ChangeState
value = 1809
triggerall = enemynear, statetype != L
triggerall =  (MoveType != H) && Var(59)
triggerall = (!IsHelper) && StateType = A && RoundState = 2
triggerall = p2bodydist X < 80 && p2bodydist y > 50 && random < 100
trigger1 = ctrl = 1


; HK atomic kick in air
[State -1, atomic kick AI]
type = ChangeState
value = 1909
triggerall = enemynear, statetype != L
triggerall =  (MoveType != H) && Var(59)
triggerall = (!IsHelper) && StateType = A && RoundState = 2
triggerall = p2bodydist X > -5
triggerall = p2bodydist X < 100 && p2bodydist y > 35 && random < 100
trigger1 = ctrl = 1

; SubAtomic
[State -1, sub atomic AI]
type = ChangeState
value = 1007
triggerall =  (MoveType != H) && Var(59)
;triggerall = enemynear, statetype != A
triggerall = enemynear, statetype != L
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X < 80 && p2bodydist y > -50 && random < 125
trigger1 = ctrl = 1
trigger2 = ((stateno = 220) || (stateno = 250)) && (movecontact = 1)
trigger2 = Random <= 420

; ground mite-kick
[State -1, mite kick ground AI]
type = ChangeState
value = 1015
triggerall =  (MoveType != H) && Var(59)
triggerall = enemynear, statetype != A
triggerall = enemynear, statetype != L
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 100 && random < 125
trigger1 = ctrl = 1
trigger2 = enemynear, numproj>0 && random < 350

; MitePunch
[State -1, mite punch hard AI]
type = ChangeState
value = 1001
triggerall =  (MoveType != H) && Var(59)
triggerall = enemynear, statetype != L
triggerall = enemynear, statetype != A
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = p2bodydist X > 50 && random < 150
triggerall = p2bodydist X < 183
trigger1 = ctrl = 1

; SubAtomic SideStep
[State -1, sub atomic sidestep AI]
type = ChangeState
value = 1011
triggerall = var(20)> 100
triggerall =  (MoveType != H) && Var(59)
triggerall = (!IsHelper) && StateType != A && RoundState = 2
triggerall = ctrl = 1
trigger1 = random < 10
trigger2 = enemynear, numproj>0 && random < 350

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher AI]
type = ChangeState
value = 420
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper && Random < 300
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A)  ;&& (StateNo = 420) && (MoveHit = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump AI]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl


;====================================================================
; Main Standing Special
;====================================================================

;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash AI]
type = ChangeState
value = 100
triggerall = stateno != 100
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = (statetype = S) && enemynear, p2dist X >= 75 && random <= 250
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 100
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L


;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch AI]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 70 && enemynear, movetype != A && Random <= 525)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch AI]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2 && Random <= 350

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch AI]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2 && Random <= 300
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick AI]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick AI]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2 && Random <= 300
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick AI]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2 && Random <= 300

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Throws
;
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------
;[State -1, Throw1]
;type = ChangeState
;value = 221
;triggerall = (command = "z") && ((command = "holdfwd") || (command = "holdback"))
;triggerall = statetype = S && p2movetype != H && p2statetype != A
;trigger1 = ctrl && (P2BodyDist X <= 30)
;
;; Air throw
;;[State -1, AirThrow1]
;;type = ChangeState
;;value = 810
;;triggerall = var(59) && RoundState = 2 && ctrl
;;triggerall = statetype = A && enemynear, statetype != L && random < 200
;;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch AI]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && (Random <= 125&& random >750))
trigger2 = (enemynear, p2dist x <= 40 && enemynear, movetype != A && (Random <= 100&& random >750))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch AI]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl && Random <= 300

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch AI]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2 && Random <= 100

; (chain combos)
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 210) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick AI]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 15 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick AI]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl && Random <= 300

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick AI]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2 && Random <= 300

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch AI]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 90 && (p2dist Y > -20 && p2dist Y < 20) && Random <= 850

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch AI]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && Random <= 300

; (chain combos)
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch AI]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A  && Random <= 300

; (chain combos)
trigger1 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick AI]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && Random <= 300

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick AI]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && Random <= 300

; (chain combos)
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick AI]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100 && Random <= 300
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState AI]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState AI]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;======================================================================
;User Input Attacks

;----------------------------------------------------------------------
;Indigo Team mode
;---------------------------------------------------------------------------
;death
[State -1, Death2 Team mode]
type = ChangeState
value = 66699
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 12 || P2Name = "Hal jordan" && partner, PalNo = 12
trigger2 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 12 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 12
trigger3 = P3Name= "Aquaman" && partner, PalNo = 9 || P2Name = "Aquaman" && partner, PalNo = 9
trigger4 = P3Name= "firestorm" && partner, PalNo = 9 || P2Name = "firestorm" && partner, PalNo = 9

; Hope
[State -1, Hope2 Team mode]
type = ChangeState
value = 3005
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 10 || P2Name = "Hal jordan" && partner, PalNo = 10
trigger2 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 10 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 10

;---------------------------------------------------------------------------
; Hyper2
[State -1, fear2 Team mode]
type = ChangeState
value = 3001
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 9 || P2Name = "Hal jordan" && partner, PalNo = 9
trigger2 = P3Name= "Parasite" && partner, var(50) = 13 || P2Name = "Parasite" && partner, var(50) = 13
trigger3 = P3Name= "Parasite" && partner, var(51) = 13 || P2Name = "Parasite" && partner, var(51) = 13
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 9 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 9
;----------

; Hyper3
[State -1, greed2 Team mode]
type = ChangeState
value = 3002
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 8 || P2Name = "Hal jordan" && partner, PalNo = 8
trigger2 = P3Name= "Parasite" && partner, var(50) = 27 || P2Name = "Parasite" && partner, var(50) = 27
trigger3 = P3Name= "Parasite" && partner, var(51) = 27 || P2Name = "Parasite" && partner, var(51) = 27
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 8 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 8
trigger5 = P3Name= "Lex luthor" && partner, PalNo = 12 || P2Name = "Lex luthor" && partner, PalNo = 12
;----------

; Hyper4
[State -1, love2 Team mode]
type = ChangeState
value = 3010
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Parasite" && partner, var(50) = 29 || P2Name = "Parasite" && partner, var(50) = 29
trigger2 = P3Name= "Parasite" && partner, var(51) = 29 || P2Name = "Parasite" && partner, var(51) = 29
;---------------------

; Hyper5
[State -1, rage2 Team mode]
type = ChangeState
value = 3003
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 7 || P2Name = "Hal jordan" && partner, PalNo = 7
trigger2 = P3Name= "Parasite" && partner, var(50) = 26 || P2Name = "Parasite" && partner, var(50) = 26
trigger3 = P3Name= "Parasite" && partner, var(51) = 26 || P2Name = "Parasite" && partner, var(51) = 26
trigger4 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 7 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 7
trigger5 = P2Name= "Green Lantern Guy" && partner, PalNo = 2 || P4Name= "Green Lantern Guy" && partner, PalNo = 2 || P3Name= "Green Lantern Guy" && partner, PalNo = 2
;---------------------------------------------------------------------------
; Indigo
[State -1, Compassion Team mode]
type = ChangeState
value = 3004
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Hal jordan" && partner, PalNo = 11 || P2Name = "Hal jordan" && partner, PalNo = 11
trigger2 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 11 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 11

;--------------------------------------
; Hyper1
[State -1, willpower2 Team mode]
type = ChangeState
value = 3000
triggerall = numpartner > 0
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P3Name= "Hal jordan" && partner, PalNo != 11 || P2Name = "Hal jordan" && partner, PalNo != 11
trigger2 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo != 11 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo != 11
trigger3 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo != 12 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo != 12
trigger4 = P3Name= "Parasite" && partner, var(50) = 5 || P2Name = "Parasite" && partner, var(50) = 5
trigger5 = P3Name= "Parasite" && partner, var(51) = 5 || P2Name = "Parasite" && partner, var(51) = 5
trigger6 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 1 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 1
trigger7 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 2 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 2
trigger8 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 3 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 3
trigger9 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 4 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 4
trigger10 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 5 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 5
trigger11 = P3Name= "Blackest Night Hal Jordan" && partner, PalNo = 6 || P2Name = "Blackest Night Hal Jordan" && partner, PalNo = 6
trigger12 = P2Name= "Green Lantern Guy" && partner, PalNo != 2 || P4Name= "Green Lantern Guy" && partner, PalNo != 2 || P3Name= "Green Lantern Guy" && partner, PalNo != 2



;---------------------------------------------------------------------------
;Indigo non-team

; fear
[State -1, fear]
type = ChangeState
value = 3001
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 9 || P4Name= "Hal jordan" && enemy, PalNo = 9 || P3Name= "Hal jordan" && enemy, PalNo = 9
trigger2 = P2Name="sinestro" || p4name = "sinestro" || p3name = "sinestro"
trigger3 = P2Name="Mongul DCvsM" || p4name = "Mongul DCvsM" || p3name = "Mongul DCvsM"
trigger4 = P2Name="Mongul" || p4name = "Mongul" || p3name = "Mongul"
trigger5 = P2Name = "Parasite" && enemy, var(50) = 13 || P4Name= "Parasite" && enemy, var(50) = 13 || P3Name= "Parasite" && enemy, var(50) = 13
trigger6 = P2Name = "Parasite" && enemy, var(51) = 13 || P4Name= "Parasite" && enemy, var(51) = 13 || P3Name= "Parasite" && enemy, var(51) = 13
trigger7 = P2Name="Superboy Prime" || p4name = "Superboy Prime" || p3name = "Superboy Prime"
trigger8 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 9
trigger9 = P2Name="Scarecrow" || p4name = "Scarecrow" || p3name = "Scarecrow"

;----------

; greed
[State -1, greed]
type = ChangeState
value = 3002
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 8 || P4Name= "Hal jordan" && enemy, PalNo = 8 || P3Name= "Hal jordan" && enemy, PalNo = 8
trigger2 = P2Name = "Parasite" && enemy, var(50) = 27 || P4Name= "Parasite" && enemy, var(50) = 27 || P3Name= "Parasite" && enemy, var(50) = 27
trigger3 = P2Name = "Parasite" && enemy, var(51) = 27 || P4Name= "Parasite" && enemy, var(51) = 27 || P3Name= "Parasite" && enemy, var(51) = 27
trigger4 = P2Name = "Larfleeze" || p4name = "Larfleeze" || p3name = "Larfleeze"
trigger5 = P2Name = "Lex luthor" && enemy, PalNo = 12 || p4name = "Lex luthor" && enemy, PalNo = 12 || p3name = "Lex luthor" && enemy, PalNo = 8
trigger6 = P2Name = "Acerbus" || p4name = "Acerbus" || p3name = "Acerbus"
trigger7 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 8
;----------

; love
[State -1, love]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P2Name="Wonder Woman" || p4name = "Wonder Woman" || p3name = "Wonder Woman"
trigger2 = P2Name="Wonder Woman Reloaded" || p4name = "Wonder Woman Reloaded" || p3name = "Wonder Woman Reloaded"
trigger3 = P2Name = "Parasite" && enemy, var(50) = 29 || P4Name= "Parasite" && enemy, var(50) = 29 || P3Name= "Parasite" && enemy, var(50) = 29
trigger4 = P2Name = "Parasite" && enemy, var(51) = 29 || P4Name= "Parasite" && enemy, var(51) = 29 || P3Name= "Parasite" && enemy, var(51) = 29
trigger5 = P2Name= "Carol Ferris" || p4name = "Carol Ferris" || p3name = "Carol Ferris"
trigger6 = P2Name= "Star Sapphire" || p4name = "Star Sapphire" || p3name = "Star Sapphire"
trigger7 = P2Name= "batgirl" && enemy, PalNo = 6 || P3Name = "batgirl" && enemy, PalNo = 6 || P4Name = "batgirl" && enemy, PalNo = 6


;---------------------

; rage
[State -1, rage]
type = ChangeState
value = 3003
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P2Name= "Green Lantern Guy" && enemy, PalNo = 2 || P4Name= "Green Lantern Guy" && enemy, PalNo = 2 || P3Name= "Green Lantern Guy" && enemy, PalNo = 2
trigger2 = P2Name= "Hal jordan" && enemy, PalNo = 7 || P4Name= "Hal jordan" && enemy, PalNo = 7 || P3Name= "Hal jordan" && enemy, PalNo = 7
trigger3 = P2Name = "Parasite" && enemy, var(50) = 26 || P4Name= "Parasite" && enemy, var(50) = 26 || P3Name= "Parasite" && enemy, var(50) = 26
trigger4 = P2Name = "Parasite" && enemy, var(51) = 26 || P4Name= "Parasite" && enemy, var(51) = 26 || P3Name= "Parasite" && enemy, var(51) = 26
trigger5 = P2Name= "Atrocitus" || p4name = "Atrocitus" || p3name = "Atrocitus"
trigger6 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 7
trigger7 = P2Name= "Guy Gardner" && enemy, palno = 2 || P4Name= "Guy Gardner" && enemy, palno = 2 || P3Name= "Guy Gardner" && enemy, palno = 2
trigger8 = P2Name= "Dexstarr" || p4name = "Dexstarr" || p3name = "Dexstarr"

;---------------------------------------------------------------------------
; Hope
[State -1, Hope]
type = ChangeState
value = 3005
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P2Name= "Hal jordan" && enemy, PalNo = 10 || P4Name= "Hal jordan" && enemy, PalNo = 10 || P3Name= "Hal jordan" && enemy, PalNo = 10
trigger2 = P2Name = "Barry Allen" || p4name = "Barry Allen" || p3name = "Barry Allen"
trigger3 = P2Name = "Saint Walker" || p4name = "Saint Walker" || p3name = "Saint Walker"
trigger4 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 10
trigger5 = P2Name= "Starfire" && enemy, PalNo = 8 || P3Name = "Starfire" && enemy, PalNo = 8 || P4Name = "Starfire" && enemy, PalNo = 8

;---------------------------------------------------------------------------
------------------------------------------
; will
[State -1, willpower]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P2Name = "Parasite" && enemy, var(50) = 5 || P3Name= "Parasite" && enemy, var(50) = 5 || P4Name= "Parasite" && enemy, var(50) = 5
trigger2 = P2Name = "Parasite" && enemy, var(51) = 5 || P3Name= "Parasite" && enemy, var(51) = 5 || P4Name= "Parasite" && enemy, var(51) = 5
trigger3 = P2Name = "John Stewart" || p4name = "John Stewart" || p3name = "John Stewart"
trigger4 = P2Name = "Guy Gardner" && enemy, PalNo != 2|| p4name = "Guy Gardner" && enemy, PalNo != 2 || p3name = "Guy Gardner" && enemy, PalNo != 2
trigger5 = P2Name= "Green Lantern Guy" && enemy, PalNo != 2 || P4Name= "Green Lantern Guy" && enemy, PalNo != 2|| P3Name= "Green Lantern Guy" && enemy, PalNo != 2

trigger6 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 1 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 1 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 1
trigger7 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 2 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 2 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 2
trigger8 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 3 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 3 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 3
trigger9 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 4 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 4 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 4
trigger10 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 5 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 5 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 5
trigger11 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 6 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 6 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 6
trigger12 = P2Name= "Hal Jordan" && enemy, PalNo = 1 || P4Name= "Hal Jordan" && enemy, PalNo = 1 || P3Name= "Hal Jordan" && enemy, PalNo = 1
trigger13 = P2Name= "Hal Jordan" && enemy, PalNo = 2 || P4Name= "Hal Jordan" && enemy, PalNo = 2 || P3Name= "Hal Jordan" && enemy, PalNo = 2
trigger14 = P2Name= "Hal Jordan" && enemy, PalNo = 3 || P4Name= "Hal Jordan" && enemy, PalNo = 3 || P3Name= "Hal Jordan" && enemy, PalNo = 3
trigger15 = P2Name= "Hal Jordan" && enemy, PalNo = 4 || P4Name= "Hal Jordan" && enemy, PalNo = 4 || P3Name= "Hal Jordan" && enemy, PalNo = 4
trigger16 = P2Name= "Hal Jordan" && enemy, PalNo = 5 || P4Name= "Hal Jordan" && enemy, PalNo = 5 || P3Name= "Hal Jordan" && enemy, PalNo = 5
trigger17 = P2Name= "Hal Jordan" && enemy, PalNo = 6 || P4Name= "Hal Jordan" && enemy, PalNo = 6 || P3Name= "Hal Jordan" && enemy, PalNo = 6
trigger18 = P2Name = "Kyle Rayner" || p4name = "Kyle Rayner" || p3name = "Kyle Rayner"
trigger19 = P2Name = "Kilowog" || p4name = "Kilowog" || p3name = "Kilowog"
trigger20 = P2Name = "Alan Scott" || p4name = "Alan Scott" || p3name = "Alan Scott"
trigger21 = P2Name = "Tomar Tu" || p4name = "Tomar Tu" || p3name = "Tomar Tu"
;--------------------------------------------
 ; Death
[State -1, Death]
type = ChangeState
value = 66699
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall = command = "chain"
trigger1 = P2Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12 || P4Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12 || P3Name= "Blackest Night Hal Jordan" && enemy, PalNo = 12
trigger2 = P2Name= "Hal Jordan" && enemy, PalNo = 12 || P4Name= "Hal Jordan" && enemy, PalNo = 12 || P3Name= "Hal Jordan" && enemy, PalNo = 12
trigger3 = P2Name= "Aquaman" && enemy, PalNo = 9 || P4Name= "Aquaman" && enemy, PalNo = 9  || P3Name= "Aquaman" && enemy, PalNo = 9
trigger4 = P2Name= "firestorm" && enemy, PalNo = 9 || P4Name= "firestorm" && enemy, PalNo = 9  || P3Name= "firestorm" && enemy, PalNo = 9

trigger5 = P2Name= "The Question" && enemy, PalNo =6       || P3Name= "The Question" && enemy, PalNo =6        || P4Name= "The Question" && enemy, PalNo =6
trigger6 = P2Name= "Captain Boomerang" && enemy, PalNo =6  || P3Name= "Captain Boomerang" && enemy, PalNo =6   || P4Name= "Captain Boomerang" && enemy, PalNo =6
trigger7 = P2Name= "Green Arrow" && enemy, PalNo =6        || P3Name= "Green Arrow" && enemy, PalNo =6         || P4Name= "Green Arrow" && enemy, PalNo =6
trigger8 = P2Name= "superboy" && enemy, PalNo =6           || P3Name= "superboy" && enemy, PalNo =6            || P4Name= "superboy" && enemy, PalNo =6
trigger9 = P2Name= "Superman" && enemy, PalNo =6           || P3Name= "Superman" && enemy, PalNo =6            || P4Name= "Superman" && enemy, PalNo =6
trigger10 = P2Name= "batman" && enemy, PalNo =6            || P3Name= "batman" && enemy, PalNo =6              || P4Name= "batman" && enemy, PalNo =6
trigger11 = P2Name= "Azrael" && enemy, PalNo =6            || P3Name= "Azrael" && enemy, PalNo =6              || P4Name= "Azrael" && enemy, PalNo =6
trigger12 = P2Name= "ice" && enemy, PalNo =6               || P3Name= "ice" && enemy, PalNo =6                 || P4Name= "ice" && enemy, PalNo =6
trigger13 = P2Name= "Martian Manhunter" && enemy, PalNo =6 || P3Name= "Martian Manhunter" && enemy, PalNo =6   || P4Name= "Martian Manhunter" && enemy, PalNo =6
trigger14 = P2Name= "Hawkman" && enemy, PalNo =6           || P3Name= "Hawkman" && enemy, PalNo =6             || P4Name= "Hawkman" && enemy, PalNo =6
trigger15 = P2Name= "HawkGirl" && enemy, PalNo =6          || P3Name= "HawkGirl" && enemy, PalNo =6            || P4Name= "HawkGirl" && enemy, PalNo =6
trigger16 = P2Name= "Hawk" && enemy, PalNo =6              || P3Name= "Hawk" && enemy, PalNo =6                || P4Name= "Hawk" && enemy, PalNo =6
trigger17 = P2Name= "Jason Todd" && enemy, PalNo =6        || P3Name= "Jason Todd" && enemy, PalNo =6          || P4Name= "Jason Todd" && enemy, PalNo =6


;------------------------------------------
; Indigo
[State -1, Compassion]
type = ChangeState
value = 3004
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "chain"

;-----------------------------------------------------
;------------------------------------------------------------------
;------------------------------------------------------------------
;Subatomic Suprise
[State -1, subatomic suprise]
type = ChangeState
value = 30077
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2k"

;--------------------------------------------------------
;Subatomic Punch
[State -1, subatomic punch]
type = ChangeState
value = 33001
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2p"

;----------------------------------------------------------------
;Subatomic Pinball
[State -1, atomic pinball]
type = ChangeState
value = 3020
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"

;-------------------------------------
;Subatomic Adventure
[State -1, subatomic adventure]
type = ChangeState
value = 800
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_2k"

;-------------

;Atom Spliter
[State -1, Atom Spliter]
type = ChangeState
value = 43210
triggerall = power >= 3000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "fchain"

;---------------------------------------------------------------------------
; atomic kick in air lk
[State -1, atomic kick lk]
type = ChangeState
value = 1009
triggerall = (StateType = A) && (MoveType != H)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_a";(command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
;--------
; atomic kick in air  mk
[State -1, atomic kick mk]
type = ChangeState
value = 1809
triggerall = (StateType = A) && (MoveType != H)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_b"

;--------
; atomic kick in air hk
[State -1, atomic kick hk]
type = ChangeState
value = 1909
triggerall = (StateType = A) && (MoveType != H)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_c"

;----------------------------------

;----------------------------------
; Mite-slide  LK
[State -1, Mite-slide LK]
type = ChangeState
value = 1014
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_a";(command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
;-------------
; Mite-slide  MK
[State -1, Mite-slide MK]
type = ChangeState
value = 1015
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_b"
;-------------
; Mite-slide HK
[State -1, Mite-slide HK]
type = ChangeState
value = 1016
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcf_c"

;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
; SubAtomic lp
[State -1, sub atomic lp]
type = ChangeState
value = 1017
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_x") ;|| (command = "qcb_y") || (command = "qcb_z")
;-------------------------
; SubAtomic mp
[State -1, sub atomic mp]
type = ChangeState
value = 1007
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_y")
;----------------------------
; SubAtomic hp
[State -1, sub atomic hp]
type = ChangeState
value = 1027
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_z")
;------------------------------
; SubAtomic SideStep
[State -1, sub atomic sidestep]
type = ChangeState
value = 1011
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = Var(20) >= 100
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")

;--------------------------------------
; MitePunch HP
[State -1, mite punch hard]
type = ChangeState
value = 1001
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcf_z")

; MitePunch mp
[State -1, mite punch med]
type = ChangeState
value = 1003
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcf_y")

; MitePunch lp
[State -1, mite punch light]
type = ChangeState
value = 1005
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcf_x")
;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]
;
;;---------------------------------------------------------------------------
;; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]
;
;;---------------------------------------------------------------------------
;; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]


;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
trigger1 = command = "3P"
trigger2 = command = "FF"

;ALT Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 101
triggerall = var(21)>0
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = A
triggerall = stateno != 101
triggerall = ctrl = 1
trigger1 = command = "3P"
trigger2 = command = "FF"


;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = stateno = 420 && movehit && command="holdup"

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws
;
[State -1, Throw1]
type = ChangeState
value = 9221
triggerall = (command = "z") && ((command = "holdfwd"))
triggerall = statetype = S && p2movetype != H && p2statetype != A
trigger1 = ctrl && (P2BodyDist X <= 27)

; (none yet)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = (StateNo = 200) && (movecontact = 1)
;trigger3 = (stateno = 230) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
;trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = (StateNo = 200) && (movecontact = 1)
;trigger3 = (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)
;trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = (stateno = 430) && (movecontact = 1)
;trigger3 = (stateno = 400) && (movecontact = 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 400) || (stateno = 410)) && (movecontact = 1)
;trigger3 = ((stateno = 430) || (stateno = 440)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = (stateno = 430) && (movecontact = 1)
;trigger3 = (stateno = 400) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 400) || (stateno = 410)) && (movecontact = 1)
;trigger3 = ((stateno = 430) || (stateno = 440)) && (movecontact = 1)
;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
;trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact = 1)

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
