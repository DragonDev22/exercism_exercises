const std = @import("std");

pub fn squareRoot(radicand: usize) usize {
    var L: usize = 0;
    var R: usize = radicand + 1;
    var M: usize = 0;

    while (L != R - 1) {
        M = (L + R) / 2;
        if (M * M <= radicand) {
            L = M;
        } else {
            R = M;
        }
    }

    return L;
}
