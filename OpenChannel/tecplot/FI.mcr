#!MC 1120
# Created by Tecplot 360 build 11.3.29.563
$!READDATASET  '"fort.500" '
  READDATAOPTION = NEW
  RESETSTYLE = YES
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  VARLOADMODE = BYNAME
  ASSIGNSTRANDIDS = YES
  INITIALPLOTTYPE = CARTESIAN3D
  VARNAMELIST = '"x" "y" "z" "p"'
$!GLOBALCONTOUR 1  VAR = 4
$!ISOSURFACELAYERS SHOW = YES
$!ISOSURFACEATTRIBUTES 1  ISOVALUE1 = 0.5

$!VarSet |first_zone| = |NUMZONES|
$!VarSet |first_zone| += 1
$!EXTENDEDCOMMAND 
  COMMANDPROCESSORID = 'Extract Over Time'
  COMMAND = 'ExtractIsoSurfaceOverTime'
$!WRITEDATASET  "FI.plt"
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  INCLUDEDATASHARELINKAGE = YES
  ASSOCIATELAYOUTWITHDATAFILE = NO
  ZONELIST =  [|first_zone|-|NUMZONES|]
  VARPOSITIONLIST =  [1-3]
  BINARY = YES
  USEPOINTFORMAT = NO
  PRECISION = 9
$!RemoveVar |MFBD|
