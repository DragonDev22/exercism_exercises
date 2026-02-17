pub const NucleotideError = error{Invalid};

pub const Counts = struct {
    a: u32,
    c: u32,
    g: u32,
    t: u32,
};

pub fn countNucleotides(s: []const u8) NucleotideError!Counts {
    var nucleotide_counts = Counts{ .a = 0, .c = 0, .g = 0, .t = 0 };
    for (s) |c| {
        switch (c) {
            'A' => nucleotide_counts.a += 1,
            'C' => nucleotide_counts.c += 1,
            'G' => nucleotide_counts.g += 1,
            'T' => nucleotide_counts.t += 1,
            else => return NucleotideError.Invalid,
        }
    }
    return nucleotide_counts;
}
