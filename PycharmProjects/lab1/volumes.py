#!/usr/bin/env python

from math import pi
from close import close
from words import letter_count


def cylinder_volumes(radius, height):

    if radius < 0 or height < 0:
        return None
    # end if

    return height * (pi * radius**2)

# end cylinder_volumes


def torus_volumes(major, minor):

    if major < 0 or minor < 0:
        return None
    # end if

    return 2 * pi**2 * major * minor**2

# end torus_volumes


if __name__ == '__main__':

    print cylinder_volumes(3, 4)

    print torus_volumes(7, 3)

    print close(1, 2, 3)

    print letter_count('halLway', 'L')
