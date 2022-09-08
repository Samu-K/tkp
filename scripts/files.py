# Generates files

import os

info = dict()

with open("info.txt","r") as f:
    for l in f:
        spl = l.strip().split(":")
        info[str(spl[0])] = str(spl[1])

    f.close()

try:
    exnum = int(input("How many excercises? "))
    partnum = str(input("What part is it? "))
except ValueError:
    print("Use full number")

os.mkdir(f"H{partnum}")

for ex in range(1,exnum+1):
    filename = f"datadb100_h{partnum}_t{ex}_{info['stdnum']}.sql"

    with open(f"H{partnum}/{filename}","w") as f:
        f.write(f"-- {info['course']}")
        f.write("\n")
        f.write(f"-- H{partnum} T{ex}")
        f.write("\n")
        f.write(f"-- {info['email']}")
        f.write("\n")
        f.close()

print("Done")
