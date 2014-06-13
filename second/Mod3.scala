import Chisel._
import scala.collection.mutable.ArrayBuffer



class Mod3 extends Module {
	val io = new Bundle {
		val in03 = UInt(INPUT, 1)
		val out03 = UInt(OUTPUT, 1)
	}
val modulo1 = Module(new Mod1)
val modulo2 = Module(new Mod2)

modulo1.io.in01 := io.in03

io.out03 := modulo2.io.out02
modulo2.io.in02 := modulo1.io.out01

// val registro00 = Reg(UInt(width = 1))

}
