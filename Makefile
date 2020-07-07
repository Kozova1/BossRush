.PHONY: run
run: import
	tic80 -skip out.lua

.PHONY: import
import:
	~/Programming/Python/importtool_lua/importtool.py tic.lua
