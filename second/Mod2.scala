import Chisel._
import scala.collection.mutable.ArrayBuffer


class Mod2 extends BlackBox {
	val io = new Bundle {
		val in02 = UInt(INPUT, 1)
		val out02 = UInt(OUTPUT, 1)
		val fin02 = UInt(INPUT, 1)
		val fout02 = UInt(OUTPUT, 1)
	}
val registro00 = Reg(UInt(width = 1))
registro00 := io.fin02
io.fout02 := registro00
}
