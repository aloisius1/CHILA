import Chisel._
import scala.collection.mutable.ArrayBuffer

object TestMain 
{
	def main(args: Array[String]): Unit = 
	{
 		chiselMain(args, () => Module(new Mod3()))	
	}
}


