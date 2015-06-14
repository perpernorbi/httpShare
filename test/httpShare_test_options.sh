#! /bin/sh
. ./httpShare_test_helpers

#------------------------------------------------------------------------------
# suite tests
#

testItIsWorking()
{
    assertEquals 'is it work?' 1 1
}

[ -n "${ZSH_VERSION:-}" ] && SHUNIT_PARENT=$0
. ${TH_SHUNIT}

