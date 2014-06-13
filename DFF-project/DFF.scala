import Chisel._  
 
class DFF extends Module 
{ 

  val io = new Bundle 
  { 
    val d  = UInt(INPUT, 1)  
    val en = Bool(INPUT)
    val q  = UInt(OUTPUT, 1) 
    val notq  = UInt(OUTPUT, 1)  
  } 

  val x  = Reg(UInt()) 
  val y  = Reg(UInt()) 

  when (io.en) { x := io.d; io.q := y; y := x } 
  io.notq := ~(io.q)
}
