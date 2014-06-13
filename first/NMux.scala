//-------------------------------------------------
//               n= numero di ingressi
// m= dimensione in bit dei singoli bus di ingresso
//-------------------------------------------------


import Chisel._
import scala.collection.mutable.ArrayBuffer

class NMux(n:Int, m:Int) extends Module { 
 
  val dsel = (math.log10(n)/math.log10(2))	// controllo potenza di 2
  var dint = dsel.toInt
  val ddec = dsel-dint
  
  if(ddec!=0)
    dint = dint + 1
  else
    dint = dint

  val io = new Bundle{				// definizione porte di IO
    val Dvect = Vec.fill(n){ UInt(INPUT, m)}
    val Ovect = UInt(OUTPUT, m)
    val sel = UInt(INPUT, dint)
  }
  
  io.Ovect:=io.Dvect(io.sel)
}						// chiudo la classe
