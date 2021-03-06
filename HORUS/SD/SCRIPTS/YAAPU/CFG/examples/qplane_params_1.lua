-- This file was automatically generated by FrskyLuaGCSGui

local description = "plane params"

local parameters = {
--[[
  This is the angle at which tailsitter aircraft will change from VTOL control to fixed wing control.
--]]
{"Q_TAILSIT_ANGLE",5,80,1,"",},

--[[
  Minimum gain scaling at high throttle/tilt angle
--]]
{"Q_TAILSIT_GSCMIN",0.1,1,1,"",},

--[[
  Bitmask of gain scaling methods to be applied: BOOST: boost gain at low throttle, ATT_THR: reduce gain at high throttle/tilt, INTERP: interpolate between fixed-wing and copter controls
--]]
{"Q_TAILSIT_GSCMSK",0,1000000,1,"",},

--[[
  This controls what channels have full manual control when hovering as a tailsitter and the Q_TAILSIT_MASKCH channel in high. This can be used to teach yourself to prop-hang a 3D plane by learning one or more channels at a time.
--]]
{"Q_TAILSIT_MASK",0,1000000,1,"",},

--[[
  This controls what input channel will activate the Q_TAILSIT_MASK mask. When this channel goes above 1700 then the pilot will have direct manual control of the output channels specified in Q_TAILSIT_MASK. Set to zero to disable.
--]]
{"Q_TAILSIT_MASKCH",{"Disabled","Channel1","Channel2","Channel3","Channel4","Channel5","Channel6","Channel7","Channel8",},{0,1,2,3,4,5,6,7,8,}},

--[[
  Bitmask of motors to remain active in forward flight for a 'copter' tailsitter. Non-zero indicates airframe is a tailsitter which pitches forward 90 degrees in forward flight modes.
--]]
{"Q_TAILSIT_MOTMX",0,1000000,1,"",},

--[[
  Maximum Allowed roll angle for tailsitters. If this is zero then Q_ANGLE_MAX is used.
--]]
{"Q_TAILSIT_RLL_MX",0,80,1,"deg",},

--[[
  Maximum value of throttle scaling for tailsitter velocity scaling, reduce this value to remove low throttle oscillations
--]]
{"Q_TAILSIT_THSCMX",1,5,1,"",},

--[[
  This controls the amount of vectored thrust control used in forward flight for a vectored tailsitter
--]]
{"Q_TAILSIT_VFGAIN",0,1,0.01,"",},

--[[
  This controls the amount of vectored thrust control used in hover for a vectored tailsitter
--]]
{"Q_TAILSIT_VHGAIN",0,1,0.01,"",},

--[[
  This controls the amount of extra pitch given to the vectored control when at high pitch errors
--]]
{"Q_TAILSIT_VHPOW",0,4,0.1,"",},

}
return { list = parameters,description = description}
