import Chisel._
import scala.collection.mutable.ArrayBuffer

class DFF extends Module
{
  val io = new Bundle
  {
    val D = UInt(INPUT, 1)
    val EN = UInt(INPUT, 1)
    val Q = UInt(OUTPUT, 1)
  }

  val r0 = Reg(UInt(0))  
  when(io.EN===UInt(1))
  {
   r0 := io.D
  }
   
  io.Q := r0 

}
