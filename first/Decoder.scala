import Chisel._
import scala.collection.mutable.ArrayBuffer

class Decoder(n:Int) extends Module
{ 


  val dsel = (math.log10(n)/math.log10(2))
  var dint = dsel.toInt
  val ddec = dsel-dint
  
  if(ddec!=0)
  {
    dint = dint + 1
  }
  else
  {
    dint = dint
  }



  val io = new Bundle
 {
   val WADD = UInt(INPUT,dint)
   val CTRL = Vec.fill(n){ UInt(OUTPUT, 1)}
 }

 io.CTRL:=UInt(0)
 io.CTRL(io.WADD):=UInt(1)

}

