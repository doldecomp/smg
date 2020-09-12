# very experimental python script that goes through a linker error file and resolves any undefined labels while splitting

with open("out.txt", "r") as f:
	lines = f.readlines()
    
lbls = []
 
for line in lines:
    if "undefined" in line:
        splitLine = line.split(" ")
    
        for spl in splitLine:
            if spl.startswith("lbl_"):
                lbls.append(spl.strip("\n"))
                
with open("asm/Game/AudioLib/AudioLib.s", "r") as asm:
    asms = asm.readlines()

prevLine = ""
output = []
 
for l in asms:
    l = l.strip("\n")

    if l.startswith("lbl"):
        if prevLine.startswith(".global"):
            prevLine = l
            output.append(l + "\n")
            continue
        else:
            for lbl in lbls:
                lstr = l.strip(":")

                if lstr == lbl:
                    output.append(f".global {lbl}\n")
                    prevLine = l
                    break
                  
    output.append(l + "\n")
    prevLine = l
    
with open("AudioLib_o.asm", "w") as w:
    for o in output:
        w.write(o)