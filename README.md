CRC8 library functions
======================

The code is copied unaltered from the mainstream Linux kernel.

This repository is only useful in situations where an external kernel module
should be compiled that requires CRC8 functionality. If the existing kernel
does not include CRC8 support, this module can be compiled as external module
as well.

More information about using symbols from another external modules can be found
in https://www.kernel.org/doc/Documentation/kbuild/modules.txt, section 6.3.
