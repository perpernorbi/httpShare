#! /bin/sh
. ./httpShare_test_helpers

#------------------------------------------------------------------------------
# suite tests
#

testFetchPort()
{
    local HTTPSHARE_PORT="1234"
    fetchEnvironmentParams
    assertEquals "${PORT}" "${HTTPSHARE_PORT}" 
}

testFetchInterface()
{
    local HTTPSHARE_INTERFACE="eth0"
    fetchEnvironmentParams
    assertEquals "${INTERFACE}" "${HTTPSHARE_INTERFACE}" 
}

oneTimeSetUp()
{
    th_oneTimeSetUp
}

[ -n "${ZSH_VERSION:-}" ] && SHUNIT_PARENT=$0
. ${TH_SHUNIT}

