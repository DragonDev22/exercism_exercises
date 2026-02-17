pub fn isLeapYear(year: usize) bool {
    // If the year is NOT divisable by 4, it is not a leap year.
    if (year % 4 != 0) {
        return false;
    }

    // If it's divisable by 100, it *could* be a leap year.
    if (year % 100 == 0) {
        // If divisible by 400, it's a leap year, otherwise it's not.
        if (year % 400 == 0) {
            return true;
        }
        return false;
    }
    return true;
}
