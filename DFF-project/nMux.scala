import Chisel._
import scala.collection.mutable.ArrayBuffer

class nMux(n:Int, m:Int) extends Module
{ 

  val dsel = (math.log10(n)/math.log10(2))
  var dint = dsel.toInt
  val ddec = dsel - dint

  if ( ddec != 0 )
     dint += 1
  else
     dint += 0

  val io = new Bundle
  {
    val Dvect = Vec.fill(n){ UInt(INPUT, m)}
    val Ovect = UInt(OUTPUT, m)
    val sel = UInt(OUTPUT, dint)
  }
  io.Ovect := io.Dvect(io.sel)
 
}
