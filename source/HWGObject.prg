/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#include "hbclass.ch"

CLASS HWGObject

   DATA oQt              // armazena o objeto Qt
   DATA oParent          // armazena o parent do objeto
   DATA aObjects INIT {} // armazena objetos
   DATA cName

   METHOD addObject      // adiciona um objeto na array
   METHOD delObject      // remove um objeto da array
   METHOD release        // executa o m�todo delObject
   METHOD delete         // executa o m�todo delete do objeto Qt

ENDCLASS

METHOD addObject (oObj) CLASS HWGObject

   IF valtype(oObj) == "O"
      aadd(::aObjects,oObj)
   ELSE
      alert("Erro no m�todo addObject da classe HObject") // debug
   ENDIF

RETURN NIL

METHOD delObject (oObj) CLASS HWGObject

   LOCAL nIndex

   IF valtype(oObj) == "O"

      nIndex := ascan(::aObjects,{|x|x:oQt:pointer==oObj:oQt:pointer})

      oObj:oQt:close()

      IF nIndex > 0
         adel(::aObjects,nIndex)             // remove o objeto
         asize(::aObjects,len(::aObjects)-1) // atualiza o tamanho da array
      ENDIF

   ELSE

      alert("Erro no m�todo delObject da classe HObject") // debug

   ENDIF

RETURN NIL

METHOD release () CLASS HWGObject
   ::delObject(self)
RETURN NIL

METHOD delete () CLASS HWGObject
   ::oQt:disconnectAll(.T.)
   ::oQt:delete()
RETURN NIL
