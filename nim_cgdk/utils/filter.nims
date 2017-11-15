#!/bin/nim
from strutils import startsWith, splitLines
assert(paramCount() > 1, "Missing filename")

var toWrite = false
for line in slurp(paramStr(2)).splitLines():
  if line.startsWith("proc"):
    toWrite = true
  elif not (line == "" or line.startsWith("  ")):
    toWrite = false
  if toWrite:
    echo line

