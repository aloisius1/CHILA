import Chisel._
import scala.collection.mutable.ArrayBuffer

class test extends Module
  {
    val io = new Bundle
    {
      val in = UInt(INPUT, 2) 
      val out = UInt(OUTPUT,2)
    }
 
    val reg_vec2 = Vec.fill(2){ Reg( init = UInt(0, width = 1) ) }
    val vwire = Vec.fill(2){Bool()}
    
    reg_vec2(0):=io.in(0)
    reg_vec2(1):=io.in(1)

    vwire(0):=reg_vec2(0).toBool()
    vwire(1):=reg_vec2(1).toBool()


    io.out:=vwire.toBits().toUInt()
  }
