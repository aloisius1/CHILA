import Chisel._
import scala.collection.mutable.ArrayBuffer
import scala.collection.mutable.HashMap

object tutorial {
  def main(args: Array[String]) = {
  chiselMain(args, () => new Prova());
  }
}

class Prova extends Module {
  val io = new Bundle { 
    val out = UInt(OUTPUT, 8)
  }
  io.out := UInt(42)
}

class ProvaTests(c: Prova) extends Tester(c) {
  step(1)
  expect(c.io.out, 42)
}

object Prova {
  def main(args: Array[String]): Unit = {
    // Uncomment to ignore command-line args and always build & run C emulator
    // val args = Array("--backend", "c", "--genHarness", "--compile", "--test")
    val cutArgs = args.slice(1, args.length)
    chiselMainTest(cutArgs, () => Module(new Prova())) {
      c => new ProvaTests(c) }
  }
}
