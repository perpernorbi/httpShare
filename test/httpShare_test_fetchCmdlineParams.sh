#! /bin/sh
. ./httpShare_test_helpers

#------------------------------------------------------------------------------
# suite tests
#

setUp()
{
    INTERFACE="interface"
    PORT="port"
}

testNoParams()
{
    fetchCmdlineParams
    
    assertEquals "interface" "${INTERFACE}"  
    assertEquals "port" "${PORT}"  
}

testPort()
{
    fetchCmdlineParams -p newPort
    assertEquals "newPort" "${PORT}" 

    unset PORT

    fetchCmdlineParams --port newPort
    assertEquals "newPort" "${PORT}" 
}

testInterface()
{
    fetchCmdlineParams -i newInterface
    assertEquals "newInterface" "${INTERFACE}" 

    unset INTERFACE

    fetchCmdlineParams --interface newInterface
    assertEquals "newInterface" "${INTERFACE}" 
}

oneTimeSetUp()
{
    th_oneTimeSetUp
}

[ -n "${ZSH_VERSION:-}" ] && SHUNIT_PARENT=$0
. ${TH_SHUNIT}

