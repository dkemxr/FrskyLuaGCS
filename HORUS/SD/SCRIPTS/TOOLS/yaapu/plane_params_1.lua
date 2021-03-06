local description = "Plane Params"
--[[
VALUE
{ 
  1 name,
  2 min,  
  3 max, 
  4 increment
  5 unit of measure, 
}

COMBO
{
  1 name, 
  2 label list, 
  3 value list, 
}
--]]local parameters = {
  --[[
    This sets which parameter or set of parameters will be tuned. Values greater than 100 indicate a set of parameters rather than a single parameter. Parameters less than 50 are for QuadPlane vertical lift motors only.
  --]]  {"TUNE_PARAM",{"None","RateRollPI","RateRollP","RateRollI","RateRollD","RatePitchPI","RatePitchP","RatePitchI","RatePitchD","RateYawPI","RateYawP","RateYawI","RateYawD","AngleRollP","AnglePitchP","AngleYawP","PosXYP","PosZP","VelXYP","VelXYI","VelZP","AccelZP","AccelZI","AccelZD","FixedWingRollP","FixedWingRollI","FixedWingRollD","FixedWingRollFF","FixedWingPitchP","FixedWingPitchI","FixedWingPitchD","FixedWingPitchFF","Set_RateRollPitch","Set_RateRoll","Set_RatePitch","Set_RateYaw","Set_AngleRollPitch","Set_VelXY","Set_AccelZ",},{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,50,51,52,53,54,55,56,57,101,102,103,104,105,106,107,}},
  --[[
    This sets the range over which tuning will change a parameter. A value of 2 means the tuning parameter will go from 0.5 times the start value to 2x the start value over the range of the tuning channel
  --]]  {"TUNE_RANGE",0,1000000,1,"",},
  {"QWERT_QWERT_QWER",{"QWERT_QWERT_QWERT_QWERT_QWERT_QWERT_QWERT_QWERT_QWERT"},{1},value=1},
}

return {list=parameters,description=description}
