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
  
  val vectreg = Vec.fill(n){ Reg(UInt(width = 1))}
  val vbool = Vec.fill(n){Bool()}
  

when(io.enable)
{
 for(i <- 0 until n)
 {
  vectreg(i) := io.D(i)
  vbool(i) := vectreg(i).toBool()
 }
}

 io.Q := vbool.toBits().toUInt()

}

