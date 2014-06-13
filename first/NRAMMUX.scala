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

<<<<<<< HEAD
  val io = new Bundle{				// definizione in e out
    val D = UInt(INPUT,m)
    val Q = UInt(OUTPUT,m)
    val RADD = UInt(INPUT,dint)
    val WADD = UInt(INPUT,dint)
  }
=======
 val io = new Bundle
 {
   val D = UInt(INPUT,m)
   val Q = UInt(OUTPUT,m)
   val RADD = UInt(INPUT,dint)
   val WADD = UInt(INPUT,dint)
 }


 val RAM  = Module(new NRAM(nc,m))   //ram
 val MUX1 = Module(new NMux(nc,m))   //output mux
 val DECODER = Module(new Decoder(nc))   //output mux
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106

  val RAM  = Module(new NRAM(nc,m))   		// instanziamento ram
  val MUX1 = Module(new NMux(nc,m))   		// instanziamento output mux
  val DECODER = Module(new Decoder(nc))		// instanziamento decoder

  io.Q := MUX1.io.Ovect
  RAM.io.Dbus := io.D
  MUX1.io.sel := io.RADD
<<<<<<< HEAD
  DECODER.io.WADD := io.WADD
  
  for(i <- 0 until nc){ 
    MUX1.io.Dvect(i) :=  RAM.io.Qbus(i)
    RAM.io.ENbus(i) := DECODER.io.CTRL(i)
  } 
}						// chiudo la classe
=======

  DECODER.io.WADD:=io.WADD

  RAM.io.ENbus := DECODER.io.CTRL
  RAM.io.Dbus := io.D
  io.Q :=  MUX1.io.Ovect
}
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
