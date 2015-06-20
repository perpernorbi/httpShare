#! /bin/sh
. ./httpShare_test_helpers

#------------------------------------------------------------------------------
# suite tests
#

testWithFile()
{
    PORT="DefaultValue"
    INTERFACE="DefaultValue"
    fetchConfigFileParams "test_fetchParameterFromFile.cfg"
    assertEquals "fetchConfigFileParams returned non-zero value. Maybe file is missing?" "0" "$?" 
    assertEquals "portFromConfigFile" "${PORT}" 
    assertEquals "interfaceFromConfigFile" "${INTERFACE}" 
}

oneTimeSetUp()
{
    th_oneTimeSetUp
}

[ -n "${ZSH_VERSION:-}" ] && SHUNIT_PARENT=$0
. ${TH_SHUNIT}

