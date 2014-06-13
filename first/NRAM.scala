//-------------------------------------------
//          nc= numero di celle
//  m=dimensione in bit della singola cella
//---------------------------------------------

import Chisel._
import scala.collection.mutable.ArrayBuffer

class NRAM(nc:Int, m:Int) extends Module
{
  val io = new Bundle
  {
    val Dbus = UInt(INPUT, m)
    val Qbus = Vec.fill(nc){ UInt(OUTPUT, m)}
    val ENbus = Vec.fill(nc){ UInt(INPUT, 1)}
  }  

 val CEL = Vec.fill(nc){ Module(new NRegisterE(m)).io } 
 
 for(i <- 0 until nc)
 { 
   CEL(i).D := io.Dbus
   CEL(i).enable := io.ENbus(i)
   io.Qbus(i) := CEL(i).Q
 }
}
