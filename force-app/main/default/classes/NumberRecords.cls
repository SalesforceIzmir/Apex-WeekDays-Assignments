public class NumberRecords {
    public static void listOfNumbers() {
        List<Integer>nmbr = new List<Integer>{6,8,4,12,9,56,67};
        system.debug(nmbr);

        system.debug('Is the list contains the number 4 ? ' + nmbr.contains(4));

    }
}
