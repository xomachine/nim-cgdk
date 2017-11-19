# Package

version       = "0.1.0"
author        = "xomachine"
description   = "A Nim language pack for RussianAICup2017"
license       = "MIT"
bin           = @["nim_cgdk/runner"]

# Dependencies

requires "nim >= 0.17.2"

from ospaths import `/`
const srcDirName = "nim_cgdk"

task make, "Compile the strategy":
  let curdir = thisDir()
  withDir(srcDirName):
    exec("nim c --hint[XDeclaredButNotUsed]:off -o:" &
         toExe(curdir / "MyStrategy") & " --deadCodeElim:on runner.nim")

task clean, "Wipe compilation data":
  rmDir(thisDir() / srcDirName / nimcacheDir())
  rmFile(thisDir() / toExe("MyStrategy"))
