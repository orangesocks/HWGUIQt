/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> BUTTONEX [ <oObj> CAPTION ] <cText> ;
          [ OF <oParent> ] ;
          [ ID <nId> ] ;
          [ STYLE <nStyle> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ COLOR <xForeColor> ] ;
          [ BACKCOLOR <xBackColor> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON MOVE <bMove> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON GETFOCUS <bGFocus> ] ;
          [ ON LOSTFOCUS <bLFocus> ] ;
          [ ON SHOW <bShow> ] ;
          [ ON HIDE <bHide> ] ;
          [ ON CLICK <bClick> ] ;
          [ ON ENABLED <bEnable> ] ;
          [ ON DISABLED <bDisable> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGButtonEx)():new( ;
             <oParent>, ;
             <nId>, ;
             <nStyle>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <xForeColor>, ;
             <xBackColor>, ;
             <cText>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bMove}>, ;
             <{bPaint}>, ;
             <{bGFocus}>, ;
             <{bLFocus}>, ;
             <{bShow}>, ;
             <{bHide}>, ;
             <{bEnable}>, ;
             <{bDisable}>, ;
             <{bClick}>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
