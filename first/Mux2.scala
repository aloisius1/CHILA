import Chisel._
import scala.collection.mutable.ArrayBuffer


class Mux2 extends Module
{
	val io = new Bundle
	{
	val sel = UInt(INPUT, 1)
	val in0 = UInt(INPUT, 1)
	val in1 = UInt(INPUT, 1)
	val out = UInt(OUTPUT, 1)
	}
io.out := (io.sel & io.in1) | (~io.sel & io.in0)
}
