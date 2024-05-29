# Lauren L Rodgers, Michael N Weedon, William E Henley, Andrew T Hattersley, Beverley M Shields, 2024.

import sys, csv, re

codes = [{"code":"8Hj5.00","system":"readv2"},{"code":"9OLF.00","system":"readv2"},{"code":"67H9.00","system":"readv2"},{"code":"8I94.00","system":"readv2"},{"code":"8Hj3.00","system":"readv2"},{"code":"9OLL.00","system":"readv2"},{"code":"9NiA.00","system":"readv2"},{"code":"8I82.00","system":"readv2"},{"code":"66Af.00","system":"readv2"},{"code":"9OLH.00","system":"readv2"},{"code":"67HA.00","system":"readv2"},{"code":"9OLM.00","system":"readv2"},{"code":"9OLB.00","system":"readv2"},{"code":"8I83.00","system":"readv2"},{"code":"9OLK.00","system":"readv2"},{"code":"3881","system":"readv2"},{"code":"8I84.00","system":"readv2"},{"code":"9NiE.00","system":"readv2"},{"code":"9NiD.00","system":"readv2"},{"code":"679L.00","system":"readv2"},{"code":"8Hj4.00","system":"readv2"},{"code":"679R.00","system":"readv2"},{"code":"8Hj0.00","system":"readv2"},{"code":"9OLG.00","system":"readv2"},{"code":"9OLJ.00","system":"readv2"},{"code":"ZRBa.00","system":"readv2"},{"code":"9NiC.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('type-2-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["type-2-diabetes-diagnostic-codes-educa---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["type-2-diabetes-diagnostic-codes-educa---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["type-2-diabetes-diagnostic-codes-educa---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
