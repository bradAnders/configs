#!/usr/bin/env python

from math import fabs


def close(a, b, diff):

    if fabs(a-b) < diff:
        return True
    else:
        return False
    # end if

# end close
if __name__ == '__main__':

    print close(1, 2, 3)
