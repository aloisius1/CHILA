import Chisel._ 
import scala.collection.mutable.ArrayBuffer 
 
class DFF2 extends Module 
{ 

  val io = new Bundle 
  { 
    val d  = UInt(INPUT, 1)  
    val ck = UInt(INPUT, 1)
    val q  = UInt(OUTPUT, 1) 
    val notq  = UInt(OUTPUT, 1)  
  } 

  val d_and_ck = io.d & io.ck 
  val notd = ~io.d
  val notd_and_ck = notd & io.ck
  val notck = ~io.ck
  val o1: UInt = ~(d_and_ck | o2)
  val o2: UInt = ~(notd_and_ck | o1)
  val o1_and_notck = o1 & notck
  val o2_and_notck = o2 & notck
  
  io.q := ~(o1_and_notck | io.notq)
  io.notq := ~(o2_and_notck | io.q)

}
