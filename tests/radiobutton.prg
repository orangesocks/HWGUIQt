/*

  HWGUIQt Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oRB1
   LOCAL oRB2
   LOCAL oRB3
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240

   @ 20,20 RADIOBUTTON oRB1 CAPTION "radiobutton1" SIZE 130,30
   @ 20,60 RADIOBUTTON oRB2 CAPTION "radiobutton2" SIZE 130,30
   @ 20,100 RADIOBUTTON oRB3 CAPTION "radiobutton3" SIZE 130,30

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Ok' clicado")}

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
