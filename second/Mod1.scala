import Chisel._
import scala.collection.mutable.ArrayBuffer


class Mod1 extends Module {

	val io = new Bundle {
		val in01 = UInt(INPUT, 1)
		val out01 = UInt(OUTPUT, 1)
	}
//io.out01 := io.in01
val registro00 = Reg(UInt(width = 1))
registro00 := io.in01
io.out01 := registro00

}
