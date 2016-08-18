sam3_p256_libboard
==================

Linux capable version of libboard for Olimex SAM3-P/H256.


Sources
-------

All source are from the Olimex and/or Atmel website for that device. Due to the fact that the links changes frequently i dont provide them. So the downloaded files are:

    SAM3S_softpack_2.1_for_CodeSourcery_2010q1.zip -> Atmel
    SAM3-P256_Demos_v1.2_01_May_2013.zip -> Olimex

The basic is the part of Olimex. Sadly Olimex dont provide makefiles for usage within linux, but that is provided by Atmel. So I use the library folder from Olimex as the basic and then copied the makefiles into it. After that I clean(ed) everthing and make it behave like a linux project.

Note: to see the changes, pls use git diff.


Requirement
-----------

To build the librarys you can/have use my ARM Cortex M3 SDK (https://github.com/tjohann/arm_cortex_sdk). Pls clone it and follow the instructions of https://github.com/tjohann/arm_cortex_sdk/README.md.


Build
-----

To build everthing do a

   make

This will build the librarys (libchip and libboard).


Install
-------

To install them do a

   make install

This will install them to ${ARM_CORTEX_HOME}/lib.
