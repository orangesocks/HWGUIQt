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
   LOCAL oTimeEdit

   SET DATE TO BRITISH
   SET CENTURY ON

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGTimeEdit" SIZE 640,480

   @ 10,10 TIMEEDIT oTimeEdit INIT time() SIZE 80,30

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN