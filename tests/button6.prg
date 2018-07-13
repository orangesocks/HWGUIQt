/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

/*
  Para ver a mensagem especificada na clausula WHATSTHIS, clique no bot�o de
  interroga��o (AJUDA), na barra de t�tulo da janela, e depois clique num
  dos bot�es presentes na janela
*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3
   LOCAL oFont1
   LOCAL oFont2
   LOCAL oFont3

   INIT APPLICATION oApp

   PREPARE FONT oFont1 NAME "Arial" WIDTH 14
   PREPARE FONT oFont2 NAME "Courier New" WIDTH 14
   PREPARE FONT oFont3 NAME "Verdana" WIDTH 14

   INIT DIALOG oDialog TITLE "Teste da classe HWGButton" SIZE 320,240

   @ 10,10 BUTTON oButton1 CAPTION "Bot�o 1" SIZE 120,40 ;
      TOOLTIP "Eu sou o <b>bot�o 1</b>" ;
      WHATSTHIS "Se clicar em mim, vou mostrar a mensagem <font color=red><i>'Bot�o 1 - ON CLICK'</i></font>" ;
      STYLESHEET "color: cyan; background-color: blue;" ;
      FONT oFont1 ;
      ON INIT {||hwgqt_MsgInfo("Bot�o 1 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Bot�o 1 - ON CLICK")}

   @ 10,70 BUTTON oButton2 CAPTION "Bot�o 2" SIZE 120,40 ;
      TOOLTIP "Eu sou o <b>bot�o 2</b>" ;
      WHATSTHIS "Se clicar em mim, vou mostrar a mensagem <font color=green><i>'Bot�o 2 - ON CLICK'</i></font>" ;
      STYLESHEET "color: red; background-color: yellow;" ;
      FONT oFont2 ;
      ON INIT {||hwgqt_MsgInfo("Bot�o 2 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Bot�o 2 - ON CLICK")}

   @ 10,140 BUTTON oButton3 CAPTION "Bot�o 3" SIZE 120,40 ;
      TOOLTIP "Eu sou o <b>bot�o 3</b>" ;
      WHATSTHIS "Se clicar em mim, vou mostrar a mensagem <font color=blue><i>'Bot�o 3 - ON CLICK'</i></font>" ;
      STYLESHEET "color: black; background-color: green;" ;
      FONT oFont3 ;
      ON INIT {||hwgqt_MsgInfo("Bot�o 3 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Bot�o 3 - ON CLICK")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
