//MiGS Stabilizer by Gocaine Project
#module formage_token
#undef repeat
#define global repeat(%1=-1,%2="000abs") repeat@hsp:if %2="000abs"{}else{if cnt=0{continue %2}}:if cnt=%1+int(%2){break}
#undef instr
#defcfunc instr var prm_0,int prm_1,str prm_2
prm_0x=prm_0:ret=-1
for i,prm_1,strlen(prm_0x)-prm_1,1
if strmid(prm_0x,i,1)=prm_2{ret=i:_break}
next
return ret
#global
