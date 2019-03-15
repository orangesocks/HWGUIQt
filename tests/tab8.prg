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
   LOCAL oMainTab
   LOCAL oTab1
   LOCAL oSay1A
   LOCAL oSay1B
   LOCAL oSay1C
   LOCAL oSay1D
   LOCAL oSay1E
   LOCAL oTab1A
   LOCAL oSay1A1
   LOCAL oSay1B1
   LOCAL oSay1C1
   LOCAL oSay1D1
   LOCAL oSay1E1
   LOCAL oTab2
   LOCAL oSay2A
   LOCAL oSay2B
   LOCAL oSay2C
   LOCAL oSay2D
   LOCAL oSay2E
   LOCAL oTab3
   LOCAL oSay3A
   LOCAL oSay3B
   LOCAL oSay3C
   LOCAL oSay3D
   LOCAL oSay3E
   LOCAL oTab4
   LOCAL oSay4A
   LOCAL oSay4B
   LOCAL oSay4C
   LOCAL oSay4D
   LOCAL oSay4E
   LOCAL oTab5
   LOCAL oSay5A
   LOCAL oSay5B
   LOCAL oSay5C
   LOCAL oSay5D
   LOCAL oSay5E
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3
   LOCAL oButton4
   LOCAL oButton5
   LOCAL oButton6

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGTab" SIZE 640,480+20

   @ 10,10 TAB oMainTab ITEMS {} SIZE 640-20,480-20 OF oDialog

   BEGIN PAGE "P�gina 1" OF oMainTab
      @ 10,10 TAB oTab1 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "P�gina 1A" OF oTab1
         @ 10,10 TAB oTab1A ITEMS {} SIZE 640-20-20-20,480-20-20-20-20-20
         BEGIN PAGE "P�gina 1A1" OF oTab1A
            @ 10,10 SAY oSay1A1 CAPTION "oSay1A1 da p�gina 1A1"
         END PAGE OF oTab1A
         BEGIN PAGE "P�gina 1A2" OF oTab1A
            @ 10,10 SAY oSay1B1 CAPTION "oSay1B1 da p�gina 1A2"
         END PAGE OF oTab1A
         BEGIN PAGE "P�gina 1A3" OF oTab1A
            @ 10,10 SAY oSay1C1 CAPTION "oSay1C1 da p�gina 1A3"
         END PAGE OF oTab1A
         BEGIN PAGE "P�gina 1A4" OF oTab1A
            @ 10,10 SAY oSay1D1 CAPTION "oSay1D1 da p�gina 1A4"
         END PAGE OF oTab1A
         BEGIN PAGE "P�gina 1A5" OF oTab1A
            @ 10,10 SAY oSay1E1 CAPTION "oSay1E1 da p�gina 1A5"
         END PAGE OF oTab1A
      END PAGE OF oTab1
      BEGIN PAGE "P�gina 1B" OF oTab1
         @ 10,10 SAY oSay1B CAPTION "oSay1B da p�gina 1B"
      END PAGE OF oTab1
      BEGIN PAGE "P�gina 1C" OF oTab1
         @ 10,10 SAY oSay1C CAPTION "oSay1C da p�gina 1C"
      END PAGE OF oTab1
      BEGIN PAGE "P�gina 1D" OF oTab1
         @ 10,10 SAY oSay1D CAPTION "oSay1D da p�gina 1D"
      END PAGE OF oTab1
      BEGIN PAGE "P�gina 1E" OF oTab1
         @ 10,10 SAY oSay1E CAPTION "oSay1E da p�gina 1E"
      END PAGE OF oTab1
   END PAGE OF oMainTab

   BEGIN PAGE "P�gina 2" OF oMainTab
      @ 10,10 TAB oTab2 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "P�gina 2A" OF oTab2
         @ 10,10 SAY oSay2A CAPTION "oSay2A da p�gina 2A"
      END PAGE OF oTab2
      BEGIN PAGE "P�gina 2B" OF oTab2
         @ 10,10 SAY oSay2B CAPTION "oSay2B da p�gina 2B"
      END PAGE OF oTab2
      BEGIN PAGE "P�gina 2C" OF oTab2
         @ 10,10 SAY oSay2C CAPTION "oSay2C da p�gina 2C"
      END PAGE OF oTab2
      BEGIN PAGE "P�gina 2D" OF oTab2
         @ 10,10 SAY oSay2D CAPTION "oSay2D da p�gina 2D"
      END PAGE OF oTab2
      BEGIN PAGE "P�gina 2E" OF oTab2
         @ 10,10 SAY oSay2E CAPTION "oSay2E da p�gina 2E"
      END PAGE OF oTab2
   END PAGE OF oMainTab

   BEGIN PAGE "P�gina 3" OF oMainTab
      @ 10,10 TAB oTab3 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "P�gina 3A" OF oTab3
         @ 10,10 SAY oSay3A CAPTION "oSay3A da p�gina 3A"
      END PAGE OF oTab3
      BEGIN PAGE "P�gina 3B" OF oTab3
         @ 10,10 SAY oSay3B CAPTION "oSay3B da p�gina 3B"
      END PAGE OF oTab3
      BEGIN PAGE "P�gina 3C" OF oTab3
         @ 10,10 SAY oSay3C CAPTION "oSay3C da p�gina 3C"
      END PAGE OF oTab3
      BEGIN PAGE "P�gina 3D" OF oTab3
         @ 10,10 SAY oSay3D CAPTION "oSay3D da p�gina 3D"
      END PAGE OF oTab3
      BEGIN PAGE "P�gina 3E" OF oTab3
         @ 10,10 SAY oSay3E CAPTION "oSay3E da p�gina 3E"
      END PAGE OF oTab3
   END PAGE OF oMainTab

   BEGIN PAGE "P�gina 4" OF oMainTab
      @ 10,10 TAB oTab4 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "P�gina 4A" OF oTab4
         @ 10,10 SAY oSay4A CAPTION "oSay4A da p�gina 4A"
      END PAGE OF oTab4
      BEGIN PAGE "P�gina 4B" OF oTab4
         @ 10,10 SAY oSay4B CAPTION "oSay4B da p�gina 4B"
      END PAGE OF oTab4
      BEGIN PAGE "P�gina 4C" OF oTab4
         @ 10,10 SAY oSay4C CAPTION "oSay4C da p�gina 4C"
      END PAGE OF oTab4
      BEGIN PAGE "P�gina 4D" OF oTab4
         @ 10,10 SAY oSay4D CAPTION "oSay4D da p�gina 4D"
      END PAGE OF oTab4
      BEGIN PAGE "P�gina 4E" OF oTab4
         @ 10,10 SAY oSay4E CAPTION "oSay4E da p�gina 4E"
      END PAGE OF oTab4
   END PAGE OF oMainTab

   BEGIN PAGE "P�gina 5" OF oMainTab
      @ 10,10 TAB oTab5 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "P�gina 5A" OF oTab5
         @ 10,10 SAY oSay5A CAPTION "oSay5A da p�gina 5A"
      END PAGE OF oTab5
      BEGIN PAGE "P�gina 5B" OF oTab5
         @ 10,10 SAY oSay5B CAPTION "oSay5B da p�gina 5B"
      END PAGE OF oTab5
      BEGIN PAGE "P�gina 5C" OF oTab5
         @ 10,10 SAY oSay5C CAPTION "oSay5C da p�gina 5C"
      END PAGE OF oTab5
      BEGIN PAGE "P�gina 5D" OF oTab5
         @ 10,10 SAY oSay5D CAPTION "oSay5D da p�gina 5D"
      END PAGE OF oTab5
      BEGIN PAGE "P�gina 5E" OF oTab5
         @ 10,10 SAY oSay5E CAPTION "oSay5E da p�gina 5E"
      END PAGE OF oTab5
   END PAGE OF oMainTab

   @ 010,500-30 BUTTON oButton1 CAPTION "Bot�o1" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("bot�o 1")} OF oDialog
   @ 110,500-30 BUTTON oButton2 CAPTION "Bot�o2" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("bot�o 2")} OF oDialog
   @ 210,500-30 BUTTON oButton3 CAPTION "Bot�o3" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("bot�o 3")} OF oDialog
   @ 310,500-30 BUTTON oButton4 CAPTION "Bot�o4" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("bot�o 4")} OF oDialog
   @ 410,500-30 BUTTON oButton5 CAPTION "Bot�o5" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("bot�o 5")} OF oDialog
   @ 510,500-30 BUTTON oButton6 CAPTION "Bot�o6" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("bot�o 6")} OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
