# Lauren L Rodgers, Michael N Weedon, William E Henley, Andrew T Hattersley, Beverley M Shields, 2024.

import sys, csv, re

codes = [{"code":"66AH200","system":"readv2"},{"code":"9N0o.00","system":"readv2"},{"code":"9N0n.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["special-type-2-diabetes-diagnostic-codes---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["special-type-2-diabetes-diagnostic-codes---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["special-type-2-diabetes-diagnostic-codes---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
