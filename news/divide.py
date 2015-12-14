lnum=0
cnum=0
content1=[]
with open("output") as f:
    content = f.readlines()
for line in content:
	lnum=lnum+1
	#if (line=="")
	if (line == "\n"):
		cnum=cnum+1 
		print str(cnum)+"\t"+content[lnum][:-1]
lnum=0
cnum=0
#for line in content:
#	str2=str(cnum)+str(lnum)+ "\t"+line
 #       content1.append(str2[:-1])
#	#print content[lnum]
#	lnum=lnum+1
#        #if (line=="")
#        if (line == "\n"):
#                cnum=cnum+1
#		lnum=0
cnum=0
for line in content:
        lnum=lnum+1
        #if (line=="")
        if (line == "\n"):
                cnum=cnum+1
	if(cnum==1):
		print line[:-1]
	if(cnum>1):
		break
num=0
lnum=0
choice = input("\nSelect a category : \n")
for line in content:
	lnum=lnum+1
        if (line=="\n"):
        #if line[:-1].isdigit():
                num=num+1
	if (choice == num):
		print "\t"+line[:-1]
	#print line

