#!/bin/sh
###############################################################################
##                                                                           ##
##       Script to build GCC toolchain for a native target (e.g. x86)        ##
##                                                                           ## 
##---------------------------------------------------------------------------##
## File:     build-native-toolchain.sh                                       ##
## Author:   Ulrich Becker <u.becker@gsi.de>                                 ##
## Company:  GSI Helmholtz Centre for Heavy Ion Research GmbH                ##
## Date:     18.07.2022                                                      ##
## Revision: Jannis Schönleber                                               ##
###############################################################################
TARGET=$(uname -m)

ENABLE_CPP=true
# ENABLE_ADA=false
ENABLE_FORTRAN=true
# ENABLE_D=false
# ENABLE_OBJ_C=true
# ENABLE_OBJ_CPP=true
# ENANLE_GO=false
# ENABLE_BRIG=false
# ENABLE_JAVA=true

make_third_stage()
{
   [ $VERBOSE ] && echo "INFO: Nothing additional work for target $(uname -m) in third stage."
}

echo $PWD

source ./build-toolchain.sh

#=================================== EOF ======================================
