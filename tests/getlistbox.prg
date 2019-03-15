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
   LOCAL oLB
   LOCAl nLB := 1
   LOCAL oButtonOk
   LOCAL oButtonCancel
   
   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240

   @ 20,20 GET LISTBOX oLB VAR nLB ITEMS {"item1","item2","item3"} SIZE 130,130

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK oDialog:accept()

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK oDialog:reject()

   ACTIVATE DIALOG oDialog

   hwgqt_msginfo(alltrim(str(nLB)))

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
