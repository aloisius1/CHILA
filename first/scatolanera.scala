import Chisel._
import scala.collection.mutable.ArrayBuffer

class classM extends Module { // <--------------------- open classM

class bbox extends BlackBox {

	val io = new Bundle{
 		val inpl = UInt(INPUT,1)
 		val outl = UInt(OUTPUT,1)
	} 
}

//Instance of the black box into a module :
 
val mod1 = Module(new bbox)
mod1.io.inpl := inpl  				//connection

//generated verilog

bbox bbox(
	.io_inpl( bbox_io_A),
	.io_outl( bbox_io_B)
);

} // <------------------------------------------------ close classM
