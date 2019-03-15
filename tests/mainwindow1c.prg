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

   ? "testando criacao da janela principal (modo minimizado)"
   ?
   ? "restaure e feche a janela para encerrar a aplicacao"

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   ACTIVATE WINDOW oMainWindow MINIMIZED

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
