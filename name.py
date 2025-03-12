import cowsay
import sys
if len(sys.argv) == 2:
    cowsay.trex("hello,"+ sys.argv[1])
else:
    cowsay.cow("hello," +sys.argv[2])