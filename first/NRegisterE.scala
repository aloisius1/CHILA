import Chisel._
import scala.collection.mutable.ArrayBuffer


class NRegisterE(n:Int) extends Module
{
  val io = new Bundle
  {
    val D = UInt(INPUT,n)
    val Q = UInt(OUTPUT,n)
    val enable = Bool(INPUT)
  }
  
  val vectreg = Vec.fill(n){ Reg(init = UInt(0,width = 1))}
  val vbool = Vec.fill(n){Bool()}
  

 for(i <- 0 until n)
 {
  when(reset)
  {
   vectreg(i) := UInt(0)
  }

  .elsewhen(io.enable)
  {
  vectreg(i) := io.D(i)
  }
  vbool(i) := vectreg(i).toBool()
 }


 io.Q := vbool.toBits().toUInt()

}

