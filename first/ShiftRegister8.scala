import Chisel._
import scala.collection.mutable.ArrayBuffer

class ShiftRegister8 extends Module
{
  val io = new Bundle
  {
    val in = UInt(INPUT, 8)
    val enable = Bool(INPUT)
    val out = UInt(OUTPUT,8)
  }

  val r0 = Reg(UInt(width = 1)) 
  val r1 = Reg(UInt(width = 1)) 
  val r2 = Reg(UInt(width = 1))  
  val r3 = Reg(UInt(width = 1))  
  val r4 = Reg(UInt(width = 1))  
  val r5 = Reg(UInt(width = 1))  
  val r6 = Reg(UInt(width = 1))  
  val r7 = Reg(UInt(width = 1))  

  when(reset) 
  {
    r0 := UInt(0) 
    r1 := UInt(0) 
    r2 := UInt(0) 
    r3 := UInt(0) 
    r4 := UInt(0) 
    r5 := UInt(0) 
    r6 := UInt(0) 
    r7 := UInt(0) 
  }


  .elsewhen(io.enable) 
  {
   r0 := io.in(0)
   r1 := io.in(1)
   r2 := io.in(2)
   r3 := io.in(3)
   r4 := io.in(4)
   r5 := io.in(5)
   r6 := io.in(6)
   r7 := io.in(7)	
  }


    
   io.out := Cat(r7,r6,r5,r4,r3,r2,r1,r0)


}
  
