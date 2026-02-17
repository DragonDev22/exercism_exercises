const std = @import("std");
const ascii = std.ascii;

pub fn isIsogram(str: []const u8) bool {
    // Use a bitset for all 256 possible ASCII values
    var seen = std.StaticBitSet(256).initEmpty();

    for (str) |c| {
        // Typically isograms ignore case, spaces, and hyphens
        if (c == ' ' or c == '-') continue;
        
        const lower = ascii.toLower(c);
        if (seen.isSet(lower)) {
            return false;
        }
        seen.set(lower);
    }
    return true;
}