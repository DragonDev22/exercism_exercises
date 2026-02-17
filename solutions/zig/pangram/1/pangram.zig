const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    // Initialize the seen_letters array to false
    var seen_letters: [26]bool = undefined;
    for (seen_letters, 0..) |_, i| {
        seen_letters[i] = false;
    }

    // Convert the input string to lowercase and check each character
    for (str) |c| {
        const lower_c = std.ascii.toLower(c);
        if (lower_c >= 'a' and lower_c <= 'z') {
            const index = lower_c - 'a';
            seen_letters[index] = true;
        }
    }

    // Check if all letters have been seen
    var is_pangram: bool = true;
    for (seen_letters) |letter| {
        if (!letter) {
            is_pangram = false;
            break;
        }
    }

    return is_pangram;
}
