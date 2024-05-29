# Lauren L Rodgers, Michael N Weedon, William E Henley, Andrew T Hattersley, Beverley M Shields, 2024.

import sys, csv, re

codes = [{"code":"C10E.11","system":"readv2"},{"code":"14O8000","system":"readv2"},{"code":"C10F.00","system":"readv2"},{"code":"L180400","system":"readv2"},{"code":"C10E.00","system":"readv2"},{"code":"C10..00","system":"readv2"},{"code":"1434","system":"readv2"},{"code":"C109.13","system":"readv2"},{"code":"C108.12","system":"readv2"},{"code":"14O8.00","system":"readv2"},{"code":"C109.12","system":"readv2"},{"code":"Kyu0300","system":"readv2"},{"code":"Cyu2.00","system":"readv2"},{"code":"C10FS00","system":"readv2"},{"code":"1JL..00","system":"readv2"},{"code":"C10F.11","system":"readv2"},{"code":"C108.13","system":"readv2"},{"code":"C10M.00","system":"readv2"},{"code":"1252","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-diagnostic-codes-mellitus---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-diagnostic-codes-mellitus---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-diagnostic-codes-mellitus---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
