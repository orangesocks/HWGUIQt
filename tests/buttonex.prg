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
   LOCAL oButton

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGButtonEx" SIZE 320,240

   @ 10,10 BUTTONEX oButton CAPTION "Bot�o" SIZE 120,40 ;
      ON INIT {||hwgqt_MsgInfo("Bot�o - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Bot�o - ON CLICK")} ;
      OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
