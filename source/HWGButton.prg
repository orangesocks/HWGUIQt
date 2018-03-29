/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#include "hbclass.ch"

CLASS HWGButton INHERIT HWGControl

   DATA bClick

   METHOD new
   METHOD activate
   METHOD onClick

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, cText, ;
             bInit, bClick, bSize, bPaint, bGFocus, bLFocus, lDisabled, lInvisible, cIcon ) CLASS HWGButton

   IF valtype(oParent) == "O"
      ::oQt := QPushButton():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QPushButton():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QPushButton():new()
      ENDIF
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )
   ::configureTips( cToolTip, cStatusTip, cWhatsThis )
   ::configureStyleSheet( cStyleSheet )
   ::configureFont( oFont )
   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   IF valtype(cText) == "C"
      ::oQt:setText(cText)
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bPaint, bGFocus, bLFocus )
   ::connectEvents()

   IF valtype(bClick) == "B"
      ::bClick := bClick
      ::oQt:onClicked({||::onClick()}) // TODO: desconex�o
   ENDIF

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   IF valtype(lInvisible) == "L"
      IF lInvisible
         ::oQt:setVisible(.F.)
      ENDIF
   ENDIF

   IF valtype(cIcon) == "C"
      ::oQt:setIcon( QIcon():new(cIcon) )
   ENDIF

   ::oQt:setAutoDefault(.F.)

   ::activate()

RETURN self

METHOD activate () CLASS HWGButton

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD onClick () CLASS HWGButton

   IF ::bClick != NIL
      eval(::bClick)
   ENDIF

RETURN NIL
