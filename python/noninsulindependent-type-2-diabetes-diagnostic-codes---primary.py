# Lauren L Rodgers, Michael N Weedon, William E Henley, Andrew T Hattersley, Beverley M Shields, 2024.

import sys, csv, re

codes = [{"code":"C108800","system":"readv2"},{"code":"C108.00","system":"readv2"},{"code":"C10E612","system":"readv2"},{"code":"C10FJ00","system":"readv2"},{"code":"C100112","system":"readv2"},{"code":"C109J00","system":"readv2"},{"code":"C109000","system":"readv2"},{"code":"C108900","system":"readv2"},{"code":"C10FJ11","system":"readv2"},{"code":"C10E.12","system":"readv2"},{"code":"C100011","system":"readv2"},{"code":"C10E812","system":"readv2"},{"code":"C109J11","system":"readv2"},{"code":"C10E912","system":"readv2"},{"code":"C109J12","system":"readv2"},{"code":"C109.11","system":"readv2"},{"code":"C109.00","system":"readv2"},{"code":"C108.11","system":"readv2"},{"code":"C108600","system":"readv2"},{"code":"C108300","system":"readv2"},{"code":"C10E312","system":"readv2"},{"code":"ZRbH.00","system":"readv2"},{"code":"C109900","system":"readv2"},{"code":"ZC2C911","system":"readv2"},{"code":"C109500","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["noninsulindependent-type-2-diabetes-diagnostic-codes---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["noninsulindependent-type-2-diabetes-diagnostic-codes---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["noninsulindependent-type-2-diabetes-diagnostic-codes---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
