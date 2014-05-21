import Chisel._
import scala.collection.mutable.ArrayBuffer


class NRegister(n:Int) extends Module
{
  val io = new Bundle
  {
    val D = UInt(INPUT,n)
    val Q = UInt(OUTPUT,n)
  }
  
  val vectreg = Vec.fill(n){ Reg(UInt(width = 1))}
  val vbool = Vec.fill(n){Bool()}
  
 for(i <- 0 until n)
 {
  vectreg(i) := io.D(i)
  vbool(i) := vectreg(i).toBool()
 }
 
 io.Q := vbool.toBits().toUInt()

}

