# Lauren L Rodgers, Michael N Weedon, William E Henley, Andrew T Hattersley, Beverley M Shields, 2024.

import sys, csv, re

codes = [{"code":"66AS000","system":"readv2"},{"code":"9NN9.00","system":"readv2"},{"code":"66AQ100","system":"readv2"},{"code":"9NN8.00","system":"readv2"},{"code":"66AQ.00","system":"readv2"},{"code":"66AU.00","system":"readv2"},{"code":"8HgC.00","system":"readv2"},{"code":"8CS0.00","system":"readv2"},{"code":"8IE2.00","system":"readv2"},{"code":"8Hj1.00","system":"readv2"},{"code":"ZL22500","system":"readv2"},{"code":"679L300","system":"readv2"},{"code":"66AQ000","system":"readv2"},{"code":"8CP2.00","system":"readv2"},{"code":"8Hg4.00","system":"readv2"},{"code":"66AX.00","system":"readv2"},{"code":"9OLC.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-diagnostic-codes-carer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-diagnostic-codes-carer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-diagnostic-codes-carer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
