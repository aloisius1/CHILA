//-------------------------------------------
//          nc= numero di celle
//  m=dimensione in bit della singola cella
//---------------------------------------------

import Chisel._
import scala.collection.mutable.ArrayBuffer

class NRam(nc:Int, m:Int) extends Module
{
  val dsel = (math.log10(nc)/math.log10(2))
  var dint = dsel.toInt
  val ddec = dsel - dint

  if ( ddec != 0 )
     dint += 1
  else
     dint += 0
  val io = new Bundle
  {
    val D = UInt(INPUT, m)
    val Q = UInt(OUTPUT, m)}
    val Radd = UInt(INPUT, dint)
  }  
  val mux1 = Module(new nMux(nc, m)) // mux di uscita
  val ram1 = Module(new nRam(nc, m)) 
  
  for (i <- 0 until nc)
  {
     mux1.Dvect(i) := ram1.Qbus(i)
  }
  mux1.sel := io.Radd
  
}
