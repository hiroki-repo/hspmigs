//MiGS Stabilizer by Gocaine Project
#module formage_token
#undef repeat
#define global repeat(%1=-1,%2="000abs") if %2="000abs"{}else{repeatcntex@formage_token=1}:repeat@hsp:if repeatcntex@formage_token=1 and cnt=0{repeatcntex@formage_token=0:continue %2}:if (cnt=%1+int(%2))*(int(%2)>=0) or (cnt=%1)*(int(%2)<0){break}
#undef instr
#defcfunc instr var prm_0,int prm_1,str prm_2
prm_0x=prm_0:ret=-1:prm_2x=prm_2
return instr@hsp(prm_0x,int(prm_1),str(prm_2x))
for i,prm_1,strlen(prm_0x)-prm_1,1
if strmid(prm_0x,i,strlen(prm_2x))=prm_2x{ret=i:_break}
next
return ret
#global
