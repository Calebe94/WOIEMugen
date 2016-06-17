[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1
[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1

[Command]
name = "AI_8"
command = U,D,U,F,B,B
time = 1

[Command]
name = "AI_9"
command = U,D,D,F,B,B
time = 1

[Command]
name = "AI_10"
command = D,D,F,F,B,B
time = 1

[Command]
name = "AI_11"
command = U,U,F,F,B,B
time = 1

[Command]
name = "AI_12"
command = U,B,F,F,B,B
time = 1

[Command]
name = "rola"
command = ~D,B,c

;[Command]
;name = "yb"
;command = ~D,B,a

;=======================================================[Empurar_na_Defesa]=======================================
[Command]
name = "Empurar"
command = x+y

[Command]
name = "Empurar"
command = x+z

[Command]
name = "Empurar"
command = z+y

[Command]
name = "Empurar"
command = x+y+z

;=======================================================[Hypers]=================================================
[Command]
name = "Esp_4"
command = ~D,F,x+y

[Command]
name = "Esp_4"
command = ~D,F,z+y

name = "Esp_4"
command = ~D,F,z+x

name = "Esp_4"
command = ~D,F,z+y+z


[Command]
name = "Esp_3"
command = ~D,F,a+b

[Command]
name = "Esp_3"
command = ~D,F,b+c

[Command]
name = "Esp_3"
command = ~D,F,a+c

[Command]
name = "Esp_3"
command = ~D,F,a+b+c

;=======================================================[Especiais]=================================================

[Command]
name = "teia_1"
command = ~D, B, x
time = 10

[Command]
name = "teia_2"
command = ~D, B, y
time = 10

[Command]
name = "teia_3"
command = ~D, B, z
time = 10

[Command]
name = "Boca_Chz"
command = ~D, F, c
time = 10

[Command]
name = "Boca_Chy"
command = ~D, F, b
time = 10

[Command]
name = "Boca_Chx"
command = ~D, F, a
time = 10

[Command]
name = "Boca_a"
command = ~D, F, x
time = 10

[Command]
name = "Boca_b"
command = ~D, F, y
time = 10

[Command]
name = "Boca_c"
command = ~D, F, z
time = 10

[Command]
name = "Boca_ar"
command = ~D, F, x
time = 10

[Command]
name = "Boca_arb"
command = ~D, F, y
time = 10

[Command]
name = "Boca_arc"
command = ~D, F, z
time = 10

;=======================================================[Agarrões]=================================================

[Command]
name = "Baixo_y"
command = /D,y

[Command]
name = "throw_z"
command = /F,c
time = 1

[Command]
name = "throw_y"
command = /F,c
time = 1

[Command]
name = "throw_z"
command = /F,b
time = 1

[Command]
name = "throw_y"
command = /F,b
time = 1

[Command]
name = "Supa_Jumpin"
command = $D, U

[Command]
name = "Supa_Jumpin"
command = a+b+c

[Command]
name = "_X"
command = ~x

[Command]
name = "_Y"
command = ~y

[Command]
name = "_Z"
command = ~z

[Command]
name = "_A"
command = ~a

[Command]
name = "_B"
command = ~b

[Command]
name = "_C"
command = ~c



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_z"
command = /B,z
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Statedef -1]


;---------------------------------------------------------------------------
;AM
;[State -1]
;type = null;ChangeState
;value = 1931
;triggerall = command = "yb"
;;triggerall = power >= 3000
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Bocada AR
[State -1]
type = ChangeState
value = 935
triggerall = command = "Baixo_y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3190
triggerall = power >= 1000
triggerall = command = "Esp_4"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1
trigger14 = stateno = 201
trigger14 = movecontact = 1
trigger15 = stateno = 202
trigger15 = movecontact = 1
trigger16 = stateno = 203
trigger16 = movecontact = 1
trigger17 = stateno = 213
trigger17 = movecontact = 1
trigger18 = stateno = 212
trigger18 = movecontact = 1
trigger19 = stateno = 211
trigger19 = movecontact = 1
trigger20 = stateno = 401
trigger20 = movecontact = 1
trigger21 = stateno = 402
trigger21 = movecontact = 1
trigger22 = stateno = 403
trigger22 = movecontact = 1
trigger23 = stateno = 414
trigger23 = movecontact = 1
trigger24 = stateno = 413
trigger24 = movecontact = 1
trigger25 = stateno = 412
trigger25 = movecontact = 1


;---------------------------------------------------------------------------
;teia Forte
[State -1]
type = ChangeState
value = 820
triggerall = command = "teia_3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;teia Media
[State -1]
type = ChangeState
value = 821
triggerall = command = "teia_2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;teia Fraca
[State -1]
type = ChangeState
value = 822
triggerall = command = "teia_1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1


;---------------------------------------------------------------------------
;Agarrão
[State -1]
type = ChangeState
value = 920
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100    ;Not running
triggerall = p2bodydist X < 6
trigger1 = command = "fwd_c";Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_c";Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "fwd_b";Near, p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "fwd_b";Near, p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H


;---------------------------------------------------------------------------
;Agarrão_Teia
[State -1]
type = ChangeState
value = 939
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100    
triggerall = p2bodydist X < 6
trigger1 = command = "fwd_z";Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_z"
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "fwd_y";Near, p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "fwd_y";Near, p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;EspBoca
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Esp_3"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1
trigger14 = stateno = 201
trigger14 = movecontact = 1
trigger15 = stateno = 202
trigger15 = movecontact = 1
trigger16 = stateno = 203
trigger16 = movecontact = 1
trigger17 = stateno = 213
trigger17 = movecontact = 1
trigger18 = stateno = 212
trigger18 = movecontact = 1
trigger19 = stateno = 211
trigger19 = movecontact = 1
trigger20 = stateno = 401
trigger20 = movecontact = 1
trigger21 = stateno = 402
trigger21 = movecontact = 1
trigger22 = stateno = 403
trigger22 = movecontact = 1
trigger23 = stateno = 414
trigger23 = movecontact = 1
trigger24 = stateno = 413
trigger24 = movecontact = 1
trigger25 = stateno = 412
trigger25 = movecontact = 1

;---------------------------------------------------------------------------
;golpe chute 3
[State -1]
type = ChangeState
value = 804
triggerall = command = "Boca_Chz"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;golpe chute 2
[State -1]
type = ChangeState
value = 802
triggerall = command = "Boca_Chy"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;golpe chute 1
[State -1]
type = ChangeState
value = 800
triggerall = command = "Boca_Chx"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;Bocada AR
[State -1]
type = ChangeState
value = 992
triggerall = command = "Boca_ar"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 601
trigger3 = movecontact = 1
trigger4 = stateno = 605
trigger4 = movecontact = 1
trigger5 = stateno = 610
trigger5 = movecontact = 1
trigger6 = stateno = 611
trigger6 = movecontact = 1
trigger7 = stateno = 615
trigger7 = movecontact = 1


;---------------------------------------------------------------------------
;Bocada AR
[State -1]
type = ChangeState
value = 996
triggerall = command = "Boca_arb"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 601
trigger3 = movecontact = 1
trigger4 = stateno = 605
trigger4 = movecontact = 1
trigger5 = stateno = 610
trigger5 = movecontact = 1
trigger6 = stateno = 611
trigger6 = movecontact = 1
trigger7 = stateno = 615
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
;Bocada AR
[State -1]
type = ChangeState
value = 997
triggerall = command = "Boca_arc"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 601
trigger3 = movecontact = 1
trigger4 = stateno = 605
trigger4 = movecontact = 1
trigger5 = stateno = 610
trigger5 = movecontact = 1
trigger6 = stateno = 611
trigger6 = movecontact = 1
trigger7 = stateno = 615
trigger7 = movecontact = 1

;---------------------------------------------------------------------------
;Bocada
[State -1]
type = ChangeState
value = 990
triggerall = command = "Boca_a"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;Bocada
[State -1]
type = ChangeState
value = 993
triggerall = command = "Boca_b"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;Bocada
[State -1]
type = ChangeState
value = 994
triggerall = command = "Boca_c"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1
trigger5 = stateno = 206
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 205
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 405
trigger9 = movecontact = 1
trigger10 = stateno = 406
trigger10 = movecontact = 1
trigger11 = stateno = 410
trigger11 = movecontact = 1
trigger12 = stateno = 411
trigger12 = movecontact = 1
trigger13 = stateno = 415
trigger13 = movecontact = 1

;[State -1]
;type = ChangeState
;value = 936
;triggerall = command = "Baixo_y"
;trigger1 = statetype = A
;trigger1 = ctrl = 1

;-----------------------------------
;Empurar oponente quando defendendo
[State -1]
type = ChangeState
value = 1120
triggerall = command = "Empurar"
trigger1 = stateno = 150
trigger2 = stateno = 151

;------------
;Super Pulo
[State -1]
type = ChangeState
value = 5400
triggerall = command = "Supa_Jumpin"
trigger1 = statetype != A
trigger1 = ctrl = 1

;------------
;Correr P/ Frente
[State -1]
type = ChangeState
value = 1121
triggerall = command = "FF"
trigger1 = stateno = (50)

;--------------------
;Correr P/ Frente
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------
;Correr p/ Trás
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------------------------------
;Soco Fraco
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1

;---------------------------------
;Soco Medio
[State -1]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 216
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Soco Forte
[State -1]
type = ChangeState
value = 206
triggerall = command = "z"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 216
trigger2 = movehit = 1

;---------------------------------------------------------------------------
;Chute Forte
[State -1]
type = ChangeState
value = 210
triggerall = command = "c"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 216
trigger2 = movehit = 1
 
;---------------------------------------------------------------------------
;Chute Medio
[State -1]
type = ChangeState
value = 216
triggerall = command = "b"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movehit = 1
trigger3 = stateno = 200
trigger3 = movehit = 1

;---------------------------------------------------------------------------
;Chute Fraco
[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = PalNo = [1,6]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ soco Fraco
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = PalNo = [1,6]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 415
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ soco Medio
[State -1]
type = ChangeState
value = 405
triggerall = command = "y"
triggerall = PalNo = [1,6]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 415
trigger3 = movecontact = 1
trigger4 = stateno = 411
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ soco Forte
[State -1]
type = ChangeState
value = 406
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = PalNo = [1,6]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = movecontact = 1
trigger3 = stateno = 411
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ Chute Forte
[State -1]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = PalNo = [1,6]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 405
trigger2 = movecontact = 1
trigger3 = stateno = 411
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ Chute Medio
[State -1]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = PalNo = [1,6]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 415
trigger3 = movecontact = 1
trigger4 = stateno = 405
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ Chute Fraco
[State -1]
type = ChangeState
value = 415
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = PalNo = [1,6]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Voadora c/ Soco Fraco
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 615
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Voadora c/ Soco Medio
[State -1]
type = ChangeState
value = 601
triggerall = command = "y"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 615
trigger3 = movecontact = 1
trigger4 = stateno = 611
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
; Voadora c/ Soco Forte
[State -1]
type = ChangeState
value = 605
triggerall = command = "z"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 611
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;  Voadora c/ Chute Forte
[State -1]
type = ChangeState
value = 610
triggerall = command = "c"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 611
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;  Voadora c/ Chute Medio
[State -1]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 615
trigger3 = movecontact = 1
trigger4 = stateno = 601
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
; Voadora c/ Chute Fraco
[State -1]
type = ChangeState
value = 615
triggerall = command = "a"
triggerall = PalNo = [1,6]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact = 1

:==============================================[Comandos do Carnage]======================================================

;---------------------------------------------------------------------------
;golpe chute 3
[State -1]
type = ChangeState
value = 2060
triggerall = command = "Boca_Chz"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 212
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 403
trigger10 = movecontact = 1
trigger11 = stateno = 414
trigger11 = movecontact = 1
trigger12 = stateno = 413
trigger12 = movecontact = 1
trigger13 = stateno = 412
trigger13 = movecontact = 1


;---------------------------------------------------------------------------
;golpe chute 2
[State -1]
type = ChangeState
value = 2055
triggerall = command = "Boca_Chy"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 212
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 403
trigger10 = movecontact = 1
trigger11 = stateno = 414
trigger11 = movecontact = 1
trigger12 = stateno = 413
trigger12 = movecontact = 1
trigger13 = stateno = 412
trigger13 = movecontact = 1


;---------------------------------------------------------------------------
;golpe chute 1
[State -1]
type = ChangeState
value = 2050
triggerall = command = "Boca_Chx"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 212
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 403
trigger10 = movecontact = 1
trigger11 = stateno = 414
trigger11 = movecontact = 1
trigger12 = stateno = 413
trigger12 = movecontact = 1
trigger13 = stateno = 412
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;Bocada Fraco
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Boca_a"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 212
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 403
trigger10 = movecontact = 1
trigger11 = stateno = 414
trigger11 = movecontact = 1
trigger12 = stateno = 413
trigger12 = movecontact = 1
trigger13 = stateno = 412
trigger13 = movecontact = 1


;---------------------------------------------------------------------------
;Bocada Medio
[State -1]
type = ChangeState
value = 2005
triggerall = command = "Boca_b"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 212
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 403
trigger10 = movecontact = 1
trigger11 = stateno = 414
trigger11 = movecontact = 1
trigger12 = stateno = 413
trigger12 = movecontact = 1
trigger13 = stateno = 412
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
;Bocada Forte
[State -1]
type = ChangeState
value = 2010
triggerall = command = "Boca_c"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1
trigger3 = stateno = 202
trigger3 = movecontact = 1
trigger4 = stateno = 203
trigger4 = movecontact = 1
trigger5 = stateno = 213
trigger5 = movecontact = 1
trigger6 = stateno = 212
trigger6 = movecontact = 1
trigger7 = stateno = 211
trigger7 = movecontact = 1
trigger8 = stateno = 401
trigger8 = movecontact = 1
trigger9 = stateno = 402
trigger9 = movecontact = 1
trigger10 = stateno = 403
trigger10 = movecontact = 1
trigger11 = stateno = 414
trigger11 = movecontact = 1
trigger12 = stateno = 413
trigger12 = movecontact = 1
trigger13 = stateno = 412
trigger13 = movecontact = 1



;---------------------------------------------------------------------------
;Bocada AR
[State -1]
type = ChangeState
value = 980
triggerall = command = "Boca_ar"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 602
trigger2 = movecontact = 1
trigger3 = stateno = 603
trigger3 = movecontact = 1
trigger4 = stateno = 604
trigger4 = movecontact = 1
trigger5 = stateno = 614
trigger5 = movecontact = 1
trigger6 = stateno = 611
trigger6 = movecontact = 1
trigger7 = stateno = 612
trigger7 = movecontact = 1



;---------------------------------------------------------------------------
;Bocada AR
[State -1]
type = ChangeState
value = 981
triggerall = command = "Boca_arb"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 602
trigger2 = movecontact = 1
trigger3 = stateno = 603
trigger3 = movecontact = 1
trigger4 = stateno = 604
trigger4 = movecontact = 1
trigger5 = stateno = 614
trigger5 = movecontact = 1
trigger6 = stateno = 611
trigger6 = movecontact = 1
trigger7 = stateno = 612
trigger7 = movecontact = 1


;---------------------------------------------------------------------------
;Bocada AR
[State -1]
type = ChangeState
value = 982
triggerall = command = "Boca_arc"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 602
trigger2 = movecontact = 1
trigger3 = stateno = 603
trigger3 = movecontact = 1
trigger4 = stateno = 604
trigger4 = movecontact = 1
trigger5 = stateno = 614
trigger5 = movecontact = 1
trigger6 = stateno = 611
trigger6 = movecontact = 1
trigger7 = stateno = 612
trigger7 = movecontact = 1


;Soco Fraco
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Soco Medio
[State -1]
type = ChangeState
value = 202
triggerall = command = "y"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 213
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Soco Forte
[State -1]
type = ChangeState
value = 203
triggerall = command = "z"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = movecontact = 1
trigger3 = stateno = 212
trigger3 = movecontact = 1


;---------------------------------------------------------------------------
;Chute Forte
[State -1]
type = ChangeState
value = 211
triggerall = command = "c"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = movecontact = 1
trigger3 = stateno = 212
trigger3 = movecontact = 1

 
;---------------------------------------------------------------------------
;Chute Medio
[State -1]
type = ChangeState
value = 212
triggerall = command = "b"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Chute Fraco
[State -1]
type = ChangeState
value = 213
triggerall = command = "a"
triggerall = PalNo = [7,12]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1


;---------------------------------------------------------------------------
;Rasteira c/ soco Fraco
[State -1]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = PalNo = [7,12]
trigger1 = statetype = C
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Rasteira c/ soco Medio
[State -1]
type = ChangeState
value = 402
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 414
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ soco Forte
[State -1]
type = ChangeState
value = 403
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = PalNo = [7,12]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 402
trigger2 = movecontact = 1
trigger3 = stateno = 413
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ Chute Forte
[State -1]
type = ChangeState
value = 412
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = PalNo = [7,12]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 402
trigger2 = movecontact = 1
trigger3 = stateno = 413
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ Chute Medio
[State -1]
type = ChangeState
value = 413
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = PalNo = [7,12]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 402
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Rasteira c/ Chute Fraco
[State -1]
type = ChangeState
value = 414
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = PalNo = [7,12]
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Voadora c/ Soco Fraco
[State -1]
type = ChangeState
value = 602
triggerall = command = "x"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Voadora c/ Soco Medio
[State -1]
type = ChangeState
value = 603
triggerall = command = "y"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 614
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Voadora c/ Soco Forte
[State -1]
type = ChangeState
value = 604
triggerall = command = "z"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 603
trigger2 = movecontact = 1
trigger3 = stateno = 611
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;  Voadora c/ Chute Forte
[State -1]
type = ChangeState
value = 612
triggerall = command = "c"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 603
trigger2 = movecontact = 1
trigger3 = stateno = 611
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;  Voadora c/ Chute Medio
[State -1]
type = ChangeState
value = 613
triggerall = command = "b"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 603
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
; Voadora c/ Chute Fraco
[State -1]
type = ChangeState
value = 614
triggerall = command = "a"
triggerall = PalNo = [7,12]
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 602
trigger2 = movecontact = 1
