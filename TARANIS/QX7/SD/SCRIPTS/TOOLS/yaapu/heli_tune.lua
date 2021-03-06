--
-- An FRSKY S.Port <passthrough protocol> based Telemetry script for the Horus X10 and X12 radios
--
-- Copyright (C) 2018-2019. Alessandro Apostoli
-- https://github.com/yaapu
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY, without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <http://www.gnu.org/licenses>.
--

---------------------
-- MAIN CONFIG
-- 480x272 LCD_W x LCD_H
---------------------

---------------------
-- VERSION
---------------------
-- load and compile of lua files
--#define LOADSCRIPT
-- enable mavlite logging to file
--#define LOGTOFILE
-- uncomment to force compile of all chunks, comment for release
--#define COMPILE
-- fix for issue OpenTX 2.2.1 on X10/X10S - https://github.com/opentx/opentx/issues/5764


---------------------
-- MAVLITE CONFIG
---------------------

---------------------
-- DEV FEATURE CONFIG
---------------------
-- enable events debug
--#define DEBUGEVT
-- cache tuning pages
--#define CACHE_TUNING
-- cache params pages
--#define CACHE_PARAMS
-- enable full telemetry debug
--#define DEBUG_SPORT
-- enable full telemetry decoding
--#define FULL_TELEMETRY
-- enable memory debuging 
-- enable dev code
--#define DEV
-- use radio channels imputs to generate fake telemetry data
--#define TESTMODE


---------------------
-- DEBUG REFRESH RATES
---------------------
-- calc and show hud refresh rate
-- calc and show telemetry process rate





--------------------------------------------------------------------------------
-- MENU VALUE,COMBO
--------------------------------------------------------------------------------

-----------------------
-- LIBRARY LOADING
-----------------------

--[[
  status of pending mavlite messages
]]


----------------------
--- COLORS
----------------------

--#define COLOR_LABEL 0x7BCF
--#define COLOR_BG 0x0169







local description = "HELI TUNE"
local labelWidth = 54
local columnWidth = 120
local boxes = {
}

--[[
VALUE
{ 
  1 name
  2 min  
  3 max 
  4 increment (float)
  5 unit of measure,
}
COMBO
{
  1 name, 
  2 label list, 
  3 value list, 
}
--]]local parameters = {
  -- row 1
  
  -- row 2
  {"ATC_RAT_RLL_P"        , 0.08, 0.35, 0.005       , x=3,y=32+43,label="P"},
  {"ATC_RAT_RLL_I"        , 0.01, 0.6, 0.01         , x=3,y=32+59,label="I"},
  {"ATC_RAT_RLL_D"        , 0.001, 0.03, 0.001      , x=3,y=32+75,label="D"},
  
  {"ATC_RAT_PIT_P"        , 0.08, 0.35, 0.005       , x=123,y=32+43,label="P"},
  {"ATC_RAT_PIT_I"        , 0.01, 0.6, 0.01         , x=123,y=32+59,label="I"},
  {"ATC_RAT_PIT_D"        , 0.001, 0.03, 0.001      , x=123,y=32+75,label="D"},
  
  {"ATC_RAT_YAW_P"        , 0.18, 0.6, 0.005        , x=243,y=32+43,label="P"},
  {"ATC_RAT_YAW_I"        , 0.01, 0.06, 0.01        , x=243,y=32+59,label="I"},
  {"ATC_RAT_YAW_D"        , 0.0, 0.02, 0.001        , x=243,y=32+75,label="D"},
}

return {
  list=parameters,
  description=description,
  boxes=boxes,
  labelWidth=labelWidth,
  columnWidth=columnWidth,
  listType=2 -- tuning panel
}
