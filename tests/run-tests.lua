lunit = require "lunit"

package.path = package.path .. ";../src/?.lua"

-- Requiring all test files
require "connection"
require "selector"
require "connectionpool"
require "endpoints"
require "TransportTest"

local _, emsg = xpcall(function()
	lunit.main(arg)
end, debug.traceback)
if emsg then
	print(emsg)
	os.exit(1)
end
if lunit.stats.failed > 0 or lunit.stats.errors > 0 then
	os.exit(1)
end
