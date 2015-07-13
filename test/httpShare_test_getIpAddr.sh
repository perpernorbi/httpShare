#! /bin/sh
. ./httpShare_test_helpers

#------------------------------------------------------------------------------
# suite tests
#

#MOC shells IP command
ip()
{
    echo "${IPMOCSTRING}"
}

testMOCWorks()
{
    IPMOCSTRING="foo"
    local RETVAL="$(ip test params)"
    ip test params > /dev/null

    assertEquals "foo" "${RETVAL}"
}

testHasIp()
{
    IPMOCSTRING="3: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 00:00:00:00:00:00 brd ff:ff:ff:ff:ff:ff
    inet 192.168.10.12/24 brd 192.168.10.255 scope global wlan0
       valid_lft forever preferred_lft forever
    inet6 fe80::222:faff:fe0c:2e3c/64 scope link 
       valid_lft forever preferred_lft forever
"
    local INTERFACE="eth0"
    local RETVAL="$(getIpAddress)"

    assertEquals "192.168.10.12" "${RETVAL}"
}

testNoIp()
{
    IPMOCSTRING="2: eth0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast state DOWN group default qlen 1000
    link/ether 00:00:00:00:00:00 brd ff:ff:ff:ff:ff:ff"
    local INTERFACE="eth0"
    local RETVAL="$(getIpAddress)"

    assertEquals "" "${RETVAL}"
}

oneTimeSetUp()
{
    th_oneTimeSetUp
}

[ -n "${ZSH_VERSION:-}" ] && SHUNIT_PARENT=$0
. ${TH_SHUNIT}

