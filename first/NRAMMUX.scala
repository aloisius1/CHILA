import Chisel._
import scala.collection.mutable.ArrayBuffer

class NRAMMUX(nc:Int, m:Int) extends Module
{ 

 val dsel = (math.log10(nc)/math.log10(2))
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
   val D = UInt(INPUT,m)
   val Q = UInt(OUTPUT,m)
   val RADD = UInt(INPUT,dint)
 }


 val RAM  = Module(new NRAM(nc,m))   //ram
 val MUX1 = Module(new NMux(nc,m))   //output mux


for(i <- 0 until nc)
 { 
    MUX1.io.Dvect(i) :=  RAM.io.Qbus(i)
 }
  
  //MUX1.io.sel := io.RADD

}
