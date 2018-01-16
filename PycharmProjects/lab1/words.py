#!/usr/bin/env python


def letter_count(string1, string2):

    if not len(string2) == 1:
        return None
    # end if

    return string1.lower().count(string2.lower(), 0, len(string1.lower()))

# end letter_count
