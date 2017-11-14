# Package

version       = "0.1.0"
author        = "xomachine"
description   = "A Nim language pack for RussianAICup2017"
license       = "MIT"
bin           = @["nim_cgdk/runner"]

# Dependencies

requires "nim >= 0.17.2"
requires "nesm#451f23d"

from ospaths import `/`
task make, "Compile the strategy":
  let curdir = thisDir()
  exec("nimble install --depsOnly")
  withDir("nim_cgdk"):
    exec("nim c --hint[XDeclaredButNotUsed]:off -o:" & toExe(curdir / "MyStrategy") & " runner.nim")
task clean, "Wipe compilation data":
  rmDir(nimcacheDir())
  rmFile(thisDir() / toExe("MyStrategy"))
