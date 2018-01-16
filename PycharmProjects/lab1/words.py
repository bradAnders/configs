#!/usr/bin/env python


def letter_count(string1, string2):

    if not len(string2) == 1:
        return None
    # end if

    return string1.lower().count(string2, beg=0, end=len(string1))

# end letter_count
