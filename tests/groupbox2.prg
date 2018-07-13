/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oGroup
   LOCAL oCB1
   LOCAL oCB2
   LOCAL oCB3
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240

   @ 20,20 GROUPBOX oGroup CAPTION " Configura��o " SIZE 170,150

   @ 20,20 CHECKBOX oCB1 CAPTION "Par�metro 1" SIZE 130,30 OF oGroup
   @ 20,60 CHECKBOX oCB2 CAPTION "Par�metro 2" SIZE 130,30 OF oGroup
   @ 20,100 CHECKBOX oCB3 CAPTION "Par�metro 3" SIZE 130,30 OF oGroup

   @ 10,180 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Ok' clicado")}

   @ 150,180 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
