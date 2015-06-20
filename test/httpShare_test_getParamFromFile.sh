#! /bin/sh
. ./httpShare_test_helpers

#------------------------------------------------------------------------------
# suite tests
#

testDefaultValue()
{
    local RETVAL="$(getParamFromFile "test_getParamFromFile.cfg" "notInFile" "DefaultValue")"
    assertEquals "DefaultValue" "${RETVAL}" 
}

testSpaceOnTheLeft()
{
    local RETVAL="$(getParamFromFile "test_getParamFromFile.cfg" "leftspace" "DefaultValue")"
    assertEquals "spaceOnTheLeft" "${RETVAL}" 
}

testSpaceOnTheRight()
{
    local RETVAL="$(getParamFromFile "test_getParamFromFile.cfg" "rightspace" "DefaultValue")"
    assertEquals "spaceOnTheRight" "${RETVAL}" 
}

testSpaceOnBothSide()
{
    local RETVAL="$(getParamFromFile "test_getParamFromFile.cfg" "bothspace" "DefaultValue")"
    assertEquals "spaceOnBothSide" "${RETVAL}" 
}

oneTimeSetUp()
{
    th_oneTimeSetUp
}

[ -n "${ZSH_VERSION:-}" ] && SHUNIT_PARENT=$0
. ${TH_SHUNIT}

