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
   LOCAL oToolBar1
   LOCAL oToolBar2

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN TOOLBAR oToolBar1
      TOOLBARITEM "Visible" ACTION oToolBar2:show() BITMAP "images/new.png"
      TOOLBARITEM "Invisible" ACTION oToolBar2:hide() BITMAP "images/open.png"
   END TOOLBAR

   BEGIN TOOLBAR oToolBar2 INVISIBLE
      TOOLBARITEM "New" ACTION hwgqt_MsgInfo("new-1") BITMAP "images/new.png"
      TOOLBARITEM "Open" ACTION hwgqt_MsgInfo("open-1") BITMAP "images/open.png"
      TOOLBARITEM "Save" ACTION hwgqt_MsgInfo("save-1") BITMAP "images/save.png"
      SEPARATOR
      TOOLBARITEM "Cut" ACTION hwgqt_MsgInfo("cut-1") BITMAP "images/cut.png"
      TOOLBARITEM "Copy" ACTION hwgqt_MsgInfo("copy-1") BITMAP "images/copy.png"
      TOOLBARITEM "Paste" ACTION hwgqt_MsgInfo("paste-1") BITMAP "images/paste.png"
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
