import Chisel._
import scala.collection.mutable.ArrayBuffer

class Decoder(n:Int) extends Module{
 
  val dsel = (math.log10(n)/math.log10(2))	// controllo potenza di 2
  var dint = dsel.toInt
  val ddec = dsel-dint
  
  if(ddec!=0)
    dint += 1
  else
    dint += 0

  val io = new Bundle{				// porte di IO

    val WADD = UInt(INPUT,dint)			// indirizzo di scrittura
    val CTRL = Vec.fill(n){ UInt(OUTPUT, 1)}	
  }

  io.CTRL := UInt(0)
  io.CTRL(io.WADD) := UInt(1)			// setto ad 1 il ctrl selezionato
}

