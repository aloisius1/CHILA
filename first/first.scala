// primo
package Hello 
 
import Chisel._ 
 
class HelloModule extends Module { 
  val io = new Bundle {} 
  printf("Hello World!\n") 
} 
 
class HelloModuleTests(c: HelloModule) extends Tester(c, Array(c.io)) { 
  defTests { 
    true 
  } 
} 
 
object hello { 
  def main(args: Array[String]): Unit = { 
    chiselMainTest(Array("--backend", "c", "--genHarness"), 
      () => Module(new HelloModule()) { 
        c => new HelloModuleTests(c) 
      }) 
  } 
}
