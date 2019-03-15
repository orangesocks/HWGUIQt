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
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenu1
   LOCAL oMenu2
   LOCAL oMenu3

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenu1 TITLE "Menu &1"
         MENUITEM "Op��o A1" ACTION hwgqt_MsgInfo("A1")
         MENUITEM "Op��o A2" ACTION hwgqt_MsgInfo("A2")
         MENUITEM "Op��o A3" ACTION hwgqt_MsgInfo("A3")
      END MENU
      BEGIN MENU oMenu2 TITLE "Menu &2" COLOR "red" BACKCOLOR "yellow"
         MENUITEM "Op��o B1" ACTION hwgqt_MsgInfo("B1")
         MENUITEM "Op��o B2" ACTION hwgqt_MsgInfo("B2")
         MENUITEM "Op��o B3" ACTION hwgqt_MsgInfo("B3")
      END MENU
      BEGIN MENU oMenu3 TITLE "Menu &3"
         MENUITEM "Op��o C1" ACTION hwgqt_MsgInfo("C1")
         MENUITEM "Op��o C2" ACTION hwgqt_MsgInfo("C2")
         MENUITEM "Op��o C3" ACTION hwgqt_MsgInfo("C3")
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
