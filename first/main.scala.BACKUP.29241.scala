import Chisel._
import scala.collection.mutable.ArrayBuffer

object TestMain 
{
	def main(args: Array[String]): Unit = 
	{
<<<<<<< HEAD
 		chiselMain(args, () => Module(new classM()))
=======
 		chiselMain(args, () => Module(new NRAMMUX(64,8)))	
>>>>>>> 4e564282b56ccf5e9b7f10901548257089c45106
	}
}


