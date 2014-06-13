import Chisel._
import scala.collection.mutable.ArrayBuffer

class NRAMMUX(nc:Int, m:Int) extends Module{
 
  val dsel = (math.log10(nc)/math.log10(2))
  var dint = dsel.toInt
  val ddec = dsel-dint
  
  if(ddec!=0)					// controllo potenza di 2
    dint = dint + 1
  else
    dint = dint

  val io = new Bundle{				// definizione in e out
    val D = UInt(INPUT,m)
    val Q = UInt(OUTPUT,m)
    val RADD = UInt(INPUT,dint)
    val WADD = UInt(INPUT,dint)
  }

  val RAM  = Module(new NRAM(nc,m))   		// instanziamento ram
  val MUX1 = Module(new NMux(nc,m))   		// instanziamento output mux
  val DECODER = Module(new Decoder(nc))		// instanziamento decoder

  io.Q := MUX1.io.Ovect
  RAM.io.Dbus := io.D
  MUX1.io.sel := io.RADD
  DECODER.io.WADD := io.WADD
  
  for(i <- 0 until nc){ 
    MUX1.io.Dvect(i) :=  RAM.io.Qbus(i)
    RAM.io.ENbus(i) := DECODER.io.CTRL(i)
  } 
}						// chiudo la classe
