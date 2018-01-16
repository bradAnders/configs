#!/usr/bin/env python

from math import fabs


def close(a, b, diff):

    if fabs(a-b) < diff:
        return True
    else:
        return False
    # end if

# end close
