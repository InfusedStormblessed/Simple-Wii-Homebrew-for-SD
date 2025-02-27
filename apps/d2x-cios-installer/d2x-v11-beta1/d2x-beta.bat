::d2x-beta.bat should be saved here in order for ModMii v4.6.0+ to use it: modules\More-cIOSs\{ANY FOLDER NAME}\d2x-beta.bat

::--------update what comes after "d2x-beta-rev=" and "ciosversion=" below----------

set ciosversion=21011
::must be <=65535
::if ciosversion above is different from version in ciosmaps.xml, then ModMii v6.5.2 or higher required to build it successfully

set d2x-beta-rev=11-beta1
::This info is used to sign *00.app file for cIOS detection, everything after "=" but before the first "-" is considered the version # and it must be a number! Good examples are "5-beta1-test1" or "5" or "999". Bad examples are "5beta1" or "five-beta1" or "-5-beta1"
::everything after the first "-" is considered the version string (limited by 16 chars) and it only recognizes letters, numbers and + - _ ( ) [ ]

set cIOSFamilyName=d2x
::Only change this if building a cIOS that isn't a "d2x" branded cIOS. This string is limited by 16 chars and it only recognizes letters, numbers and + - _ ( ) [ ]


if "%wadname%"=="" goto:endofd2xbat

::------------------------Section to update (below)--------------------
::here you should enter the new beta cIOS hashes (under the OLD non-beta "wadname")
if /i "%wadname:~0,17%" EQU "cIOS249[37]-d2x-v" set md5=416b8ace56bba3414972389eebc7107e
if /i "%wadname:~0,17%" EQU "cIOS250[37]-d2x-v" set md5=3ed5c84c30cff03a54296da4fff017b3
if /i "%wadname:~0,17%" EQU "cIOS249[38]-d2x-v" set md5=fe778040f8b3d8e60a5899dbc216b02a
if /i "%wadname:~0,17%" EQU "cIOS250[38]-d2x-v" set md5=256a2f93b3b5e4d0f28aa16386fd6d13
if /i "%wadname:~0,17%" EQU "cIOS249[53]-d2x-v" set md5=64aa732b55a24ed5d7c30209ef4bb98f
if /i "%wadname:~0,17%" EQU "cIOS250[53]-d2x-v" set md5=bbf2c129b05ecb29a075248d2df9b747
if /i "%wadname:~0,17%" EQU "cIOS249[55]-d2x-v" set md5=bc3088589b47c3116182f9f46179ef30
if /i "%wadname:~0,17%" EQU "cIOS250[55]-d2x-v" set md5=4c9e823a1d58404648ba7eb522e4b10e
if /i "%wadname:~0,17%" EQU "cIOS249[56]-d2x-v" set md5=71119fe575fc98cc84578d8755ac9b64
if /i "%wadname:~0,17%" EQU "cIOS250[56]-d2x-v" set md5=71c15b497f7e9d5eb78cd00163990dad
if /i "%wadname:~0,17%" EQU "cIOS249[57]-d2x-v" set md5=761d402cb0c95496dfcf4bbd5a55fd8f
if /i "%wadname:~0,17%" EQU "cIOS250[57]-d2x-v" set md5=f239a48c45a2ebcfe74631474b40a1a8
if /i "%wadname:~0,17%" EQU "cIOS249[58]-d2x-v" set md5=b497a83cc81d0ef318fa4e44566d4321
if /i "%wadname:~0,17%" EQU "cIOS250[58]-d2x-v" set md5=63ea74ec12b4ae9d569fd9e64f02c057
if /i "%wadname:~0,17%" EQU "cIOS249[60]-d2x-v" set md5=9d9d1544dd01487add4bc3e407d3be43
if /i "%wadname:~0,17%" EQU "cIOS250[60]-d2x-v" set md5=2df0cf456b3b45443fb7ae184d2a6473
if /i "%wadname:~0,17%" EQU "cIOS249[70]-d2x-v" set md5=6d223e80f3331d5e7af3570896e6a0df
if /i "%wadname:~0,17%" EQU "cIOS250[70]-d2x-v" set md5=b7c682d4d328e921d968830814491aa7
if /i "%wadname:~0,17%" EQU "cIOS249[80]-d2x-v" set md5=1364b02a4afa297f53ebb8caac37c3ca
if /i "%wadname:~0,17%" EQU "cIOS250[80]-d2x-v" set md5=758de3fd73deb9e947cea9ffb16c56f2
if /i "%wadname:~0,17%" EQU "cIOS251[38]-d2x-v" set md5=ff99258eaa43fbb9cd37c5ecff815658
::------------------------Section to update (above)--------------------

::----------Additional Instructions---------------
::save any of the following beta files to the following directory
::if any of the following is not found, the standard d2x module used in the previous ModMii release will continue to be used
::modules\More-cIOSs\{ANY FOLDER NAME}\MLOAD.app
::modules\More-cIOSs\{ANY FOLDER NAME}\FAT.app
::modules\More-cIOSs\{ANY FOLDER NAME}\EHCI.app
::modules\More-cIOSs\{ANY FOLDER NAME}\USBS.app
::modules\More-cIOSs\{ANY FOLDER NAME}\DIPP.app
::modules\More-cIOSs\{ANY FOLDER NAME}\ES.app
::modules\More-cIOSs\{ANY FOLDER NAME}\FFSP.app
::------------------------------------------------------

set md5alt=%md5%

::change some variables
set wadname=%wadname:~0,17%%d2x-beta-rev%
if /i "%name:~0,17%" NEQ "Advanced Download" set name=%wadname%

:endofd2xbat 

