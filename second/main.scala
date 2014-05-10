import Chisel._
import scala.collection.mutable.ArrayBuffer

object tutorial {
	def main(args: Array[String]) = {
		chiselMain(args ++ Array("--gen-harness"),
() => new mulriplexor(),
scanner =
(c: multiplexor) => Scanner("%x %x %x", c.io.sel, c.io.in0, c.io.in1),
printer =
(c: multiplexor) => Printer("%= %= %= %=", c.io.sel, c.io.in0, c.io.in1, c.io.out));
}
}


