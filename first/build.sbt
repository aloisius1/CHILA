<<<<<<< HEAD
 
scalaVersion := "2.10.2" 
 
resolvers ++= Seq( 
  "scct-github-repository" at "http://mtkopone.github.com/scct/maven-repo" 
) 
 
libraryDependencies += 
  "edu.berkeley.cs" %% "chisel" % "latest.release"
=======
scalaVersion := "2.10.2"

addSbtPlugin("com.github.scct" % "sbt-scct" % "0.2.1")

libraryDependencies += "edu.berkeley.cs" %% "chisel" % "latest.release"
>>>>>>> 061060c6a9cb4fc736fa461271e93e9cb1b027f3
