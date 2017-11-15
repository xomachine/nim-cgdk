# Package

version       = "0.1.0"
author        = "xomachine"
description   = "A Nim language pack for RussianAICup2017"
license       = "MIT"
bin           = @["nim_cgdk/runner"]

# Dependencies

requires "nim >= 0.17.2"
requires "nesm#076639c"

from ospaths import `/`
from strutils import startsWith, splitLines
const srcDirName = "nim_cgdk"
const utilsDir = thisDir() / srcDirName / "utils"
const generatedFile =  utilsDir / "generated.nim"
const codegenLog = thisDir() / srcDirName / "generated.tmp"

task generateCode, "Generate serialization code (requires nesm)":
  exec("nimble install --depsOnly")
  withDir(srcDirName):
    exec("nim check -d:debug runner.nim 2> " & codegenLog)
  exec("nim " & utilsDir / "filter.nims " &  codegenLog & " > " & generatedFile)
  rmFile(codegenLog)

task make, "Compile the strategy":
  let curdir = thisDir()
  if not existsFile(generatedFile):
    echo("WARNING: The package does not contain generated serialization code!")
    echo("Trying to generate code via nesm...")
    exec("nimble generateCode")
  withDir(srcDirName):
    exec("nim c --hint[XDeclaredButNotUsed]:off -d:nodeps -o:" &
         toExe(curdir / "MyStrategy") & " runner.nim")

task clean, "Wipe compilation data":
  rmDir(thisDir() / srcDirName / nimcacheDir())
  rmFile(thisDir() / toExe("MyStrategy"))

task fullclean, "Wipe compilation and codegeneration data":
  exec("nimble clean")
  rmFile(generatedFile)
