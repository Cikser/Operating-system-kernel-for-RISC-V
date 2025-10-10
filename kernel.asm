
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9a013103          	ld	sp,-1632(sp) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1d5060ef          	jal	ra,800069f0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function

_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	5d4010ef          	jal	ra,80002658 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index*8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0*8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
void* mem_alloc(size_t size){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    size_t blockNum = size/MEM_BLOCK_SIZE;
    80001150:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE != 0)
    80001154:	03f57513          	andi	a0,a0,63
    80001158:	00050463          	beqz	a0,80001160 <_Z9mem_allocm+0x1c>
        blockNum++;
    8000115c:	00178793          	addi	a5,a5,1

    __asm__ volatile("mv a1, %0" : : "r" (blockNum));
    80001160:	00078593          	mv	a1,a5
    __asm__ volatile("li a0, 0x1");
    80001164:	00100513          	li	a0,1

    __asm__ volatile("ecall");
    80001168:	00000073          	ecall

    uint64 addr;
    __asm__ volatile("mv %[addr], a0" : [addr] "=r" (addr));
    8000116c:	00050513          	mv	a0,a0
    return (void*)addr;
}
    80001170:	00813403          	ld	s0,8(sp)
    80001174:	01010113          	addi	sp,sp,16
    80001178:	00008067          	ret

000000008000117c <_Z8mem_freePv>:

int mem_free(void* mem){
    8000117c:	fe010113          	addi	sp,sp,-32
    80001180:	00813c23          	sd	s0,24(sp)
    80001184:	02010413          	addi	s0,sp,32
    volatile uint64 addr = (uint64)mem;
    80001188:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("mv a1, %0" : : "r" (addr));
    8000118c:	fe843783          	ld	a5,-24(s0)
    80001190:	00078593          	mv	a1,a5
    __asm__ volatile("li a0, 0x2");
    80001194:	00200513          	li	a0,2

    __asm__ volatile("ecall");
    80001198:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    8000119c:	00050513          	mv	a0,a0
    return status;
}
    800011a0:	0005051b          	sext.w	a0,a0
    800011a4:	01813403          	ld	s0,24(sp)
    800011a8:	02010113          	addi	sp,sp,32
    800011ac:	00008067          	ret

00000000800011b0 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space(){
    800011b0:	ff010113          	addi	sp,sp,-16
    800011b4:	00813423          	sd	s0,8(sp)
    800011b8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x3");
    800011bc:	00300513          	li	a0,3

    __asm__ volatile("ecall");
    800011c0:	00000073          	ecall

    size_t size;
    __asm__ volatile("mv %0, a0" : "=r" (size));
    800011c4:	00050513          	mv	a0,a0
    return size;
}
    800011c8:	00813403          	ld	s0,8(sp)
    800011cc:	01010113          	addi	sp,sp,16
    800011d0:	00008067          	ret

00000000800011d4 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block(){
    800011d4:	ff010113          	addi	sp,sp,-16
    800011d8:	00813423          	sd	s0,8(sp)
    800011dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x4");
    800011e0:	00400513          	li	a0,4

    __asm__ volatile("ecall");
    800011e4:	00000073          	ecall

    size_t size;
    __asm__ volatile("mv %[size], a0" : [size] "=r" (size));
    800011e8:	00050513          	mv	a0,a0
    return size;
}
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret

00000000800011f8 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg){
    800011f8:	fd010113          	addi	sp,sp,-48
    800011fc:	02113423          	sd	ra,40(sp)
    80001200:	02813023          	sd	s0,32(sp)
    80001204:	00913c23          	sd	s1,24(sp)
    80001208:	01213823          	sd	s2,16(sp)
    8000120c:	01313423          	sd	s3,8(sp)
    80001210:	03010413          	addi	s0,sp,48
    80001214:	00050493          	mv	s1,a0
    80001218:	00058913          	mv	s2,a1
    8000121c:	00060993          	mv	s3,a2
    volatile void* stack = mem_alloc(DEFAULT_STACK_SIZE*sizeof(uint64));
    80001220:	00008537          	lui	a0,0x8
    80001224:	00000097          	auipc	ra,0x0
    80001228:	f20080e7          	jalr	-224(ra) # 80001144 <_Z9mem_allocm>
    __asm__ volatile("mv a4, %0" : : "r" ((uint64)stack));
    8000122c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : "r" ((uint64)arg));
    80001230:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" ((uint64)start_routine));
    80001234:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r" ((uint64)handle));
    80001238:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x11");
    8000123c:	01100513          	li	a0,17

    __asm__ volatile("ecall");
    80001240:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    80001244:	00050513          	mv	a0,a0
    return status;
}
    80001248:	0005051b          	sext.w	a0,a0
    8000124c:	02813083          	ld	ra,40(sp)
    80001250:	02013403          	ld	s0,32(sp)
    80001254:	01813483          	ld	s1,24(sp)
    80001258:	01013903          	ld	s2,16(sp)
    8000125c:	00813983          	ld	s3,8(sp)
    80001260:	03010113          	addi	sp,sp,48
    80001264:	00008067          	ret

0000000080001268 <_Z11thread_exitv>:

int thread_exit(){
    80001268:	ff010113          	addi	sp,sp,-16
    8000126c:	00813423          	sd	s0,8(sp)
    80001270:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001274:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001278:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    8000127c:	00050513          	mv	a0,a0
    return status;
}
    80001280:	0005051b          	sext.w	a0,a0
    80001284:	00813403          	ld	s0,8(sp)
    80001288:	01010113          	addi	sp,sp,16
    8000128c:	00008067          	ret

0000000080001290 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001290:	ff010113          	addi	sp,sp,-16
    80001294:	00813423          	sd	s0,8(sp)
    80001298:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    8000129c:	01300513          	li	a0,19

    __asm__ volatile("ecall");
    800012a0:	00000073          	ecall

}
    800012a4:	00813403          	ld	s0,8(sp)
    800012a8:	01010113          	addi	sp,sp,16
    800012ac:	00008067          	ret

00000000800012b0 <_Z11thread_joinPP7_threadm>:

void thread_join(thread_t* handle, time_t t){
    800012b0:	ff010113          	addi	sp,sp,-16
    800012b4:	00813423          	sd	s0,8(sp)
    800012b8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" : : "r"((uint64)t));
    800012bc:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"((uint64)handle));
    800012c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    800012c4:	01400513          	li	a0,20
    __asm__ volatile("ecall");
    800012c8:	00000073          	ecall
}
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00813423          	sd	s0,8(sp)
    800012e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, a1");
    800012e4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    800012e8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800012ec:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    800012f0:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    800012f4:	00050513          	mv	a0,a0
    return status;
}
    800012f8:	0005051b          	sext.w	a0,a0
    800012fc:	00813403          	ld	s0,8(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle){
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00813423          	sd	s0,8(sp)
    80001310:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001314:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001318:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000131c:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    80001320:	00050513          	mv	a0,a0
    return status;
}
    80001324:	0005051b          	sext.w	a0,a0
    80001328:	00813403          	ld	s0,8(sp)
    8000132c:	01010113          	addi	sp,sp,16
    80001330:	00008067          	ret

0000000080001334 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00813423          	sd	s0,8(sp)
    8000133c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001340:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001344:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80001348:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    8000134c:	00050513          	mv	a0,a0
    return status;
}
    80001350:	0005051b          	sext.w	a0,a0
    80001354:	00813403          	ld	s0,8(sp)
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00813423          	sd	s0,8(sp)
    80001368:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    8000136c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001370:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80001374:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    80001378:	00050513          	mv	a0,a0
    return status;
}
    8000137c:	0005051b          	sext.w	a0,a0
    80001380:	00813403          	ld	s0,8(sp)
    80001384:	01010113          	addi	sp,sp,16
    80001388:	00008067          	ret

000000008000138c <_Z10time_sleepm>:

int time_sleep(time_t) {
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001398:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000139c:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    800013a0:	00000073          	ecall

    int status;
    __asm__ volatile("mv %[status], a0" : [status] "=r" (status));
    800013a4:	00050513          	mv	a0,a0
    return status;
}
    800013a8:	0005051b          	sext.w	a0,a0
    800013ac:	00813403          	ld	s0,8(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_Z4getcv>:

char getc(){
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800013c4:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800013c8:	00000073          	ecall

    char out;
    __asm__ volatile("mv %[out], a0" : [out] "=r" (out));
    800013cc:	00050513          	mv	a0,a0
    return out;
}
    800013d0:	0ff57513          	andi	a0,a0,255
    800013d4:	00813403          	ld	s0,8(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_Z4putcc>:


void putc(char c){
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    800013ec:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800013f0:	04200513          	li	a0,66

    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall

    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_ZN3Sem5blockEv>:
        val++;
    else
        unblock();
}

void Sem::block() {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00113423          	sd	ra,8(sp)
    8000140c:	00813023          	sd	s0,0(sp)
    80001410:	01010413          	addi	s0,sp,16
    TCB::running->setActive(false);
    80001414:	0000a797          	auipc	a5,0xa
    80001418:	5ac7b783          	ld	a5,1452(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000141c:	0007b583          	ld	a1,0(a5)

    bool isSleeping() const { return sleeping; }

    bool isActive() const { return active; }

    void setActive(bool active) { this->active = active; }
    80001420:	020584a3          	sb	zero,41(a1)
    l->put(TCB::running);
    80001424:	00853503          	ld	a0,8(a0) # 8008 <_entry-0x7fff7ff8>
    80001428:	00002097          	auipc	ra,0x2
    8000142c:	b34080e7          	jalr	-1228(ra) # 80002f5c <_ZN4List3putEP3TCB>
    TCB::dispatch();
    80001430:	00001097          	auipc	ra,0x1
    80001434:	c44080e7          	jalr	-956(ra) # 80002074 <_ZN3TCB8dispatchEv>
}
    80001438:	00813083          	ld	ra,8(sp)
    8000143c:	00013403          	ld	s0,0(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_ZN3Sem4waitEv>:
    if(val == 0)
    80001448:	00052783          	lw	a5,0(a0)
    8000144c:	00078863          	beqz	a5,8000145c <_ZN3Sem4waitEv+0x14>
        val--;
    80001450:	fff7879b          	addiw	a5,a5,-1
    80001454:	00f52023          	sw	a5,0(a0)
    80001458:	00008067          	ret
void Sem::wait() {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00113423          	sd	ra,8(sp)
    80001464:	00813023          	sd	s0,0(sp)
    80001468:	01010413          	addi	s0,sp,16
        block();
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	f98080e7          	jalr	-104(ra) # 80001404 <_ZN3Sem5blockEv>
}
    80001474:	00813083          	ld	ra,8(sp)
    80001478:	00013403          	ld	s0,0(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_ZN3Sem7unblockEv>:


void Sem::unblock() {
    80001484:	ff010113          	addi	sp,sp,-16
    80001488:	00113423          	sd	ra,8(sp)
    8000148c:	00813023          	sd	s0,0(sp)
    80001490:	01010413          	addi	s0,sp,16
    TCB* t = l->get();
    80001494:	00853503          	ld	a0,8(a0)
    80001498:	00002097          	auipc	ra,0x2
    8000149c:	a5c080e7          	jalr	-1444(ra) # 80002ef4 <_ZN4List3getEv>
    if(!t)
    800014a0:	00050e63          	beqz	a0,800014bc <_ZN3Sem7unblockEv+0x38>
    800014a4:	00100793          	li	a5,1
    800014a8:	02f504a3          	sb	a5,41(a0)
    bool isSleeping() const { return sleeping; }
    800014ac:	03854783          	lbu	a5,56(a0)
        return;
    t->setActive(true);
    if(!t->isSleeping() && !t->isFinished())
    800014b0:	00079663          	bnez	a5,800014bc <_ZN3Sem7unblockEv+0x38>
    bool isFinished() const { return finished; }
    800014b4:	02854783          	lbu	a5,40(a0)
    800014b8:	00078a63          	beqz	a5,800014cc <_ZN3Sem7unblockEv+0x48>
        Scheduler::put(t);
}
    800014bc:	00813083          	ld	ra,8(sp)
    800014c0:	00013403          	ld	s0,0(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret
        Scheduler::put(t);
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	184080e7          	jalr	388(ra) # 80001650 <_ZN9Scheduler3putEP3TCB>
    800014d4:	fe9ff06f          	j	800014bc <_ZN3Sem7unblockEv+0x38>

00000000800014d8 <_ZN3Sem6signalEv>:
    if(l->empty())
    800014d8:	00853783          	ld	a5,8(a0)

    void put(TCB* thread);

    TCB* get();

    bool empty() { return head == nullptr; }
    800014dc:	0007b783          	ld	a5,0(a5)
    800014e0:	02078663          	beqz	a5,8000150c <_ZN3Sem6signalEv+0x34>
void Sem::signal() {
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00113423          	sd	ra,8(sp)
    800014ec:	00813023          	sd	s0,0(sp)
    800014f0:	01010413          	addi	s0,sp,16
        unblock();
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	f90080e7          	jalr	-112(ra) # 80001484 <_ZN3Sem7unblockEv>
}
    800014fc:	00813083          	ld	ra,8(sp)
    80001500:	00013403          	ld	s0,0(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret
        val++;
    8000150c:	00052783          	lw	a5,0(a0)
    80001510:	0017879b          	addiw	a5,a5,1
    80001514:	00f52023          	sw	a5,0(a0)
    80001518:	00008067          	ret

000000008000151c <_ZN3Sem10initializeEj>:

void Sem::initialize(unsigned val) {
    8000151c:	fe010113          	addi	sp,sp,-32
    80001520:	00113c23          	sd	ra,24(sp)
    80001524:	00813823          	sd	s0,16(sp)
    80001528:	00913423          	sd	s1,8(sp)
    8000152c:	02010413          	addi	s0,sp,32
    80001530:	00050493          	mv	s1,a0
    this->val = val;
    80001534:	00b52023          	sw	a1,0(a0)
    l = List::create();
    80001538:	00002097          	auipc	ra,0x2
    8000153c:	988080e7          	jalr	-1656(ra) # 80002ec0 <_ZN4List6createEv>
    80001540:	00a4b423          	sd	a0,8(s1)
}
    80001544:	01813083          	ld	ra,24(sp)
    80001548:	01013403          	ld	s0,16(sp)
    8000154c:	00813483          	ld	s1,8(sp)
    80001550:	02010113          	addi	sp,sp,32
    80001554:	00008067          	ret

0000000080001558 <_ZN3Sem15createSemaphoreEj>:
Sem *Sem::createSemaphore(unsigned val) {
    80001558:	fe010113          	addi	sp,sp,-32
    8000155c:	00113c23          	sd	ra,24(sp)
    80001560:	00813823          	sd	s0,16(sp)
    80001564:	00913423          	sd	s1,8(sp)
    80001568:	01213023          	sd	s2,0(sp)
    8000156c:	02010413          	addi	s0,sp,32
    80001570:	00050913          	mv	s2,a0
    Sem* s = (Sem*)MemoryAllocator::allocate(sizeof(Sem));
    80001574:	01000513          	li	a0,16
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	6e8080e7          	jalr	1768(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    80001580:	00050493          	mv	s1,a0
    s->initialize(val);
    80001584:	00090593          	mv	a1,s2
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	f94080e7          	jalr	-108(ra) # 8000151c <_ZN3Sem10initializeEj>
}
    80001590:	00048513          	mv	a0,s1
    80001594:	01813083          	ld	ra,24(sp)
    80001598:	01013403          	ld	s0,16(sp)
    8000159c:	00813483          	ld	s1,8(sp)
    800015a0:	00013903          	ld	s2,0(sp)
    800015a4:	02010113          	addi	sp,sp,32
    800015a8:	00008067          	ret

00000000800015ac <_ZN3Sem13freeSemaphoreEPS_>:

void Sem::freeSemaphore(Sem *s) {
    800015ac:	fe010113          	addi	sp,sp,-32
    800015b0:	00113c23          	sd	ra,24(sp)
    800015b4:	00813823          	sd	s0,16(sp)
    800015b8:	00913423          	sd	s1,8(sp)
    800015bc:	02010413          	addi	s0,sp,32
    800015c0:	00050493          	mv	s1,a0
    List::free(s->l);
    800015c4:	00853503          	ld	a0,8(a0)
    800015c8:	00002097          	auipc	ra,0x2
    800015cc:	a08080e7          	jalr	-1528(ra) # 80002fd0 <_ZN4List4freeEPS_>
    MemoryAllocator::free(s);
    800015d0:	00048513          	mv	a0,s1
    800015d4:	00002097          	auipc	ra,0x2
    800015d8:	848080e7          	jalr	-1976(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
}
    800015dc:	01813083          	ld	ra,24(sp)
    800015e0:	01013403          	ld	s0,16(sp)
    800015e4:	00813483          	ld	s1,8(sp)
    800015e8:	02010113          	addi	sp,sp,32
    800015ec:	00008067          	ret

00000000800015f0 <_ZN9Scheduler10initializeEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"

List* Scheduler::list = nullptr;

void Scheduler::initialize() {
    800015f0:	ff010113          	addi	sp,sp,-16
    800015f4:	00113423          	sd	ra,8(sp)
    800015f8:	00813023          	sd	s0,0(sp)
    800015fc:	01010413          	addi	s0,sp,16
    list = List::create();
    80001600:	00002097          	auipc	ra,0x2
    80001604:	8c0080e7          	jalr	-1856(ra) # 80002ec0 <_ZN4List6createEv>
    80001608:	0000a797          	auipc	a5,0xa
    8000160c:	40a7bc23          	sd	a0,1048(a5) # 8000ba20 <_ZN9Scheduler4listE>
}
    80001610:	00813083          	ld	ra,8(sp)
    80001614:	00013403          	ld	s0,0(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_ZN9Scheduler3getEv>:

TCB *Scheduler::get() {
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00113423          	sd	ra,8(sp)
    80001628:	00813023          	sd	s0,0(sp)
    8000162c:	01010413          	addi	s0,sp,16
    return list->get();
    80001630:	0000a517          	auipc	a0,0xa
    80001634:	3f053503          	ld	a0,1008(a0) # 8000ba20 <_ZN9Scheduler4listE>
    80001638:	00002097          	auipc	ra,0x2
    8000163c:	8bc080e7          	jalr	-1860(ra) # 80002ef4 <_ZN4List3getEv>
}
    80001640:	00813083          	ld	ra,8(sp)
    80001644:	00013403          	ld	s0,0(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *t) {
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00113423          	sd	ra,8(sp)
    80001658:	00813023          	sd	s0,0(sp)
    8000165c:	01010413          	addi	s0,sp,16
    80001660:	00050593          	mv	a1,a0
    list->put(t);
    80001664:	0000a517          	auipc	a0,0xa
    80001668:	3bc53503          	ld	a0,956(a0) # 8000ba20 <_ZN9Scheduler4listE>
    8000166c:	00002097          	auipc	ra,0x2
    80001670:	8f0080e7          	jalr	-1808(ra) # 80002f5c <_ZN4List3putEP3TCB>
}
    80001674:	00813083          	ld	ra,8(sp)
    80001678:	00013403          	ld	s0,0(sp)
    8000167c:	01010113          	addi	sp,sp,16
    80001680:	00008067          	ret

0000000080001684 <_ZN9Scheduler5eraseEv>:

void Scheduler::erase() {
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00113423          	sd	ra,8(sp)
    8000168c:	00813023          	sd	s0,0(sp)
    80001690:	01010413          	addi	s0,sp,16
    List::free(list);
    80001694:	0000a517          	auipc	a0,0xa
    80001698:	38c53503          	ld	a0,908(a0) # 8000ba20 <_ZN9Scheduler4listE>
    8000169c:	00002097          	auipc	ra,0x2
    800016a0:	934080e7          	jalr	-1740(ra) # 80002fd0 <_ZN4List4freeEPS_>
}
    800016a4:	00813083          	ld	ra,8(sp)
    800016a8:	00013403          	ld	s0,0(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_ZL15userMainWrapperPv>:
#include "../h/Sleeping.hpp"
#include "../h/Scheduler.hpp"

extern void userMain();

static void userMainWrapper(void* arg){
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00113423          	sd	ra,8(sp)
    800016bc:	00813023          	sd	s0,0(sp)
    800016c0:	01010413          	addi	s0,sp,16
    userMain();
    800016c4:	00004097          	auipc	ra,0x4
    800016c8:	790080e7          	jalr	1936(ra) # 80005e54 <_Z8userMainv>
}
    800016cc:	00813083          	ld	ra,8(sp)
    800016d0:	00013403          	ld	s0,0(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <main>:

void main(){
    800016dc:	fe010113          	addi	sp,sp,-32
    800016e0:	00113c23          	sd	ra,24(sp)
    800016e4:	00813823          	sd	s0,16(sp)
    800016e8:	00913423          	sd	s1,8(sp)
    800016ec:	01213023          	sd	s2,0(sp)
    800016f0:	02010413          	addi	s0,sp,32
    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    800016f4:	0000a797          	auipc	a5,0xa
    800016f8:	28c7b783          	ld	a5,652(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %[stvec], stvec" : [stvec] "=r" (stvec));
    return stvec;
}

inline void Riscv::writeStvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %[stvec]" : : [stvec] "r" (stvec));
    800016fc:	10579073          	csrw	stvec,a5
    MemoryAllocator::initialize();
    80001700:	00001097          	auipc	ra,0x1
    80001704:	504080e7          	jalr	1284(ra) # 80002c04 <_ZN15MemoryAllocator10initializeEv>
    ConsoleHandler::initialize();
    80001708:	00002097          	auipc	ra,0x2
    8000170c:	93c080e7          	jalr	-1732(ra) # 80003044 <_ZN14ConsoleHandler10initializeEv>
    Scheduler::initialize();
    80001710:	00000097          	auipc	ra,0x0
    80001714:	ee0080e7          	jalr	-288(ra) # 800015f0 <_ZN9Scheduler10initializeEv>
    TCB* main = TCB::createThread(nullptr, nullptr, nullptr);
    80001718:	00000613          	li	a2,0
    8000171c:	00000593          	li	a1,0
    80001720:	00000513          	li	a0,0
    80001724:	00001097          	auipc	ra,0x1
    80001728:	ad8080e7          	jalr	-1320(ra) # 800021fc <_ZN3TCB12createThreadEPFvPvES0_S0_>

    void setSupervised() { supervised = true; };
    8000172c:	00100913          	li	s2,1
    80001730:	03250ca3          	sb	s2,57(a0)
    main->setSupervised();
    TCB::running = main;
    80001734:	0000a797          	auipc	a5,0xa
    80001738:	28c7b783          	ld	a5,652(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000173c:	00a7b023          	sd	a0,0(a5)
    TCB* console = TCB::createThread(ConsoleHandler::handleOutputThread, nullptr, MemoryAllocator::allocate(DEFAULT_STACK_SIZE*sizeof(uint64)));
    80001740:	00008537          	lui	a0,0x8
    80001744:	00001097          	auipc	ra,0x1
    80001748:	51c080e7          	jalr	1308(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    8000174c:	00050613          	mv	a2,a0
    80001750:	00000593          	li	a1,0
    80001754:	0000a517          	auipc	a0,0xa
    80001758:	21c53503          	ld	a0,540(a0) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000175c:	00001097          	auipc	ra,0x1
    80001760:	aa0080e7          	jalr	-1376(ra) # 800021fc <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80001764:	00050493          	mv	s1,a0
    80001768:	03250ca3          	sb	s2,57(a0)
    console->setSupervised();
    TCB* userMain = TCB::createThread(userMainWrapper, nullptr, MemoryAllocator::allocate(DEFAULT_STACK_SIZE*sizeof(uint64)));
    8000176c:	00008537          	lui	a0,0x8
    80001770:	00001097          	auipc	ra,0x1
    80001774:	4f0080e7          	jalr	1264(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    80001778:	00050613          	mv	a2,a0
    8000177c:	00000593          	li	a1,0
    80001780:	00000517          	auipc	a0,0x0
    80001784:	f3450513          	addi	a0,a0,-204 # 800016b4 <_ZL15userMainWrapperPv>
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	a74080e7          	jalr	-1420(ra) # 800021fc <_ZN3TCB12createThreadEPFvPvES0_S0_>
    80001790:	00050913          	mv	s2,a0
inline void Riscv::mcSstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %[mask]" : : [mask] "r" (mask));
}

inline void Riscv::msSstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %[mask]" : : [mask] "r" (mask));
    80001794:	02000793          	li	a5,32
    80001798:	1007a073          	csrs	sstatus,a5
    __asm__ volatile("csrc sstatus, %[mask]" : : [mask] "r" (mask));
    8000179c:	10000793          	li	a5,256
    800017a0:	1007b073          	csrc	sstatus,a5
    Riscv::msSstatus(Riscv::SSTATUS_SPIE);
    Riscv::mcSstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();
    800017a4:	00001097          	auipc	ra,0x1
    800017a8:	e94080e7          	jalr	-364(ra) # 80002638 <_ZN5Riscv10popSppSpieEv>
    bool isFinished() const { return finished; }
    800017ac:	02894783          	lbu	a5,40(s2)

    while (!userMain->isFinished() && !TCB::error())
    800017b0:	02079063          	bnez	a5,800017d0 <main+0xf4>

    static void sleep(time_t time, TCB* t);

    static void freeGarbage();

    static bool error() { return fatalError; }
    800017b4:	0000a797          	auipc	a5,0xa
    800017b8:	2047b783          	ld	a5,516(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800017bc:	0007c783          	lbu	a5,0(a5)
    800017c0:	00079863          	bnez	a5,800017d0 <main+0xf4>
        thread_dispatch();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	acc080e7          	jalr	-1332(ra) # 80001290 <_Z15thread_dispatchv>
    while (!userMain->isFinished() && !TCB::error())
    800017cc:	fe1ff06f          	j	800017ac <main+0xd0>

    static void handleInput();

    static void initialize();

    static void disable() { working = false; }
    800017d0:	0000a797          	auipc	a5,0xa
    800017d4:	1e07b783          	ld	a5,480(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800017d8:	00078023          	sb	zero,0(a5)
    bool isFinished() const { return finished; }
    800017dc:	0284c783          	lbu	a5,40(s1)

    ConsoleHandler::disable();
    while (!(console->isFinished() && console->isActive()));
    800017e0:	fe078ee3          	beqz	a5,800017dc <main+0x100>
    bool isActive() const { return active; }
    800017e4:	0294c783          	lbu	a5,41(s1)
    800017e8:	fe078ae3          	beqz	a5,800017dc <main+0x100>
    Sleeping::erase();
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	704080e7          	jalr	1796(ra) # 80001ef0 <_ZN8Sleeping5eraseEv>
    Scheduler::erase();
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	e90080e7          	jalr	-368(ra) # 80001684 <_ZN9Scheduler5eraseEv>
    TCB::freeGarbage();
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	b3c080e7          	jalr	-1220(ra) # 80002338 <_ZN3TCB11freeGarbageEv>
    ConsoleHandler::free();
    80001804:	00002097          	auipc	ra,0x2
    80001808:	998080e7          	jalr	-1640(ra) # 8000319c <_ZN14ConsoleHandler4freeEv>
inline void Riscv::overridea0(uint64 a0){
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
}

inline void Riscv::turnOff() {
    __asm__ volatile("li t0, 0x100000");
    8000180c:	001002b7          	lui	t0,0x100
    __asm__ volatile("li t1, 0x5555");
    80001810:	00005337          	lui	t1,0x5
    80001814:	5553031b          	addiw	t1,t1,1365
    __asm__ volatile("sw t1, (t0)");
    80001818:	0062a023          	sw	t1,0(t0) # 100000 <_entry-0x7ff00000>
    Riscv::turnOff();
    8000181c:	01813083          	ld	ra,24(sp)
    80001820:	01013403          	ld	s0,16(sp)
    80001824:	00813483          	ld	s1,8(sp)
    80001828:	00013903          	ld	s2,0(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret

0000000080001834 <_ZN6Thread7wrapperEPv>:
    return -1;
}

void Thread::wrapper(void *arg) {
    Thread* t = (Thread*)arg;
    if(t)
    80001834:	02050863          	beqz	a0,80001864 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void *arg) {
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00113423          	sd	ra,8(sp)
    80001840:	00813023          	sd	s0,0(sp)
    80001844:	01010413          	addi	s0,sp,16
        t->run();
    80001848:	00053783          	ld	a5,0(a0)
    8000184c:	0107b783          	ld	a5,16(a5)
    80001850:	000780e7          	jalr	a5
}
    80001854:	00813083          	ld	ra,8(sp)
    80001858:	00013403          	ld	s0,0(sp)
    8000185c:	01010113          	addi	sp,sp,16
    80001860:	00008067          	ret
    80001864:	00008067          	ret

0000000080001868 <_ZN6ThreadD1Ev>:

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

Thread::~Thread() {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00113423          	sd	ra,8(sp)
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	01010413          	addi	s0,sp,16
    80001878:	0000a797          	auipc	a5,0xa
    8000187c:	ec878793          	addi	a5,a5,-312 # 8000b740 <_ZTV6Thread+0x10>
    80001880:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80001884:	00853503          	ld	a0,8(a0)
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	8f4080e7          	jalr	-1804(ra) # 8000117c <_Z8mem_freePv>
}
    80001890:	00813083          	ld	ra,8(sp)
    80001894:	00013403          	ld	s0,0(sp)
    80001898:	01010113          	addi	sp,sp,16
    8000189c:	00008067          	ret

00000000800018a0 <_ZN9SemaphoreD1Ev>:
int Semaphore::wait() {
    int status = sem_wait(myHandle);
    return status;
}

Semaphore::~Semaphore() {
    800018a0:	ff010113          	addi	sp,sp,-16
    800018a4:	00113423          	sd	ra,8(sp)
    800018a8:	00813023          	sd	s0,0(sp)
    800018ac:	01010413          	addi	s0,sp,16
    800018b0:	0000a797          	auipc	a5,0xa
    800018b4:	eb878793          	addi	a5,a5,-328 # 8000b768 <_ZTV9Semaphore+0x10>
    800018b8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800018bc:	00853503          	ld	a0,8(a0)
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	a48080e7          	jalr	-1464(ra) # 80001308 <_Z9sem_closeP4_sem>
}
    800018c8:	00813083          	ld	ra,8(sp)
    800018cc:	00013403          	ld	s0,0(sp)
    800018d0:	01010113          	addi	sp,sp,16
    800018d4:	00008067          	ret

00000000800018d8 <_Znwm>:
void* operator new(size_t size){
    800018d8:	ff010113          	addi	sp,sp,-16
    800018dc:	00113423          	sd	ra,8(sp)
    800018e0:	00813023          	sd	s0,0(sp)
    800018e4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	85c080e7          	jalr	-1956(ra) # 80001144 <_Z9mem_allocm>
}
    800018f0:	00813083          	ld	ra,8(sp)
    800018f4:	00013403          	ld	s0,0(sp)
    800018f8:	01010113          	addi	sp,sp,16
    800018fc:	00008067          	ret

0000000080001900 <_ZdlPv>:
void operator delete(void * ptr){
    80001900:	ff010113          	addi	sp,sp,-16
    80001904:	00113423          	sd	ra,8(sp)
    80001908:	00813023          	sd	s0,0(sp)
    8000190c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001910:	00000097          	auipc	ra,0x0
    80001914:	86c080e7          	jalr	-1940(ra) # 8000117c <_Z8mem_freePv>
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	02010413          	addi	s0,sp,32
    8000193c:	00050493          	mv	s1,a0
}
    80001940:	00000097          	auipc	ra,0x0
    80001944:	f28080e7          	jalr	-216(ra) # 80001868 <_ZN6ThreadD1Ev>
    80001948:	00048513          	mv	a0,s1
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	fb4080e7          	jalr	-76(ra) # 80001900 <_ZdlPv>
    80001954:	01813083          	ld	ra,24(sp)
    80001958:	01013403          	ld	s0,16(sp)
    8000195c:	00813483          	ld	s1,8(sp)
    80001960:	02010113          	addi	sp,sp,32
    80001964:	00008067          	ret

0000000080001968 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001968:	fe010113          	addi	sp,sp,-32
    8000196c:	00113c23          	sd	ra,24(sp)
    80001970:	00813823          	sd	s0,16(sp)
    80001974:	00913423          	sd	s1,8(sp)
    80001978:	02010413          	addi	s0,sp,32
    8000197c:	00050493          	mv	s1,a0
}
    80001980:	00000097          	auipc	ra,0x0
    80001984:	f20080e7          	jalr	-224(ra) # 800018a0 <_ZN9SemaphoreD1Ev>
    80001988:	00048513          	mv	a0,s1
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	f74080e7          	jalr	-140(ra) # 80001900 <_ZdlPv>
    80001994:	01813083          	ld	ra,24(sp)
    80001998:	01013403          	ld	s0,16(sp)
    8000199c:	00813483          	ld	s1,8(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret

00000000800019a8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00813423          	sd	s0,8(sp)
    800019b0:	01010413          	addi	s0,sp,16
    800019b4:	0000a797          	auipc	a5,0xa
    800019b8:	d8c78793          	addi	a5,a5,-628 # 8000b740 <_ZTV6Thread+0x10>
    800019bc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800019c0:	00053423          	sd	zero,8(a0)
    this->body = body;
    800019c4:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800019c8:	00c53c23          	sd	a2,24(a0)
}
    800019cc:	00813403          	ld	s0,8(sp)
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret

00000000800019d8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800019d8:	ff010113          	addi	sp,sp,-16
    800019dc:	00813423          	sd	s0,8(sp)
    800019e0:	01010413          	addi	s0,sp,16
    800019e4:	0000a797          	auipc	a5,0xa
    800019e8:	d5c78793          	addi	a5,a5,-676 # 8000b740 <_ZTV6Thread+0x10>
    800019ec:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800019f0:	00053423          	sd	zero,8(a0)
    this->body = &wrapper;
    800019f4:	00000797          	auipc	a5,0x0
    800019f8:	e4078793          	addi	a5,a5,-448 # 80001834 <_ZN6Thread7wrapperEPv>
    800019fc:	00f53823          	sd	a5,16(a0)
    this->arg = (void *) this;
    80001a00:	00a53c23          	sd	a0,24(a0)
}
    80001a04:	00813403          	ld	s0,8(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN6Thread5startEv>:
    if(!myHandle)
    80001a10:	00853783          	ld	a5,8(a0)
    80001a14:	02079c63          	bnez	a5,80001a4c <_ZN6Thread5startEv+0x3c>
int Thread::start() {
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00113423          	sd	ra,8(sp)
    80001a20:	00813023          	sd	s0,0(sp)
    80001a24:	01010413          	addi	s0,sp,16
        return thread_create(&myHandle, body, arg);
    80001a28:	01853603          	ld	a2,24(a0)
    80001a2c:	01053583          	ld	a1,16(a0)
    80001a30:	00850513          	addi	a0,a0,8
    80001a34:	fffff097          	auipc	ra,0xfffff
    80001a38:	7c4080e7          	jalr	1988(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001a3c:	00813083          	ld	ra,8(sp)
    80001a40:	00013403          	ld	s0,0(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret
    return -1;
    80001a4c:	fff00513          	li	a0,-1
}
    80001a50:	00008067          	ret

0000000080001a54 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001a54:	ff010113          	addi	sp,sp,-16
    80001a58:	00113423          	sd	ra,8(sp)
    80001a5c:	00813023          	sd	s0,0(sp)
    80001a60:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	928080e7          	jalr	-1752(ra) # 8000138c <_Z10time_sleepm>
}
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_ZN14PeriodicThread3runEv>:

void PeriodicThread::terminate() {
    period = 0;
}

void PeriodicThread::run() {
    80001a7c:	fe010113          	addi	sp,sp,-32
    80001a80:	00113c23          	sd	ra,24(sp)
    80001a84:	00813823          	sd	s0,16(sp)
    80001a88:	00913423          	sd	s1,8(sp)
    80001a8c:	02010413          	addi	s0,sp,32
    80001a90:	00050493          	mv	s1,a0
    while (period != 0){
    80001a94:	0204b783          	ld	a5,32(s1)
    80001a98:	02078263          	beqz	a5,80001abc <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001a9c:	0004b783          	ld	a5,0(s1)
    80001aa0:	0187b783          	ld	a5,24(a5)
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	000780e7          	jalr	a5
        sleep(period);
    80001aac:	0204b503          	ld	a0,32(s1)
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	fa4080e7          	jalr	-92(ra) # 80001a54 <_ZN6Thread5sleepEm>
    while (period != 0){
    80001ab8:	fddff06f          	j	80001a94 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001abc:	01813083          	ld	ra,24(sp)
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	00813483          	ld	s1,8(sp)
    80001ac8:	02010113          	addi	sp,sp,32
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ae0:	fffff097          	auipc	ra,0xfffff
    80001ae4:	7b0080e7          	jalr	1968(ra) # 80001290 <_Z15thread_dispatchv>
}
    80001ae8:	00813083          	ld	ra,8(sp)
    80001aec:	00013403          	ld	s0,0(sp)
    80001af0:	01010113          	addi	sp,sp,16
    80001af4:	00008067          	ret

0000000080001af8 <_ZN6Thread4joinEm>:
    if(myHandle)
    80001af8:	00853783          	ld	a5,8(a0)
    80001afc:	02078863          	beqz	a5,80001b2c <_ZN6Thread4joinEm+0x34>
void Thread::join(time_t time) {
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00113423          	sd	ra,8(sp)
    80001b08:	00813023          	sd	s0,0(sp)
    80001b0c:	01010413          	addi	s0,sp,16
        thread_join(&myHandle, time);
    80001b10:	00850513          	addi	a0,a0,8
    80001b14:	fffff097          	auipc	ra,0xfffff
    80001b18:	79c080e7          	jalr	1948(ra) # 800012b0 <_Z11thread_joinPP7_threadm>
}
    80001b1c:	00813083          	ld	ra,8(sp)
    80001b20:	00013403          	ld	s0,0(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret
    80001b2c:	00008067          	ret

0000000080001b30 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    80001b40:	0000a797          	auipc	a5,0xa
    80001b44:	c2878793          	addi	a5,a5,-984 # 8000b768 <_ZTV9Semaphore+0x10>
    80001b48:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001b4c:	00850513          	addi	a0,a0,8
    80001b50:	fffff097          	auipc	ra,0xfffff
    80001b54:	788080e7          	jalr	1928(ra) # 800012d8 <_Z8sem_openPP4_semj>
}
    80001b58:	00813083          	ld	ra,8(sp)
    80001b5c:	00013403          	ld	s0,0(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00113423          	sd	ra,8(sp)
    80001b70:	00813023          	sd	s0,0(sp)
    80001b74:	01010413          	addi	s0,sp,16
    int status = sem_signal(myHandle);
    80001b78:	00853503          	ld	a0,8(a0)
    80001b7c:	fffff097          	auipc	ra,0xfffff
    80001b80:	7e4080e7          	jalr	2020(ra) # 80001360 <_Z10sem_signalP4_sem>
}
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    int status = sem_wait(myHandle);
    80001ba4:	00853503          	ld	a0,8(a0)
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	78c080e7          	jalr	1932(ra) # 80001334 <_Z8sem_waitP4_sem>
}
    80001bb0:	00813083          	ld	ra,8(sp)
    80001bb4:	00013403          	ld	s0,0(sp)
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret

0000000080001bc0 <_ZN7Console4getcEv>:
char Console::getc() {
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00113423          	sd	ra,8(sp)
    80001bc8:	00813023          	sd	s0,0(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    return ::getc();
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	7e8080e7          	jalr	2024(ra) # 800013b8 <_Z4getcv>
}
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	7e8080e7          	jalr	2024(ra) # 800013e0 <_Z4putcc>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80001c10:	fe010113          	addi	sp,sp,-32
    80001c14:	00113c23          	sd	ra,24(sp)
    80001c18:	00813823          	sd	s0,16(sp)
    80001c1c:	00913423          	sd	s1,8(sp)
    80001c20:	01213023          	sd	s2,0(sp)
    80001c24:	02010413          	addi	s0,sp,32
    80001c28:	00050493          	mv	s1,a0
    80001c2c:	00058913          	mv	s2,a1
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	da8080e7          	jalr	-600(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80001c38:	0000a797          	auipc	a5,0xa
    80001c3c:	b5078793          	addi	a5,a5,-1200 # 8000b788 <_ZTV14PeriodicThread+0x10>
    80001c40:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80001c44:	0324b023          	sd	s2,32(s1)
}
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	00013903          	ld	s2,0(sp)
    80001c58:	02010113          	addi	sp,sp,32
    80001c5c:	00008067          	ret

0000000080001c60 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001c60:	ff010113          	addi	sp,sp,-16
    80001c64:	00813423          	sd	s0,8(sp)
    80001c68:	01010413          	addi	s0,sp,16
    period = 0;
    80001c6c:	02053023          	sd	zero,32(a0)
}
    80001c70:	00813403          	ld	s0,8(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret

0000000080001c7c <_ZN6Thread3runEv>:

    void join(time_t time);

protected:
    Thread();
    virtual void run() {}
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00813423          	sd	s0,8(sp)
    80001c84:	01010413          	addi	s0,sp,16
    80001c88:	00813403          	ld	s0,8(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00813423          	sd	s0,8(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    80001ca0:	00813403          	ld	s0,8(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread{
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	0000a797          	auipc	a5,0xa
    80001cc0:	acc78793          	addi	a5,a5,-1332 # 8000b788 <_ZTV14PeriodicThread+0x10>
    80001cc4:	00f53023          	sd	a5,0(a0)
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	ba0080e7          	jalr	-1120(ra) # 80001868 <_ZN6ThreadD1Ev>
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN14PeriodicThreadD0Ev>:
    80001ce0:	fe010113          	addi	sp,sp,-32
    80001ce4:	00113c23          	sd	ra,24(sp)
    80001ce8:	00813823          	sd	s0,16(sp)
    80001cec:	00913423          	sd	s1,8(sp)
    80001cf0:	02010413          	addi	s0,sp,32
    80001cf4:	00050493          	mv	s1,a0
    80001cf8:	0000a797          	auipc	a5,0xa
    80001cfc:	a9078793          	addi	a5,a5,-1392 # 8000b788 <_ZTV14PeriodicThread+0x10>
    80001d00:	00f53023          	sd	a5,0(a0)
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	b64080e7          	jalr	-1180(ra) # 80001868 <_ZN6ThreadD1Ev>
    80001d0c:	00048513          	mv	a0,s1
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	bf0080e7          	jalr	-1040(ra) # 80001900 <_ZdlPv>
    80001d18:	01813083          	ld	ra,24(sp)
    80001d1c:	01013403          	ld	s0,16(sp)
    80001d20:	00813483          	ld	s1,8(sp)
    80001d24:	02010113          	addi	sp,sp,32
    80001d28:	00008067          	ret

0000000080001d2c <_ZN8Sleeping13needAwakeningEv>:
#include "../h/Sleeping.hpp"
#include "../h/MemoryAllocator.hpp"
Sleeping::Node* Sleeping::head = nullptr;

bool Sleeping::needAwakening() {
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00813423          	sd	s0,8(sp)
    80001d34:	01010413          	addi	s0,sp,16
    if(head && head->relativeTime == 0)
    80001d38:	0000a797          	auipc	a5,0xa
    80001d3c:	cf07b783          	ld	a5,-784(a5) # 8000ba28 <_ZN8Sleeping4headE>
    80001d40:	00078e63          	beqz	a5,80001d5c <_ZN8Sleeping13needAwakeningEv+0x30>
    80001d44:	0107b783          	ld	a5,16(a5)
    80001d48:	00078e63          	beqz	a5,80001d64 <_ZN8Sleeping13needAwakeningEv+0x38>
        return true;
    return false;
    80001d4c:	00000513          	li	a0,0
}
    80001d50:	00813403          	ld	s0,8(sp)
    80001d54:	01010113          	addi	sp,sp,16
    80001d58:	00008067          	ret
    return false;
    80001d5c:	00000513          	li	a0,0
    80001d60:	ff1ff06f          	j	80001d50 <_ZN8Sleeping13needAwakeningEv+0x24>
        return true;
    80001d64:	00100513          	li	a0,1
    80001d68:	fe9ff06f          	j	80001d50 <_ZN8Sleeping13needAwakeningEv+0x24>

0000000080001d6c <_ZN8Sleeping3getEv>:


TCB *Sleeping::get() {
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00813823          	sd	s0,16(sp)
    80001d78:	00913423          	sd	s1,8(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    if(!head){
    80001d80:	0000a517          	auipc	a0,0xa
    80001d84:	ca853503          	ld	a0,-856(a0) # 8000ba28 <_ZN8Sleeping4headE>
    80001d88:	02050a63          	beqz	a0,80001dbc <_ZN8Sleeping3getEv+0x50>
        return nullptr;
    }
    Node* p = head;
    head = head->next;
    80001d8c:	00053783          	ld	a5,0(a0)
    80001d90:	0000a717          	auipc	a4,0xa
    80001d94:	c8f73c23          	sd	a5,-872(a4) # 8000ba28 <_ZN8Sleeping4headE>
    TCB* ret = p->sleepingThread;
    80001d98:	00853483          	ld	s1,8(a0)
    MemoryAllocator::free(p);
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	080080e7          	jalr	128(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
    return ret;
}
    80001da4:	00048513          	mv	a0,s1
    80001da8:	01813083          	ld	ra,24(sp)
    80001dac:	01013403          	ld	s0,16(sp)
    80001db0:	00813483          	ld	s1,8(sp)
    80001db4:	02010113          	addi	sp,sp,32
    80001db8:	00008067          	ret
        return nullptr;
    80001dbc:	00050493          	mv	s1,a0
    80001dc0:	fe5ff06f          	j	80001da4 <_ZN8Sleeping3getEv+0x38>

0000000080001dc4 <_ZN8Sleeping3putEP3TCBmS1_>:

void Sleeping::put(TCB *t, size_t time, TCB* awakener) {
    if(!t)
    80001dc4:	0e050c63          	beqz	a0,80001ebc <_ZN8Sleeping3putEP3TCBmS1_+0xf8>
void Sleeping::put(TCB *t, size_t time, TCB* awakener) {
    80001dc8:	fd010113          	addi	sp,sp,-48
    80001dcc:	02113423          	sd	ra,40(sp)
    80001dd0:	02813023          	sd	s0,32(sp)
    80001dd4:	00913c23          	sd	s1,24(sp)
    80001dd8:	01213823          	sd	s2,16(sp)
    80001ddc:	01313423          	sd	s3,8(sp)
    80001de0:	03010413          	addi	s0,sp,48
    80001de4:	00050913          	mv	s2,a0
    80001de8:	00058493          	mv	s1,a1
    80001dec:	00060993          	mv	s3,a2
        return;
    Node* newNode = (Node*)MemoryAllocator::allocate(sizeof(Node));
    80001df0:	02000513          	li	a0,32
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	e6c080e7          	jalr	-404(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    newNode->next = nullptr;
    80001dfc:	00053023          	sd	zero,0(a0)
    newNode->sleepingThread = t;
    80001e00:	01253423          	sd	s2,8(a0)
    newNode->awakener = awakener;
    80001e04:	01353c23          	sd	s3,24(a0)
    if(!head) {
    80001e08:	0000a597          	auipc	a1,0xa
    80001e0c:	c205b583          	ld	a1,-992(a1) # 8000ba28 <_ZN8Sleeping4headE>
    80001e10:	02058863          	beqz	a1,80001e40 <_ZN8Sleeping3putEP3TCBmS1_+0x7c>
        head = newNode;
        newNode->relativeTime = time;
        return;
    }
    Node* p = head, *prev = nullptr;
    80001e14:	00058793          	mv	a5,a1
    time_t sum = 0;
    80001e18:	00000693          	li	a3,0
    Node* p = head, *prev = nullptr;
    80001e1c:	00000613          	li	a2,0
    while (p){
    80001e20:	02078863          	beqz	a5,80001e50 <_ZN8Sleeping3putEP3TCBmS1_+0x8c>
        if(sum + p->relativeTime > time)
    80001e24:	0107b703          	ld	a4,16(a5)
    80001e28:	00d70733          	add	a4,a4,a3
    80001e2c:	02e4e263          	bltu	s1,a4,80001e50 <_ZN8Sleeping3putEP3TCBmS1_+0x8c>
            break;
        sum += p->relativeTime;
    80001e30:	00070693          	mv	a3,a4
        prev = p;
    80001e34:	00078613          	mv	a2,a5
        p = p->next;
    80001e38:	0007b783          	ld	a5,0(a5)
    while (p){
    80001e3c:	fe5ff06f          	j	80001e20 <_ZN8Sleeping3putEP3TCBmS1_+0x5c>
        head = newNode;
    80001e40:	0000a797          	auipc	a5,0xa
    80001e44:	bea7b423          	sd	a0,-1048(a5) # 8000ba28 <_ZN8Sleeping4headE>
        newNode->relativeTime = time;
    80001e48:	00953823          	sd	s1,16(a0)
        return;
    80001e4c:	01c0006f          	j	80001e68 <_ZN8Sleeping3putEP3TCBmS1_+0xa4>
    }
    if(!prev){
    80001e50:	02060a63          	beqz	a2,80001e84 <_ZN8Sleeping3putEP3TCBmS1_+0xc0>
        newNode->next = head;
        head = newNode;
        head->next->relativeTime -= time;
        return;
    }
    if(!p){
    80001e54:	04078a63          	beqz	a5,80001ea8 <_ZN8Sleeping3putEP3TCBmS1_+0xe4>
        newNode->relativeTime = time - sum;
        prev->next = newNode;
        newNode->next = nullptr;
        return;
    }
    prev->next = newNode;
    80001e58:	00a63023          	sd	a0,0(a2)
    newNode->next = p;
    80001e5c:	00f53023          	sd	a5,0(a0)
    newNode->relativeTime = time - sum;
    80001e60:	40d486b3          	sub	a3,s1,a3
    80001e64:	00d53823          	sd	a3,16(a0)
}
    80001e68:	02813083          	ld	ra,40(sp)
    80001e6c:	02013403          	ld	s0,32(sp)
    80001e70:	01813483          	ld	s1,24(sp)
    80001e74:	01013903          	ld	s2,16(sp)
    80001e78:	00813983          	ld	s3,8(sp)
    80001e7c:	03010113          	addi	sp,sp,48
    80001e80:	00008067          	ret
        newNode->relativeTime = time;
    80001e84:	00953823          	sd	s1,16(a0)
        newNode->next = head;
    80001e88:	00b53023          	sd	a1,0(a0)
        head = newNode;
    80001e8c:	0000a797          	auipc	a5,0xa
    80001e90:	b8a7be23          	sd	a0,-1124(a5) # 8000ba28 <_ZN8Sleeping4headE>
        head->next->relativeTime -= time;
    80001e94:	00053783          	ld	a5,0(a0)
    80001e98:	0107b683          	ld	a3,16(a5)
    80001e9c:	409686b3          	sub	a3,a3,s1
    80001ea0:	00d7b823          	sd	a3,16(a5)
        return;
    80001ea4:	fc5ff06f          	j	80001e68 <_ZN8Sleeping3putEP3TCBmS1_+0xa4>
        newNode->relativeTime = time - sum;
    80001ea8:	40d486b3          	sub	a3,s1,a3
    80001eac:	00d53823          	sd	a3,16(a0)
        prev->next = newNode;
    80001eb0:	00a63023          	sd	a0,0(a2)
        newNode->next = nullptr;
    80001eb4:	00053023          	sd	zero,0(a0)
        return;
    80001eb8:	fb1ff06f          	j	80001e68 <_ZN8Sleeping3putEP3TCBmS1_+0xa4>
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZN8Sleeping9decrementEv>:

void Sleeping::decrement() {
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00813423          	sd	s0,8(sp)
    80001ec8:	01010413          	addi	s0,sp,16
    if (head) {
    80001ecc:	0000a797          	auipc	a5,0xa
    80001ed0:	b5c7b783          	ld	a5,-1188(a5) # 8000ba28 <_ZN8Sleeping4headE>
    80001ed4:	00078863          	beqz	a5,80001ee4 <_ZN8Sleeping9decrementEv+0x24>
        head->relativeTime--;
    80001ed8:	0107b703          	ld	a4,16(a5)
    80001edc:	fff70713          	addi	a4,a4,-1
    80001ee0:	00e7b823          	sd	a4,16(a5)
    }
}
    80001ee4:	00813403          	ld	s0,8(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN8Sleeping5eraseEv>:

void Sleeping::erase() {
    80001ef0:	fe010113          	addi	sp,sp,-32
    80001ef4:	00113c23          	sd	ra,24(sp)
    80001ef8:	00813823          	sd	s0,16(sp)
    80001efc:	00913423          	sd	s1,8(sp)
    80001f00:	02010413          	addi	s0,sp,32
    while (head){
    80001f04:	0000a497          	auipc	s1,0xa
    80001f08:	b244b483          	ld	s1,-1244(s1) # 8000ba28 <_ZN8Sleeping4headE>
    80001f0c:	02048663          	beqz	s1,80001f38 <_ZN8Sleeping5eraseEv+0x48>
        Node* p = head;
        head = head->next;
    80001f10:	0004b783          	ld	a5,0(s1)
    80001f14:	0000a717          	auipc	a4,0xa
    80001f18:	b0f73a23          	sd	a5,-1260(a4) # 8000ba28 <_ZN8Sleeping4headE>
        TCB::freeThread(p->sleepingThread);
    80001f1c:	0084b503          	ld	a0,8(s1)
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	370080e7          	jalr	880(ra) # 80002290 <_ZN3TCB10freeThreadEPS_>
        MemoryAllocator::free(p);
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	ef0080e7          	jalr	-272(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
    while (head){
    80001f34:	fd1ff06f          	j	80001f04 <_ZN8Sleeping5eraseEv+0x14>
    }
}
    80001f38:	01813083          	ld	ra,24(sp)
    80001f3c:	01013403          	ld	s0,16(sp)
    80001f40:	00813483          	ld	s1,8(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret

0000000080001f4c <_ZN8Sleeping5awakeEP3TCB>:

void Sleeping::awake(TCB *a) {
    80001f4c:	fe010113          	addi	sp,sp,-32
    80001f50:	00113c23          	sd	ra,24(sp)
    80001f54:	00813823          	sd	s0,16(sp)
    80001f58:	00913423          	sd	s1,8(sp)
    80001f5c:	01213023          	sd	s2,0(sp)
    80001f60:	02010413          	addi	s0,sp,32
    80001f64:	00050913          	mv	s2,a0
    Node* p = head, *prev = nullptr;
    80001f68:	0000a497          	auipc	s1,0xa
    80001f6c:	ac04b483          	ld	s1,-1344(s1) # 8000ba28 <_ZN8Sleeping4headE>
    80001f70:	00000713          	li	a4,0
    80001f74:	0240006f          	j	80001f98 <_ZN8Sleeping5awakeEP3TCB+0x4c>
            if(p->next){
                p->next->relativeTime += p->relativeTime;
                if(prev)
                    prev->next = p->next;
                else{
                    head = p->next;
    80001f78:	0004b783          	ld	a5,0(s1)
    80001f7c:	0000a717          	auipc	a4,0xa
    80001f80:	aaf73623          	sd	a5,-1364(a4) # 8000ba28 <_ZN8Sleeping4headE>
                    prev->next = nullptr;
                else{
                    head = nullptr;
                }
            }
            MemoryAllocator::free(p);
    80001f84:	00048513          	mv	a0,s1
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	e94080e7          	jalr	-364(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
        }
        prev = p;
    80001f90:	00048713          	mv	a4,s1
        p = p->next;
    80001f94:	0004b483          	ld	s1,0(s1)
    while (p){
    80001f98:	04048663          	beqz	s1,80001fe4 <_ZN8Sleeping5awakeEP3TCB+0x98>
        if(p->awakener == a){
    80001f9c:	0184b783          	ld	a5,24(s1)
    80001fa0:	ff2798e3          	bne	a5,s2,80001f90 <_ZN8Sleeping5awakeEP3TCB+0x44>
            if(p->next){
    80001fa4:	0004b783          	ld	a5,0(s1)
    80001fa8:	02078263          	beqz	a5,80001fcc <_ZN8Sleeping5awakeEP3TCB+0x80>
                p->next->relativeTime += p->relativeTime;
    80001fac:	0104b603          	ld	a2,16(s1)
    80001fb0:	0107b683          	ld	a3,16(a5)
    80001fb4:	00c686b3          	add	a3,a3,a2
    80001fb8:	00d7b823          	sd	a3,16(a5)
                if(prev)
    80001fbc:	fa070ee3          	beqz	a4,80001f78 <_ZN8Sleeping5awakeEP3TCB+0x2c>
                    prev->next = p->next;
    80001fc0:	0004b783          	ld	a5,0(s1)
    80001fc4:	00f73023          	sd	a5,0(a4)
    80001fc8:	fbdff06f          	j	80001f84 <_ZN8Sleeping5awakeEP3TCB+0x38>
                if(prev)
    80001fcc:	00070663          	beqz	a4,80001fd8 <_ZN8Sleeping5awakeEP3TCB+0x8c>
                    prev->next = nullptr;
    80001fd0:	00073023          	sd	zero,0(a4)
    80001fd4:	fb1ff06f          	j	80001f84 <_ZN8Sleeping5awakeEP3TCB+0x38>
                    head = nullptr;
    80001fd8:	0000a797          	auipc	a5,0xa
    80001fdc:	a407b823          	sd	zero,-1456(a5) # 8000ba28 <_ZN8Sleeping4headE>
    80001fe0:	fa5ff06f          	j	80001f84 <_ZN8Sleeping5awakeEP3TCB+0x38>
    }
}
    80001fe4:	01813083          	ld	ra,24(sp)
    80001fe8:	01013403          	ld	s0,16(sp)
    80001fec:	00813483          	ld	s1,8(sp)
    80001ff0:	00013903          	ld	s2,0(sp)
    80001ff4:	02010113          	addi	sp,sp,32
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN3TCB7wrapperEv>:
    context.sp = this->stack != nullptr ? (uint64)(this->stack + DEFAULT_STACK_SIZE) : 0;
    if(body != nullptr)
        Scheduler::put(this);
}

void TCB::wrapper() {
    80001ffc:	fe010113          	addi	sp,sp,-32
    80002000:	00113c23          	sd	ra,24(sp)
    80002004:	00813823          	sd	s0,16(sp)
    80002008:	00913423          	sd	s1,8(sp)
    8000200c:	02010413          	addi	s0,sp,32
    if(!running->supervised)
    80002010:	0000a797          	auipc	a5,0xa
    80002014:	a207b783          	ld	a5,-1504(a5) # 8000ba30 <_ZN3TCB7runningE>
    80002018:	0397c783          	lbu	a5,57(a5)
    8000201c:	04078663          	beqz	a5,80002068 <_ZN3TCB7wrapperEv+0x6c>
        Riscv::popSppSpie();
    running->body(running->args);
    80002020:	0000a497          	auipc	s1,0xa
    80002024:	a1048493          	addi	s1,s1,-1520 # 8000ba30 <_ZN3TCB7runningE>
    80002028:	0004b783          	ld	a5,0(s1)
    8000202c:	0007b703          	ld	a4,0(a5)
    80002030:	0087b503          	ld	a0,8(a5)
    80002034:	000700e7          	jalr	a4
    running->setFinished(true);
    80002038:	0004b503          	ld	a0,0(s1)
    void setFinished(bool finished) { this->finished = finished; }
    8000203c:	00100793          	li	a5,1
    80002040:	02f50423          	sb	a5,40(a0)
    Sleeping::awake(running);
    80002044:	00000097          	auipc	ra,0x0
    80002048:	f08080e7          	jalr	-248(ra) # 80001f4c <_ZN8Sleeping5awakeEP3TCB>
    thread_dispatch();
    8000204c:	fffff097          	auipc	ra,0xfffff
    80002050:	244080e7          	jalr	580(ra) # 80001290 <_Z15thread_dispatchv>
}
    80002054:	01813083          	ld	ra,24(sp)
    80002058:	01013403          	ld	s0,16(sp)
    8000205c:	00813483          	ld	s1,8(sp)
    80002060:	02010113          	addi	sp,sp,32
    80002064:	00008067          	ret
        Riscv::popSppSpie();
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	5d0080e7          	jalr	1488(ra) # 80002638 <_ZN5Riscv10popSppSpieEv>
    80002070:	fb1ff06f          	j	80002020 <_ZN3TCB7wrapperEv+0x24>

0000000080002074 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002074:	fe010113          	addi	sp,sp,-32
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	00813823          	sd	s0,16(sp)
    80002080:	00913423          	sd	s1,8(sp)
    80002084:	01213023          	sd	s2,0(sp)
    80002088:	02010413          	addi	s0,sp,32
    TCB* old = running;
    8000208c:	0000a917          	auipc	s2,0xa
    80002090:	9a493903          	ld	s2,-1628(s2) # 8000ba30 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002094:	02894783          	lbu	a5,40(s2)
    if(!old->isFinished() && old->isActive() && !old->isSleeping())
    80002098:	00079a63          	bnez	a5,800020ac <_ZN3TCB8dispatchEv+0x38>
    bool isActive() const { return active; }
    8000209c:	02994783          	lbu	a5,41(s2)
    800020a0:	00078663          	beqz	a5,800020ac <_ZN3TCB8dispatchEv+0x38>
    bool isSleeping() const { return sleeping; }
    800020a4:	03894783          	lbu	a5,56(s2)
    800020a8:	06078063          	beqz	a5,80002108 <_ZN3TCB8dispatchEv+0x94>
    running = Scheduler::get();
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	574080e7          	jalr	1396(ra) # 80001620 <_ZN9Scheduler3getEv>
    800020b4:	0000a797          	auipc	a5,0xa
    800020b8:	97c78793          	addi	a5,a5,-1668 # 8000ba30 <_ZN3TCB7runningE>
    800020bc:	00a7b023          	sd	a0,0(a5)
    if(fatalError){
    800020c0:	0087c783          	lbu	a5,8(a5)
    800020c4:	04078a63          	beqz	a5,80002118 <_ZN3TCB8dispatchEv+0xa4>
        while (!running->supervised){
    800020c8:	0000a597          	auipc	a1,0xa
    800020cc:	9685b583          	ld	a1,-1688(a1) # 8000ba30 <_ZN3TCB7runningE>
    800020d0:	0395c783          	lbu	a5,57(a1)
    800020d4:	04079263          	bnez	a5,80002118 <_ZN3TCB8dispatchEv+0xa4>
            garbage->put(running);
    800020d8:	0000a497          	auipc	s1,0xa
    800020dc:	95848493          	addi	s1,s1,-1704 # 8000ba30 <_ZN3TCB7runningE>
    800020e0:	0104b503          	ld	a0,16(s1)
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	e78080e7          	jalr	-392(ra) # 80002f5c <_ZN4List3putEP3TCB>
            running->finished = true;
    800020ec:	0004b783          	ld	a5,0(s1)
    800020f0:	00100713          	li	a4,1
    800020f4:	02e78423          	sb	a4,40(a5)
            running = Scheduler::get();
    800020f8:	fffff097          	auipc	ra,0xfffff
    800020fc:	528080e7          	jalr	1320(ra) # 80001620 <_ZN9Scheduler3getEv>
    80002100:	00a4b023          	sd	a0,0(s1)
        while (!running->supervised){
    80002104:	fc5ff06f          	j	800020c8 <_ZN3TCB8dispatchEv+0x54>
        Scheduler::put(old);
    80002108:	00090513          	mv	a0,s2
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	544080e7          	jalr	1348(ra) # 80001650 <_ZN9Scheduler3putEP3TCB>
    80002114:	f99ff06f          	j	800020ac <_ZN3TCB8dispatchEv+0x38>
    bool isFinished() const { return finished; }
    80002118:	02894783          	lbu	a5,40(s2)
    if(old->isFinished())
    8000211c:	04079063          	bnez	a5,8000215c <_ZN3TCB8dispatchEv+0xe8>
    if(!running)
    80002120:	0000a597          	auipc	a1,0xa
    80002124:	9105b583          	ld	a1,-1776(a1) # 8000ba30 <_ZN3TCB7runningE>
    80002128:	00058e63          	beqz	a1,80002144 <_ZN3TCB8dispatchEv+0xd0>
    timeSliceCounter = 0;
    8000212c:	0000a797          	auipc	a5,0xa
    80002130:	9007be23          	sd	zero,-1764(a5) # 8000ba48 <_ZN3TCB16timeSliceCounterE>
    contextSwitch(&old->context, &running->context);
    80002134:	01858593          	addi	a1,a1,24
    80002138:	01890513          	addi	a0,s2,24
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	fd4080e7          	jalr	-44(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002144:	01813083          	ld	ra,24(sp)
    80002148:	01013403          	ld	s0,16(sp)
    8000214c:	00813483          	ld	s1,8(sp)
    80002150:	00013903          	ld	s2,0(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret
        garbage->put(old);
    8000215c:	00090593          	mv	a1,s2
    80002160:	0000a517          	auipc	a0,0xa
    80002164:	8e053503          	ld	a0,-1824(a0) # 8000ba40 <_ZN3TCB7garbageE>
    80002168:	00001097          	auipc	ra,0x1
    8000216c:	df4080e7          	jalr	-524(ra) # 80002f5c <_ZN4List3putEP3TCB>
    80002170:	fb1ff06f          	j	80002120 <_ZN3TCB8dispatchEv+0xac>

0000000080002174 <_ZN3TCB10initializeEPFvPvES0_S0_>:
    this->body = body;
    80002174:	00b53023          	sd	a1,0(a0)
    this->args = args;
    80002178:	00c53423          	sd	a2,8(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    8000217c:	00200793          	li	a5,2
    80002180:	02f53823          	sd	a5,48(a0)
    this->finished = false;
    80002184:	02050423          	sb	zero,40(a0)
    this->active = true;
    80002188:	00100793          	li	a5,1
    8000218c:	02f504a3          	sb	a5,41(a0)
    this->sleeping = false;
    80002190:	02050c23          	sb	zero,56(a0)
    this->supervised = false;
    80002194:	02050ca3          	sb	zero,57(a0)
    this->stack = (uint64*)stack;
    80002198:	00d53823          	sd	a3,16(a0)
    context.ra = body != nullptr ? (uint64)&wrapper : 0;
    8000219c:	04058663          	beqz	a1,800021e8 <_ZN3TCB10initializeEPFvPvES0_S0_+0x74>
    800021a0:	00000797          	auipc	a5,0x0
    800021a4:	e5c78793          	addi	a5,a5,-420 # 80001ffc <_ZN3TCB7wrapperEv>
    800021a8:	00f53c23          	sd	a5,24(a0)
    context.sp = this->stack != nullptr ? (uint64)(this->stack + DEFAULT_STACK_SIZE) : 0;
    800021ac:	04068263          	beqz	a3,800021f0 <_ZN3TCB10initializeEPFvPvES0_S0_+0x7c>
    800021b0:	000087b7          	lui	a5,0x8
    800021b4:	00f686b3          	add	a3,a3,a5
    800021b8:	02d53023          	sd	a3,32(a0)
    if(body != nullptr)
    800021bc:	02058e63          	beqz	a1,800021f8 <_ZN3TCB10initializeEPFvPvES0_S0_+0x84>
void TCB::initialize(TCB::Body body, void *args, void* stack) {
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
        Scheduler::put(this);
    800021d0:	fffff097          	auipc	ra,0xfffff
    800021d4:	480080e7          	jalr	1152(ra) # 80001650 <_ZN9Scheduler3putEP3TCB>
}
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret
    context.ra = body != nullptr ? (uint64)&wrapper : 0;
    800021e8:	00000793          	li	a5,0
    800021ec:	fbdff06f          	j	800021a8 <_ZN3TCB10initializeEPFvPvES0_S0_+0x34>
    context.sp = this->stack != nullptr ? (uint64)(this->stack + DEFAULT_STACK_SIZE) : 0;
    800021f0:	00000693          	li	a3,0
    800021f4:	fc5ff06f          	j	800021b8 <_ZN3TCB10initializeEPFvPvES0_S0_+0x44>
    800021f8:	00008067          	ret

00000000800021fc <_ZN3TCB12createThreadEPFvPvES0_S0_>:
TCB *TCB::createThread(TCB::Body body, void* args, void* stack) {
    800021fc:	fd010113          	addi	sp,sp,-48
    80002200:	02113423          	sd	ra,40(sp)
    80002204:	02813023          	sd	s0,32(sp)
    80002208:	00913c23          	sd	s1,24(sp)
    8000220c:	01213823          	sd	s2,16(sp)
    80002210:	01313423          	sd	s3,8(sp)
    80002214:	01413023          	sd	s4,0(sp)
    80002218:	03010413          	addi	s0,sp,48
    8000221c:	00050913          	mv	s2,a0
    80002220:	00058993          	mv	s3,a1
    80002224:	00060a13          	mv	s4,a2
    TCB *t = (TCB*)MemoryAllocator::allocate(sizeof(TCB));
    80002228:	04000513          	li	a0,64
    8000222c:	00001097          	auipc	ra,0x1
    80002230:	a34080e7          	jalr	-1484(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    80002234:	00050493          	mv	s1,a0
    t->initialize(body, args, stack);
    80002238:	000a0693          	mv	a3,s4
    8000223c:	00098613          	mv	a2,s3
    80002240:	00090593          	mv	a1,s2
    80002244:	00000097          	auipc	ra,0x0
    80002248:	f30080e7          	jalr	-208(ra) # 80002174 <_ZN3TCB10initializeEPFvPvES0_S0_>
    if(!garbage)
    8000224c:	00009797          	auipc	a5,0x9
    80002250:	7f47b783          	ld	a5,2036(a5) # 8000ba40 <_ZN3TCB7garbageE>
    80002254:	02078463          	beqz	a5,8000227c <_ZN3TCB12createThreadEPFvPvES0_S0_+0x80>
}
    80002258:	00048513          	mv	a0,s1
    8000225c:	02813083          	ld	ra,40(sp)
    80002260:	02013403          	ld	s0,32(sp)
    80002264:	01813483          	ld	s1,24(sp)
    80002268:	01013903          	ld	s2,16(sp)
    8000226c:	00813983          	ld	s3,8(sp)
    80002270:	00013a03          	ld	s4,0(sp)
    80002274:	03010113          	addi	sp,sp,48
    80002278:	00008067          	ret
        garbage = List::create();
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	c44080e7          	jalr	-956(ra) # 80002ec0 <_ZN4List6createEv>
    80002284:	00009797          	auipc	a5,0x9
    80002288:	7aa7be23          	sd	a0,1980(a5) # 8000ba40 <_ZN3TCB7garbageE>
    return t;
    8000228c:	fcdff06f          	j	80002258 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x5c>

0000000080002290 <_ZN3TCB10freeThreadEPS_>:

void TCB::freeThread(TCB *t) {
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00113c23          	sd	ra,24(sp)
    80002298:	00813823          	sd	s0,16(sp)
    8000229c:	00913423          	sd	s1,8(sp)
    800022a0:	02010413          	addi	s0,sp,32
    800022a4:	00050493          	mv	s1,a0
    if(t == running)
    800022a8:	00009797          	auipc	a5,0x9
    800022ac:	7887b783          	ld	a5,1928(a5) # 8000ba30 <_ZN3TCB7runningE>
    800022b0:	02a78863          	beq	a5,a0,800022e0 <_ZN3TCB10freeThreadEPS_+0x50>
        running = nullptr;
    MemoryAllocator::free(t->stack);
    800022b4:	0104b503          	ld	a0,16(s1)
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	b64080e7          	jalr	-1180(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
    MemoryAllocator::free(t);
    800022c0:	00048513          	mv	a0,s1
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	b58080e7          	jalr	-1192(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
}
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	02010113          	addi	sp,sp,32
    800022dc:	00008067          	ret
        running = nullptr;
    800022e0:	00009797          	auipc	a5,0x9
    800022e4:	7407b823          	sd	zero,1872(a5) # 8000ba30 <_ZN3TCB7runningE>
    800022e8:	fcdff06f          	j	800022b4 <_ZN3TCB10freeThreadEPS_+0x24>

00000000800022ec <_ZN3TCB5sleepEmPS_>:

void TCB::sleep(time_t time, TCB* t) {
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00113423          	sd	ra,8(sp)
    800022f4:	00813023          	sd	s0,0(sp)
    800022f8:	01010413          	addi	s0,sp,16
    800022fc:	00058613          	mv	a2,a1
    running->setSleeping(true);
    80002300:	00009797          	auipc	a5,0x9
    80002304:	7307b783          	ld	a5,1840(a5) # 8000ba30 <_ZN3TCB7runningE>
    void setSleeping(bool sleeping) { this->sleeping = sleeping; }
    80002308:	00100713          	li	a4,1
    8000230c:	02e78c23          	sb	a4,56(a5)
    Sleeping::put(running, time, t);
    80002310:	00050593          	mv	a1,a0
    80002314:	00078513          	mv	a0,a5
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	aac080e7          	jalr	-1364(ra) # 80001dc4 <_ZN8Sleeping3putEP3TCBmS1_>
    TCB::dispatch();
    80002320:	00000097          	auipc	ra,0x0
    80002324:	d54080e7          	jalr	-684(ra) # 80002074 <_ZN3TCB8dispatchEv>
}
    80002328:	00813083          	ld	ra,8(sp)
    8000232c:	00013403          	ld	s0,0(sp)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret

0000000080002338 <_ZN3TCB11freeGarbageEv>:

void TCB::freeGarbage() {
    80002338:	ff010113          	addi	sp,sp,-16
    8000233c:	00113423          	sd	ra,8(sp)
    80002340:	00813023          	sd	s0,0(sp)
    80002344:	01010413          	addi	s0,sp,16
    while(!TCB::garbage->empty()){
    80002348:	00009517          	auipc	a0,0x9
    8000234c:	6f853503          	ld	a0,1784(a0) # 8000ba40 <_ZN3TCB7garbageE>

    void put(TCB* thread);

    TCB* get();

    bool empty() { return head == nullptr; }
    80002350:	00053783          	ld	a5,0(a0)
    80002354:	00078c63          	beqz	a5,8000236c <_ZN3TCB11freeGarbageEv+0x34>
        TCB* t = TCB::garbage->get();
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	b9c080e7          	jalr	-1124(ra) # 80002ef4 <_ZN4List3getEv>
        TCB::freeThread(t);
    80002360:	00000097          	auipc	ra,0x0
    80002364:	f30080e7          	jalr	-208(ra) # 80002290 <_ZN3TCB10freeThreadEPS_>
    while(!TCB::garbage->empty()){
    80002368:	fe1ff06f          	j	80002348 <_ZN3TCB11freeGarbageEv+0x10>
    }
    List::free(garbage);
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	c64080e7          	jalr	-924(ra) # 80002fd0 <_ZN4List4freeEPS_>
    freeThread(running);
    80002374:	00009517          	auipc	a0,0x9
    80002378:	6bc53503          	ld	a0,1724(a0) # 8000ba30 <_ZN3TCB7runningE>
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	f14080e7          	jalr	-236(ra) # 80002290 <_ZN3TCB10freeThreadEPS_>
}
    80002384:	00813083          	ld	ra,8(sp)
    80002388:	00013403          	ld	s0,0(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <_ZN3TCB4joinEPS_m>:

void TCB::join(TCB *t, time_t time) {
    80002394:	fe010113          	addi	sp,sp,-32
    80002398:	00113c23          	sd	ra,24(sp)
    8000239c:	00813823          	sd	s0,16(sp)
    800023a0:	00913423          	sd	s1,8(sp)
    800023a4:	02010413          	addi	s0,sp,32
    800023a8:	00050493          	mv	s1,a0
    if(time == 0) {
    800023ac:	00059c63          	bnez	a1,800023c4 <_ZN3TCB4joinEPS_m+0x30>
    bool isFinished() const { return finished; }
    800023b0:	0284c783          	lbu	a5,40(s1)
        while (!t->isFinished())
    800023b4:	02079063          	bnez	a5,800023d4 <_ZN3TCB4joinEPS_m+0x40>
            TCB::dispatch();
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	cbc080e7          	jalr	-836(ra) # 80002074 <_ZN3TCB8dispatchEv>
        while (!t->isFinished())
    800023c0:	ff1ff06f          	j	800023b0 <_ZN3TCB4joinEPS_m+0x1c>
    800023c4:	00058513          	mv	a0,a1
    }
    else{
        sleep(time, t);
    800023c8:	00048593          	mv	a1,s1
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	f20080e7          	jalr	-224(ra) # 800022ec <_ZN3TCB5sleepEmPS_>
    }
}
    800023d4:	01813083          	ld	ra,24(sp)
    800023d8:	01013403          	ld	s0,16(sp)
    800023dc:	00813483          	ld	s1,8(sp)
    800023e0:	02010113          	addi	sp,sp,32
    800023e4:	00008067          	ret

00000000800023e8 <_ZN13ConsoleBuffer12createBufferEi>:
#include "../h/MemoryAllocator.hpp"
#include "../h/ConsoleHandler.hpp"
#include "../h/TCB.hpp"
#include "../h/syscall_c.hpp"

ConsoleBuffer *ConsoleBuffer::createBuffer(int size) {
    800023e8:	fe010113          	addi	sp,sp,-32
    800023ec:	00113c23          	sd	ra,24(sp)
    800023f0:	00813823          	sd	s0,16(sp)
    800023f4:	00913423          	sd	s1,8(sp)
    800023f8:	01213023          	sd	s2,0(sp)
    800023fc:	02010413          	addi	s0,sp,32
    80002400:	00050913          	mv	s2,a0
    ConsoleBuffer* b = (ConsoleBuffer*)MemoryAllocator::allocate(sizeof(ConsoleBuffer));
    80002404:	03800513          	li	a0,56
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	858080e7          	jalr	-1960(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    80002410:	00050493          	mv	s1,a0
    b->maxSize = size;
    80002414:	01252023          	sw	s2,0(a0)
    b->head = -1;
    80002418:	fff00793          	li	a5,-1
    8000241c:	00f52223          	sw	a5,4(a0)
    b->tail = 0;
    80002420:	00052423          	sw	zero,8(a0)
    b->currSize = 0;
    80002424:	00052623          	sw	zero,12(a0)
    b->buf = (char*)MemoryAllocator::allocate(sizeof(char) * size);
    80002428:	00090513          	mv	a0,s2
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	834080e7          	jalr	-1996(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    80002434:	00a4b823          	sd	a0,16(s1)
    b->mutexHead = Sem::createSemaphore(1);
    80002438:	00100513          	li	a0,1
    8000243c:	fffff097          	auipc	ra,0xfffff
    80002440:	11c080e7          	jalr	284(ra) # 80001558 <_ZN3Sem15createSemaphoreEj>
    80002444:	00a4bc23          	sd	a0,24(s1)
    b->mutexTail = Sem::createSemaphore(1);
    80002448:	00100513          	li	a0,1
    8000244c:	fffff097          	auipc	ra,0xfffff
    80002450:	10c080e7          	jalr	268(ra) # 80001558 <_ZN3Sem15createSemaphoreEj>
    80002454:	02a4b023          	sd	a0,32(s1)
    b->itemsAvailable = Sem::createSemaphore(0);
    80002458:	00000513          	li	a0,0
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	0fc080e7          	jalr	252(ra) # 80001558 <_ZN3Sem15createSemaphoreEj>
    80002464:	02a4b823          	sd	a0,48(s1)
    b->spaceAvailable = Sem::createSemaphore(size);
    80002468:	00090513          	mv	a0,s2
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	0ec080e7          	jalr	236(ra) # 80001558 <_ZN3Sem15createSemaphoreEj>
    80002474:	02a4b423          	sd	a0,40(s1)
    return b;
}
    80002478:	00048513          	mv	a0,s1
    8000247c:	01813083          	ld	ra,24(sp)
    80002480:	01013403          	ld	s0,16(sp)
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	00013903          	ld	s2,0(sp)
    8000248c:	02010113          	addi	sp,sp,32
    80002490:	00008067          	ret

0000000080002494 <_ZN13ConsoleBuffer3putEc>:

void ConsoleBuffer::put(char c) {
    80002494:	fe010113          	addi	sp,sp,-32
    80002498:	00113c23          	sd	ra,24(sp)
    8000249c:	00813823          	sd	s0,16(sp)
    800024a0:	00913423          	sd	s1,8(sp)
    800024a4:	01213023          	sd	s2,0(sp)
    800024a8:	02010413          	addi	s0,sp,32
    800024ac:	00050493          	mv	s1,a0
    800024b0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800024b4:	02853503          	ld	a0,40(a0)
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	f90080e7          	jalr	-112(ra) # 80001448 <_ZN3Sem4waitEv>
    mutexTail->wait();
    800024c0:	0204b503          	ld	a0,32(s1)
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	f84080e7          	jalr	-124(ra) # 80001448 <_ZN3Sem4waitEv>
    buf[tail] = c;
    800024cc:	0104b783          	ld	a5,16(s1)
    800024d0:	0084a703          	lw	a4,8(s1)
    800024d4:	00e787b3          	add	a5,a5,a4
    800024d8:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % maxSize;
    800024dc:	0084a783          	lw	a5,8(s1)
    800024e0:	0017879b          	addiw	a5,a5,1
    800024e4:	0004a703          	lw	a4,0(s1)
    800024e8:	02e7e7bb          	remw	a5,a5,a4
    800024ec:	00f4a423          	sw	a5,8(s1)
    currSize++;
    800024f0:	00c4a783          	lw	a5,12(s1)
    800024f4:	0017879b          	addiw	a5,a5,1
    800024f8:	00f4a623          	sw	a5,12(s1)
    mutexTail->signal();
    800024fc:	0204b503          	ld	a0,32(s1)
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	fd8080e7          	jalr	-40(ra) # 800014d8 <_ZN3Sem6signalEv>
    itemsAvailable->signal();
    80002508:	0304b503          	ld	a0,48(s1)
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	fcc080e7          	jalr	-52(ra) # 800014d8 <_ZN3Sem6signalEv>
}
    80002514:	01813083          	ld	ra,24(sp)
    80002518:	01013403          	ld	s0,16(sp)
    8000251c:	00813483          	ld	s1,8(sp)
    80002520:	00013903          	ld	s2,0(sp)
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00008067          	ret

000000008000252c <_ZN13ConsoleBuffer3getEv>:

char ConsoleBuffer::get() {
    8000252c:	fe010113          	addi	sp,sp,-32
    80002530:	00113c23          	sd	ra,24(sp)
    80002534:	00813823          	sd	s0,16(sp)
    80002538:	00913423          	sd	s1,8(sp)
    8000253c:	01213023          	sd	s2,0(sp)
    80002540:	02010413          	addi	s0,sp,32
    80002544:	00050493          	mv	s1,a0
    itemsAvailable->wait();
    80002548:	03053503          	ld	a0,48(a0)
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	efc080e7          	jalr	-260(ra) # 80001448 <_ZN3Sem4waitEv>
    mutexHead->wait();
    80002554:	0184b503          	ld	a0,24(s1)
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	ef0080e7          	jalr	-272(ra) # 80001448 <_ZN3Sem4waitEv>
    head = (head + 1) % maxSize;
    80002560:	0044a783          	lw	a5,4(s1)
    80002564:	0017879b          	addiw	a5,a5,1
    80002568:	0004a703          	lw	a4,0(s1)
    8000256c:	02e7e7bb          	remw	a5,a5,a4
    80002570:	0007871b          	sext.w	a4,a5
    80002574:	00f4a223          	sw	a5,4(s1)
    char ret = buf[head];
    80002578:	0104b783          	ld	a5,16(s1)
    8000257c:	00e787b3          	add	a5,a5,a4
    80002580:	0007c903          	lbu	s2,0(a5)
    currSize--;
    80002584:	00c4a783          	lw	a5,12(s1)
    80002588:	fff7879b          	addiw	a5,a5,-1
    8000258c:	00f4a623          	sw	a5,12(s1)
    mutexHead->signal();
    80002590:	0184b503          	ld	a0,24(s1)
    80002594:	fffff097          	auipc	ra,0xfffff
    80002598:	f44080e7          	jalr	-188(ra) # 800014d8 <_ZN3Sem6signalEv>
    spaceAvailable->signal();
    8000259c:	0284b503          	ld	a0,40(s1)
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	f38080e7          	jalr	-200(ra) # 800014d8 <_ZN3Sem6signalEv>
    return ret;
}
    800025a8:	00090513          	mv	a0,s2
    800025ac:	01813083          	ld	ra,24(sp)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	00013903          	ld	s2,0(sp)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00008067          	ret

00000000800025c4 <_ZN13ConsoleBuffer4freeEPS_>:

void ConsoleBuffer::free(ConsoleBuffer *cb) {
    800025c4:	fe010113          	addi	sp,sp,-32
    800025c8:	00113c23          	sd	ra,24(sp)
    800025cc:	00813823          	sd	s0,16(sp)
    800025d0:	00913423          	sd	s1,8(sp)
    800025d4:	02010413          	addi	s0,sp,32
    800025d8:	00050493          	mv	s1,a0
    MemoryAllocator::free(cb->buf);
    800025dc:	01053503          	ld	a0,16(a0)
    800025e0:	00001097          	auipc	ra,0x1
    800025e4:	83c080e7          	jalr	-1988(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
    Sem::freeSemaphore(cb->itemsAvailable);
    800025e8:	0304b503          	ld	a0,48(s1)
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	fc0080e7          	jalr	-64(ra) # 800015ac <_ZN3Sem13freeSemaphoreEPS_>
    Sem::freeSemaphore(cb->spaceAvailable);
    800025f4:	0284b503          	ld	a0,40(s1)
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	fb4080e7          	jalr	-76(ra) # 800015ac <_ZN3Sem13freeSemaphoreEPS_>
    Sem::freeSemaphore(cb->mutexTail);
    80002600:	0204b503          	ld	a0,32(s1)
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	fa8080e7          	jalr	-88(ra) # 800015ac <_ZN3Sem13freeSemaphoreEPS_>
    Sem::freeSemaphore(cb->mutexHead);
    8000260c:	0184b503          	ld	a0,24(s1)
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	f9c080e7          	jalr	-100(ra) # 800015ac <_ZN3Sem13freeSemaphoreEPS_>
    MemoryAllocator::free(cb);
    80002618:	00048513          	mv	a0,s1
    8000261c:	00001097          	auipc	ra,0x1
    80002620:	800080e7          	jalr	-2048(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
}
    80002624:	01813083          	ld	ra,24(sp)
    80002628:	01013403          	ld	s0,16(sp)
    8000262c:	00813483          	ld	s1,8(sp)
    80002630:	02010113          	addi	sp,sp,32
    80002634:	00008067          	ret

0000000080002638 <_ZN5Riscv10popSppSpieEv>:
#include "../h/Sleeping.hpp"
#include "../h/Scheduler.hpp"
#include "../h/ConsoleHandler.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie() {
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00813423          	sd	s0,8(sp)
    80002640:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002644:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002648:	10200073          	sret
}
    8000264c:	00813403          	ld	s0,8(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret

0000000080002658 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002658:	f8010113          	addi	sp,sp,-128
    8000265c:	06113c23          	sd	ra,120(sp)
    80002660:	06813823          	sd	s0,112(sp)
    80002664:	06913423          	sd	s1,104(sp)
    80002668:	07213023          	sd	s2,96(sp)
    8000266c:	08010413          	addi	s0,sp,128
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r" (scause));
    80002670:	142027f3          	csrr	a5,scause
    80002674:	faf43423          	sd	a5,-88(s0)
    return scause;
    80002678:	fa843483          	ld	s1,-88(s0)
    uint64 scause = readScause();
    if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
    8000267c:	ff848713          	addi	a4,s1,-8
    80002680:	00100793          	li	a5,1
    80002684:	0ce7f463          	bgeu	a5,a4,8000274c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
            ConsoleHandler::outputBuffer->put(c);
        }
        writeSstatus(sstatus);
        writeSepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80002688:	fff00793          	li	a5,-1
    8000268c:	03f79793          	slli	a5,a5,0x3f
    80002690:	00178793          	addi	a5,a5,1
    80002694:	3af48663          	beq	s1,a5,80002a40 <_ZN5Riscv20handleSupervisorTrapEv+0x3e8>
        while(!TCB::garbage->empty()){
            TCB* t = TCB::garbage->get();
            TCB::freeThread(t);
        }
    }
    else if(scause == 0x8000000000000009UL){
    80002698:	fff00793          	li	a5,-1
    8000269c:	03f79793          	slli	a5,a5,0x3f
    800026a0:	00978793          	addi	a5,a5,9
    800026a4:	44f48663          	beq	s1,a5,80002af0 <_ZN5Riscv20handleSupervisorTrapEv+0x498>
        }
        plic_complete(n);
        mcSip(SIP_SEIP);
    }
    else{
        ConsoleHandler::putString("scause: ");
    800026a8:	00007517          	auipc	a0,0x7
    800026ac:	97850513          	addi	a0,a0,-1672 # 80009020 <CONSOLE_STATUS+0x10>
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	b68080e7          	jalr	-1176(ra) # 80003218 <_ZN14ConsoleHandler9putStringEPKc>
        ConsoleHandler::putULong(scause);
    800026b8:	00048513          	mv	a0,s1
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	bb8080e7          	jalr	-1096(ra) # 80003274 <_ZN14ConsoleHandler8putULongEm>
        ConsoleHandler::putString("\nsepc: ");
    800026c4:	00007517          	auipc	a0,0x7
    800026c8:	96c50513          	addi	a0,a0,-1684 # 80009030 <CONSOLE_STATUS+0x20>
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	b4c080e7          	jalr	-1204(ra) # 80003218 <_ZN14ConsoleHandler9putStringEPKc>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r" (sepc));
    800026d4:	141027f3          	csrr	a5,sepc
    800026d8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800026dc:	fd843503          	ld	a0,-40(s0)
        ConsoleHandler::putULong(readSepc());
    800026e0:	00001097          	auipc	ra,0x1
    800026e4:	b94080e7          	jalr	-1132(ra) # 80003274 <_ZN14ConsoleHandler8putULongEm>
        ConsoleHandler::putString("\nstval: ");
    800026e8:	00007517          	auipc	a0,0x7
    800026ec:	95050513          	addi	a0,a0,-1712 # 80009038 <CONSOLE_STATUS+0x28>
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	b28080e7          	jalr	-1240(ra) # 80003218 <_ZN14ConsoleHandler9putStringEPKc>
    __asm__ volatile("csrr %[stval], stval" : [stval] "=r" (stval));
    800026f8:	143027f3          	csrr	a5,stval
    800026fc:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80002700:	fd043503          	ld	a0,-48(s0)
        ConsoleHandler::putULong(readStval());
    80002704:	00001097          	auipc	ra,0x1
    80002708:	b70080e7          	jalr	-1168(ra) # 80003274 <_ZN14ConsoleHandler8putULongEm>
        ConsoleHandler::putc('\n');
    8000270c:	00a00513          	li	a0,10
    80002710:	00001097          	auipc	ra,0x1
    80002714:	ad4080e7          	jalr	-1324(ra) # 800031e4 <_ZN14ConsoleHandler4putcEc>
        TCB::running->setFinished(true);
    80002718:	00009797          	auipc	a5,0x9
    8000271c:	2a87b783          	ld	a5,680(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002720:	0007b703          	ld	a4,0(a5)
    void setFinished(bool finished) { this->finished = finished; }
    80002724:	00100793          	li	a5,1
    80002728:	02f70423          	sb	a5,40(a4)
        TCB::fatalError = true;
    8000272c:	00009717          	auipc	a4,0x9
    80002730:	28c73703          	ld	a4,652(a4) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002734:	00f70023          	sb	a5,0(a4)
        Sleeping::erase();
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	7b8080e7          	jalr	1976(ra) # 80001ef0 <_ZN8Sleeping5eraseEv>
        TCB::dispatch();
    80002740:	00000097          	auipc	ra,0x0
    80002744:	934080e7          	jalr	-1740(ra) # 80002074 <_ZN3TCB8dispatchEv>
    }
    80002748:	1400006f          	j	80002888 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
        __asm__ volatile("ld %0, 10*8(fp)" : "=r" (a0));
    8000274c:	05043783          	ld	a5,80(s0)
    80002750:	f8f43023          	sd	a5,-128(s0)
        __asm__ volatile("ld %0, 11*8(fp)" : "=r" (a1));
    80002754:	05843783          	ld	a5,88(s0)
    80002758:	f8f43423          	sd	a5,-120(s0)
        __asm__ volatile("ld %0, 12*8(fp)" : "=r" (a2));
    8000275c:	06043783          	ld	a5,96(s0)
    80002760:	f8f43823          	sd	a5,-112(s0)
        __asm__ volatile("ld %0, 13*8(fp)" : "=r" (a3));
    80002764:	06843783          	ld	a5,104(s0)
    80002768:	f8f43c23          	sd	a5,-104(s0)
        __asm__ volatile("ld %0, 14*8(fp)" : "=r" (a4));
    8000276c:	07043783          	ld	a5,112(s0)
    80002770:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r" (sepc));
    80002774:	141027f3          	csrr	a5,sepc
    80002778:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    8000277c:	fb843483          	ld	s1,-72(s0)
        uint64 sepc = readSepc()+4;
    80002780:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r" (sstatus));
    80002784:	100027f3          	csrr	a5,sstatus
    80002788:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    8000278c:	fb043903          	ld	s2,-80(s0)
        if(a0 == 0x1){
    80002790:	f8043703          	ld	a4,-128(s0)
    80002794:	00100793          	li	a5,1
    80002798:	0cf70663          	beq	a4,a5,80002864 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
        else if(a0 == 0x2){
    8000279c:	f8043703          	ld	a4,-128(s0)
    800027a0:	00200793          	li	a5,2
    800027a4:	0ef70e63          	beq	a4,a5,800028a0 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
        else if(a0 == 0x3){
    800027a8:	f8043703          	ld	a4,-128(s0)
    800027ac:	00300793          	li	a5,3
    800027b0:	10f70663          	beq	a4,a5,800028bc <_ZN5Riscv20handleSupervisorTrapEv+0x264>
        else if(a0 == 0x4){
    800027b4:	f8043703          	ld	a4,-128(s0)
    800027b8:	00400793          	li	a5,4
    800027bc:	10f70c63          	beq	a4,a5,800028d4 <_ZN5Riscv20handleSupervisorTrapEv+0x27c>
        else if(a0 == 0x11){
    800027c0:	f8043703          	ld	a4,-128(s0)
    800027c4:	01100793          	li	a5,17
    800027c8:	12f70263          	beq	a4,a5,800028ec <_ZN5Riscv20handleSupervisorTrapEv+0x294>
        else if(a0 == 0x12){
    800027cc:	f8043703          	ld	a4,-128(s0)
    800027d0:	01200793          	li	a5,18
    800027d4:	16f70463          	beq	a4,a5,8000293c <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
        else if(a0 == 0x13){
    800027d8:	f8043703          	ld	a4,-128(s0)
    800027dc:	01300793          	li	a5,19
    800027e0:	18f70263          	beq	a4,a5,80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x30c>
        else if(a0 == 0x14){
    800027e4:	f8043703          	ld	a4,-128(s0)
    800027e8:	01400793          	li	a5,20
    800027ec:	18f70263          	beq	a4,a5,80002970 <_ZN5Riscv20handleSupervisorTrapEv+0x318>
        else if(a0 == 0x21){
    800027f0:	f8043703          	ld	a4,-128(s0)
    800027f4:	02100793          	li	a5,33
    800027f8:	18f70863          	beq	a4,a5,80002988 <_ZN5Riscv20handleSupervisorTrapEv+0x330>
        else if(a0 == 0x22){
    800027fc:	f8043703          	ld	a4,-128(s0)
    80002800:	02200793          	li	a5,34
    80002804:	1af70863          	beq	a4,a5,800029b4 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
        else if(a0 == 0x23){
    80002808:	f8043703          	ld	a4,-128(s0)
    8000280c:	02300793          	li	a5,35
    80002810:	1af70e63          	beq	a4,a5,800029cc <_ZN5Riscv20handleSupervisorTrapEv+0x374>
        else if(a0 == 0x24){
    80002814:	f8043703          	ld	a4,-128(s0)
    80002818:	02400793          	li	a5,36
    8000281c:	1cf70463          	beq	a4,a5,800029e4 <_ZN5Riscv20handleSupervisorTrapEv+0x38c>
        else if(a0 == 0x31){
    80002820:	f8043703          	ld	a4,-128(s0)
    80002824:	03100793          	li	a5,49
    80002828:	1cf70a63          	beq	a4,a5,800029fc <_ZN5Riscv20handleSupervisorTrapEv+0x3a4>
        else if(a0 == 0x41){
    8000282c:	f8043703          	ld	a4,-128(s0)
    80002830:	04100793          	li	a5,65
    80002834:	1ef70863          	beq	a4,a5,80002a24 <_ZN5Riscv20handleSupervisorTrapEv+0x3cc>
        else if(a0 == 0x42){
    80002838:	f8043703          	ld	a4,-128(s0)
    8000283c:	04200793          	li	a5,66
    80002840:	04f71063          	bne	a4,a5,80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            char c = (char) a1;
    80002844:	f8843583          	ld	a1,-120(s0)
            ConsoleHandler::outputBuffer->put(c);
    80002848:	0ff5f593          	andi	a1,a1,255
    8000284c:	00009797          	auipc	a5,0x9
    80002850:	1847b783          	ld	a5,388(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002854:	0007b503          	ld	a0,0(a5)
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	c3c080e7          	jalr	-964(ra) # 80002494 <_ZN13ConsoleBuffer3putEc>
    80002860:	0200006f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            a0 = (uint64) MemoryAllocator::allocate((size_t)a1 * MEM_BLOCK_SIZE);
    80002864:	f8843503          	ld	a0,-120(s0)
    80002868:	00651513          	slli	a0,a0,0x6
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	3f4080e7          	jalr	1012(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    80002874:	f8a43023          	sd	a0,-128(s0)
            overridea0(a0);
    80002878:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    8000287c:	04f43823          	sd	a5,80(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r" (sstatus));
    80002880:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r" (sepc));
    80002884:	14149073          	csrw	sepc,s1
    80002888:	07813083          	ld	ra,120(sp)
    8000288c:	07013403          	ld	s0,112(sp)
    80002890:	06813483          	ld	s1,104(sp)
    80002894:	06013903          	ld	s2,96(sp)
    80002898:	08010113          	addi	sp,sp,128
    8000289c:	00008067          	ret
            a0 = MemoryAllocator::free((void*)a1);
    800028a0:	f8843503          	ld	a0,-120(s0)
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	578080e7          	jalr	1400(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
    800028ac:	f8a43023          	sd	a0,-128(s0)
            overridea0(a0);
    800028b0:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    800028b4:	04f43823          	sd	a5,80(s0)
}
    800028b8:	fc9ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            a0 = MemoryAllocator::getFreeSpace();
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	284080e7          	jalr	644(ra) # 80002b40 <_ZN15MemoryAllocator12getFreeSpaceEv>
    800028c4:	f8a43023          	sd	a0,-128(s0)
            overridea0(a0);
    800028c8:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    800028cc:	04f43823          	sd	a5,80(s0)
}
    800028d0:	fb1ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            a0 = MemoryAllocator::getLargestFreeBlock();
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	28c080e7          	jalr	652(ra) # 80002b60 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    800028dc:	f8a43023          	sd	a0,-128(s0)
            overridea0(a0);
    800028e0:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    800028e4:	04f43823          	sd	a5,80(s0)
}
    800028e8:	f99ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            TCB* t = TCB::createThread((void(*)(void*))a2, (void *)a3, (void*)a4);
    800028ec:	f9043503          	ld	a0,-112(s0)
    800028f0:	f9843583          	ld	a1,-104(s0)
    800028f4:	fa043603          	ld	a2,-96(s0)
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	904080e7          	jalr	-1788(ra) # 800021fc <_ZN3TCB12createThreadEPFvPvES0_S0_>
            if(!TCB::running)
    80002900:	00009797          	auipc	a5,0x9
    80002904:	0c07b783          	ld	a5,192(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002908:	0007b783          	ld	a5,0(a5)
    8000290c:	02078063          	beqz	a5,8000292c <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
            __asm__ volatile("addi a1, %[a1], 0" : : [a1]  "r" (a1));
    80002910:	f8843783          	ld	a5,-120(s0)
    80002914:	00078593          	mv	a1,a5
            __asm__ volatile("addi t2, %[t], 0" : : [t] "r" (t));
    80002918:	00050393          	mv	t2,a0
            __asm__ volatile("sd t2, 0(a1)");
    8000291c:	0075b023          	sd	t2,0(a1)
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    80002920:	00000793          	li	a5,0
    80002924:	04f43823          	sd	a5,80(s0)
}
    80002928:	f59ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
                TCB::running = t;
    8000292c:	00009797          	auipc	a5,0x9
    80002930:	0947b783          	ld	a5,148(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002934:	00a7b023          	sd	a0,0(a5)
    80002938:	fd9ff06f          	j	80002910 <_ZN5Riscv20handleSupervisorTrapEv+0x2b8>
            TCB::running->setFinished(true);
    8000293c:	00009797          	auipc	a5,0x9
    80002940:	0847b783          	ld	a5,132(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002944:	0007b783          	ld	a5,0(a5)
    80002948:	00100713          	li	a4,1
    8000294c:	02e78423          	sb	a4,40(a5)
            TCB::dispatch();
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	724080e7          	jalr	1828(ra) # 80002074 <_ZN3TCB8dispatchEv>
            overridea0(a0);
    80002958:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    8000295c:	04f43823          	sd	a5,80(s0)
}
    80002960:	f21ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            TCB::dispatch();
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	710080e7          	jalr	1808(ra) # 80002074 <_ZN3TCB8dispatchEv>
    8000296c:	f15ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            TCB::join(*(TCB**)a1, a2);
    80002970:	f8843783          	ld	a5,-120(s0)
    80002974:	f9043583          	ld	a1,-112(s0)
    80002978:	0007b503          	ld	a0,0(a5)
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	a18080e7          	jalr	-1512(ra) # 80002394 <_ZN3TCB4joinEPS_m>
    80002984:	efdff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            Sem* s = Sem::createSemaphore(a2);
    80002988:	f9043503          	ld	a0,-112(s0)
    8000298c:	0005051b          	sext.w	a0,a0
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	bc8080e7          	jalr	-1080(ra) # 80001558 <_ZN3Sem15createSemaphoreEj>
            __asm__ volatile("mv a1, %[a1]" : : [a1]  "r" (a1));
    80002998:	f8843783          	ld	a5,-120(s0)
    8000299c:	00078593          	mv	a1,a5
            __asm__ volatile("mv t2, %[s]" : : [s] "r" (s));
    800029a0:	00050393          	mv	t2,a0
            __asm__ volatile("sd t2, 0(a1)");
    800029a4:	0075b023          	sd	t2,0(a1)
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    800029a8:	00000793          	li	a5,0
    800029ac:	04f43823          	sd	a5,80(s0)
}
    800029b0:	ed1ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            Sem* s = (Sem*)a1;
    800029b4:	f8843503          	ld	a0,-120(s0)
            Sem::freeSemaphore(s);
    800029b8:	fffff097          	auipc	ra,0xfffff
    800029bc:	bf4080e7          	jalr	-1036(ra) # 800015ac <_ZN3Sem13freeSemaphoreEPS_>
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    800029c0:	00000793          	li	a5,0
    800029c4:	04f43823          	sd	a5,80(s0)
}
    800029c8:	eb9ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            Sem* s = (Sem*)a1;
    800029cc:	f8843503          	ld	a0,-120(s0)
            s->wait();
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	a78080e7          	jalr	-1416(ra) # 80001448 <_ZN3Sem4waitEv>
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    800029d8:	00000793          	li	a5,0
    800029dc:	04f43823          	sd	a5,80(s0)
}
    800029e0:	ea1ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            Sem* s = (Sem*)a1;
    800029e4:	f8843503          	ld	a0,-120(s0)
            s->signal();
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	af0080e7          	jalr	-1296(ra) # 800014d8 <_ZN3Sem6signalEv>
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    800029f0:	00000793          	li	a5,0
    800029f4:	04f43823          	sd	a5,80(s0)
}
    800029f8:	e89ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            if(a1 > 0) {
    800029fc:	f8843783          	ld	a5,-120(s0)
    80002a00:	00079863          	bnez	a5,80002a10 <_ZN5Riscv20handleSupervisorTrapEv+0x3b8>
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    80002a04:	00000793          	li	a5,0
    80002a08:	04f43823          	sd	a5,80(s0)
}
    80002a0c:	e75ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
                TCB::sleep(a1, nullptr);
    80002a10:	f8843503          	ld	a0,-120(s0)
    80002a14:	00000593          	li	a1,0
    80002a18:	00000097          	auipc	ra,0x0
    80002a1c:	8d4080e7          	jalr	-1836(ra) # 800022ec <_ZN3TCB5sleepEmPS_>
    80002a20:	fe5ff06f          	j	80002a04 <_ZN5Riscv20handleSupervisorTrapEv+0x3ac>
            char c = ConsoleHandler::inputBuffer->get();
    80002a24:	00009797          	auipc	a5,0x9
    80002a28:	f647b783          	ld	a5,-156(a5) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a2c:	0007b503          	ld	a0,0(a5)
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	afc080e7          	jalr	-1284(ra) # 8000252c <_ZN13ConsoleBuffer3getEv>
    __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (a0));
    80002a38:	04a43823          	sd	a0,80(s0)
}
    80002a3c:	e45ff06f          	j	80002880 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r" (mask));
    80002a40:	00200793          	li	a5,2
    80002a44:	1447b073          	csrc	sip,a5
        Sleeping::decrement();
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	478080e7          	jalr	1144(ra) # 80001ec0 <_ZN8Sleeping9decrementEv>
        while (Sleeping::needAwakening()){
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	2dc080e7          	jalr	732(ra) # 80001d2c <_ZN8Sleeping13needAwakeningEv>
    80002a58:	00050e63          	beqz	a0,80002a74 <_ZN5Riscv20handleSupervisorTrapEv+0x41c>
            TCB* t = Sleeping::get();
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	310080e7          	jalr	784(ra) # 80001d6c <_ZN8Sleeping3getEv>
    void setSleeping(bool sleeping) { this->sleeping = sleeping; }
    80002a64:	02050c23          	sb	zero,56(a0)
            Scheduler::put(t);
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	be8080e7          	jalr	-1048(ra) # 80001650 <_ZN9Scheduler3putEP3TCB>
        while (Sleeping::needAwakening()){
    80002a70:	fe1ff06f          	j	80002a50 <_ZN5Riscv20handleSupervisorTrapEv+0x3f8>
        TCB::timeSliceCounter++;
    80002a74:	00009717          	auipc	a4,0x9
    80002a78:	f1c73703          	ld	a4,-228(a4) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a7c:	00073783          	ld	a5,0(a4)
    80002a80:	00178793          	addi	a5,a5,1
    80002a84:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80002a88:	00009717          	auipc	a4,0x9
    80002a8c:	f3873703          	ld	a4,-200(a4) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a90:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002a94:	03073703          	ld	a4,48(a4)
    80002a98:	02e7f663          	bgeu	a5,a4,80002ac4 <_ZN5Riscv20handleSupervisorTrapEv+0x46c>
        while(!TCB::garbage->empty()){
    80002a9c:	00009797          	auipc	a5,0x9
    80002aa0:	f0c7b783          	ld	a5,-244(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002aa4:	0007b503          	ld	a0,0(a5)
    80002aa8:	00053783          	ld	a5,0(a0)
    80002aac:	dc078ee3          	beqz	a5,80002888 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
            TCB* t = TCB::garbage->get();
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	444080e7          	jalr	1092(ra) # 80002ef4 <_ZN4List3getEv>
            TCB::freeThread(t);
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	7d8080e7          	jalr	2008(ra) # 80002290 <_ZN3TCB10freeThreadEPS_>
        while(!TCB::garbage->empty()){
    80002ac0:	fddff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x444>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r" (sepc));
    80002ac4:	141027f3          	csrr	a5,sepc
    80002ac8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002acc:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r" (sstatus));
    80002ad0:	100027f3          	csrr	a5,sstatus
    80002ad4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002ad8:	fc043903          	ld	s2,-64(s0)
            TCB::dispatch();
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	598080e7          	jalr	1432(ra) # 80002074 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r" (sstatus));
    80002ae4:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r" (sepc));
    80002ae8:	14149073          	csrw	sepc,s1
}
    80002aec:	fb1ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x444>
        uint64 n = plic_claim();
    80002af0:	00004097          	auipc	ra,0x4
    80002af4:	754080e7          	jalr	1876(ra) # 80007244 <plic_claim>
    80002af8:	00050493          	mv	s1,a0
        if (n == CONSOLE_IRQ && (*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT)) {
    80002afc:	00a00793          	li	a5,10
    80002b00:	00f50e63          	beq	a0,a5,80002b1c <_ZN5Riscv20handleSupervisorTrapEv+0x4c4>
        plic_complete(n);
    80002b04:	00048513          	mv	a0,s1
    80002b08:	00004097          	auipc	ra,0x4
    80002b0c:	774080e7          	jalr	1908(ra) # 8000727c <plic_complete>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r" (mask));
    80002b10:	20000793          	li	a5,512
    80002b14:	1447b073          	csrc	sip,a5
}
    80002b18:	d71ff06f          	j	80002888 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
        if (n == CONSOLE_IRQ && (*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT)) {
    80002b1c:	00009797          	auipc	a5,0x9
    80002b20:	e4c7b783          	ld	a5,-436(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b24:	0007b783          	ld	a5,0(a5)
    80002b28:	0007c783          	lbu	a5,0(a5)
    80002b2c:	0017f793          	andi	a5,a5,1
    80002b30:	fc078ae3          	beqz	a5,80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x4ac>
            ConsoleHandler::handleInput();
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	568080e7          	jalr	1384(ra) # 8000309c <_ZN14ConsoleHandler11handleInputEv>
    80002b3c:	fc9ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x4ac>

0000000080002b40 <_ZN15MemoryAllocator12getFreeSpaceEv>:
size_t MemoryAllocator::freeSpace = 0;
size_t MemoryAllocator::largestFreeBlock = 0;
MemoryAllocator::Fragment* MemoryAllocator::allocatedHead = nullptr;
MemoryAllocator::Fragment* MemoryAllocator::freeHead = nullptr;

size_t MemoryAllocator::getFreeSpace() {
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00813423          	sd	s0,8(sp)
    80002b48:	01010413          	addi	s0,sp,16
    return freeSpace;
}
    80002b4c:	00009517          	auipc	a0,0x9
    80002b50:	f0453503          	ld	a0,-252(a0) # 8000ba50 <_ZN15MemoryAllocator9freeSpaceE>
    80002b54:	00813403          	ld	s0,8(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock() {
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00813423          	sd	s0,8(sp)
    80002b68:	01010413          	addi	s0,sp,16
    Fragment *f = freeHead;
    80002b6c:	00009797          	auipc	a5,0x9
    80002b70:	eec7b783          	ld	a5,-276(a5) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
    size_t size = 0;
    80002b74:	00000513          	li	a0,0
    80002b78:	0080006f          	j	80002b80 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x20>
    while (f){
        if(f->size > size)
            size = f->size;
        f = f->next;
    80002b7c:	0007b783          	ld	a5,0(a5)
    while (f){
    80002b80:	00078a63          	beqz	a5,80002b94 <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x34>
        if(f->size > size)
    80002b84:	0087b703          	ld	a4,8(a5)
    80002b88:	fee57ae3          	bgeu	a0,a4,80002b7c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
            size = f->size;
    80002b8c:	00070513          	mv	a0,a4
    80002b90:	fedff06f          	j	80002b7c <_ZN15MemoryAllocator19getLargestFreeBlockEv+0x1c>
    }
    largestFreeBlock = size;
    80002b94:	00009797          	auipc	a5,0x9
    80002b98:	eca7b623          	sd	a0,-308(a5) # 8000ba60 <_ZN15MemoryAllocator16largestFreeBlockE>
    return largestFreeBlock;
}
    80002b9c:	00813403          	ld	s0,8(sp)
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret

0000000080002ba8 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_>:

bool MemoryAllocator::mergeFreeFragments(Fragment *prev, Fragment *curr) {
    80002ba8:	ff010113          	addi	sp,sp,-16
    80002bac:	00813423          	sd	s0,8(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    if(!prev || !curr)
    80002bb4:	02050863          	beqz	a0,80002be4 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_+0x3c>
    80002bb8:	02058a63          	beqz	a1,80002bec <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_+0x44>
        return false;
    if((uint64)prev + prev->size != (uint64)curr)
    80002bbc:	00853783          	ld	a5,8(a0)
    80002bc0:	00f50733          	add	a4,a0,a5
    80002bc4:	02b71863          	bne	a4,a1,80002bf4 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_+0x4c>
        return false;
    prev->size += curr->size;
    80002bc8:	0085b703          	ld	a4,8(a1)
    80002bcc:	00e787b3          	add	a5,a5,a4
    80002bd0:	00f53423          	sd	a5,8(a0)
    prev->next = curr->next;
    80002bd4:	0005b783          	ld	a5,0(a1)
    80002bd8:	00f53023          	sd	a5,0(a0)
    return true;
    80002bdc:	00100513          	li	a0,1
    80002be0:	0180006f          	j	80002bf8 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_+0x50>
        return false;
    80002be4:	00000513          	li	a0,0
    80002be8:	0100006f          	j	80002bf8 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_+0x50>
    80002bec:	00000513          	li	a0,0
    80002bf0:	0080006f          	j	80002bf8 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_+0x50>
        return false;
    80002bf4:	00000513          	li	a0,0
}
    80002bf8:	00813403          	ld	s0,8(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <_ZN15MemoryAllocator10initializeEv>:

void MemoryAllocator::initialize() {
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00813423          	sd	s0,8(sp)
    80002c0c:	01010413          	addi	s0,sp,16
    freeSpace = ((const size_t)HEAP_END_ADDR - (const size_t)HEAP_START_ADDR);
    80002c10:	00009797          	auipc	a5,0x9
    80002c14:	d687b783          	ld	a5,-664(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c18:	0007b683          	ld	a3,0(a5)
    80002c1c:	00009797          	auipc	a5,0x9
    80002c20:	dac7b783          	ld	a5,-596(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002c24:	0007b703          	ld	a4,0(a5)
    80002c28:	40d70733          	sub	a4,a4,a3
    80002c2c:	00009797          	auipc	a5,0x9
    80002c30:	e2478793          	addi	a5,a5,-476 # 8000ba50 <_ZN15MemoryAllocator9freeSpaceE>
    80002c34:	00e7b023          	sd	a4,0(a5)
    largestFreeBlock = freeSpace;
    80002c38:	00e7b823          	sd	a4,16(a5)
    freeHead = (Fragment*)HEAP_START_ADDR;
    80002c3c:	00d7b423          	sd	a3,8(a5)
    freeHead->next = nullptr;
    80002c40:	0006b023          	sd	zero,0(a3)
    freeHead->size = freeSpace;
    80002c44:	0087b703          	ld	a4,8(a5)
    80002c48:	0007b683          	ld	a3,0(a5)
    80002c4c:	00d73423          	sd	a3,8(a4)
    allocatedHead = nullptr;
    80002c50:	0007bc23          	sd	zero,24(a5)
}
    80002c54:	00813403          	ld	s0,8(sp)
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret

0000000080002c60 <_ZN15MemoryAllocator8allocateEm>:

void *MemoryAllocator::allocate(size_t size) {
    80002c60:	00050793          	mv	a5,a0
    if(!freeHead)
    80002c64:	00009517          	auipc	a0,0x9
    80002c68:	df453503          	ld	a0,-524(a0) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
    80002c6c:	10050863          	beqz	a0,80002d7c <_ZN15MemoryAllocator8allocateEm+0x11c>
void *MemoryAllocator::allocate(size_t size) {
    80002c70:	fe010113          	addi	sp,sp,-32
    80002c74:	00113c23          	sd	ra,24(sp)
    80002c78:	00813823          	sd	s0,16(sp)
    80002c7c:	00913423          	sd	s1,8(sp)
    80002c80:	02010413          	addi	s0,sp,32
        return nullptr;

    size_t blockNum = size / MEM_BLOCK_SIZE;
    80002c84:	0067d493          	srli	s1,a5,0x6
    if(size % MEM_BLOCK_SIZE != 0)
    80002c88:	03f7f793          	andi	a5,a5,63
    80002c8c:	00078463          	beqz	a5,80002c94 <_ZN15MemoryAllocator8allocateEm+0x34>
        blockNum++;
    80002c90:	00148493          	addi	s1,s1,1

    size = blockNum * MEM_BLOCK_SIZE;
    80002c94:	00649493          	slli	s1,s1,0x6
    size += HEADER_SIZE;
    80002c98:	01048493          	addi	s1,s1,16
    getLargestFreeBlock();
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	ec4080e7          	jalr	-316(ra) # 80002b60 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    if(size > largestFreeBlock)
    80002ca4:	00009797          	auipc	a5,0x9
    80002ca8:	dbc7b783          	ld	a5,-580(a5) # 8000ba60 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002cac:	0c97e463          	bltu	a5,s1,80002d74 <_ZN15MemoryAllocator8allocateEm+0x114>
        return nullptr;

    Fragment* f = freeHead, *prev = nullptr;
    80002cb0:	00009517          	auipc	a0,0x9
    80002cb4:	da853503          	ld	a0,-600(a0) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
    80002cb8:	00000713          	li	a4,0
    80002cbc:	00c0006f          	j	80002cc8 <_ZN15MemoryAllocator8allocateEm+0x68>
    while (f && f->size < size){
        prev = f;
    80002cc0:	00050713          	mv	a4,a0
        f = f->next;
    80002cc4:	00053503          	ld	a0,0(a0)
    while (f && f->size < size){
    80002cc8:	00050663          	beqz	a0,80002cd4 <_ZN15MemoryAllocator8allocateEm+0x74>
    80002ccc:	00853783          	ld	a5,8(a0)
    80002cd0:	fe97e8e3          	bltu	a5,s1,80002cc0 <_ZN15MemoryAllocator8allocateEm+0x60>
    }

    if(!f)
    80002cd4:	06050063          	beqz	a0,80002d34 <_ZN15MemoryAllocator8allocateEm+0xd4>
        return nullptr;

    size_t newSize = f->size - size;
    80002cd8:	00853783          	ld	a5,8(a0)
    80002cdc:	409787b3          	sub	a5,a5,s1
    if(newSize >= MEM_BLOCK_SIZE){
    80002ce0:	03f00693          	li	a3,63
    80002ce4:	06f6f863          	bgeu	a3,a5,80002d54 <_ZN15MemoryAllocator8allocateEm+0xf4>
        Fragment* newAddr = (Fragment*)((size_t)f + size);
    80002ce8:	009506b3          	add	a3,a0,s1
        if(prev)
    80002cec:	04070e63          	beqz	a4,80002d48 <_ZN15MemoryAllocator8allocateEm+0xe8>
            prev->next = newAddr;
    80002cf0:	00d73023          	sd	a3,0(a4)
        else
            freeHead = newAddr;
        newAddr->size = newSize;
    80002cf4:	00f6b423          	sd	a5,8(a3)
        newAddr->next = f->next;
    80002cf8:	00053783          	ld	a5,0(a0)
    80002cfc:	00f6b023          	sd	a5,0(a3)
        }
        else
            freeHead = f->next;
    }

    f->size = size;
    80002d00:	00953423          	sd	s1,8(a0)
    f->next = nullptr;
    80002d04:	00053023          	sd	zero,0(a0)

    if(allocatedHead){
    80002d08:	00009797          	auipc	a5,0x9
    80002d0c:	d607b783          	ld	a5,-672(a5) # 8000ba68 <_ZN15MemoryAllocator13allocatedHeadE>
    80002d10:	00078463          	beqz	a5,80002d18 <_ZN15MemoryAllocator8allocateEm+0xb8>
        f->next = allocatedHead;
    80002d14:	00f53023          	sd	a5,0(a0)
    }
    allocatedHead = f;
    80002d18:	00009797          	auipc	a5,0x9
    80002d1c:	d3878793          	addi	a5,a5,-712 # 8000ba50 <_ZN15MemoryAllocator9freeSpaceE>
    80002d20:	00a7bc23          	sd	a0,24(a5)

    void* ret = (void*)((uint64)f + HEADER_SIZE);
    80002d24:	01050513          	addi	a0,a0,16
    freeSpace -= size;
    80002d28:	0007b703          	ld	a4,0(a5)
    80002d2c:	409704b3          	sub	s1,a4,s1
    80002d30:	0097b023          	sd	s1,0(a5)

    return ret;
}
    80002d34:	01813083          	ld	ra,24(sp)
    80002d38:	01013403          	ld	s0,16(sp)
    80002d3c:	00813483          	ld	s1,8(sp)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00008067          	ret
            freeHead = newAddr;
    80002d48:	00009717          	auipc	a4,0x9
    80002d4c:	d0d73823          	sd	a3,-752(a4) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
    80002d50:	fa5ff06f          	j	80002cf4 <_ZN15MemoryAllocator8allocateEm+0x94>
        if(prev){
    80002d54:	00070863          	beqz	a4,80002d64 <_ZN15MemoryAllocator8allocateEm+0x104>
            prev->next = f->next;
    80002d58:	00053783          	ld	a5,0(a0)
    80002d5c:	00f73023          	sd	a5,0(a4)
    80002d60:	fa1ff06f          	j	80002d00 <_ZN15MemoryAllocator8allocateEm+0xa0>
            freeHead = f->next;
    80002d64:	00053783          	ld	a5,0(a0)
    80002d68:	00009717          	auipc	a4,0x9
    80002d6c:	cef73823          	sd	a5,-784(a4) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
    80002d70:	f91ff06f          	j	80002d00 <_ZN15MemoryAllocator8allocateEm+0xa0>
        return nullptr;
    80002d74:	00000513          	li	a0,0
    80002d78:	fbdff06f          	j	80002d34 <_ZN15MemoryAllocator8allocateEm+0xd4>
}
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN15MemoryAllocator13putInFreeListEPvm>:

}

void MemoryAllocator::putInFreeList(void *addr, size_t size) {
    Fragment* newAddr = (Fragment*)addr;
    newAddr->next = nullptr;
    80002d80:	00053023          	sd	zero,0(a0)

    if(!freeHead){
    80002d84:	00009717          	auipc	a4,0x9
    80002d88:	cd473703          	ld	a4,-812(a4) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
    80002d8c:	02070a63          	beqz	a4,80002dc0 <_ZN15MemoryAllocator13putInFreeListEPvm+0x40>
void MemoryAllocator::putInFreeList(void *addr, size_t size) {
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	00813823          	sd	s0,16(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	02010413          	addi	s0,sp,32
        freeHead = newAddr;
        return;
    }
    Fragment* f = freeHead, *prev = nullptr;
    80002da4:	00070793          	mv	a5,a4
    80002da8:	00000493          	li	s1,0
    while (f && newAddr > f){
    80002dac:	02078063          	beqz	a5,80002dcc <_ZN15MemoryAllocator13putInFreeListEPvm+0x4c>
    80002db0:	00a7fe63          	bgeu	a5,a0,80002dcc <_ZN15MemoryAllocator13putInFreeListEPvm+0x4c>
        prev = f;
    80002db4:	00078493          	mv	s1,a5
        f = f->next;
    80002db8:	0007b783          	ld	a5,0(a5)
    while (f && newAddr > f){
    80002dbc:	ff1ff06f          	j	80002dac <_ZN15MemoryAllocator13putInFreeListEPvm+0x2c>
        freeHead = newAddr;
    80002dc0:	00009797          	auipc	a5,0x9
    80002dc4:	c8a7bc23          	sd	a0,-872(a5) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
        return;
    80002dc8:	00008067          	ret
    }

    if(!prev){
    80002dcc:	02048a63          	beqz	s1,80002e00 <_ZN15MemoryAllocator13putInFreeListEPvm+0x80>
        newAddr->next = freeHead;
        freeHead = newAddr;
        mergeFreeFragments(newAddr, newAddr->next);
    }
    else{
        prev->next = newAddr;
    80002dd0:	00a4b023          	sd	a0,0(s1)
        newAddr->next = f;
    80002dd4:	00f53023          	sd	a5,0(a0)
        while (mergeFreeFragments(prev, prev->next));
    80002dd8:	0004b583          	ld	a1,0(s1)
    80002ddc:	00048513          	mv	a0,s1
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	dc8080e7          	jalr	-568(ra) # 80002ba8 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_>
    80002de8:	fe0518e3          	bnez	a0,80002dd8 <_ZN15MemoryAllocator13putInFreeListEPvm+0x58>
    }

}
    80002dec:	01813083          	ld	ra,24(sp)
    80002df0:	01013403          	ld	s0,16(sp)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	02010113          	addi	sp,sp,32
    80002dfc:	00008067          	ret
        newAddr->next = freeHead;
    80002e00:	00e53023          	sd	a4,0(a0)
        freeHead = newAddr;
    80002e04:	00009797          	auipc	a5,0x9
    80002e08:	c4a7ba23          	sd	a0,-940(a5) # 8000ba58 <_ZN15MemoryAllocator8freeHeadE>
        mergeFreeFragments(newAddr, newAddr->next);
    80002e0c:	00053583          	ld	a1,0(a0)
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	d98080e7          	jalr	-616(ra) # 80002ba8 <_ZN15MemoryAllocator18mergeFreeFragmentsEPNS_8FragmentES1_>
    80002e18:	fd5ff06f          	j	80002dec <_ZN15MemoryAllocator13putInFreeListEPvm+0x6c>

0000000080002e1c <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *mem) {
    80002e1c:	00050713          	mv	a4,a0
    if(!allocatedHead)
    80002e20:	00009517          	auipc	a0,0x9
    80002e24:	c4853503          	ld	a0,-952(a0) # 8000ba68 <_ZN15MemoryAllocator13allocatedHeadE>
    80002e28:	08050463          	beqz	a0,80002eb0 <_ZN15MemoryAllocator4freeEPv+0x94>
    Fragment* f = allocatedHead, *prev = nullptr;
    80002e2c:	00000693          	li	a3,0
    while (f && (void*)((uint64)f + HEADER_SIZE) != mem){
    80002e30:	00050c63          	beqz	a0,80002e48 <_ZN15MemoryAllocator4freeEPv+0x2c>
    80002e34:	01050793          	addi	a5,a0,16
    80002e38:	00e78863          	beq	a5,a4,80002e48 <_ZN15MemoryAllocator4freeEPv+0x2c>
        prev = f;
    80002e3c:	00050693          	mv	a3,a0
        f = f->next;
    80002e40:	00053503          	ld	a0,0(a0)
    while (f && (void*)((uint64)f + HEADER_SIZE) != mem){
    80002e44:	fedff06f          	j	80002e30 <_ZN15MemoryAllocator4freeEPv+0x14>
    if(!f)
    80002e48:	06050863          	beqz	a0,80002eb8 <_ZN15MemoryAllocator4freeEPv+0x9c>
int MemoryAllocator::free(void *mem) {
    80002e4c:	ff010113          	addi	sp,sp,-16
    80002e50:	00113423          	sd	ra,8(sp)
    80002e54:	00813023          	sd	s0,0(sp)
    80002e58:	01010413          	addi	s0,sp,16
    if(prev)
    80002e5c:	04068263          	beqz	a3,80002ea0 <_ZN15MemoryAllocator4freeEPv+0x84>
        prev->next = f->next;
    80002e60:	00053783          	ld	a5,0(a0)
    80002e64:	00f6b023          	sd	a5,0(a3)
    f->next = nullptr;
    80002e68:	00053023          	sd	zero,0(a0)
    freeSpace+=f->size;
    80002e6c:	00853583          	ld	a1,8(a0)
    80002e70:	00009717          	auipc	a4,0x9
    80002e74:	be070713          	addi	a4,a4,-1056 # 8000ba50 <_ZN15MemoryAllocator9freeSpaceE>
    80002e78:	00073783          	ld	a5,0(a4)
    80002e7c:	00b787b3          	add	a5,a5,a1
    80002e80:	00f73023          	sd	a5,0(a4)
    putInFreeList(f, f->size);
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	efc080e7          	jalr	-260(ra) # 80002d80 <_ZN15MemoryAllocator13putInFreeListEPvm>
    return 0;
    80002e8c:	00000513          	li	a0,0
}
    80002e90:	00813083          	ld	ra,8(sp)
    80002e94:	00013403          	ld	s0,0(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret
        allocatedHead = f->next;
    80002ea0:	00053783          	ld	a5,0(a0)
    80002ea4:	00009717          	auipc	a4,0x9
    80002ea8:	bcf73223          	sd	a5,-1084(a4) # 8000ba68 <_ZN15MemoryAllocator13allocatedHeadE>
    80002eac:	fbdff06f          	j	80002e68 <_ZN15MemoryAllocator4freeEPv+0x4c>
        return -1;
    80002eb0:	fff00513          	li	a0,-1
    80002eb4:	00008067          	ret
        return -1;
    80002eb8:	fff00513          	li	a0,-1
}
    80002ebc:	00008067          	ret

0000000080002ec0 <_ZN4List6createEv>:
#include "../h/List.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"

List *List::create() {
    80002ec0:	ff010113          	addi	sp,sp,-16
    80002ec4:	00113423          	sd	ra,8(sp)
    80002ec8:	00813023          	sd	s0,0(sp)
    80002ecc:	01010413          	addi	s0,sp,16
    List* l = (List*)MemoryAllocator::allocate(sizeof(List));
    80002ed0:	01000513          	li	a0,16
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	d8c080e7          	jalr	-628(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    l->head = nullptr;
    80002edc:	00053023          	sd	zero,0(a0)
    l->tail = nullptr;
    80002ee0:	00053423          	sd	zero,8(a0)
    return l;
}
    80002ee4:	00813083          	ld	ra,8(sp)
    80002ee8:	00013403          	ld	s0,0(sp)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret

0000000080002ef4 <_ZN4List3getEv>:

TCB *List::get() {
    80002ef4:	fe010113          	addi	sp,sp,-32
    80002ef8:	00113c23          	sd	ra,24(sp)
    80002efc:	00813823          	sd	s0,16(sp)
    80002f00:	00913423          	sd	s1,8(sp)
    80002f04:	02010413          	addi	s0,sp,32
    80002f08:	00050793          	mv	a5,a0
    if(!head)
    80002f0c:	00053503          	ld	a0,0(a0)
    80002f10:	04050263          	beqz	a0,80002f54 <_ZN4List3getEv+0x60>
        return nullptr;
    TCB* ret = head->thread;
    80002f14:	00853483          	ld	s1,8(a0)
    Node* p = head;
    if(head == tail){
    80002f18:	0087b703          	ld	a4,8(a5)
    80002f1c:	02e50663          	beq	a0,a4,80002f48 <_ZN4List3getEv+0x54>
        head = nullptr;
        tail = nullptr;
    }
    else
        head = head->next;
    80002f20:	00053703          	ld	a4,0(a0)
    80002f24:	00e7b023          	sd	a4,0(a5)
    MemoryAllocator::free(p);
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	ef4080e7          	jalr	-268(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
    p = nullptr;
    return ret;
}
    80002f30:	00048513          	mv	a0,s1
    80002f34:	01813083          	ld	ra,24(sp)
    80002f38:	01013403          	ld	s0,16(sp)
    80002f3c:	00813483          	ld	s1,8(sp)
    80002f40:	02010113          	addi	sp,sp,32
    80002f44:	00008067          	ret
        head = nullptr;
    80002f48:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80002f4c:	0007b423          	sd	zero,8(a5)
    80002f50:	fd9ff06f          	j	80002f28 <_ZN4List3getEv+0x34>
        return nullptr;
    80002f54:	00050493          	mv	s1,a0
    80002f58:	fd9ff06f          	j	80002f30 <_ZN4List3getEv+0x3c>

0000000080002f5c <_ZN4List3putEP3TCB>:

void List::put(TCB *thread) {
    if(!thread)
    80002f5c:	06058863          	beqz	a1,80002fcc <_ZN4List3putEP3TCB+0x70>
void List::put(TCB *thread) {
    80002f60:	fe010113          	addi	sp,sp,-32
    80002f64:	00113c23          	sd	ra,24(sp)
    80002f68:	00813823          	sd	s0,16(sp)
    80002f6c:	00913423          	sd	s1,8(sp)
    80002f70:	01213023          	sd	s2,0(sp)
    80002f74:	02010413          	addi	s0,sp,32
    80002f78:	00050493          	mv	s1,a0
    80002f7c:	00058913          	mv	s2,a1
        return;
    Node* newNode = (Node*)MemoryAllocator::allocate(sizeof(Node));
    80002f80:	01000513          	li	a0,16
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	cdc080e7          	jalr	-804(ra) # 80002c60 <_ZN15MemoryAllocator8allocateEm>
    newNode->next = nullptr;
    80002f8c:	00053023          	sd	zero,0(a0)
    newNode->thread = thread;
    80002f90:	01253423          	sd	s2,8(a0)
    if(!head){
    80002f94:	0004b783          	ld	a5,0(s1)
    80002f98:	02078463          	beqz	a5,80002fc0 <_ZN4List3putEP3TCB+0x64>
        head = newNode;
        tail = newNode;
        return;
    }
    tail->next = newNode;
    80002f9c:	0084b783          	ld	a5,8(s1)
    80002fa0:	00a7b023          	sd	a0,0(a5)
    tail = newNode;
    80002fa4:	00a4b423          	sd	a0,8(s1)
}
    80002fa8:	01813083          	ld	ra,24(sp)
    80002fac:	01013403          	ld	s0,16(sp)
    80002fb0:	00813483          	ld	s1,8(sp)
    80002fb4:	00013903          	ld	s2,0(sp)
    80002fb8:	02010113          	addi	sp,sp,32
    80002fbc:	00008067          	ret
        head = newNode;
    80002fc0:	00a4b023          	sd	a0,0(s1)
        tail = newNode;
    80002fc4:	00a4b423          	sd	a0,8(s1)
        return;
    80002fc8:	fe1ff06f          	j	80002fa8 <_ZN4List3putEP3TCB+0x4c>
    80002fcc:	00008067          	ret

0000000080002fd0 <_ZN4List4freeEPS_>:

void List::free(List* list) {
    80002fd0:	fd010113          	addi	sp,sp,-48
    80002fd4:	02113423          	sd	ra,40(sp)
    80002fd8:	02813023          	sd	s0,32(sp)
    80002fdc:	00913c23          	sd	s1,24(sp)
    80002fe0:	01213823          	sd	s2,16(sp)
    80002fe4:	01313423          	sd	s3,8(sp)
    80002fe8:	03010413          	addi	s0,sp,48
    80002fec:	00050993          	mv	s3,a0
    Node* p = list->head, *q = nullptr;
    80002ff0:	00053483          	ld	s1,0(a0)
    while (p){
    80002ff4:	02048463          	beqz	s1,8000301c <_ZN4List4freeEPS_+0x4c>
        q = p;
        p = p->next;
    80002ff8:	0004b903          	ld	s2,0(s1)
        TCB::freeThread(q->thread);
    80002ffc:	0084b503          	ld	a0,8(s1)
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	290080e7          	jalr	656(ra) # 80002290 <_ZN3TCB10freeThreadEPS_>
        MemoryAllocator::free(q);
    80003008:	00048513          	mv	a0,s1
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	e10080e7          	jalr	-496(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
        p = p->next;
    80003014:	00090493          	mv	s1,s2
    while (p){
    80003018:	fddff06f          	j	80002ff4 <_ZN4List4freeEPS_+0x24>
    }
    MemoryAllocator::free(list);
    8000301c:	00098513          	mv	a0,s3
    80003020:	00000097          	auipc	ra,0x0
    80003024:	dfc080e7          	jalr	-516(ra) # 80002e1c <_ZN15MemoryAllocator4freeEPv>
}
    80003028:	02813083          	ld	ra,40(sp)
    8000302c:	02013403          	ld	s0,32(sp)
    80003030:	01813483          	ld	s1,24(sp)
    80003034:	01013903          	ld	s2,16(sp)
    80003038:	00813983          	ld	s3,8(sp)
    8000303c:	03010113          	addi	sp,sp,48
    80003040:	00008067          	ret

0000000080003044 <_ZN14ConsoleHandler10initializeEv>:

ConsoleBuffer* ConsoleHandler::inputBuffer = nullptr;
ConsoleBuffer* ConsoleHandler::outputBuffer = nullptr;
bool ConsoleHandler::working;

void ConsoleHandler::initialize() {
    80003044:	fe010113          	addi	sp,sp,-32
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	00813823          	sd	s0,16(sp)
    80003050:	00913423          	sd	s1,8(sp)
    80003054:	02010413          	addi	s0,sp,32
    inputBuffer = ConsoleBuffer::createBuffer(512);
    80003058:	20000513          	li	a0,512
    8000305c:	fffff097          	auipc	ra,0xfffff
    80003060:	38c080e7          	jalr	908(ra) # 800023e8 <_ZN13ConsoleBuffer12createBufferEi>
    80003064:	00009497          	auipc	s1,0x9
    80003068:	a0c48493          	addi	s1,s1,-1524 # 8000ba70 <_ZN14ConsoleHandler11inputBufferE>
    8000306c:	00a4b023          	sd	a0,0(s1)
    outputBuffer = ConsoleBuffer::createBuffer(512);
    80003070:	20000513          	li	a0,512
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	374080e7          	jalr	884(ra) # 800023e8 <_ZN13ConsoleBuffer12createBufferEi>
    8000307c:	00a4b423          	sd	a0,8(s1)
    working = true;
    80003080:	00100793          	li	a5,1
    80003084:	00f48823          	sb	a5,16(s1)
}
    80003088:	01813083          	ld	ra,24(sp)
    8000308c:	01013403          	ld	s0,16(sp)
    80003090:	00813483          	ld	s1,8(sp)
    80003094:	02010113          	addi	sp,sp,32
    80003098:	00008067          	ret

000000008000309c <_ZN14ConsoleHandler11handleInputEv>:

void ConsoleHandler::handleInput() {
    char c = *((char*)CONSOLE_RX_DATA);
    8000309c:	00009797          	auipc	a5,0x9
    800030a0:	8c47b783          	ld	a5,-1852(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x8>
    800030a4:	0007b783          	ld	a5,0(a5)
    800030a8:	0007c583          	lbu	a1,0(a5)
    if(c == '\r')
    800030ac:	00d00793          	li	a5,13
    800030b0:	04f58063          	beq	a1,a5,800030f0 <_ZN14ConsoleHandler11handleInputEv+0x54>
        c = '\n';
    if(inputBuffer->getCurrentSize() == inputBuffer->getMaxSize())
    800030b4:	00009517          	auipc	a0,0x9
    800030b8:	9bc53503          	ld	a0,-1604(a0) # 8000ba70 <_ZN14ConsoleHandler11inputBufferE>

    char geta();

    void puta(char c);

    int getCurrentSize() { return currSize; }
    800030bc:	00c52703          	lw	a4,12(a0)

    int getMaxSize() { return maxSize; }
    800030c0:	00052783          	lw	a5,0(a0)
    800030c4:	02f70a63          	beq	a4,a5,800030f8 <_ZN14ConsoleHandler11handleInputEv+0x5c>
void ConsoleHandler::handleInput() {
    800030c8:	ff010113          	addi	sp,sp,-16
    800030cc:	00113423          	sd	ra,8(sp)
    800030d0:	00813023          	sd	s0,0(sp)
    800030d4:	01010413          	addi	s0,sp,16
        return;
    inputBuffer->put(c);
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	3bc080e7          	jalr	956(ra) # 80002494 <_ZN13ConsoleBuffer3putEc>
}
    800030e0:	00813083          	ld	ra,8(sp)
    800030e4:	00013403          	ld	s0,0(sp)
    800030e8:	01010113          	addi	sp,sp,16
    800030ec:	00008067          	ret
        c = '\n';
    800030f0:	00a00593          	li	a1,10
    800030f4:	fc1ff06f          	j	800030b4 <_ZN14ConsoleHandler11handleInputEv+0x18>
    800030f8:	00008067          	ret

00000000800030fc <_ZN14ConsoleHandler18handleOutputThreadEPv>:

void ConsoleHandler::handleOutputThread(void *arg) {
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	02010413          	addi	s0,sp,32
    8000310c:	0480006f          	j	80003154 <_ZN14ConsoleHandler18handleOutputThreadEPv+0x58>
    while(true){
        if(done()){
            TCB::running->setFinished(true);
            TCB::dispatch();
        }
        else if(*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT){
    80003110:	00009797          	auipc	a5,0x9
    80003114:	8587b783          	ld	a5,-1960(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003118:	0007b783          	ld	a5,0(a5)
    8000311c:	0007c783          	lbu	a5,0(a5)
    80003120:	0207f793          	andi	a5,a5,32
    80003124:	06078663          	beqz	a5,80003190 <_ZN14ConsoleHandler18handleOutputThreadEPv+0x94>
            volatile char c = outputBuffer->get();
    80003128:	00009517          	auipc	a0,0x9
    8000312c:	95053503          	ld	a0,-1712(a0) # 8000ba78 <_ZN14ConsoleHandler12outputBufferE>
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	3fc080e7          	jalr	1020(ra) # 8000252c <_ZN13ConsoleBuffer3getEv>
    80003138:	fea407a3          	sb	a0,-17(s0)
            *((volatile char *)CONSOLE_TX_DATA) = c;
    8000313c:	00009797          	auipc	a5,0x9
    80003140:	85c7b783          	ld	a5,-1956(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003144:	0007b703          	ld	a4,0(a5)
    80003148:	fef44783          	lbu	a5,-17(s0)
    8000314c:	0ff7f793          	andi	a5,a5,255
    80003150:	00f70023          	sb	a5,0(a4)

    static void free();

    static bool done() { return !working && outputBuffer->currSize == 0; }
    80003154:	00009797          	auipc	a5,0x9
    80003158:	92c7c783          	lbu	a5,-1748(a5) # 8000ba80 <_ZN14ConsoleHandler7workingE>
    8000315c:	fa079ae3          	bnez	a5,80003110 <_ZN14ConsoleHandler18handleOutputThreadEPv+0x14>
    80003160:	00009797          	auipc	a5,0x9
    80003164:	9187b783          	ld	a5,-1768(a5) # 8000ba78 <_ZN14ConsoleHandler12outputBufferE>
    80003168:	00c7a783          	lw	a5,12(a5)
    8000316c:	fa0792e3          	bnez	a5,80003110 <_ZN14ConsoleHandler18handleOutputThreadEPv+0x14>
            TCB::running->setFinished(true);
    80003170:	00009797          	auipc	a5,0x9
    80003174:	8507b783          	ld	a5,-1968(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003178:	0007b783          	ld	a5,0(a5)
    void setFinished(bool finished) { this->finished = finished; }
    8000317c:	00100713          	li	a4,1
    80003180:	02e78423          	sb	a4,40(a5)
            TCB::dispatch();
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	ef0080e7          	jalr	-272(ra) # 80002074 <_ZN3TCB8dispatchEv>
    8000318c:	fc9ff06f          	j	80003154 <_ZN14ConsoleHandler18handleOutputThreadEPv+0x58>
        }
        else
            TCB::dispatch();
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	ee4080e7          	jalr	-284(ra) # 80002074 <_ZN3TCB8dispatchEv>
    80003198:	fbdff06f          	j	80003154 <_ZN14ConsoleHandler18handleOutputThreadEPv+0x58>

000000008000319c <_ZN14ConsoleHandler4freeEv>:
    }
}

void ConsoleHandler::free() {
    8000319c:	fe010113          	addi	sp,sp,-32
    800031a0:	00113c23          	sd	ra,24(sp)
    800031a4:	00813823          	sd	s0,16(sp)
    800031a8:	00913423          	sd	s1,8(sp)
    800031ac:	02010413          	addi	s0,sp,32
    ConsoleBuffer::free(inputBuffer);
    800031b0:	00009497          	auipc	s1,0x9
    800031b4:	8c048493          	addi	s1,s1,-1856 # 8000ba70 <_ZN14ConsoleHandler11inputBufferE>
    800031b8:	0004b503          	ld	a0,0(s1)
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	408080e7          	jalr	1032(ra) # 800025c4 <_ZN13ConsoleBuffer4freeEPS_>
    ConsoleBuffer::free(outputBuffer);
    800031c4:	0084b503          	ld	a0,8(s1)
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	3fc080e7          	jalr	1020(ra) # 800025c4 <_ZN13ConsoleBuffer4freeEPS_>
}
    800031d0:	01813083          	ld	ra,24(sp)
    800031d4:	01013403          	ld	s0,16(sp)
    800031d8:	00813483          	ld	s1,8(sp)
    800031dc:	02010113          	addi	sp,sp,32
    800031e0:	00008067          	ret

00000000800031e4 <_ZN14ConsoleHandler4putcEc>:

void ConsoleHandler::putc(char c) {
    800031e4:	ff010113          	addi	sp,sp,-16
    800031e8:	00113423          	sd	ra,8(sp)
    800031ec:	00813023          	sd	s0,0(sp)
    800031f0:	01010413          	addi	s0,sp,16
    800031f4:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    800031f8:	00009517          	auipc	a0,0x9
    800031fc:	88053503          	ld	a0,-1920(a0) # 8000ba78 <_ZN14ConsoleHandler12outputBufferE>
    80003200:	fffff097          	auipc	ra,0xfffff
    80003204:	294080e7          	jalr	660(ra) # 80002494 <_ZN13ConsoleBuffer3putEc>
}
    80003208:	00813083          	ld	ra,8(sp)
    8000320c:	00013403          	ld	s0,0(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret

0000000080003218 <_ZN14ConsoleHandler9putStringEPKc>:

void ConsoleHandler::putString(const char *s) {
    80003218:	fe010113          	addi	sp,sp,-32
    8000321c:	00113c23          	sd	ra,24(sp)
    80003220:	00813823          	sd	s0,16(sp)
    80003224:	00913423          	sd	s1,8(sp)
    80003228:	01213023          	sd	s2,0(sp)
    8000322c:	02010413          	addi	s0,sp,32
    80003230:	00050913          	mv	s2,a0
    for(int i = 0; s[i]; i++){
    80003234:	00000493          	li	s1,0
    80003238:	009907b3          	add	a5,s2,s1
    8000323c:	0007c583          	lbu	a1,0(a5)
    80003240:	00058e63          	beqz	a1,8000325c <_ZN14ConsoleHandler9putStringEPKc+0x44>
        outputBuffer->put(s[i]);
    80003244:	00009517          	auipc	a0,0x9
    80003248:	83453503          	ld	a0,-1996(a0) # 8000ba78 <_ZN14ConsoleHandler12outputBufferE>
    8000324c:	fffff097          	auipc	ra,0xfffff
    80003250:	248080e7          	jalr	584(ra) # 80002494 <_ZN13ConsoleBuffer3putEc>
    for(int i = 0; s[i]; i++){
    80003254:	0014849b          	addiw	s1,s1,1
    80003258:	fe1ff06f          	j	80003238 <_ZN14ConsoleHandler9putStringEPKc+0x20>
    }
}
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	00013903          	ld	s2,0(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret

0000000080003274 <_ZN14ConsoleHandler8putULongEm>:

void ConsoleHandler::putULong(uint64 x) {
    80003274:	fa010113          	addi	sp,sp,-96
    80003278:	04113c23          	sd	ra,88(sp)
    8000327c:	04813823          	sd	s0,80(sp)
    80003280:	04913423          	sd	s1,72(sp)
    80003284:	06010413          	addi	s0,sp,96
    uint64 a = x;
    if(a == 0){
    80003288:	02050863          	beqz	a0,800032b8 <_ZN14ConsoleHandler8putULongEm+0x44>
        outputBuffer->put('0');
        return;
    }
    char buffer[64];
    int i = 0;
    8000328c:	00000793          	li	a5,0
    while(a > 0){
    80003290:	04050063          	beqz	a0,800032d0 <_ZN14ConsoleHandler8putULongEm+0x5c>
        uint64 y = a%10 + 48;
    80003294:	00a00693          	li	a3,10
    80003298:	02d57733          	remu	a4,a0,a3
    8000329c:	03070713          	addi	a4,a4,48
        a/=10;
    800032a0:	02d55533          	divu	a0,a0,a3
        buffer[i++] = (char)y;
    800032a4:	fe040693          	addi	a3,s0,-32
    800032a8:	00f686b3          	add	a3,a3,a5
    800032ac:	fce68023          	sb	a4,-64(a3)
    800032b0:	0017879b          	addiw	a5,a5,1
    while(a > 0){
    800032b4:	fddff06f          	j	80003290 <_ZN14ConsoleHandler8putULongEm+0x1c>
        outputBuffer->put('0');
    800032b8:	03000593          	li	a1,48
    800032bc:	00008517          	auipc	a0,0x8
    800032c0:	7bc53503          	ld	a0,1980(a0) # 8000ba78 <_ZN14ConsoleHandler12outputBufferE>
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	1d0080e7          	jalr	464(ra) # 80002494 <_ZN13ConsoleBuffer3putEc>
        return;
    800032cc:	0340006f          	j	80003300 <_ZN14ConsoleHandler8putULongEm+0x8c>
    }
    i--;
    800032d0:	fff7879b          	addiw	a5,a5,-1
    800032d4:	0280006f          	j	800032fc <_ZN14ConsoleHandler8putULongEm+0x88>
    while(i>=0){
        outputBuffer->put(buffer[i--]);
    800032d8:	fff7849b          	addiw	s1,a5,-1
    800032dc:	fe040713          	addi	a4,s0,-32
    800032e0:	00f707b3          	add	a5,a4,a5
    800032e4:	fc07c583          	lbu	a1,-64(a5)
    800032e8:	00008517          	auipc	a0,0x8
    800032ec:	79053503          	ld	a0,1936(a0) # 8000ba78 <_ZN14ConsoleHandler12outputBufferE>
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	1a4080e7          	jalr	420(ra) # 80002494 <_ZN13ConsoleBuffer3putEc>
    800032f8:	00048793          	mv	a5,s1
    while(i>=0){
    800032fc:	fc07dee3          	bgez	a5,800032d8 <_ZN14ConsoleHandler8putULongEm+0x64>
    }
}
    80003300:	05813083          	ld	ra,88(sp)
    80003304:	05013403          	ld	s0,80(sp)
    80003308:	04813483          	ld	s1,72(sp)
    8000330c:	06010113          	addi	sp,sp,96
    80003310:	00008067          	ret

0000000080003314 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003314:	fe010113          	addi	sp,sp,-32
    80003318:	00113c23          	sd	ra,24(sp)
    8000331c:	00813823          	sd	s0,16(sp)
    80003320:	00913423          	sd	s1,8(sp)
    80003324:	01213023          	sd	s2,0(sp)
    80003328:	02010413          	addi	s0,sp,32
    8000332c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003330:	00000913          	li	s2,0
    80003334:	00c0006f          	j	80003340 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003338:	ffffe097          	auipc	ra,0xffffe
    8000333c:	f58080e7          	jalr	-168(ra) # 80001290 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	078080e7          	jalr	120(ra) # 800013b8 <_Z4getcv>
    80003348:	0005059b          	sext.w	a1,a0
    8000334c:	01b00793          	li	a5,27
    80003350:	02f58a63          	beq	a1,a5,80003384 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003354:	0084b503          	ld	a0,8(s1)
    80003358:	00003097          	auipc	ra,0x3
    8000335c:	414080e7          	jalr	1044(ra) # 8000676c <_ZN6Buffer3putEi>
        i++;
    80003360:	0019071b          	addiw	a4,s2,1
    80003364:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003368:	0004a683          	lw	a3,0(s1)
    8000336c:	0026979b          	slliw	a5,a3,0x2
    80003370:	00d787bb          	addw	a5,a5,a3
    80003374:	0017979b          	slliw	a5,a5,0x1
    80003378:	02f767bb          	remw	a5,a4,a5
    8000337c:	fc0792e3          	bnez	a5,80003340 <_ZL16producerKeyboardPv+0x2c>
    80003380:	fb9ff06f          	j	80003338 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003384:	00100793          	li	a5,1
    80003388:	00008717          	auipc	a4,0x8
    8000338c:	70f72023          	sw	a5,1792(a4) # 8000ba88 <_ZL9threadEnd>
    data->buffer->put('!');
    80003390:	02100593          	li	a1,33
    80003394:	0084b503          	ld	a0,8(s1)
    80003398:	00003097          	auipc	ra,0x3
    8000339c:	3d4080e7          	jalr	980(ra) # 8000676c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800033a0:	0104b503          	ld	a0,16(s1)
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	fbc080e7          	jalr	-68(ra) # 80001360 <_Z10sem_signalP4_sem>
}
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	00013903          	ld	s2,0(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret

00000000800033c4 <_ZL8producerPv>:

static void producer(void *arg) {
    800033c4:	fe010113          	addi	sp,sp,-32
    800033c8:	00113c23          	sd	ra,24(sp)
    800033cc:	00813823          	sd	s0,16(sp)
    800033d0:	00913423          	sd	s1,8(sp)
    800033d4:	01213023          	sd	s2,0(sp)
    800033d8:	02010413          	addi	s0,sp,32
    800033dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033e0:	00000913          	li	s2,0
    800033e4:	00c0006f          	j	800033f0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	ea8080e7          	jalr	-344(ra) # 80001290 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800033f0:	00008797          	auipc	a5,0x8
    800033f4:	6987a783          	lw	a5,1688(a5) # 8000ba88 <_ZL9threadEnd>
    800033f8:	02079e63          	bnez	a5,80003434 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800033fc:	0004a583          	lw	a1,0(s1)
    80003400:	0305859b          	addiw	a1,a1,48
    80003404:	0084b503          	ld	a0,8(s1)
    80003408:	00003097          	auipc	ra,0x3
    8000340c:	364080e7          	jalr	868(ra) # 8000676c <_ZN6Buffer3putEi>
        i++;
    80003410:	0019071b          	addiw	a4,s2,1
    80003414:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003418:	0004a683          	lw	a3,0(s1)
    8000341c:	0026979b          	slliw	a5,a3,0x2
    80003420:	00d787bb          	addw	a5,a5,a3
    80003424:	0017979b          	slliw	a5,a5,0x1
    80003428:	02f767bb          	remw	a5,a4,a5
    8000342c:	fc0792e3          	bnez	a5,800033f0 <_ZL8producerPv+0x2c>
    80003430:	fb9ff06f          	j	800033e8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003434:	0104b503          	ld	a0,16(s1)
    80003438:	ffffe097          	auipc	ra,0xffffe
    8000343c:	f28080e7          	jalr	-216(ra) # 80001360 <_Z10sem_signalP4_sem>
}
    80003440:	01813083          	ld	ra,24(sp)
    80003444:	01013403          	ld	s0,16(sp)
    80003448:	00813483          	ld	s1,8(sp)
    8000344c:	00013903          	ld	s2,0(sp)
    80003450:	02010113          	addi	sp,sp,32
    80003454:	00008067          	ret

0000000080003458 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003458:	fd010113          	addi	sp,sp,-48
    8000345c:	02113423          	sd	ra,40(sp)
    80003460:	02813023          	sd	s0,32(sp)
    80003464:	00913c23          	sd	s1,24(sp)
    80003468:	01213823          	sd	s2,16(sp)
    8000346c:	01313423          	sd	s3,8(sp)
    80003470:	03010413          	addi	s0,sp,48
    80003474:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003478:	00000993          	li	s3,0
    8000347c:	01c0006f          	j	80003498 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	e10080e7          	jalr	-496(ra) # 80001290 <_Z15thread_dispatchv>
    80003488:	0500006f          	j	800034d8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000348c:	00a00513          	li	a0,10
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	f50080e7          	jalr	-176(ra) # 800013e0 <_Z4putcc>
    while (!threadEnd) {
    80003498:	00008797          	auipc	a5,0x8
    8000349c:	5f07a783          	lw	a5,1520(a5) # 8000ba88 <_ZL9threadEnd>
    800034a0:	06079063          	bnez	a5,80003500 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800034a4:	00893503          	ld	a0,8(s2)
    800034a8:	00003097          	auipc	ra,0x3
    800034ac:	354080e7          	jalr	852(ra) # 800067fc <_ZN6Buffer3getEv>
        i++;
    800034b0:	0019849b          	addiw	s1,s3,1
    800034b4:	0004899b          	sext.w	s3,s1
        putc(key);
    800034b8:	0ff57513          	andi	a0,a0,255
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	f24080e7          	jalr	-220(ra) # 800013e0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800034c4:	00092703          	lw	a4,0(s2)
    800034c8:	0027179b          	slliw	a5,a4,0x2
    800034cc:	00e787bb          	addw	a5,a5,a4
    800034d0:	02f4e7bb          	remw	a5,s1,a5
    800034d4:	fa0786e3          	beqz	a5,80003480 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800034d8:	05000793          	li	a5,80
    800034dc:	02f4e4bb          	remw	s1,s1,a5
    800034e0:	fa049ce3          	bnez	s1,80003498 <_ZL8consumerPv+0x40>
    800034e4:	fa9ff06f          	j	8000348c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800034e8:	00893503          	ld	a0,8(s2)
    800034ec:	00003097          	auipc	ra,0x3
    800034f0:	310080e7          	jalr	784(ra) # 800067fc <_ZN6Buffer3getEv>
        putc(key);
    800034f4:	0ff57513          	andi	a0,a0,255
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	ee8080e7          	jalr	-280(ra) # 800013e0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003500:	00893503          	ld	a0,8(s2)
    80003504:	00003097          	auipc	ra,0x3
    80003508:	384080e7          	jalr	900(ra) # 80006888 <_ZN6Buffer6getCntEv>
    8000350c:	fca04ee3          	bgtz	a0,800034e8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003510:	01093503          	ld	a0,16(s2)
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	e4c080e7          	jalr	-436(ra) # 80001360 <_Z10sem_signalP4_sem>
}
    8000351c:	02813083          	ld	ra,40(sp)
    80003520:	02013403          	ld	s0,32(sp)
    80003524:	01813483          	ld	s1,24(sp)
    80003528:	01013903          	ld	s2,16(sp)
    8000352c:	00813983          	ld	s3,8(sp)
    80003530:	03010113          	addi	sp,sp,48
    80003534:	00008067          	ret

0000000080003538 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003538:	f9010113          	addi	sp,sp,-112
    8000353c:	06113423          	sd	ra,104(sp)
    80003540:	06813023          	sd	s0,96(sp)
    80003544:	04913c23          	sd	s1,88(sp)
    80003548:	05213823          	sd	s2,80(sp)
    8000354c:	05313423          	sd	s3,72(sp)
    80003550:	05413023          	sd	s4,64(sp)
    80003554:	03513c23          	sd	s5,56(sp)
    80003558:	03613823          	sd	s6,48(sp)
    8000355c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003560:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003564:	00006517          	auipc	a0,0x6
    80003568:	ae450513          	addi	a0,a0,-1308 # 80009048 <CONSOLE_STATUS+0x38>
    8000356c:	00002097          	auipc	ra,0x2
    80003570:	220080e7          	jalr	544(ra) # 8000578c <_Z11printStringPKc>
    getString(input, 30);
    80003574:	01e00593          	li	a1,30
    80003578:	fa040493          	addi	s1,s0,-96
    8000357c:	00048513          	mv	a0,s1
    80003580:	00002097          	auipc	ra,0x2
    80003584:	294080e7          	jalr	660(ra) # 80005814 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003588:	00048513          	mv	a0,s1
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	360080e7          	jalr	864(ra) # 800058ec <_Z11stringToIntPKc>
    80003594:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003598:	00006517          	auipc	a0,0x6
    8000359c:	ad050513          	addi	a0,a0,-1328 # 80009068 <CONSOLE_STATUS+0x58>
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	1ec080e7          	jalr	492(ra) # 8000578c <_Z11printStringPKc>
    getString(input, 30);
    800035a8:	01e00593          	li	a1,30
    800035ac:	00048513          	mv	a0,s1
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	264080e7          	jalr	612(ra) # 80005814 <_Z9getStringPci>
    n = stringToInt(input);
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	330080e7          	jalr	816(ra) # 800058ec <_Z11stringToIntPKc>
    800035c4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800035c8:	00006517          	auipc	a0,0x6
    800035cc:	ac050513          	addi	a0,a0,-1344 # 80009088 <CONSOLE_STATUS+0x78>
    800035d0:	00002097          	auipc	ra,0x2
    800035d4:	1bc080e7          	jalr	444(ra) # 8000578c <_Z11printStringPKc>
    800035d8:	00000613          	li	a2,0
    800035dc:	00a00593          	li	a1,10
    800035e0:	00090513          	mv	a0,s2
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	358080e7          	jalr	856(ra) # 8000593c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800035ec:	00006517          	auipc	a0,0x6
    800035f0:	ab450513          	addi	a0,a0,-1356 # 800090a0 <CONSOLE_STATUS+0x90>
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	198080e7          	jalr	408(ra) # 8000578c <_Z11printStringPKc>
    800035fc:	00000613          	li	a2,0
    80003600:	00a00593          	li	a1,10
    80003604:	00048513          	mv	a0,s1
    80003608:	00002097          	auipc	ra,0x2
    8000360c:	334080e7          	jalr	820(ra) # 8000593c <_Z8printIntiii>
    printString(".\n");
    80003610:	00006517          	auipc	a0,0x6
    80003614:	aa850513          	addi	a0,a0,-1368 # 800090b8 <CONSOLE_STATUS+0xa8>
    80003618:	00002097          	auipc	ra,0x2
    8000361c:	174080e7          	jalr	372(ra) # 8000578c <_Z11printStringPKc>
    if(threadNum > n) {
    80003620:	0324c463          	blt	s1,s2,80003648 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003624:	03205c63          	blez	s2,8000365c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003628:	03800513          	li	a0,56
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	2ac080e7          	jalr	684(ra) # 800018d8 <_Znwm>
    80003634:	00050a13          	mv	s4,a0
    80003638:	00048593          	mv	a1,s1
    8000363c:	00003097          	auipc	ra,0x3
    80003640:	094080e7          	jalr	148(ra) # 800066d0 <_ZN6BufferC1Ei>
    80003644:	0300006f          	j	80003674 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003648:	00006517          	auipc	a0,0x6
    8000364c:	a7850513          	addi	a0,a0,-1416 # 800090c0 <CONSOLE_STATUS+0xb0>
    80003650:	00002097          	auipc	ra,0x2
    80003654:	13c080e7          	jalr	316(ra) # 8000578c <_Z11printStringPKc>
        return;
    80003658:	0140006f          	j	8000366c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000365c:	00006517          	auipc	a0,0x6
    80003660:	aa450513          	addi	a0,a0,-1372 # 80009100 <CONSOLE_STATUS+0xf0>
    80003664:	00002097          	auipc	ra,0x2
    80003668:	128080e7          	jalr	296(ra) # 8000578c <_Z11printStringPKc>
        return;
    8000366c:	000b0113          	mv	sp,s6
    80003670:	1500006f          	j	800037c0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003674:	00000593          	li	a1,0
    80003678:	00008517          	auipc	a0,0x8
    8000367c:	41850513          	addi	a0,a0,1048 # 8000ba90 <_ZL10waitForAll>
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	c58080e7          	jalr	-936(ra) # 800012d8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003688:	00391793          	slli	a5,s2,0x3
    8000368c:	00f78793          	addi	a5,a5,15
    80003690:	ff07f793          	andi	a5,a5,-16
    80003694:	40f10133          	sub	sp,sp,a5
    80003698:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000369c:	0019071b          	addiw	a4,s2,1
    800036a0:	00171793          	slli	a5,a4,0x1
    800036a4:	00e787b3          	add	a5,a5,a4
    800036a8:	00379793          	slli	a5,a5,0x3
    800036ac:	00f78793          	addi	a5,a5,15
    800036b0:	ff07f793          	andi	a5,a5,-16
    800036b4:	40f10133          	sub	sp,sp,a5
    800036b8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800036bc:	00191613          	slli	a2,s2,0x1
    800036c0:	012607b3          	add	a5,a2,s2
    800036c4:	00379793          	slli	a5,a5,0x3
    800036c8:	00f987b3          	add	a5,s3,a5
    800036cc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800036d0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800036d4:	00008717          	auipc	a4,0x8
    800036d8:	3bc73703          	ld	a4,956(a4) # 8000ba90 <_ZL10waitForAll>
    800036dc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800036e0:	00078613          	mv	a2,a5
    800036e4:	00000597          	auipc	a1,0x0
    800036e8:	d7458593          	addi	a1,a1,-652 # 80003458 <_ZL8consumerPv>
    800036ec:	f9840513          	addi	a0,s0,-104
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	b08080e7          	jalr	-1272(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036f8:	00000493          	li	s1,0
    800036fc:	0280006f          	j	80003724 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003700:	00000597          	auipc	a1,0x0
    80003704:	c1458593          	addi	a1,a1,-1004 # 80003314 <_ZL16producerKeyboardPv>
                      data + i);
    80003708:	00179613          	slli	a2,a5,0x1
    8000370c:	00f60633          	add	a2,a2,a5
    80003710:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003714:	00c98633          	add	a2,s3,a2
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	ae0080e7          	jalr	-1312(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003720:	0014849b          	addiw	s1,s1,1
    80003724:	0524d263          	bge	s1,s2,80003768 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003728:	00149793          	slli	a5,s1,0x1
    8000372c:	009787b3          	add	a5,a5,s1
    80003730:	00379793          	slli	a5,a5,0x3
    80003734:	00f987b3          	add	a5,s3,a5
    80003738:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000373c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003740:	00008717          	auipc	a4,0x8
    80003744:	35073703          	ld	a4,848(a4) # 8000ba90 <_ZL10waitForAll>
    80003748:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000374c:	00048793          	mv	a5,s1
    80003750:	00349513          	slli	a0,s1,0x3
    80003754:	00aa8533          	add	a0,s5,a0
    80003758:	fa9054e3          	blez	s1,80003700 <_Z22producerConsumer_C_APIv+0x1c8>
    8000375c:	00000597          	auipc	a1,0x0
    80003760:	c6858593          	addi	a1,a1,-920 # 800033c4 <_ZL8producerPv>
    80003764:	fa5ff06f          	j	80003708 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	b28080e7          	jalr	-1240(ra) # 80001290 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003770:	00000493          	li	s1,0
    80003774:	00994e63          	blt	s2,s1,80003790 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003778:	00008517          	auipc	a0,0x8
    8000377c:	31853503          	ld	a0,792(a0) # 8000ba90 <_ZL10waitForAll>
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	bb4080e7          	jalr	-1100(ra) # 80001334 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003788:	0014849b          	addiw	s1,s1,1
    8000378c:	fe9ff06f          	j	80003774 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003790:	00008517          	auipc	a0,0x8
    80003794:	30053503          	ld	a0,768(a0) # 8000ba90 <_ZL10waitForAll>
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	b70080e7          	jalr	-1168(ra) # 80001308 <_Z9sem_closeP4_sem>
    delete buffer;
    800037a0:	000a0e63          	beqz	s4,800037bc <_Z22producerConsumer_C_APIv+0x284>
    800037a4:	000a0513          	mv	a0,s4
    800037a8:	00003097          	auipc	ra,0x3
    800037ac:	168080e7          	jalr	360(ra) # 80006910 <_ZN6BufferD1Ev>
    800037b0:	000a0513          	mv	a0,s4
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	14c080e7          	jalr	332(ra) # 80001900 <_ZdlPv>
    800037bc:	000b0113          	mv	sp,s6

}
    800037c0:	f9040113          	addi	sp,s0,-112
    800037c4:	06813083          	ld	ra,104(sp)
    800037c8:	06013403          	ld	s0,96(sp)
    800037cc:	05813483          	ld	s1,88(sp)
    800037d0:	05013903          	ld	s2,80(sp)
    800037d4:	04813983          	ld	s3,72(sp)
    800037d8:	04013a03          	ld	s4,64(sp)
    800037dc:	03813a83          	ld	s5,56(sp)
    800037e0:	03013b03          	ld	s6,48(sp)
    800037e4:	07010113          	addi	sp,sp,112
    800037e8:	00008067          	ret
    800037ec:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800037f0:	000a0513          	mv	a0,s4
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	10c080e7          	jalr	268(ra) # 80001900 <_ZdlPv>
    800037fc:	00048513          	mv	a0,s1
    80003800:	00009097          	auipc	ra,0x9
    80003804:	3a8080e7          	jalr	936(ra) # 8000cba8 <_Unwind_Resume>

0000000080003808 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003808:	fe010113          	addi	sp,sp,-32
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	01213023          	sd	s2,0(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003824:	00100793          	li	a5,1
    80003828:	02a7f863          	bgeu	a5,a0,80003858 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000382c:	00a00793          	li	a5,10
    80003830:	02f577b3          	remu	a5,a0,a5
    80003834:	02078e63          	beqz	a5,80003870 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003838:	fff48513          	addi	a0,s1,-1
    8000383c:	00000097          	auipc	ra,0x0
    80003840:	fcc080e7          	jalr	-52(ra) # 80003808 <_ZL9fibonaccim>
    80003844:	00050913          	mv	s2,a0
    80003848:	ffe48513          	addi	a0,s1,-2
    8000384c:	00000097          	auipc	ra,0x0
    80003850:	fbc080e7          	jalr	-68(ra) # 80003808 <_ZL9fibonaccim>
    80003854:	00a90533          	add	a0,s2,a0
}
    80003858:	01813083          	ld	ra,24(sp)
    8000385c:	01013403          	ld	s0,16(sp)
    80003860:	00813483          	ld	s1,8(sp)
    80003864:	00013903          	ld	s2,0(sp)
    80003868:	02010113          	addi	sp,sp,32
    8000386c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	a20080e7          	jalr	-1504(ra) # 80001290 <_Z15thread_dispatchv>
    80003878:	fc1ff06f          	j	80003838 <_ZL9fibonaccim+0x30>

000000008000387c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	01213023          	sd	s2,0(sp)
    80003890:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003894:	00000913          	li	s2,0
    80003898:	0380006f          	j	800038d0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	9f4080e7          	jalr	-1548(ra) # 80001290 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038a4:	00148493          	addi	s1,s1,1
    800038a8:	000027b7          	lui	a5,0x2
    800038ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038b0:	0097ee63          	bltu	a5,s1,800038cc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038b4:	00000713          	li	a4,0
    800038b8:	000077b7          	lui	a5,0x7
    800038bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038c0:	fce7eee3          	bltu	a5,a4,8000389c <_ZN7WorkerA11workerBodyAEPv+0x20>
    800038c4:	00170713          	addi	a4,a4,1
    800038c8:	ff1ff06f          	j	800038b8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800038cc:	00190913          	addi	s2,s2,1
    800038d0:	00900793          	li	a5,9
    800038d4:	0527e063          	bltu	a5,s2,80003914 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800038d8:	00006517          	auipc	a0,0x6
    800038dc:	85850513          	addi	a0,a0,-1960 # 80009130 <CONSOLE_STATUS+0x120>
    800038e0:	00002097          	auipc	ra,0x2
    800038e4:	eac080e7          	jalr	-340(ra) # 8000578c <_Z11printStringPKc>
    800038e8:	00000613          	li	a2,0
    800038ec:	00a00593          	li	a1,10
    800038f0:	0009051b          	sext.w	a0,s2
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	048080e7          	jalr	72(ra) # 8000593c <_Z8printIntiii>
    800038fc:	00006517          	auipc	a0,0x6
    80003900:	a9450513          	addi	a0,a0,-1388 # 80009390 <CONSOLE_STATUS+0x380>
    80003904:	00002097          	auipc	ra,0x2
    80003908:	e88080e7          	jalr	-376(ra) # 8000578c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000390c:	00000493          	li	s1,0
    80003910:	f99ff06f          	j	800038a8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003914:	00006517          	auipc	a0,0x6
    80003918:	82450513          	addi	a0,a0,-2012 # 80009138 <CONSOLE_STATUS+0x128>
    8000391c:	00002097          	auipc	ra,0x2
    80003920:	e70080e7          	jalr	-400(ra) # 8000578c <_Z11printStringPKc>
    finishedA = true;
    80003924:	00100793          	li	a5,1
    80003928:	00008717          	auipc	a4,0x8
    8000392c:	16f70823          	sb	a5,368(a4) # 8000ba98 <_ZL9finishedA>
}
    80003930:	01813083          	ld	ra,24(sp)
    80003934:	01013403          	ld	s0,16(sp)
    80003938:	00813483          	ld	s1,8(sp)
    8000393c:	00013903          	ld	s2,0(sp)
    80003940:	02010113          	addi	sp,sp,32
    80003944:	00008067          	ret

0000000080003948 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003948:	fe010113          	addi	sp,sp,-32
    8000394c:	00113c23          	sd	ra,24(sp)
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00913423          	sd	s1,8(sp)
    80003958:	01213023          	sd	s2,0(sp)
    8000395c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003960:	00000913          	li	s2,0
    80003964:	0380006f          	j	8000399c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	928080e7          	jalr	-1752(ra) # 80001290 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003970:	00148493          	addi	s1,s1,1
    80003974:	000027b7          	lui	a5,0x2
    80003978:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000397c:	0097ee63          	bltu	a5,s1,80003998 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003980:	00000713          	li	a4,0
    80003984:	000077b7          	lui	a5,0x7
    80003988:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000398c:	fce7eee3          	bltu	a5,a4,80003968 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003990:	00170713          	addi	a4,a4,1
    80003994:	ff1ff06f          	j	80003984 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003998:	00190913          	addi	s2,s2,1
    8000399c:	00f00793          	li	a5,15
    800039a0:	0527e063          	bltu	a5,s2,800039e0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800039a4:	00005517          	auipc	a0,0x5
    800039a8:	7a450513          	addi	a0,a0,1956 # 80009148 <CONSOLE_STATUS+0x138>
    800039ac:	00002097          	auipc	ra,0x2
    800039b0:	de0080e7          	jalr	-544(ra) # 8000578c <_Z11printStringPKc>
    800039b4:	00000613          	li	a2,0
    800039b8:	00a00593          	li	a1,10
    800039bc:	0009051b          	sext.w	a0,s2
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	f7c080e7          	jalr	-132(ra) # 8000593c <_Z8printIntiii>
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	9c850513          	addi	a0,a0,-1592 # 80009390 <CONSOLE_STATUS+0x380>
    800039d0:	00002097          	auipc	ra,0x2
    800039d4:	dbc080e7          	jalr	-580(ra) # 8000578c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039d8:	00000493          	li	s1,0
    800039dc:	f99ff06f          	j	80003974 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800039e0:	00005517          	auipc	a0,0x5
    800039e4:	77050513          	addi	a0,a0,1904 # 80009150 <CONSOLE_STATUS+0x140>
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	da4080e7          	jalr	-604(ra) # 8000578c <_Z11printStringPKc>
    finishedB = true;
    800039f0:	00100793          	li	a5,1
    800039f4:	00008717          	auipc	a4,0x8
    800039f8:	0af702a3          	sb	a5,165(a4) # 8000ba99 <_ZL9finishedB>
    thread_dispatch();
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	894080e7          	jalr	-1900(ra) # 80001290 <_Z15thread_dispatchv>
}
    80003a04:	01813083          	ld	ra,24(sp)
    80003a08:	01013403          	ld	s0,16(sp)
    80003a0c:	00813483          	ld	s1,8(sp)
    80003a10:	00013903          	ld	s2,0(sp)
    80003a14:	02010113          	addi	sp,sp,32
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	01213023          	sd	s2,0(sp)
    80003a30:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003a34:	00000493          	li	s1,0
    80003a38:	0400006f          	j	80003a78 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a3c:	00005517          	auipc	a0,0x5
    80003a40:	72450513          	addi	a0,a0,1828 # 80009160 <CONSOLE_STATUS+0x150>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	d48080e7          	jalr	-696(ra) # 8000578c <_Z11printStringPKc>
    80003a4c:	00000613          	li	a2,0
    80003a50:	00a00593          	li	a1,10
    80003a54:	00048513          	mv	a0,s1
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	ee4080e7          	jalr	-284(ra) # 8000593c <_Z8printIntiii>
    80003a60:	00006517          	auipc	a0,0x6
    80003a64:	93050513          	addi	a0,a0,-1744 # 80009390 <CONSOLE_STATUS+0x380>
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	d24080e7          	jalr	-732(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003a70:	0014849b          	addiw	s1,s1,1
    80003a74:	0ff4f493          	andi	s1,s1,255
    80003a78:	00200793          	li	a5,2
    80003a7c:	fc97f0e3          	bgeu	a5,s1,80003a3c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a80:	00005517          	auipc	a0,0x5
    80003a84:	6e850513          	addi	a0,a0,1768 # 80009168 <CONSOLE_STATUS+0x158>
    80003a88:	00002097          	auipc	ra,0x2
    80003a8c:	d04080e7          	jalr	-764(ra) # 8000578c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a90:	00700313          	li	t1,7
    thread_dispatch();
    80003a94:	ffffd097          	auipc	ra,0xffffd
    80003a98:	7fc080e7          	jalr	2044(ra) # 80001290 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003a9c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003aa0:	00005517          	auipc	a0,0x5
    80003aa4:	6d850513          	addi	a0,a0,1752 # 80009178 <CONSOLE_STATUS+0x168>
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	ce4080e7          	jalr	-796(ra) # 8000578c <_Z11printStringPKc>
    80003ab0:	00000613          	li	a2,0
    80003ab4:	00a00593          	li	a1,10
    80003ab8:	0009051b          	sext.w	a0,s2
    80003abc:	00002097          	auipc	ra,0x2
    80003ac0:	e80080e7          	jalr	-384(ra) # 8000593c <_Z8printIntiii>
    80003ac4:	00006517          	auipc	a0,0x6
    80003ac8:	8cc50513          	addi	a0,a0,-1844 # 80009390 <CONSOLE_STATUS+0x380>
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	cc0080e7          	jalr	-832(ra) # 8000578c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003ad4:	00c00513          	li	a0,12
    80003ad8:	00000097          	auipc	ra,0x0
    80003adc:	d30080e7          	jalr	-720(ra) # 80003808 <_ZL9fibonaccim>
    80003ae0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	69c50513          	addi	a0,a0,1692 # 80009180 <CONSOLE_STATUS+0x170>
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	ca0080e7          	jalr	-864(ra) # 8000578c <_Z11printStringPKc>
    80003af4:	00000613          	li	a2,0
    80003af8:	00a00593          	li	a1,10
    80003afc:	0009051b          	sext.w	a0,s2
    80003b00:	00002097          	auipc	ra,0x2
    80003b04:	e3c080e7          	jalr	-452(ra) # 8000593c <_Z8printIntiii>
    80003b08:	00006517          	auipc	a0,0x6
    80003b0c:	88850513          	addi	a0,a0,-1912 # 80009390 <CONSOLE_STATUS+0x380>
    80003b10:	00002097          	auipc	ra,0x2
    80003b14:	c7c080e7          	jalr	-900(ra) # 8000578c <_Z11printStringPKc>
    80003b18:	0400006f          	j	80003b58 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b1c:	00005517          	auipc	a0,0x5
    80003b20:	64450513          	addi	a0,a0,1604 # 80009160 <CONSOLE_STATUS+0x150>
    80003b24:	00002097          	auipc	ra,0x2
    80003b28:	c68080e7          	jalr	-920(ra) # 8000578c <_Z11printStringPKc>
    80003b2c:	00000613          	li	a2,0
    80003b30:	00a00593          	li	a1,10
    80003b34:	00048513          	mv	a0,s1
    80003b38:	00002097          	auipc	ra,0x2
    80003b3c:	e04080e7          	jalr	-508(ra) # 8000593c <_Z8printIntiii>
    80003b40:	00006517          	auipc	a0,0x6
    80003b44:	85050513          	addi	a0,a0,-1968 # 80009390 <CONSOLE_STATUS+0x380>
    80003b48:	00002097          	auipc	ra,0x2
    80003b4c:	c44080e7          	jalr	-956(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003b50:	0014849b          	addiw	s1,s1,1
    80003b54:	0ff4f493          	andi	s1,s1,255
    80003b58:	00500793          	li	a5,5
    80003b5c:	fc97f0e3          	bgeu	a5,s1,80003b1c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003b60:	00005517          	auipc	a0,0x5
    80003b64:	5d850513          	addi	a0,a0,1496 # 80009138 <CONSOLE_STATUS+0x128>
    80003b68:	00002097          	auipc	ra,0x2
    80003b6c:	c24080e7          	jalr	-988(ra) # 8000578c <_Z11printStringPKc>
    finishedC = true;
    80003b70:	00100793          	li	a5,1
    80003b74:	00008717          	auipc	a4,0x8
    80003b78:	f2f70323          	sb	a5,-218(a4) # 8000ba9a <_ZL9finishedC>
    thread_dispatch();
    80003b7c:	ffffd097          	auipc	ra,0xffffd
    80003b80:	714080e7          	jalr	1812(ra) # 80001290 <_Z15thread_dispatchv>
}
    80003b84:	01813083          	ld	ra,24(sp)
    80003b88:	01013403          	ld	s0,16(sp)
    80003b8c:	00813483          	ld	s1,8(sp)
    80003b90:	00013903          	ld	s2,0(sp)
    80003b94:	02010113          	addi	sp,sp,32
    80003b98:	00008067          	ret

0000000080003b9c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00113c23          	sd	ra,24(sp)
    80003ba4:	00813823          	sd	s0,16(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	01213023          	sd	s2,0(sp)
    80003bb0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003bb4:	00a00493          	li	s1,10
    80003bb8:	0400006f          	j	80003bf8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bbc:	00005517          	auipc	a0,0x5
    80003bc0:	5d450513          	addi	a0,a0,1492 # 80009190 <CONSOLE_STATUS+0x180>
    80003bc4:	00002097          	auipc	ra,0x2
    80003bc8:	bc8080e7          	jalr	-1080(ra) # 8000578c <_Z11printStringPKc>
    80003bcc:	00000613          	li	a2,0
    80003bd0:	00a00593          	li	a1,10
    80003bd4:	00048513          	mv	a0,s1
    80003bd8:	00002097          	auipc	ra,0x2
    80003bdc:	d64080e7          	jalr	-668(ra) # 8000593c <_Z8printIntiii>
    80003be0:	00005517          	auipc	a0,0x5
    80003be4:	7b050513          	addi	a0,a0,1968 # 80009390 <CONSOLE_STATUS+0x380>
    80003be8:	00002097          	auipc	ra,0x2
    80003bec:	ba4080e7          	jalr	-1116(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003bf0:	0014849b          	addiw	s1,s1,1
    80003bf4:	0ff4f493          	andi	s1,s1,255
    80003bf8:	00c00793          	li	a5,12
    80003bfc:	fc97f0e3          	bgeu	a5,s1,80003bbc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003c00:	00005517          	auipc	a0,0x5
    80003c04:	59850513          	addi	a0,a0,1432 # 80009198 <CONSOLE_STATUS+0x188>
    80003c08:	00002097          	auipc	ra,0x2
    80003c0c:	b84080e7          	jalr	-1148(ra) # 8000578c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c10:	00500313          	li	t1,5
    thread_dispatch();
    80003c14:	ffffd097          	auipc	ra,0xffffd
    80003c18:	67c080e7          	jalr	1660(ra) # 80001290 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c1c:	01000513          	li	a0,16
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	be8080e7          	jalr	-1048(ra) # 80003808 <_ZL9fibonaccim>
    80003c28:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c2c:	00005517          	auipc	a0,0x5
    80003c30:	57c50513          	addi	a0,a0,1404 # 800091a8 <CONSOLE_STATUS+0x198>
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	b58080e7          	jalr	-1192(ra) # 8000578c <_Z11printStringPKc>
    80003c3c:	00000613          	li	a2,0
    80003c40:	00a00593          	li	a1,10
    80003c44:	0009051b          	sext.w	a0,s2
    80003c48:	00002097          	auipc	ra,0x2
    80003c4c:	cf4080e7          	jalr	-780(ra) # 8000593c <_Z8printIntiii>
    80003c50:	00005517          	auipc	a0,0x5
    80003c54:	74050513          	addi	a0,a0,1856 # 80009390 <CONSOLE_STATUS+0x380>
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	b34080e7          	jalr	-1228(ra) # 8000578c <_Z11printStringPKc>
    80003c60:	0400006f          	j	80003ca0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c64:	00005517          	auipc	a0,0x5
    80003c68:	52c50513          	addi	a0,a0,1324 # 80009190 <CONSOLE_STATUS+0x180>
    80003c6c:	00002097          	auipc	ra,0x2
    80003c70:	b20080e7          	jalr	-1248(ra) # 8000578c <_Z11printStringPKc>
    80003c74:	00000613          	li	a2,0
    80003c78:	00a00593          	li	a1,10
    80003c7c:	00048513          	mv	a0,s1
    80003c80:	00002097          	auipc	ra,0x2
    80003c84:	cbc080e7          	jalr	-836(ra) # 8000593c <_Z8printIntiii>
    80003c88:	00005517          	auipc	a0,0x5
    80003c8c:	70850513          	addi	a0,a0,1800 # 80009390 <CONSOLE_STATUS+0x380>
    80003c90:	00002097          	auipc	ra,0x2
    80003c94:	afc080e7          	jalr	-1284(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c98:	0014849b          	addiw	s1,s1,1
    80003c9c:	0ff4f493          	andi	s1,s1,255
    80003ca0:	00f00793          	li	a5,15
    80003ca4:	fc97f0e3          	bgeu	a5,s1,80003c64 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003ca8:	00005517          	auipc	a0,0x5
    80003cac:	51050513          	addi	a0,a0,1296 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003cb0:	00002097          	auipc	ra,0x2
    80003cb4:	adc080e7          	jalr	-1316(ra) # 8000578c <_Z11printStringPKc>
    finishedD = true;
    80003cb8:	00100793          	li	a5,1
    80003cbc:	00008717          	auipc	a4,0x8
    80003cc0:	dcf70fa3          	sb	a5,-545(a4) # 8000ba9b <_ZL9finishedD>
    thread_dispatch();
    80003cc4:	ffffd097          	auipc	ra,0xffffd
    80003cc8:	5cc080e7          	jalr	1484(ra) # 80001290 <_Z15thread_dispatchv>
}
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	00013903          	ld	s2,0(sp)
    80003cdc:	02010113          	addi	sp,sp,32
    80003ce0:	00008067          	ret

0000000080003ce4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ce4:	fc010113          	addi	sp,sp,-64
    80003ce8:	02113c23          	sd	ra,56(sp)
    80003cec:	02813823          	sd	s0,48(sp)
    80003cf0:	02913423          	sd	s1,40(sp)
    80003cf4:	03213023          	sd	s2,32(sp)
    80003cf8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003cfc:	02000513          	li	a0,32
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	bd8080e7          	jalr	-1064(ra) # 800018d8 <_Znwm>
    80003d08:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	ccc080e7          	jalr	-820(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80003d14:	00008797          	auipc	a5,0x8
    80003d18:	aac78793          	addi	a5,a5,-1364 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80003d1c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003d20:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003d24:	00005517          	auipc	a0,0x5
    80003d28:	4a450513          	addi	a0,a0,1188 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003d2c:	00002097          	auipc	ra,0x2
    80003d30:	a60080e7          	jalr	-1440(ra) # 8000578c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003d34:	02000513          	li	a0,32
    80003d38:	ffffe097          	auipc	ra,0xffffe
    80003d3c:	ba0080e7          	jalr	-1120(ra) # 800018d8 <_Znwm>
    80003d40:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	c94080e7          	jalr	-876(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80003d4c:	00008797          	auipc	a5,0x8
    80003d50:	a9c78793          	addi	a5,a5,-1380 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80003d54:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003d58:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003d5c:	00005517          	auipc	a0,0x5
    80003d60:	48450513          	addi	a0,a0,1156 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	a28080e7          	jalr	-1496(ra) # 8000578c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003d6c:	02000513          	li	a0,32
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	b68080e7          	jalr	-1176(ra) # 800018d8 <_Znwm>
    80003d78:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	c5c080e7          	jalr	-932(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80003d84:	00008797          	auipc	a5,0x8
    80003d88:	a8c78793          	addi	a5,a5,-1396 # 8000b810 <_ZTV7WorkerC+0x10>
    80003d8c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d90:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003d94:	00005517          	auipc	a0,0x5
    80003d98:	46450513          	addi	a0,a0,1124 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	9f0080e7          	jalr	-1552(ra) # 8000578c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003da4:	02000513          	li	a0,32
    80003da8:	ffffe097          	auipc	ra,0xffffe
    80003dac:	b30080e7          	jalr	-1232(ra) # 800018d8 <_Znwm>
    80003db0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003db4:	ffffe097          	auipc	ra,0xffffe
    80003db8:	c24080e7          	jalr	-988(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80003dbc:	00008797          	auipc	a5,0x8
    80003dc0:	a7c78793          	addi	a5,a5,-1412 # 8000b838 <_ZTV7WorkerD+0x10>
    80003dc4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003dc8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003dcc:	00005517          	auipc	a0,0x5
    80003dd0:	44450513          	addi	a0,a0,1092 # 80009210 <CONSOLE_STATUS+0x200>
    80003dd4:	00002097          	auipc	ra,0x2
    80003dd8:	9b8080e7          	jalr	-1608(ra) # 8000578c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003ddc:	00000493          	li	s1,0
    80003de0:	00300793          	li	a5,3
    80003de4:	0297c663          	blt	a5,s1,80003e10 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003de8:	00349793          	slli	a5,s1,0x3
    80003dec:	fe040713          	addi	a4,s0,-32
    80003df0:	00f707b3          	add	a5,a4,a5
    80003df4:	fe07b503          	ld	a0,-32(a5)
    80003df8:	ffffe097          	auipc	ra,0xffffe
    80003dfc:	c18080e7          	jalr	-1000(ra) # 80001a10 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003e00:	0014849b          	addiw	s1,s1,1
    80003e04:	fddff06f          	j	80003de0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	cc8080e7          	jalr	-824(ra) # 80001ad0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e10:	00008797          	auipc	a5,0x8
    80003e14:	c887c783          	lbu	a5,-888(a5) # 8000ba98 <_ZL9finishedA>
    80003e18:	fe0788e3          	beqz	a5,80003e08 <_Z20Threads_CPP_API_testv+0x124>
    80003e1c:	00008797          	auipc	a5,0x8
    80003e20:	c7d7c783          	lbu	a5,-899(a5) # 8000ba99 <_ZL9finishedB>
    80003e24:	fe0782e3          	beqz	a5,80003e08 <_Z20Threads_CPP_API_testv+0x124>
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	c727c783          	lbu	a5,-910(a5) # 8000ba9a <_ZL9finishedC>
    80003e30:	fc078ce3          	beqz	a5,80003e08 <_Z20Threads_CPP_API_testv+0x124>
    80003e34:	00008797          	auipc	a5,0x8
    80003e38:	c677c783          	lbu	a5,-921(a5) # 8000ba9b <_ZL9finishedD>
    80003e3c:	fc0786e3          	beqz	a5,80003e08 <_Z20Threads_CPP_API_testv+0x124>
    80003e40:	fc040493          	addi	s1,s0,-64
    80003e44:	0080006f          	j	80003e4c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003e48:	00848493          	addi	s1,s1,8
    80003e4c:	fe040793          	addi	a5,s0,-32
    80003e50:	08f48663          	beq	s1,a5,80003edc <_Z20Threads_CPP_API_testv+0x1f8>
    80003e54:	0004b503          	ld	a0,0(s1)
    80003e58:	fe0508e3          	beqz	a0,80003e48 <_Z20Threads_CPP_API_testv+0x164>
    80003e5c:	00053783          	ld	a5,0(a0)
    80003e60:	0087b783          	ld	a5,8(a5)
    80003e64:	000780e7          	jalr	a5
    80003e68:	fe1ff06f          	j	80003e48 <_Z20Threads_CPP_API_testv+0x164>
    80003e6c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003e70:	00048513          	mv	a0,s1
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	a8c080e7          	jalr	-1396(ra) # 80001900 <_ZdlPv>
    80003e7c:	00090513          	mv	a0,s2
    80003e80:	00009097          	auipc	ra,0x9
    80003e84:	d28080e7          	jalr	-728(ra) # 8000cba8 <_Unwind_Resume>
    80003e88:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e8c:	00048513          	mv	a0,s1
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	a70080e7          	jalr	-1424(ra) # 80001900 <_ZdlPv>
    80003e98:	00090513          	mv	a0,s2
    80003e9c:	00009097          	auipc	ra,0x9
    80003ea0:	d0c080e7          	jalr	-756(ra) # 8000cba8 <_Unwind_Resume>
    80003ea4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003ea8:	00048513          	mv	a0,s1
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	a54080e7          	jalr	-1452(ra) # 80001900 <_ZdlPv>
    80003eb4:	00090513          	mv	a0,s2
    80003eb8:	00009097          	auipc	ra,0x9
    80003ebc:	cf0080e7          	jalr	-784(ra) # 8000cba8 <_Unwind_Resume>
    80003ec0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003ec4:	00048513          	mv	a0,s1
    80003ec8:	ffffe097          	auipc	ra,0xffffe
    80003ecc:	a38080e7          	jalr	-1480(ra) # 80001900 <_ZdlPv>
    80003ed0:	00090513          	mv	a0,s2
    80003ed4:	00009097          	auipc	ra,0x9
    80003ed8:	cd4080e7          	jalr	-812(ra) # 8000cba8 <_Unwind_Resume>
}
    80003edc:	03813083          	ld	ra,56(sp)
    80003ee0:	03013403          	ld	s0,48(sp)
    80003ee4:	02813483          	ld	s1,40(sp)
    80003ee8:	02013903          	ld	s2,32(sp)
    80003eec:	04010113          	addi	sp,sp,64
    80003ef0:	00008067          	ret

0000000080003ef4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003ef4:	ff010113          	addi	sp,sp,-16
    80003ef8:	00113423          	sd	ra,8(sp)
    80003efc:	00813023          	sd	s0,0(sp)
    80003f00:	01010413          	addi	s0,sp,16
    80003f04:	00008797          	auipc	a5,0x8
    80003f08:	8bc78793          	addi	a5,a5,-1860 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80003f0c:	00f53023          	sd	a5,0(a0)
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	958080e7          	jalr	-1704(ra) # 80001868 <_ZN6ThreadD1Ev>
    80003f18:	00813083          	ld	ra,8(sp)
    80003f1c:	00013403          	ld	s0,0(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret

0000000080003f28 <_ZN7WorkerAD0Ev>:
    80003f28:	fe010113          	addi	sp,sp,-32
    80003f2c:	00113c23          	sd	ra,24(sp)
    80003f30:	00813823          	sd	s0,16(sp)
    80003f34:	00913423          	sd	s1,8(sp)
    80003f38:	02010413          	addi	s0,sp,32
    80003f3c:	00050493          	mv	s1,a0
    80003f40:	00008797          	auipc	a5,0x8
    80003f44:	88078793          	addi	a5,a5,-1920 # 8000b7c0 <_ZTV7WorkerA+0x10>
    80003f48:	00f53023          	sd	a5,0(a0)
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	91c080e7          	jalr	-1764(ra) # 80001868 <_ZN6ThreadD1Ev>
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	9a8080e7          	jalr	-1624(ra) # 80001900 <_ZdlPv>
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	02010113          	addi	sp,sp,32
    80003f70:	00008067          	ret

0000000080003f74 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00113423          	sd	ra,8(sp)
    80003f7c:	00813023          	sd	s0,0(sp)
    80003f80:	01010413          	addi	s0,sp,16
    80003f84:	00008797          	auipc	a5,0x8
    80003f88:	86478793          	addi	a5,a5,-1948 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80003f8c:	00f53023          	sd	a5,0(a0)
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	8d8080e7          	jalr	-1832(ra) # 80001868 <_ZN6ThreadD1Ev>
    80003f98:	00813083          	ld	ra,8(sp)
    80003f9c:	00013403          	ld	s0,0(sp)
    80003fa0:	01010113          	addi	sp,sp,16
    80003fa4:	00008067          	ret

0000000080003fa8 <_ZN7WorkerBD0Ev>:
    80003fa8:	fe010113          	addi	sp,sp,-32
    80003fac:	00113c23          	sd	ra,24(sp)
    80003fb0:	00813823          	sd	s0,16(sp)
    80003fb4:	00913423          	sd	s1,8(sp)
    80003fb8:	02010413          	addi	s0,sp,32
    80003fbc:	00050493          	mv	s1,a0
    80003fc0:	00008797          	auipc	a5,0x8
    80003fc4:	82878793          	addi	a5,a5,-2008 # 8000b7e8 <_ZTV7WorkerB+0x10>
    80003fc8:	00f53023          	sd	a5,0(a0)
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	89c080e7          	jalr	-1892(ra) # 80001868 <_ZN6ThreadD1Ev>
    80003fd4:	00048513          	mv	a0,s1
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	928080e7          	jalr	-1752(ra) # 80001900 <_ZdlPv>
    80003fe0:	01813083          	ld	ra,24(sp)
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	00813483          	ld	s1,8(sp)
    80003fec:	02010113          	addi	sp,sp,32
    80003ff0:	00008067          	ret

0000000080003ff4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ff4:	ff010113          	addi	sp,sp,-16
    80003ff8:	00113423          	sd	ra,8(sp)
    80003ffc:	00813023          	sd	s0,0(sp)
    80004000:	01010413          	addi	s0,sp,16
    80004004:	00008797          	auipc	a5,0x8
    80004008:	80c78793          	addi	a5,a5,-2036 # 8000b810 <_ZTV7WorkerC+0x10>
    8000400c:	00f53023          	sd	a5,0(a0)
    80004010:	ffffe097          	auipc	ra,0xffffe
    80004014:	858080e7          	jalr	-1960(ra) # 80001868 <_ZN6ThreadD1Ev>
    80004018:	00813083          	ld	ra,8(sp)
    8000401c:	00013403          	ld	s0,0(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <_ZN7WorkerCD0Ev>:
    80004028:	fe010113          	addi	sp,sp,-32
    8000402c:	00113c23          	sd	ra,24(sp)
    80004030:	00813823          	sd	s0,16(sp)
    80004034:	00913423          	sd	s1,8(sp)
    80004038:	02010413          	addi	s0,sp,32
    8000403c:	00050493          	mv	s1,a0
    80004040:	00007797          	auipc	a5,0x7
    80004044:	7d078793          	addi	a5,a5,2000 # 8000b810 <_ZTV7WorkerC+0x10>
    80004048:	00f53023          	sd	a5,0(a0)
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	81c080e7          	jalr	-2020(ra) # 80001868 <_ZN6ThreadD1Ev>
    80004054:	00048513          	mv	a0,s1
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	8a8080e7          	jalr	-1880(ra) # 80001900 <_ZdlPv>
    80004060:	01813083          	ld	ra,24(sp)
    80004064:	01013403          	ld	s0,16(sp)
    80004068:	00813483          	ld	s1,8(sp)
    8000406c:	02010113          	addi	sp,sp,32
    80004070:	00008067          	ret

0000000080004074 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004074:	ff010113          	addi	sp,sp,-16
    80004078:	00113423          	sd	ra,8(sp)
    8000407c:	00813023          	sd	s0,0(sp)
    80004080:	01010413          	addi	s0,sp,16
    80004084:	00007797          	auipc	a5,0x7
    80004088:	7b478793          	addi	a5,a5,1972 # 8000b838 <_ZTV7WorkerD+0x10>
    8000408c:	00f53023          	sd	a5,0(a0)
    80004090:	ffffd097          	auipc	ra,0xffffd
    80004094:	7d8080e7          	jalr	2008(ra) # 80001868 <_ZN6ThreadD1Ev>
    80004098:	00813083          	ld	ra,8(sp)
    8000409c:	00013403          	ld	s0,0(sp)
    800040a0:	01010113          	addi	sp,sp,16
    800040a4:	00008067          	ret

00000000800040a8 <_ZN7WorkerDD0Ev>:
    800040a8:	fe010113          	addi	sp,sp,-32
    800040ac:	00113c23          	sd	ra,24(sp)
    800040b0:	00813823          	sd	s0,16(sp)
    800040b4:	00913423          	sd	s1,8(sp)
    800040b8:	02010413          	addi	s0,sp,32
    800040bc:	00050493          	mv	s1,a0
    800040c0:	00007797          	auipc	a5,0x7
    800040c4:	77878793          	addi	a5,a5,1912 # 8000b838 <_ZTV7WorkerD+0x10>
    800040c8:	00f53023          	sd	a5,0(a0)
    800040cc:	ffffd097          	auipc	ra,0xffffd
    800040d0:	79c080e7          	jalr	1948(ra) # 80001868 <_ZN6ThreadD1Ev>
    800040d4:	00048513          	mv	a0,s1
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	828080e7          	jalr	-2008(ra) # 80001900 <_ZdlPv>
    800040e0:	01813083          	ld	ra,24(sp)
    800040e4:	01013403          	ld	s0,16(sp)
    800040e8:	00813483          	ld	s1,8(sp)
    800040ec:	02010113          	addi	sp,sp,32
    800040f0:	00008067          	ret

00000000800040f4 <_ZN7WorkerA3runEv>:
    void run() override {
    800040f4:	ff010113          	addi	sp,sp,-16
    800040f8:	00113423          	sd	ra,8(sp)
    800040fc:	00813023          	sd	s0,0(sp)
    80004100:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004104:	00000593          	li	a1,0
    80004108:	fffff097          	auipc	ra,0xfffff
    8000410c:	774080e7          	jalr	1908(ra) # 8000387c <_ZN7WorkerA11workerBodyAEPv>
    }
    80004110:	00813083          	ld	ra,8(sp)
    80004114:	00013403          	ld	s0,0(sp)
    80004118:	01010113          	addi	sp,sp,16
    8000411c:	00008067          	ret

0000000080004120 <_ZN7WorkerB3runEv>:
    void run() override {
    80004120:	ff010113          	addi	sp,sp,-16
    80004124:	00113423          	sd	ra,8(sp)
    80004128:	00813023          	sd	s0,0(sp)
    8000412c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004130:	00000593          	li	a1,0
    80004134:	00000097          	auipc	ra,0x0
    80004138:	814080e7          	jalr	-2028(ra) # 80003948 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000413c:	00813083          	ld	ra,8(sp)
    80004140:	00013403          	ld	s0,0(sp)
    80004144:	01010113          	addi	sp,sp,16
    80004148:	00008067          	ret

000000008000414c <_ZN7WorkerC3runEv>:
    void run() override {
    8000414c:	ff010113          	addi	sp,sp,-16
    80004150:	00113423          	sd	ra,8(sp)
    80004154:	00813023          	sd	s0,0(sp)
    80004158:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000415c:	00000593          	li	a1,0
    80004160:	00000097          	auipc	ra,0x0
    80004164:	8bc080e7          	jalr	-1860(ra) # 80003a1c <_ZN7WorkerC11workerBodyCEPv>
    }
    80004168:	00813083          	ld	ra,8(sp)
    8000416c:	00013403          	ld	s0,0(sp)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret

0000000080004178 <_ZN7WorkerD3runEv>:
    void run() override {
    80004178:	ff010113          	addi	sp,sp,-16
    8000417c:	00113423          	sd	ra,8(sp)
    80004180:	00813023          	sd	s0,0(sp)
    80004184:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004188:	00000593          	li	a1,0
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	a10080e7          	jalr	-1520(ra) # 80003b9c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800041a4:	f8010113          	addi	sp,sp,-128
    800041a8:	06113c23          	sd	ra,120(sp)
    800041ac:	06813823          	sd	s0,112(sp)
    800041b0:	06913423          	sd	s1,104(sp)
    800041b4:	07213023          	sd	s2,96(sp)
    800041b8:	05313c23          	sd	s3,88(sp)
    800041bc:	05413823          	sd	s4,80(sp)
    800041c0:	05513423          	sd	s5,72(sp)
    800041c4:	05613023          	sd	s6,64(sp)
    800041c8:	03713c23          	sd	s7,56(sp)
    800041cc:	03813823          	sd	s8,48(sp)
    800041d0:	03913423          	sd	s9,40(sp)
    800041d4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800041d8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800041dc:	00005517          	auipc	a0,0x5
    800041e0:	e6c50513          	addi	a0,a0,-404 # 80009048 <CONSOLE_STATUS+0x38>
    800041e4:	00001097          	auipc	ra,0x1
    800041e8:	5a8080e7          	jalr	1448(ra) # 8000578c <_Z11printStringPKc>
    getString(input, 30);
    800041ec:	01e00593          	li	a1,30
    800041f0:	f8040493          	addi	s1,s0,-128
    800041f4:	00048513          	mv	a0,s1
    800041f8:	00001097          	auipc	ra,0x1
    800041fc:	61c080e7          	jalr	1564(ra) # 80005814 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004200:	00048513          	mv	a0,s1
    80004204:	00001097          	auipc	ra,0x1
    80004208:	6e8080e7          	jalr	1768(ra) # 800058ec <_Z11stringToIntPKc>
    8000420c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004210:	00005517          	auipc	a0,0x5
    80004214:	e5850513          	addi	a0,a0,-424 # 80009068 <CONSOLE_STATUS+0x58>
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	574080e7          	jalr	1396(ra) # 8000578c <_Z11printStringPKc>
    getString(input, 30);
    80004220:	01e00593          	li	a1,30
    80004224:	00048513          	mv	a0,s1
    80004228:	00001097          	auipc	ra,0x1
    8000422c:	5ec080e7          	jalr	1516(ra) # 80005814 <_Z9getStringPci>
    n = stringToInt(input);
    80004230:	00048513          	mv	a0,s1
    80004234:	00001097          	auipc	ra,0x1
    80004238:	6b8080e7          	jalr	1720(ra) # 800058ec <_Z11stringToIntPKc>
    8000423c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004240:	00005517          	auipc	a0,0x5
    80004244:	e4850513          	addi	a0,a0,-440 # 80009088 <CONSOLE_STATUS+0x78>
    80004248:	00001097          	auipc	ra,0x1
    8000424c:	544080e7          	jalr	1348(ra) # 8000578c <_Z11printStringPKc>
    printInt(threadNum);
    80004250:	00000613          	li	a2,0
    80004254:	00a00593          	li	a1,10
    80004258:	00098513          	mv	a0,s3
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	6e0080e7          	jalr	1760(ra) # 8000593c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004264:	00005517          	auipc	a0,0x5
    80004268:	e3c50513          	addi	a0,a0,-452 # 800090a0 <CONSOLE_STATUS+0x90>
    8000426c:	00001097          	auipc	ra,0x1
    80004270:	520080e7          	jalr	1312(ra) # 8000578c <_Z11printStringPKc>
    printInt(n);
    80004274:	00000613          	li	a2,0
    80004278:	00a00593          	li	a1,10
    8000427c:	00048513          	mv	a0,s1
    80004280:	00001097          	auipc	ra,0x1
    80004284:	6bc080e7          	jalr	1724(ra) # 8000593c <_Z8printIntiii>
    printString(".\n");
    80004288:	00005517          	auipc	a0,0x5
    8000428c:	e3050513          	addi	a0,a0,-464 # 800090b8 <CONSOLE_STATUS+0xa8>
    80004290:	00001097          	auipc	ra,0x1
    80004294:	4fc080e7          	jalr	1276(ra) # 8000578c <_Z11printStringPKc>
    if (threadNum > n) {
    80004298:	0334c463          	blt	s1,s3,800042c0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000429c:	03305c63          	blez	s3,800042d4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800042a0:	03800513          	li	a0,56
    800042a4:	ffffd097          	auipc	ra,0xffffd
    800042a8:	634080e7          	jalr	1588(ra) # 800018d8 <_Znwm>
    800042ac:	00050a93          	mv	s5,a0
    800042b0:	00048593          	mv	a1,s1
    800042b4:	00001097          	auipc	ra,0x1
    800042b8:	7a8080e7          	jalr	1960(ra) # 80005a5c <_ZN9BufferCPPC1Ei>
    800042bc:	0300006f          	j	800042ec <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800042c0:	00005517          	auipc	a0,0x5
    800042c4:	e0050513          	addi	a0,a0,-512 # 800090c0 <CONSOLE_STATUS+0xb0>
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	4c4080e7          	jalr	1220(ra) # 8000578c <_Z11printStringPKc>
        return;
    800042d0:	0140006f          	j	800042e4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800042d4:	00005517          	auipc	a0,0x5
    800042d8:	e2c50513          	addi	a0,a0,-468 # 80009100 <CONSOLE_STATUS+0xf0>
    800042dc:	00001097          	auipc	ra,0x1
    800042e0:	4b0080e7          	jalr	1200(ra) # 8000578c <_Z11printStringPKc>
        return;
    800042e4:	000c0113          	mv	sp,s8
    800042e8:	2140006f          	j	800044fc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800042ec:	01000513          	li	a0,16
    800042f0:	ffffd097          	auipc	ra,0xffffd
    800042f4:	5e8080e7          	jalr	1512(ra) # 800018d8 <_Znwm>
    800042f8:	00050913          	mv	s2,a0
    800042fc:	00000593          	li	a1,0
    80004300:	ffffe097          	auipc	ra,0xffffe
    80004304:	830080e7          	jalr	-2000(ra) # 80001b30 <_ZN9SemaphoreC1Ej>
    80004308:	00007797          	auipc	a5,0x7
    8000430c:	7b27b023          	sd	s2,1952(a5) # 8000baa8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004310:	00399793          	slli	a5,s3,0x3
    80004314:	00f78793          	addi	a5,a5,15
    80004318:	ff07f793          	andi	a5,a5,-16
    8000431c:	40f10133          	sub	sp,sp,a5
    80004320:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004324:	0019871b          	addiw	a4,s3,1
    80004328:	00171793          	slli	a5,a4,0x1
    8000432c:	00e787b3          	add	a5,a5,a4
    80004330:	00379793          	slli	a5,a5,0x3
    80004334:	00f78793          	addi	a5,a5,15
    80004338:	ff07f793          	andi	a5,a5,-16
    8000433c:	40f10133          	sub	sp,sp,a5
    80004340:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004344:	00199493          	slli	s1,s3,0x1
    80004348:	013484b3          	add	s1,s1,s3
    8000434c:	00349493          	slli	s1,s1,0x3
    80004350:	009b04b3          	add	s1,s6,s1
    80004354:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004358:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000435c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004360:	02800513          	li	a0,40
    80004364:	ffffd097          	auipc	ra,0xffffd
    80004368:	574080e7          	jalr	1396(ra) # 800018d8 <_Znwm>
    8000436c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004370:	ffffd097          	auipc	ra,0xffffd
    80004374:	668080e7          	jalr	1640(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80004378:	00007797          	auipc	a5,0x7
    8000437c:	53878793          	addi	a5,a5,1336 # 8000b8b0 <_ZTV8Consumer+0x10>
    80004380:	00fbb023          	sd	a5,0(s7)
    80004384:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004388:	000b8513          	mv	a0,s7
    8000438c:	ffffd097          	auipc	ra,0xffffd
    80004390:	684080e7          	jalr	1668(ra) # 80001a10 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004394:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004398:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000439c:	00007797          	auipc	a5,0x7
    800043a0:	70c7b783          	ld	a5,1804(a5) # 8000baa8 <_ZL10waitForAll>
    800043a4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043a8:	02800513          	li	a0,40
    800043ac:	ffffd097          	auipc	ra,0xffffd
    800043b0:	52c080e7          	jalr	1324(ra) # 800018d8 <_Znwm>
    800043b4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800043b8:	ffffd097          	auipc	ra,0xffffd
    800043bc:	620080e7          	jalr	1568(ra) # 800019d8 <_ZN6ThreadC1Ev>
    800043c0:	00007797          	auipc	a5,0x7
    800043c4:	4a078793          	addi	a5,a5,1184 # 8000b860 <_ZTV16ProducerKeyborad+0x10>
    800043c8:	00f4b023          	sd	a5,0(s1)
    800043cc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043d0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800043d4:	00048513          	mv	a0,s1
    800043d8:	ffffd097          	auipc	ra,0xffffd
    800043dc:	638080e7          	jalr	1592(ra) # 80001a10 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043e0:	00100913          	li	s2,1
    800043e4:	0300006f          	j	80004414 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043e8:	00007797          	auipc	a5,0x7
    800043ec:	4a078793          	addi	a5,a5,1184 # 8000b888 <_ZTV8Producer+0x10>
    800043f0:	00fcb023          	sd	a5,0(s9)
    800043f4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800043f8:	00391793          	slli	a5,s2,0x3
    800043fc:	00fa07b3          	add	a5,s4,a5
    80004400:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004404:	000c8513          	mv	a0,s9
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	608080e7          	jalr	1544(ra) # 80001a10 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004410:	0019091b          	addiw	s2,s2,1
    80004414:	05395263          	bge	s2,s3,80004458 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004418:	00191493          	slli	s1,s2,0x1
    8000441c:	012484b3          	add	s1,s1,s2
    80004420:	00349493          	slli	s1,s1,0x3
    80004424:	009b04b3          	add	s1,s6,s1
    80004428:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000442c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004430:	00007797          	auipc	a5,0x7
    80004434:	6787b783          	ld	a5,1656(a5) # 8000baa8 <_ZL10waitForAll>
    80004438:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000443c:	02800513          	li	a0,40
    80004440:	ffffd097          	auipc	ra,0xffffd
    80004444:	498080e7          	jalr	1176(ra) # 800018d8 <_Znwm>
    80004448:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000444c:	ffffd097          	auipc	ra,0xffffd
    80004450:	58c080e7          	jalr	1420(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80004454:	f95ff06f          	j	800043e8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004458:	ffffd097          	auipc	ra,0xffffd
    8000445c:	678080e7          	jalr	1656(ra) # 80001ad0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004460:	00000493          	li	s1,0
    80004464:	0099ce63          	blt	s3,s1,80004480 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004468:	00007517          	auipc	a0,0x7
    8000446c:	64053503          	ld	a0,1600(a0) # 8000baa8 <_ZL10waitForAll>
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	724080e7          	jalr	1828(ra) # 80001b94 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004478:	0014849b          	addiw	s1,s1,1
    8000447c:	fe9ff06f          	j	80004464 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004480:	00007517          	auipc	a0,0x7
    80004484:	62853503          	ld	a0,1576(a0) # 8000baa8 <_ZL10waitForAll>
    80004488:	00050863          	beqz	a0,80004498 <_Z20testConsumerProducerv+0x2f4>
    8000448c:	00053783          	ld	a5,0(a0)
    80004490:	0087b783          	ld	a5,8(a5)
    80004494:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004498:	00000493          	li	s1,0
    8000449c:	0080006f          	j	800044a4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800044a0:	0014849b          	addiw	s1,s1,1
    800044a4:	0334d263          	bge	s1,s3,800044c8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800044a8:	00349793          	slli	a5,s1,0x3
    800044ac:	00fa07b3          	add	a5,s4,a5
    800044b0:	0007b503          	ld	a0,0(a5)
    800044b4:	fe0506e3          	beqz	a0,800044a0 <_Z20testConsumerProducerv+0x2fc>
    800044b8:	00053783          	ld	a5,0(a0)
    800044bc:	0087b783          	ld	a5,8(a5)
    800044c0:	000780e7          	jalr	a5
    800044c4:	fddff06f          	j	800044a0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800044c8:	000b8a63          	beqz	s7,800044dc <_Z20testConsumerProducerv+0x338>
    800044cc:	000bb783          	ld	a5,0(s7)
    800044d0:	0087b783          	ld	a5,8(a5)
    800044d4:	000b8513          	mv	a0,s7
    800044d8:	000780e7          	jalr	a5
    delete buffer;
    800044dc:	000a8e63          	beqz	s5,800044f8 <_Z20testConsumerProducerv+0x354>
    800044e0:	000a8513          	mv	a0,s5
    800044e4:	00002097          	auipc	ra,0x2
    800044e8:	870080e7          	jalr	-1936(ra) # 80005d54 <_ZN9BufferCPPD1Ev>
    800044ec:	000a8513          	mv	a0,s5
    800044f0:	ffffd097          	auipc	ra,0xffffd
    800044f4:	410080e7          	jalr	1040(ra) # 80001900 <_ZdlPv>
    800044f8:	000c0113          	mv	sp,s8
}
    800044fc:	f8040113          	addi	sp,s0,-128
    80004500:	07813083          	ld	ra,120(sp)
    80004504:	07013403          	ld	s0,112(sp)
    80004508:	06813483          	ld	s1,104(sp)
    8000450c:	06013903          	ld	s2,96(sp)
    80004510:	05813983          	ld	s3,88(sp)
    80004514:	05013a03          	ld	s4,80(sp)
    80004518:	04813a83          	ld	s5,72(sp)
    8000451c:	04013b03          	ld	s6,64(sp)
    80004520:	03813b83          	ld	s7,56(sp)
    80004524:	03013c03          	ld	s8,48(sp)
    80004528:	02813c83          	ld	s9,40(sp)
    8000452c:	08010113          	addi	sp,sp,128
    80004530:	00008067          	ret
    80004534:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004538:	000a8513          	mv	a0,s5
    8000453c:	ffffd097          	auipc	ra,0xffffd
    80004540:	3c4080e7          	jalr	964(ra) # 80001900 <_ZdlPv>
    80004544:	00048513          	mv	a0,s1
    80004548:	00008097          	auipc	ra,0x8
    8000454c:	660080e7          	jalr	1632(ra) # 8000cba8 <_Unwind_Resume>
    80004550:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004554:	00090513          	mv	a0,s2
    80004558:	ffffd097          	auipc	ra,0xffffd
    8000455c:	3a8080e7          	jalr	936(ra) # 80001900 <_ZdlPv>
    80004560:	00048513          	mv	a0,s1
    80004564:	00008097          	auipc	ra,0x8
    80004568:	644080e7          	jalr	1604(ra) # 8000cba8 <_Unwind_Resume>
    8000456c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004570:	000b8513          	mv	a0,s7
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	38c080e7          	jalr	908(ra) # 80001900 <_ZdlPv>
    8000457c:	00048513          	mv	a0,s1
    80004580:	00008097          	auipc	ra,0x8
    80004584:	628080e7          	jalr	1576(ra) # 8000cba8 <_Unwind_Resume>
    80004588:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000458c:	00048513          	mv	a0,s1
    80004590:	ffffd097          	auipc	ra,0xffffd
    80004594:	370080e7          	jalr	880(ra) # 80001900 <_ZdlPv>
    80004598:	00090513          	mv	a0,s2
    8000459c:	00008097          	auipc	ra,0x8
    800045a0:	60c080e7          	jalr	1548(ra) # 8000cba8 <_Unwind_Resume>
    800045a4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800045a8:	000c8513          	mv	a0,s9
    800045ac:	ffffd097          	auipc	ra,0xffffd
    800045b0:	354080e7          	jalr	852(ra) # 80001900 <_ZdlPv>
    800045b4:	00048513          	mv	a0,s1
    800045b8:	00008097          	auipc	ra,0x8
    800045bc:	5f0080e7          	jalr	1520(ra) # 8000cba8 <_Unwind_Resume>

00000000800045c0 <_ZN8Consumer3runEv>:
    void run() override {
    800045c0:	fd010113          	addi	sp,sp,-48
    800045c4:	02113423          	sd	ra,40(sp)
    800045c8:	02813023          	sd	s0,32(sp)
    800045cc:	00913c23          	sd	s1,24(sp)
    800045d0:	01213823          	sd	s2,16(sp)
    800045d4:	01313423          	sd	s3,8(sp)
    800045d8:	03010413          	addi	s0,sp,48
    800045dc:	00050913          	mv	s2,a0
        int i = 0;
    800045e0:	00000993          	li	s3,0
    800045e4:	0100006f          	j	800045f4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800045e8:	00a00513          	li	a0,10
    800045ec:	ffffd097          	auipc	ra,0xffffd
    800045f0:	5fc080e7          	jalr	1532(ra) # 80001be8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800045f4:	00007797          	auipc	a5,0x7
    800045f8:	4ac7a783          	lw	a5,1196(a5) # 8000baa0 <_ZL9threadEnd>
    800045fc:	04079a63          	bnez	a5,80004650 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004600:	02093783          	ld	a5,32(s2)
    80004604:	0087b503          	ld	a0,8(a5)
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	638080e7          	jalr	1592(ra) # 80005c40 <_ZN9BufferCPP3getEv>
            i++;
    80004610:	0019849b          	addiw	s1,s3,1
    80004614:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004618:	0ff57513          	andi	a0,a0,255
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	5cc080e7          	jalr	1484(ra) # 80001be8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004624:	05000793          	li	a5,80
    80004628:	02f4e4bb          	remw	s1,s1,a5
    8000462c:	fc0494e3          	bnez	s1,800045f4 <_ZN8Consumer3runEv+0x34>
    80004630:	fb9ff06f          	j	800045e8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004634:	02093783          	ld	a5,32(s2)
    80004638:	0087b503          	ld	a0,8(a5)
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	604080e7          	jalr	1540(ra) # 80005c40 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004644:	0ff57513          	andi	a0,a0,255
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	5a0080e7          	jalr	1440(ra) # 80001be8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004650:	02093783          	ld	a5,32(s2)
    80004654:	0087b503          	ld	a0,8(a5)
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	674080e7          	jalr	1652(ra) # 80005ccc <_ZN9BufferCPP6getCntEv>
    80004660:	fca04ae3          	bgtz	a0,80004634 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004664:	02093783          	ld	a5,32(s2)
    80004668:	0107b503          	ld	a0,16(a5)
    8000466c:	ffffd097          	auipc	ra,0xffffd
    80004670:	4fc080e7          	jalr	1276(ra) # 80001b68 <_ZN9Semaphore6signalEv>
    }
    80004674:	02813083          	ld	ra,40(sp)
    80004678:	02013403          	ld	s0,32(sp)
    8000467c:	01813483          	ld	s1,24(sp)
    80004680:	01013903          	ld	s2,16(sp)
    80004684:	00813983          	ld	s3,8(sp)
    80004688:	03010113          	addi	sp,sp,48
    8000468c:	00008067          	ret

0000000080004690 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004690:	ff010113          	addi	sp,sp,-16
    80004694:	00113423          	sd	ra,8(sp)
    80004698:	00813023          	sd	s0,0(sp)
    8000469c:	01010413          	addi	s0,sp,16
    800046a0:	00007797          	auipc	a5,0x7
    800046a4:	21078793          	addi	a5,a5,528 # 8000b8b0 <_ZTV8Consumer+0x10>
    800046a8:	00f53023          	sd	a5,0(a0)
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	1bc080e7          	jalr	444(ra) # 80001868 <_ZN6ThreadD1Ev>
    800046b4:	00813083          	ld	ra,8(sp)
    800046b8:	00013403          	ld	s0,0(sp)
    800046bc:	01010113          	addi	sp,sp,16
    800046c0:	00008067          	ret

00000000800046c4 <_ZN8ConsumerD0Ev>:
    800046c4:	fe010113          	addi	sp,sp,-32
    800046c8:	00113c23          	sd	ra,24(sp)
    800046cc:	00813823          	sd	s0,16(sp)
    800046d0:	00913423          	sd	s1,8(sp)
    800046d4:	02010413          	addi	s0,sp,32
    800046d8:	00050493          	mv	s1,a0
    800046dc:	00007797          	auipc	a5,0x7
    800046e0:	1d478793          	addi	a5,a5,468 # 8000b8b0 <_ZTV8Consumer+0x10>
    800046e4:	00f53023          	sd	a5,0(a0)
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	180080e7          	jalr	384(ra) # 80001868 <_ZN6ThreadD1Ev>
    800046f0:	00048513          	mv	a0,s1
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	20c080e7          	jalr	524(ra) # 80001900 <_ZdlPv>
    800046fc:	01813083          	ld	ra,24(sp)
    80004700:	01013403          	ld	s0,16(sp)
    80004704:	00813483          	ld	s1,8(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004710:	ff010113          	addi	sp,sp,-16
    80004714:	00113423          	sd	ra,8(sp)
    80004718:	00813023          	sd	s0,0(sp)
    8000471c:	01010413          	addi	s0,sp,16
    80004720:	00007797          	auipc	a5,0x7
    80004724:	14078793          	addi	a5,a5,320 # 8000b860 <_ZTV16ProducerKeyborad+0x10>
    80004728:	00f53023          	sd	a5,0(a0)
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	13c080e7          	jalr	316(ra) # 80001868 <_ZN6ThreadD1Ev>
    80004734:	00813083          	ld	ra,8(sp)
    80004738:	00013403          	ld	s0,0(sp)
    8000473c:	01010113          	addi	sp,sp,16
    80004740:	00008067          	ret

0000000080004744 <_ZN16ProducerKeyboradD0Ev>:
    80004744:	fe010113          	addi	sp,sp,-32
    80004748:	00113c23          	sd	ra,24(sp)
    8000474c:	00813823          	sd	s0,16(sp)
    80004750:	00913423          	sd	s1,8(sp)
    80004754:	02010413          	addi	s0,sp,32
    80004758:	00050493          	mv	s1,a0
    8000475c:	00007797          	auipc	a5,0x7
    80004760:	10478793          	addi	a5,a5,260 # 8000b860 <_ZTV16ProducerKeyborad+0x10>
    80004764:	00f53023          	sd	a5,0(a0)
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	100080e7          	jalr	256(ra) # 80001868 <_ZN6ThreadD1Ev>
    80004770:	00048513          	mv	a0,s1
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	18c080e7          	jalr	396(ra) # 80001900 <_ZdlPv>
    8000477c:	01813083          	ld	ra,24(sp)
    80004780:	01013403          	ld	s0,16(sp)
    80004784:	00813483          	ld	s1,8(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret

0000000080004790 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004790:	ff010113          	addi	sp,sp,-16
    80004794:	00113423          	sd	ra,8(sp)
    80004798:	00813023          	sd	s0,0(sp)
    8000479c:	01010413          	addi	s0,sp,16
    800047a0:	00007797          	auipc	a5,0x7
    800047a4:	0e878793          	addi	a5,a5,232 # 8000b888 <_ZTV8Producer+0x10>
    800047a8:	00f53023          	sd	a5,0(a0)
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	0bc080e7          	jalr	188(ra) # 80001868 <_ZN6ThreadD1Ev>
    800047b4:	00813083          	ld	ra,8(sp)
    800047b8:	00013403          	ld	s0,0(sp)
    800047bc:	01010113          	addi	sp,sp,16
    800047c0:	00008067          	ret

00000000800047c4 <_ZN8ProducerD0Ev>:
    800047c4:	fe010113          	addi	sp,sp,-32
    800047c8:	00113c23          	sd	ra,24(sp)
    800047cc:	00813823          	sd	s0,16(sp)
    800047d0:	00913423          	sd	s1,8(sp)
    800047d4:	02010413          	addi	s0,sp,32
    800047d8:	00050493          	mv	s1,a0
    800047dc:	00007797          	auipc	a5,0x7
    800047e0:	0ac78793          	addi	a5,a5,172 # 8000b888 <_ZTV8Producer+0x10>
    800047e4:	00f53023          	sd	a5,0(a0)
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	080080e7          	jalr	128(ra) # 80001868 <_ZN6ThreadD1Ev>
    800047f0:	00048513          	mv	a0,s1
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	10c080e7          	jalr	268(ra) # 80001900 <_ZdlPv>
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	01013403          	ld	s0,16(sp)
    80004804:	00813483          	ld	s1,8(sp)
    80004808:	02010113          	addi	sp,sp,32
    8000480c:	00008067          	ret

0000000080004810 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004810:	fe010113          	addi	sp,sp,-32
    80004814:	00113c23          	sd	ra,24(sp)
    80004818:	00813823          	sd	s0,16(sp)
    8000481c:	00913423          	sd	s1,8(sp)
    80004820:	02010413          	addi	s0,sp,32
    80004824:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	b90080e7          	jalr	-1136(ra) # 800013b8 <_Z4getcv>
    80004830:	0005059b          	sext.w	a1,a0
    80004834:	01b00793          	li	a5,27
    80004838:	00f58c63          	beq	a1,a5,80004850 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000483c:	0204b783          	ld	a5,32(s1)
    80004840:	0087b503          	ld	a0,8(a5)
    80004844:	00001097          	auipc	ra,0x1
    80004848:	36c080e7          	jalr	876(ra) # 80005bb0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000484c:	fddff06f          	j	80004828 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004850:	00100793          	li	a5,1
    80004854:	00007717          	auipc	a4,0x7
    80004858:	24f72623          	sw	a5,588(a4) # 8000baa0 <_ZL9threadEnd>
        td->buffer->put('!');
    8000485c:	0204b783          	ld	a5,32(s1)
    80004860:	02100593          	li	a1,33
    80004864:	0087b503          	ld	a0,8(a5)
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	348080e7          	jalr	840(ra) # 80005bb0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004870:	0204b783          	ld	a5,32(s1)
    80004874:	0107b503          	ld	a0,16(a5)
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	2f0080e7          	jalr	752(ra) # 80001b68 <_ZN9Semaphore6signalEv>
    }
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00813483          	ld	s1,8(sp)
    8000488c:	02010113          	addi	sp,sp,32
    80004890:	00008067          	ret

0000000080004894 <_ZN8Producer3runEv>:
    void run() override {
    80004894:	fe010113          	addi	sp,sp,-32
    80004898:	00113c23          	sd	ra,24(sp)
    8000489c:	00813823          	sd	s0,16(sp)
    800048a0:	00913423          	sd	s1,8(sp)
    800048a4:	01213023          	sd	s2,0(sp)
    800048a8:	02010413          	addi	s0,sp,32
    800048ac:	00050493          	mv	s1,a0
        int i = 0;
    800048b0:	00000913          	li	s2,0
        while (!threadEnd) {
    800048b4:	00007797          	auipc	a5,0x7
    800048b8:	1ec7a783          	lw	a5,492(a5) # 8000baa0 <_ZL9threadEnd>
    800048bc:	04079263          	bnez	a5,80004900 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800048c0:	0204b783          	ld	a5,32(s1)
    800048c4:	0007a583          	lw	a1,0(a5)
    800048c8:	0305859b          	addiw	a1,a1,48
    800048cc:	0087b503          	ld	a0,8(a5)
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	2e0080e7          	jalr	736(ra) # 80005bb0 <_ZN9BufferCPP3putEi>
            i++;
    800048d8:	0019071b          	addiw	a4,s2,1
    800048dc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800048e0:	0204b783          	ld	a5,32(s1)
    800048e4:	0007a783          	lw	a5,0(a5)
    800048e8:	00e787bb          	addw	a5,a5,a4
    800048ec:	00500513          	li	a0,5
    800048f0:	02a7e53b          	remw	a0,a5,a0
    800048f4:	ffffd097          	auipc	ra,0xffffd
    800048f8:	160080e7          	jalr	352(ra) # 80001a54 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800048fc:	fb9ff06f          	j	800048b4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004900:	0204b783          	ld	a5,32(s1)
    80004904:	0107b503          	ld	a0,16(a5)
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	260080e7          	jalr	608(ra) # 80001b68 <_ZN9Semaphore6signalEv>
    }
    80004910:	01813083          	ld	ra,24(sp)
    80004914:	01013403          	ld	s0,16(sp)
    80004918:	00813483          	ld	s1,8(sp)
    8000491c:	00013903          	ld	s2,0(sp)
    80004920:	02010113          	addi	sp,sp,32
    80004924:	00008067          	ret

0000000080004928 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004928:	fe010113          	addi	sp,sp,-32
    8000492c:	00113c23          	sd	ra,24(sp)
    80004930:	00813823          	sd	s0,16(sp)
    80004934:	00913423          	sd	s1,8(sp)
    80004938:	01213023          	sd	s2,0(sp)
    8000493c:	02010413          	addi	s0,sp,32
    80004940:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004944:	00100793          	li	a5,1
    80004948:	02a7f863          	bgeu	a5,a0,80004978 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) {
    8000494c:	00a00793          	li	a5,10
    80004950:	02f577b3          	remu	a5,a0,a5
    80004954:	02078e63          	beqz	a5,80004990 <_ZL9fibonaccim+0x68>
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004958:	fff48513          	addi	a0,s1,-1
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	fcc080e7          	jalr	-52(ra) # 80004928 <_ZL9fibonaccim>
    80004964:	00050913          	mv	s2,a0
    80004968:	ffe48513          	addi	a0,s1,-2
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	fbc080e7          	jalr	-68(ra) # 80004928 <_ZL9fibonaccim>
    80004974:	00a90533          	add	a0,s2,a0
}
    80004978:	01813083          	ld	ra,24(sp)
    8000497c:	01013403          	ld	s0,16(sp)
    80004980:	00813483          	ld	s1,8(sp)
    80004984:	00013903          	ld	s2,0(sp)
    80004988:	02010113          	addi	sp,sp,32
    8000498c:	00008067          	ret
        thread_dispatch();
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	900080e7          	jalr	-1792(ra) # 80001290 <_Z15thread_dispatchv>
    80004998:	fc1ff06f          	j	80004958 <_ZL9fibonaccim+0x30>

000000008000499c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000499c:	fe010113          	addi	sp,sp,-32
    800049a0:	00113c23          	sd	ra,24(sp)
    800049a4:	00813823          	sd	s0,16(sp)
    800049a8:	00913423          	sd	s1,8(sp)
    800049ac:	01213023          	sd	s2,0(sp)
    800049b0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800049b4:	00a00493          	li	s1,10
    800049b8:	0400006f          	j	800049f8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049bc:	00004517          	auipc	a0,0x4
    800049c0:	7d450513          	addi	a0,a0,2004 # 80009190 <CONSOLE_STATUS+0x180>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	dc8080e7          	jalr	-568(ra) # 8000578c <_Z11printStringPKc>
    800049cc:	00000613          	li	a2,0
    800049d0:	00a00593          	li	a1,10
    800049d4:	00048513          	mv	a0,s1
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	f64080e7          	jalr	-156(ra) # 8000593c <_Z8printIntiii>
    800049e0:	00005517          	auipc	a0,0x5
    800049e4:	9b050513          	addi	a0,a0,-1616 # 80009390 <CONSOLE_STATUS+0x380>
    800049e8:	00001097          	auipc	ra,0x1
    800049ec:	da4080e7          	jalr	-604(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800049f0:	0014849b          	addiw	s1,s1,1
    800049f4:	0ff4f493          	andi	s1,s1,255
    800049f8:	00c00793          	li	a5,12
    800049fc:	fc97f0e3          	bgeu	a5,s1,800049bc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004a00:	00004517          	auipc	a0,0x4
    80004a04:	79850513          	addi	a0,a0,1944 # 80009198 <CONSOLE_STATUS+0x188>
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	d84080e7          	jalr	-636(ra) # 8000578c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a10:	00500313          	li	t1,5
    thread_dispatch();
    80004a14:	ffffd097          	auipc	ra,0xffffd
    80004a18:	87c080e7          	jalr	-1924(ra) # 80001290 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a1c:	01000513          	li	a0,16
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	f08080e7          	jalr	-248(ra) # 80004928 <_ZL9fibonaccim>
    80004a28:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a2c:	00004517          	auipc	a0,0x4
    80004a30:	77c50513          	addi	a0,a0,1916 # 800091a8 <CONSOLE_STATUS+0x198>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	d58080e7          	jalr	-680(ra) # 8000578c <_Z11printStringPKc>
    80004a3c:	00000613          	li	a2,0
    80004a40:	00a00593          	li	a1,10
    80004a44:	0009051b          	sext.w	a0,s2
    80004a48:	00001097          	auipc	ra,0x1
    80004a4c:	ef4080e7          	jalr	-268(ra) # 8000593c <_Z8printIntiii>
    80004a50:	00005517          	auipc	a0,0x5
    80004a54:	94050513          	addi	a0,a0,-1728 # 80009390 <CONSOLE_STATUS+0x380>
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	d34080e7          	jalr	-716(ra) # 8000578c <_Z11printStringPKc>
    80004a60:	0400006f          	j	80004aa0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a64:	00004517          	auipc	a0,0x4
    80004a68:	72c50513          	addi	a0,a0,1836 # 80009190 <CONSOLE_STATUS+0x180>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	d20080e7          	jalr	-736(ra) # 8000578c <_Z11printStringPKc>
    80004a74:	00000613          	li	a2,0
    80004a78:	00a00593          	li	a1,10
    80004a7c:	00048513          	mv	a0,s1
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	ebc080e7          	jalr	-324(ra) # 8000593c <_Z8printIntiii>
    80004a88:	00005517          	auipc	a0,0x5
    80004a8c:	90850513          	addi	a0,a0,-1784 # 80009390 <CONSOLE_STATUS+0x380>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	cfc080e7          	jalr	-772(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a98:	0014849b          	addiw	s1,s1,1
    80004a9c:	0ff4f493          	andi	s1,s1,255
    80004aa0:	00f00793          	li	a5,15
    80004aa4:	fc97f0e3          	bgeu	a5,s1,80004a64 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004aa8:	00004517          	auipc	a0,0x4
    80004aac:	71050513          	addi	a0,a0,1808 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	cdc080e7          	jalr	-804(ra) # 8000578c <_Z11printStringPKc>
    finishedD = true;
    80004ab8:	00100793          	li	a5,1
    80004abc:	00007717          	auipc	a4,0x7
    80004ac0:	fef70a23          	sb	a5,-12(a4) # 8000bab0 <_ZL9finishedD>
    thread_dispatch();
    80004ac4:	ffffc097          	auipc	ra,0xffffc
    80004ac8:	7cc080e7          	jalr	1996(ra) # 80001290 <_Z15thread_dispatchv>
}
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	00813483          	ld	s1,8(sp)
    80004ad8:	00013903          	ld	s2,0(sp)
    80004adc:	02010113          	addi	sp,sp,32
    80004ae0:	00008067          	ret

0000000080004ae4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ae4:	fe010113          	addi	sp,sp,-32
    80004ae8:	00113c23          	sd	ra,24(sp)
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00913423          	sd	s1,8(sp)
    80004af4:	01213023          	sd	s2,0(sp)
    80004af8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004afc:	00000493          	li	s1,0
    80004b00:	0400006f          	j	80004b40 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004b04:	00004517          	auipc	a0,0x4
    80004b08:	65c50513          	addi	a0,a0,1628 # 80009160 <CONSOLE_STATUS+0x150>
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	c80080e7          	jalr	-896(ra) # 8000578c <_Z11printStringPKc>
    80004b14:	00000613          	li	a2,0
    80004b18:	00a00593          	li	a1,10
    80004b1c:	00048513          	mv	a0,s1
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	e1c080e7          	jalr	-484(ra) # 8000593c <_Z8printIntiii>
    80004b28:	00005517          	auipc	a0,0x5
    80004b2c:	86850513          	addi	a0,a0,-1944 # 80009390 <CONSOLE_STATUS+0x380>
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	c5c080e7          	jalr	-932(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b38:	0014849b          	addiw	s1,s1,1
    80004b3c:	0ff4f493          	andi	s1,s1,255
    80004b40:	00200793          	li	a5,2
    80004b44:	fc97f0e3          	bgeu	a5,s1,80004b04 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004b48:	00004517          	auipc	a0,0x4
    80004b4c:	62050513          	addi	a0,a0,1568 # 80009168 <CONSOLE_STATUS+0x158>
    80004b50:	00001097          	auipc	ra,0x1
    80004b54:	c3c080e7          	jalr	-964(ra) # 8000578c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b58:	00700313          	li	t1,7
    thread_dispatch();
    80004b5c:	ffffc097          	auipc	ra,0xffffc
    80004b60:	734080e7          	jalr	1844(ra) # 80001290 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b64:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b68:	00004517          	auipc	a0,0x4
    80004b6c:	61050513          	addi	a0,a0,1552 # 80009178 <CONSOLE_STATUS+0x168>
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	c1c080e7          	jalr	-996(ra) # 8000578c <_Z11printStringPKc>
    80004b78:	00000613          	li	a2,0
    80004b7c:	00a00593          	li	a1,10
    80004b80:	0009051b          	sext.w	a0,s2
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	db8080e7          	jalr	-584(ra) # 8000593c <_Z8printIntiii>
    80004b8c:	00005517          	auipc	a0,0x5
    80004b90:	80450513          	addi	a0,a0,-2044 # 80009390 <CONSOLE_STATUS+0x380>
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	bf8080e7          	jalr	-1032(ra) # 8000578c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b9c:	00c00513          	li	a0,12
    80004ba0:	00000097          	auipc	ra,0x0
    80004ba4:	d88080e7          	jalr	-632(ra) # 80004928 <_ZL9fibonaccim>
    80004ba8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004bac:	00004517          	auipc	a0,0x4
    80004bb0:	5d450513          	addi	a0,a0,1492 # 80009180 <CONSOLE_STATUS+0x170>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	bd8080e7          	jalr	-1064(ra) # 8000578c <_Z11printStringPKc>
    80004bbc:	00000613          	li	a2,0
    80004bc0:	00a00593          	li	a1,10
    80004bc4:	0009051b          	sext.w	a0,s2
    80004bc8:	00001097          	auipc	ra,0x1
    80004bcc:	d74080e7          	jalr	-652(ra) # 8000593c <_Z8printIntiii>
    80004bd0:	00004517          	auipc	a0,0x4
    80004bd4:	7c050513          	addi	a0,a0,1984 # 80009390 <CONSOLE_STATUS+0x380>
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	bb4080e7          	jalr	-1100(ra) # 8000578c <_Z11printStringPKc>
    80004be0:	0400006f          	j	80004c20 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004be4:	00004517          	auipc	a0,0x4
    80004be8:	57c50513          	addi	a0,a0,1404 # 80009160 <CONSOLE_STATUS+0x150>
    80004bec:	00001097          	auipc	ra,0x1
    80004bf0:	ba0080e7          	jalr	-1120(ra) # 8000578c <_Z11printStringPKc>
    80004bf4:	00000613          	li	a2,0
    80004bf8:	00a00593          	li	a1,10
    80004bfc:	00048513          	mv	a0,s1
    80004c00:	00001097          	auipc	ra,0x1
    80004c04:	d3c080e7          	jalr	-708(ra) # 8000593c <_Z8printIntiii>
    80004c08:	00004517          	auipc	a0,0x4
    80004c0c:	78850513          	addi	a0,a0,1928 # 80009390 <CONSOLE_STATUS+0x380>
    80004c10:	00001097          	auipc	ra,0x1
    80004c14:	b7c080e7          	jalr	-1156(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c18:	0014849b          	addiw	s1,s1,1
    80004c1c:	0ff4f493          	andi	s1,s1,255
    80004c20:	00500793          	li	a5,5
    80004c24:	fc97f0e3          	bgeu	a5,s1,80004be4 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80004c28:	00004517          	auipc	a0,0x4
    80004c2c:	60050513          	addi	a0,a0,1536 # 80009228 <CONSOLE_STATUS+0x218>
    80004c30:	00001097          	auipc	ra,0x1
    80004c34:	b5c080e7          	jalr	-1188(ra) # 8000578c <_Z11printStringPKc>
    finishedC = true;
    80004c38:	00100793          	li	a5,1
    80004c3c:	00007717          	auipc	a4,0x7
    80004c40:	e6f70aa3          	sb	a5,-395(a4) # 8000bab1 <_ZL9finishedC>
    thread_dispatch();
    80004c44:	ffffc097          	auipc	ra,0xffffc
    80004c48:	64c080e7          	jalr	1612(ra) # 80001290 <_Z15thread_dispatchv>
}
    80004c4c:	01813083          	ld	ra,24(sp)
    80004c50:	01013403          	ld	s0,16(sp)
    80004c54:	00813483          	ld	s1,8(sp)
    80004c58:	00013903          	ld	s2,0(sp)
    80004c5c:	02010113          	addi	sp,sp,32
    80004c60:	00008067          	ret

0000000080004c64 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c64:	fe010113          	addi	sp,sp,-32
    80004c68:	00113c23          	sd	ra,24(sp)
    80004c6c:	00813823          	sd	s0,16(sp)
    80004c70:	00913423          	sd	s1,8(sp)
    80004c74:	01213023          	sd	s2,0(sp)
    80004c78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c7c:	00000913          	li	s2,0
    80004c80:	0380006f          	j	80004cb8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c84:	ffffc097          	auipc	ra,0xffffc
    80004c88:	60c080e7          	jalr	1548(ra) # 80001290 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c8c:	00148493          	addi	s1,s1,1
    80004c90:	000027b7          	lui	a5,0x2
    80004c94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c98:	0097ee63          	bltu	a5,s1,80004cb4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c9c:	00000713          	li	a4,0
    80004ca0:	000077b7          	lui	a5,0x7
    80004ca4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ca8:	fce7eee3          	bltu	a5,a4,80004c84 <_ZL11workerBodyBPv+0x20>
    80004cac:	00170713          	addi	a4,a4,1
    80004cb0:	ff1ff06f          	j	80004ca0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004cb4:	00190913          	addi	s2,s2,1
    80004cb8:	00f00793          	li	a5,15
    80004cbc:	0527e063          	bltu	a5,s2,80004cfc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004cc0:	00004517          	auipc	a0,0x4
    80004cc4:	48850513          	addi	a0,a0,1160 # 80009148 <CONSOLE_STATUS+0x138>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	ac4080e7          	jalr	-1340(ra) # 8000578c <_Z11printStringPKc>
    80004cd0:	00000613          	li	a2,0
    80004cd4:	00a00593          	li	a1,10
    80004cd8:	0009051b          	sext.w	a0,s2
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	c60080e7          	jalr	-928(ra) # 8000593c <_Z8printIntiii>
    80004ce4:	00004517          	auipc	a0,0x4
    80004ce8:	6ac50513          	addi	a0,a0,1708 # 80009390 <CONSOLE_STATUS+0x380>
    80004cec:	00001097          	auipc	ra,0x1
    80004cf0:	aa0080e7          	jalr	-1376(ra) # 8000578c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004cf4:	00000493          	li	s1,0
    80004cf8:	f99ff06f          	j	80004c90 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004cfc:	00004517          	auipc	a0,0x4
    80004d00:	45450513          	addi	a0,a0,1108 # 80009150 <CONSOLE_STATUS+0x140>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	a88080e7          	jalr	-1400(ra) # 8000578c <_Z11printStringPKc>
    finishedB = true;
    80004d0c:	00100793          	li	a5,1
    80004d10:	00007717          	auipc	a4,0x7
    80004d14:	daf70123          	sb	a5,-606(a4) # 8000bab2 <_ZL9finishedB>
    thread_dispatch();
    80004d18:	ffffc097          	auipc	ra,0xffffc
    80004d1c:	578080e7          	jalr	1400(ra) # 80001290 <_Z15thread_dispatchv>
}
    80004d20:	01813083          	ld	ra,24(sp)
    80004d24:	01013403          	ld	s0,16(sp)
    80004d28:	00813483          	ld	s1,8(sp)
    80004d2c:	00013903          	ld	s2,0(sp)
    80004d30:	02010113          	addi	sp,sp,32
    80004d34:	00008067          	ret

0000000080004d38 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004d38:	fe010113          	addi	sp,sp,-32
    80004d3c:	00113c23          	sd	ra,24(sp)
    80004d40:	00813823          	sd	s0,16(sp)
    80004d44:	00913423          	sd	s1,8(sp)
    80004d48:	01213023          	sd	s2,0(sp)
    80004d4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d50:	00000913          	li	s2,0
    80004d54:	0380006f          	j	80004d8c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d58:	ffffc097          	auipc	ra,0xffffc
    80004d5c:	538080e7          	jalr	1336(ra) # 80001290 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d60:	00148493          	addi	s1,s1,1
    80004d64:	000027b7          	lui	a5,0x2
    80004d68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d6c:	0097ee63          	bltu	a5,s1,80004d88 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d70:	00000713          	li	a4,0
    80004d74:	000077b7          	lui	a5,0x7
    80004d78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d7c:	fce7eee3          	bltu	a5,a4,80004d58 <_ZL11workerBodyAPv+0x20>
    80004d80:	00170713          	addi	a4,a4,1
    80004d84:	ff1ff06f          	j	80004d74 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d88:	00190913          	addi	s2,s2,1
    80004d8c:	00900793          	li	a5,9
    80004d90:	0527e063          	bltu	a5,s2,80004dd0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	39c50513          	addi	a0,a0,924 # 80009130 <CONSOLE_STATUS+0x120>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	9f0080e7          	jalr	-1552(ra) # 8000578c <_Z11printStringPKc>
    80004da4:	00000613          	li	a2,0
    80004da8:	00a00593          	li	a1,10
    80004dac:	0009051b          	sext.w	a0,s2
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	b8c080e7          	jalr	-1140(ra) # 8000593c <_Z8printIntiii>
    80004db8:	00004517          	auipc	a0,0x4
    80004dbc:	5d850513          	addi	a0,a0,1496 # 80009390 <CONSOLE_STATUS+0x380>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	9cc080e7          	jalr	-1588(ra) # 8000578c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004dc8:	00000493          	li	s1,0
    80004dcc:	f99ff06f          	j	80004d64 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004dd0:	00004517          	auipc	a0,0x4
    80004dd4:	36850513          	addi	a0,a0,872 # 80009138 <CONSOLE_STATUS+0x128>
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	9b4080e7          	jalr	-1612(ra) # 8000578c <_Z11printStringPKc>
    finishedA = true;
    80004de0:	00100793          	li	a5,1
    80004de4:	00007717          	auipc	a4,0x7
    80004de8:	ccf707a3          	sb	a5,-817(a4) # 8000bab3 <_ZL9finishedA>
}
    80004dec:	01813083          	ld	ra,24(sp)
    80004df0:	01013403          	ld	s0,16(sp)
    80004df4:	00813483          	ld	s1,8(sp)
    80004df8:	00013903          	ld	s2,0(sp)
    80004dfc:	02010113          	addi	sp,sp,32
    80004e00:	00008067          	ret

0000000080004e04 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004e04:	fd010113          	addi	sp,sp,-48
    80004e08:	02113423          	sd	ra,40(sp)
    80004e0c:	02813023          	sd	s0,32(sp)
    80004e10:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e14:	00000613          	li	a2,0
    80004e18:	00000597          	auipc	a1,0x0
    80004e1c:	f2058593          	addi	a1,a1,-224 # 80004d38 <_ZL11workerBodyAPv>
    80004e20:	fd040513          	addi	a0,s0,-48
    80004e24:	ffffc097          	auipc	ra,0xffffc
    80004e28:	3d4080e7          	jalr	980(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004e2c:	00004517          	auipc	a0,0x4
    80004e30:	39c50513          	addi	a0,a0,924 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	958080e7          	jalr	-1704(ra) # 8000578c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004e3c:	00000613          	li	a2,0
    80004e40:	00000597          	auipc	a1,0x0
    80004e44:	e2458593          	addi	a1,a1,-476 # 80004c64 <_ZL11workerBodyBPv>
    80004e48:	fd840513          	addi	a0,s0,-40
    80004e4c:	ffffc097          	auipc	ra,0xffffc
    80004e50:	3ac080e7          	jalr	940(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004e54:	00004517          	auipc	a0,0x4
    80004e58:	38c50513          	addi	a0,a0,908 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	930080e7          	jalr	-1744(ra) # 8000578c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e64:	00000613          	li	a2,0
    80004e68:	00000597          	auipc	a1,0x0
    80004e6c:	c7c58593          	addi	a1,a1,-900 # 80004ae4 <_ZL11workerBodyCPv>
    80004e70:	fe040513          	addi	a0,s0,-32
    80004e74:	ffffc097          	auipc	ra,0xffffc
    80004e78:	384080e7          	jalr	900(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004e7c:	00004517          	auipc	a0,0x4
    80004e80:	37c50513          	addi	a0,a0,892 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	908080e7          	jalr	-1784(ra) # 8000578c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e8c:	00000613          	li	a2,0
    80004e90:	00000597          	auipc	a1,0x0
    80004e94:	b0c58593          	addi	a1,a1,-1268 # 8000499c <_ZL11workerBodyDPv>
    80004e98:	fe840513          	addi	a0,s0,-24
    80004e9c:	ffffc097          	auipc	ra,0xffffc
    80004ea0:	35c080e7          	jalr	860(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004ea4:	00004517          	auipc	a0,0x4
    80004ea8:	36c50513          	addi	a0,a0,876 # 80009210 <CONSOLE_STATUS+0x200>
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	8e0080e7          	jalr	-1824(ra) # 8000578c <_Z11printStringPKc>
    80004eb4:	00c0006f          	j	80004ec0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004eb8:	ffffc097          	auipc	ra,0xffffc
    80004ebc:	3d8080e7          	jalr	984(ra) # 80001290 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ec0:	00007797          	auipc	a5,0x7
    80004ec4:	bf37c783          	lbu	a5,-1037(a5) # 8000bab3 <_ZL9finishedA>
    80004ec8:	fe0788e3          	beqz	a5,80004eb8 <_Z18Threads_C_API_testv+0xb4>
    80004ecc:	00007797          	auipc	a5,0x7
    80004ed0:	be67c783          	lbu	a5,-1050(a5) # 8000bab2 <_ZL9finishedB>
    80004ed4:	fe0782e3          	beqz	a5,80004eb8 <_Z18Threads_C_API_testv+0xb4>
    80004ed8:	00007797          	auipc	a5,0x7
    80004edc:	bd97c783          	lbu	a5,-1063(a5) # 8000bab1 <_ZL9finishedC>
    80004ee0:	fc078ce3          	beqz	a5,80004eb8 <_Z18Threads_C_API_testv+0xb4>
    80004ee4:	00007797          	auipc	a5,0x7
    80004ee8:	bcc7c783          	lbu	a5,-1076(a5) # 8000bab0 <_ZL9finishedD>
    80004eec:	fc0786e3          	beqz	a5,80004eb8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004ef0:	02813083          	ld	ra,40(sp)
    80004ef4:	02013403          	ld	s0,32(sp)
    80004ef8:	03010113          	addi	sp,sp,48
    80004efc:	00008067          	ret

0000000080004f00 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004f00:	fd010113          	addi	sp,sp,-48
    80004f04:	02113423          	sd	ra,40(sp)
    80004f08:	02813023          	sd	s0,32(sp)
    80004f0c:	00913c23          	sd	s1,24(sp)
    80004f10:	01213823          	sd	s2,16(sp)
    80004f14:	01313423          	sd	s3,8(sp)
    80004f18:	03010413          	addi	s0,sp,48
    80004f1c:	00050993          	mv	s3,a0
    80004f20:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f24:	00000913          	li	s2,0
    80004f28:	00c0006f          	j	80004f34 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f2c:	ffffd097          	auipc	ra,0xffffd
    80004f30:	ba4080e7          	jalr	-1116(ra) # 80001ad0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004f34:	ffffc097          	auipc	ra,0xffffc
    80004f38:	484080e7          	jalr	1156(ra) # 800013b8 <_Z4getcv>
    80004f3c:	0005059b          	sext.w	a1,a0
    80004f40:	01b00793          	li	a5,27
    80004f44:	02f58a63          	beq	a1,a5,80004f78 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004f48:	0084b503          	ld	a0,8(s1)
    80004f4c:	00001097          	auipc	ra,0x1
    80004f50:	c64080e7          	jalr	-924(ra) # 80005bb0 <_ZN9BufferCPP3putEi>
        i++;
    80004f54:	0019071b          	addiw	a4,s2,1
    80004f58:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f5c:	0004a683          	lw	a3,0(s1)
    80004f60:	0026979b          	slliw	a5,a3,0x2
    80004f64:	00d787bb          	addw	a5,a5,a3
    80004f68:	0017979b          	slliw	a5,a5,0x1
    80004f6c:	02f767bb          	remw	a5,a4,a5
    80004f70:	fc0792e3          	bnez	a5,80004f34 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004f74:	fb9ff06f          	j	80004f2c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004f78:	00100793          	li	a5,1
    80004f7c:	00007717          	auipc	a4,0x7
    80004f80:	b2f72e23          	sw	a5,-1220(a4) # 8000bab8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004f84:	0209b783          	ld	a5,32(s3)
    80004f88:	02100593          	li	a1,33
    80004f8c:	0087b503          	ld	a0,8(a5)
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	c20080e7          	jalr	-992(ra) # 80005bb0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004f98:	0104b503          	ld	a0,16(s1)
    80004f9c:	ffffd097          	auipc	ra,0xffffd
    80004fa0:	bcc080e7          	jalr	-1076(ra) # 80001b68 <_ZN9Semaphore6signalEv>
}
    80004fa4:	02813083          	ld	ra,40(sp)
    80004fa8:	02013403          	ld	s0,32(sp)
    80004fac:	01813483          	ld	s1,24(sp)
    80004fb0:	01013903          	ld	s2,16(sp)
    80004fb4:	00813983          	ld	s3,8(sp)
    80004fb8:	03010113          	addi	sp,sp,48
    80004fbc:	00008067          	ret

0000000080004fc0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004fc0:	fe010113          	addi	sp,sp,-32
    80004fc4:	00113c23          	sd	ra,24(sp)
    80004fc8:	00813823          	sd	s0,16(sp)
    80004fcc:	00913423          	sd	s1,8(sp)
    80004fd0:	01213023          	sd	s2,0(sp)
    80004fd4:	02010413          	addi	s0,sp,32
    80004fd8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004fdc:	00000913          	li	s2,0
    80004fe0:	00c0006f          	j	80004fec <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004fe4:	ffffd097          	auipc	ra,0xffffd
    80004fe8:	aec080e7          	jalr	-1300(ra) # 80001ad0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004fec:	00007797          	auipc	a5,0x7
    80004ff0:	acc7a783          	lw	a5,-1332(a5) # 8000bab8 <_ZL9threadEnd>
    80004ff4:	02079e63          	bnez	a5,80005030 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004ff8:	0004a583          	lw	a1,0(s1)
    80004ffc:	0305859b          	addiw	a1,a1,48
    80005000:	0084b503          	ld	a0,8(s1)
    80005004:	00001097          	auipc	ra,0x1
    80005008:	bac080e7          	jalr	-1108(ra) # 80005bb0 <_ZN9BufferCPP3putEi>
        i++;
    8000500c:	0019071b          	addiw	a4,s2,1
    80005010:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005014:	0004a683          	lw	a3,0(s1)
    80005018:	0026979b          	slliw	a5,a3,0x2
    8000501c:	00d787bb          	addw	a5,a5,a3
    80005020:	0017979b          	slliw	a5,a5,0x1
    80005024:	02f767bb          	remw	a5,a4,a5
    80005028:	fc0792e3          	bnez	a5,80004fec <_ZN12ProducerSync8producerEPv+0x2c>
    8000502c:	fb9ff06f          	j	80004fe4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005030:	0104b503          	ld	a0,16(s1)
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	b34080e7          	jalr	-1228(ra) # 80001b68 <_ZN9Semaphore6signalEv>
}
    8000503c:	01813083          	ld	ra,24(sp)
    80005040:	01013403          	ld	s0,16(sp)
    80005044:	00813483          	ld	s1,8(sp)
    80005048:	00013903          	ld	s2,0(sp)
    8000504c:	02010113          	addi	sp,sp,32
    80005050:	00008067          	ret

0000000080005054 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005054:	fd010113          	addi	sp,sp,-48
    80005058:	02113423          	sd	ra,40(sp)
    8000505c:	02813023          	sd	s0,32(sp)
    80005060:	00913c23          	sd	s1,24(sp)
    80005064:	01213823          	sd	s2,16(sp)
    80005068:	01313423          	sd	s3,8(sp)
    8000506c:	01413023          	sd	s4,0(sp)
    80005070:	03010413          	addi	s0,sp,48
    80005074:	00050993          	mv	s3,a0
    80005078:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000507c:	00000a13          	li	s4,0
    80005080:	01c0006f          	j	8000509c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005084:	ffffd097          	auipc	ra,0xffffd
    80005088:	a4c080e7          	jalr	-1460(ra) # 80001ad0 <_ZN6Thread8dispatchEv>
    8000508c:	0500006f          	j	800050dc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005090:	00a00513          	li	a0,10
    80005094:	ffffc097          	auipc	ra,0xffffc
    80005098:	34c080e7          	jalr	844(ra) # 800013e0 <_Z4putcc>
    while (!threadEnd) {
    8000509c:	00007797          	auipc	a5,0x7
    800050a0:	a1c7a783          	lw	a5,-1508(a5) # 8000bab8 <_ZL9threadEnd>
    800050a4:	06079263          	bnez	a5,80005108 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800050a8:	00893503          	ld	a0,8(s2)
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	b94080e7          	jalr	-1132(ra) # 80005c40 <_ZN9BufferCPP3getEv>
        i++;
    800050b4:	001a049b          	addiw	s1,s4,1
    800050b8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800050bc:	0ff57513          	andi	a0,a0,255
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	320080e7          	jalr	800(ra) # 800013e0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800050c8:	00092703          	lw	a4,0(s2)
    800050cc:	0027179b          	slliw	a5,a4,0x2
    800050d0:	00e787bb          	addw	a5,a5,a4
    800050d4:	02f4e7bb          	remw	a5,s1,a5
    800050d8:	fa0786e3          	beqz	a5,80005084 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800050dc:	05000793          	li	a5,80
    800050e0:	02f4e4bb          	remw	s1,s1,a5
    800050e4:	fa049ce3          	bnez	s1,8000509c <_ZN12ConsumerSync8consumerEPv+0x48>
    800050e8:	fa9ff06f          	j	80005090 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800050ec:	0209b783          	ld	a5,32(s3)
    800050f0:	0087b503          	ld	a0,8(a5)
    800050f4:	00001097          	auipc	ra,0x1
    800050f8:	b4c080e7          	jalr	-1204(ra) # 80005c40 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800050fc:	0ff57513          	andi	a0,a0,255
    80005100:	ffffd097          	auipc	ra,0xffffd
    80005104:	ae8080e7          	jalr	-1304(ra) # 80001be8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005108:	0209b783          	ld	a5,32(s3)
    8000510c:	0087b503          	ld	a0,8(a5)
    80005110:	00001097          	auipc	ra,0x1
    80005114:	bbc080e7          	jalr	-1092(ra) # 80005ccc <_ZN9BufferCPP6getCntEv>
    80005118:	fca04ae3          	bgtz	a0,800050ec <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000511c:	01093503          	ld	a0,16(s2)
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	a48080e7          	jalr	-1464(ra) # 80001b68 <_ZN9Semaphore6signalEv>
}
    80005128:	02813083          	ld	ra,40(sp)
    8000512c:	02013403          	ld	s0,32(sp)
    80005130:	01813483          	ld	s1,24(sp)
    80005134:	01013903          	ld	s2,16(sp)
    80005138:	00813983          	ld	s3,8(sp)
    8000513c:	00013a03          	ld	s4,0(sp)
    80005140:	03010113          	addi	sp,sp,48
    80005144:	00008067          	ret

0000000080005148 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005148:	f8010113          	addi	sp,sp,-128
    8000514c:	06113c23          	sd	ra,120(sp)
    80005150:	06813823          	sd	s0,112(sp)
    80005154:	06913423          	sd	s1,104(sp)
    80005158:	07213023          	sd	s2,96(sp)
    8000515c:	05313c23          	sd	s3,88(sp)
    80005160:	05413823          	sd	s4,80(sp)
    80005164:	05513423          	sd	s5,72(sp)
    80005168:	05613023          	sd	s6,64(sp)
    8000516c:	03713c23          	sd	s7,56(sp)
    80005170:	03813823          	sd	s8,48(sp)
    80005174:	03913423          	sd	s9,40(sp)
    80005178:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000517c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005180:	00004517          	auipc	a0,0x4
    80005184:	ec850513          	addi	a0,a0,-312 # 80009048 <CONSOLE_STATUS+0x38>
    80005188:	00000097          	auipc	ra,0x0
    8000518c:	604080e7          	jalr	1540(ra) # 8000578c <_Z11printStringPKc>
    getString(input, 30);
    80005190:	01e00593          	li	a1,30
    80005194:	f8040493          	addi	s1,s0,-128
    80005198:	00048513          	mv	a0,s1
    8000519c:	00000097          	auipc	ra,0x0
    800051a0:	678080e7          	jalr	1656(ra) # 80005814 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800051a4:	00048513          	mv	a0,s1
    800051a8:	00000097          	auipc	ra,0x0
    800051ac:	744080e7          	jalr	1860(ra) # 800058ec <_Z11stringToIntPKc>
    800051b0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800051b4:	00004517          	auipc	a0,0x4
    800051b8:	eb450513          	addi	a0,a0,-332 # 80009068 <CONSOLE_STATUS+0x58>
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	5d0080e7          	jalr	1488(ra) # 8000578c <_Z11printStringPKc>
    getString(input, 30);
    800051c4:	01e00593          	li	a1,30
    800051c8:	00048513          	mv	a0,s1
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	648080e7          	jalr	1608(ra) # 80005814 <_Z9getStringPci>
    n = stringToInt(input);
    800051d4:	00048513          	mv	a0,s1
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	714080e7          	jalr	1812(ra) # 800058ec <_Z11stringToIntPKc>
    800051e0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800051e4:	00004517          	auipc	a0,0x4
    800051e8:	ea450513          	addi	a0,a0,-348 # 80009088 <CONSOLE_STATUS+0x78>
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	5a0080e7          	jalr	1440(ra) # 8000578c <_Z11printStringPKc>
    800051f4:	00000613          	li	a2,0
    800051f8:	00a00593          	li	a1,10
    800051fc:	00090513          	mv	a0,s2
    80005200:	00000097          	auipc	ra,0x0
    80005204:	73c080e7          	jalr	1852(ra) # 8000593c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005208:	00004517          	auipc	a0,0x4
    8000520c:	e9850513          	addi	a0,a0,-360 # 800090a0 <CONSOLE_STATUS+0x90>
    80005210:	00000097          	auipc	ra,0x0
    80005214:	57c080e7          	jalr	1404(ra) # 8000578c <_Z11printStringPKc>
    80005218:	00000613          	li	a2,0
    8000521c:	00a00593          	li	a1,10
    80005220:	00048513          	mv	a0,s1
    80005224:	00000097          	auipc	ra,0x0
    80005228:	718080e7          	jalr	1816(ra) # 8000593c <_Z8printIntiii>
    printString(".\n");
    8000522c:	00004517          	auipc	a0,0x4
    80005230:	e8c50513          	addi	a0,a0,-372 # 800090b8 <CONSOLE_STATUS+0xa8>
    80005234:	00000097          	auipc	ra,0x0
    80005238:	558080e7          	jalr	1368(ra) # 8000578c <_Z11printStringPKc>
    if(threadNum > n) {
    8000523c:	0324c463          	blt	s1,s2,80005264 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005240:	03205c63          	blez	s2,80005278 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005244:	03800513          	li	a0,56
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	690080e7          	jalr	1680(ra) # 800018d8 <_Znwm>
    80005250:	00050a93          	mv	s5,a0
    80005254:	00048593          	mv	a1,s1
    80005258:	00001097          	auipc	ra,0x1
    8000525c:	804080e7          	jalr	-2044(ra) # 80005a5c <_ZN9BufferCPPC1Ei>
    80005260:	0300006f          	j	80005290 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005264:	00004517          	auipc	a0,0x4
    80005268:	e5c50513          	addi	a0,a0,-420 # 800090c0 <CONSOLE_STATUS+0xb0>
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	520080e7          	jalr	1312(ra) # 8000578c <_Z11printStringPKc>
        return;
    80005274:	0140006f          	j	80005288 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005278:	00004517          	auipc	a0,0x4
    8000527c:	e8850513          	addi	a0,a0,-376 # 80009100 <CONSOLE_STATUS+0xf0>
    80005280:	00000097          	auipc	ra,0x0
    80005284:	50c080e7          	jalr	1292(ra) # 8000578c <_Z11printStringPKc>
        return;
    80005288:	000b8113          	mv	sp,s7
    8000528c:	2380006f          	j	800054c4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005290:	01000513          	li	a0,16
    80005294:	ffffc097          	auipc	ra,0xffffc
    80005298:	644080e7          	jalr	1604(ra) # 800018d8 <_Znwm>
    8000529c:	00050493          	mv	s1,a0
    800052a0:	00000593          	li	a1,0
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	88c080e7          	jalr	-1908(ra) # 80001b30 <_ZN9SemaphoreC1Ej>
    800052ac:	00007797          	auipc	a5,0x7
    800052b0:	8097ba23          	sd	s1,-2028(a5) # 8000bac0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800052b4:	00391793          	slli	a5,s2,0x3
    800052b8:	00f78793          	addi	a5,a5,15
    800052bc:	ff07f793          	andi	a5,a5,-16
    800052c0:	40f10133          	sub	sp,sp,a5
    800052c4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800052c8:	0019071b          	addiw	a4,s2,1
    800052cc:	00171793          	slli	a5,a4,0x1
    800052d0:	00e787b3          	add	a5,a5,a4
    800052d4:	00379793          	slli	a5,a5,0x3
    800052d8:	00f78793          	addi	a5,a5,15
    800052dc:	ff07f793          	andi	a5,a5,-16
    800052e0:	40f10133          	sub	sp,sp,a5
    800052e4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800052e8:	00191c13          	slli	s8,s2,0x1
    800052ec:	012c07b3          	add	a5,s8,s2
    800052f0:	00379793          	slli	a5,a5,0x3
    800052f4:	00fa07b3          	add	a5,s4,a5
    800052f8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800052fc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005300:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005304:	02800513          	li	a0,40
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	5d0080e7          	jalr	1488(ra) # 800018d8 <_Znwm>
    80005310:	00050b13          	mv	s6,a0
    80005314:	012c0c33          	add	s8,s8,s2
    80005318:	003c1c13          	slli	s8,s8,0x3
    8000531c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005320:	ffffc097          	auipc	ra,0xffffc
    80005324:	6b8080e7          	jalr	1720(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80005328:	00006797          	auipc	a5,0x6
    8000532c:	60078793          	addi	a5,a5,1536 # 8000b928 <_ZTV12ConsumerSync+0x10>
    80005330:	00fb3023          	sd	a5,0(s6)
    80005334:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005338:	000b0513          	mv	a0,s6
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	6d4080e7          	jalr	1748(ra) # 80001a10 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005344:	00000493          	li	s1,0
    80005348:	0380006f          	j	80005380 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000534c:	00006797          	auipc	a5,0x6
    80005350:	5b478793          	addi	a5,a5,1460 # 8000b900 <_ZTV12ProducerSync+0x10>
    80005354:	00fcb023          	sd	a5,0(s9)
    80005358:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000535c:	00349793          	slli	a5,s1,0x3
    80005360:	00f987b3          	add	a5,s3,a5
    80005364:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005368:	00349793          	slli	a5,s1,0x3
    8000536c:	00f987b3          	add	a5,s3,a5
    80005370:	0007b503          	ld	a0,0(a5)
    80005374:	ffffc097          	auipc	ra,0xffffc
    80005378:	69c080e7          	jalr	1692(ra) # 80001a10 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000537c:	0014849b          	addiw	s1,s1,1
    80005380:	0b24d063          	bge	s1,s2,80005420 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005384:	00149793          	slli	a5,s1,0x1
    80005388:	009787b3          	add	a5,a5,s1
    8000538c:	00379793          	slli	a5,a5,0x3
    80005390:	00fa07b3          	add	a5,s4,a5
    80005394:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005398:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000539c:	00006717          	auipc	a4,0x6
    800053a0:	72473703          	ld	a4,1828(a4) # 8000bac0 <_ZL10waitForAll>
    800053a4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800053a8:	02905863          	blez	s1,800053d8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800053ac:	02800513          	li	a0,40
    800053b0:	ffffc097          	auipc	ra,0xffffc
    800053b4:	528080e7          	jalr	1320(ra) # 800018d8 <_Znwm>
    800053b8:	00050c93          	mv	s9,a0
    800053bc:	00149c13          	slli	s8,s1,0x1
    800053c0:	009c0c33          	add	s8,s8,s1
    800053c4:	003c1c13          	slli	s8,s8,0x3
    800053c8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053cc:	ffffc097          	auipc	ra,0xffffc
    800053d0:	60c080e7          	jalr	1548(ra) # 800019d8 <_ZN6ThreadC1Ev>
    800053d4:	f79ff06f          	j	8000534c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800053d8:	02800513          	li	a0,40
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	4fc080e7          	jalr	1276(ra) # 800018d8 <_Znwm>
    800053e4:	00050c93          	mv	s9,a0
    800053e8:	00149c13          	slli	s8,s1,0x1
    800053ec:	009c0c33          	add	s8,s8,s1
    800053f0:	003c1c13          	slli	s8,s8,0x3
    800053f4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	5e0080e7          	jalr	1504(ra) # 800019d8 <_ZN6ThreadC1Ev>
    80005400:	00006797          	auipc	a5,0x6
    80005404:	4d878793          	addi	a5,a5,1240 # 8000b8d8 <_ZTV16ProducerKeyboard+0x10>
    80005408:	00fcb023          	sd	a5,0(s9)
    8000540c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005410:	00349793          	slli	a5,s1,0x3
    80005414:	00f987b3          	add	a5,s3,a5
    80005418:	0197b023          	sd	s9,0(a5)
    8000541c:	f4dff06f          	j	80005368 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005420:	ffffc097          	auipc	ra,0xffffc
    80005424:	6b0080e7          	jalr	1712(ra) # 80001ad0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005428:	00000493          	li	s1,0
    8000542c:	00994e63          	blt	s2,s1,80005448 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005430:	00006517          	auipc	a0,0x6
    80005434:	69053503          	ld	a0,1680(a0) # 8000bac0 <_ZL10waitForAll>
    80005438:	ffffc097          	auipc	ra,0xffffc
    8000543c:	75c080e7          	jalr	1884(ra) # 80001b94 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005440:	0014849b          	addiw	s1,s1,1
    80005444:	fe9ff06f          	j	8000542c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005448:	00000493          	li	s1,0
    8000544c:	0080006f          	j	80005454 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005450:	0014849b          	addiw	s1,s1,1
    80005454:	0324d263          	bge	s1,s2,80005478 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005458:	00349793          	slli	a5,s1,0x3
    8000545c:	00f987b3          	add	a5,s3,a5
    80005460:	0007b503          	ld	a0,0(a5)
    80005464:	fe0506e3          	beqz	a0,80005450 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005468:	00053783          	ld	a5,0(a0)
    8000546c:	0087b783          	ld	a5,8(a5)
    80005470:	000780e7          	jalr	a5
    80005474:	fddff06f          	j	80005450 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005478:	000b0a63          	beqz	s6,8000548c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000547c:	000b3783          	ld	a5,0(s6)
    80005480:	0087b783          	ld	a5,8(a5)
    80005484:	000b0513          	mv	a0,s6
    80005488:	000780e7          	jalr	a5
    delete waitForAll;
    8000548c:	00006517          	auipc	a0,0x6
    80005490:	63453503          	ld	a0,1588(a0) # 8000bac0 <_ZL10waitForAll>
    80005494:	00050863          	beqz	a0,800054a4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005498:	00053783          	ld	a5,0(a0)
    8000549c:	0087b783          	ld	a5,8(a5)
    800054a0:	000780e7          	jalr	a5
    delete buffer;
    800054a4:	000a8e63          	beqz	s5,800054c0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800054a8:	000a8513          	mv	a0,s5
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	8a8080e7          	jalr	-1880(ra) # 80005d54 <_ZN9BufferCPPD1Ev>
    800054b4:	000a8513          	mv	a0,s5
    800054b8:	ffffc097          	auipc	ra,0xffffc
    800054bc:	448080e7          	jalr	1096(ra) # 80001900 <_ZdlPv>
    800054c0:	000b8113          	mv	sp,s7

}
    800054c4:	f8040113          	addi	sp,s0,-128
    800054c8:	07813083          	ld	ra,120(sp)
    800054cc:	07013403          	ld	s0,112(sp)
    800054d0:	06813483          	ld	s1,104(sp)
    800054d4:	06013903          	ld	s2,96(sp)
    800054d8:	05813983          	ld	s3,88(sp)
    800054dc:	05013a03          	ld	s4,80(sp)
    800054e0:	04813a83          	ld	s5,72(sp)
    800054e4:	04013b03          	ld	s6,64(sp)
    800054e8:	03813b83          	ld	s7,56(sp)
    800054ec:	03013c03          	ld	s8,48(sp)
    800054f0:	02813c83          	ld	s9,40(sp)
    800054f4:	08010113          	addi	sp,sp,128
    800054f8:	00008067          	ret
    800054fc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005500:	000a8513          	mv	a0,s5
    80005504:	ffffc097          	auipc	ra,0xffffc
    80005508:	3fc080e7          	jalr	1020(ra) # 80001900 <_ZdlPv>
    8000550c:	00048513          	mv	a0,s1
    80005510:	00007097          	auipc	ra,0x7
    80005514:	698080e7          	jalr	1688(ra) # 8000cba8 <_Unwind_Resume>
    80005518:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000551c:	00048513          	mv	a0,s1
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	3e0080e7          	jalr	992(ra) # 80001900 <_ZdlPv>
    80005528:	00090513          	mv	a0,s2
    8000552c:	00007097          	auipc	ra,0x7
    80005530:	67c080e7          	jalr	1660(ra) # 8000cba8 <_Unwind_Resume>
    80005534:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005538:	000b0513          	mv	a0,s6
    8000553c:	ffffc097          	auipc	ra,0xffffc
    80005540:	3c4080e7          	jalr	964(ra) # 80001900 <_ZdlPv>
    80005544:	00048513          	mv	a0,s1
    80005548:	00007097          	auipc	ra,0x7
    8000554c:	660080e7          	jalr	1632(ra) # 8000cba8 <_Unwind_Resume>
    80005550:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005554:	000c8513          	mv	a0,s9
    80005558:	ffffc097          	auipc	ra,0xffffc
    8000555c:	3a8080e7          	jalr	936(ra) # 80001900 <_ZdlPv>
    80005560:	00048513          	mv	a0,s1
    80005564:	00007097          	auipc	ra,0x7
    80005568:	644080e7          	jalr	1604(ra) # 8000cba8 <_Unwind_Resume>
    8000556c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005570:	000c8513          	mv	a0,s9
    80005574:	ffffc097          	auipc	ra,0xffffc
    80005578:	38c080e7          	jalr	908(ra) # 80001900 <_ZdlPv>
    8000557c:	00048513          	mv	a0,s1
    80005580:	00007097          	auipc	ra,0x7
    80005584:	628080e7          	jalr	1576(ra) # 8000cba8 <_Unwind_Resume>

0000000080005588 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005588:	ff010113          	addi	sp,sp,-16
    8000558c:	00113423          	sd	ra,8(sp)
    80005590:	00813023          	sd	s0,0(sp)
    80005594:	01010413          	addi	s0,sp,16
    80005598:	00006797          	auipc	a5,0x6
    8000559c:	39078793          	addi	a5,a5,912 # 8000b928 <_ZTV12ConsumerSync+0x10>
    800055a0:	00f53023          	sd	a5,0(a0)
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	2c4080e7          	jalr	708(ra) # 80001868 <_ZN6ThreadD1Ev>
    800055ac:	00813083          	ld	ra,8(sp)
    800055b0:	00013403          	ld	s0,0(sp)
    800055b4:	01010113          	addi	sp,sp,16
    800055b8:	00008067          	ret

00000000800055bc <_ZN12ConsumerSyncD0Ev>:
    800055bc:	fe010113          	addi	sp,sp,-32
    800055c0:	00113c23          	sd	ra,24(sp)
    800055c4:	00813823          	sd	s0,16(sp)
    800055c8:	00913423          	sd	s1,8(sp)
    800055cc:	02010413          	addi	s0,sp,32
    800055d0:	00050493          	mv	s1,a0
    800055d4:	00006797          	auipc	a5,0x6
    800055d8:	35478793          	addi	a5,a5,852 # 8000b928 <_ZTV12ConsumerSync+0x10>
    800055dc:	00f53023          	sd	a5,0(a0)
    800055e0:	ffffc097          	auipc	ra,0xffffc
    800055e4:	288080e7          	jalr	648(ra) # 80001868 <_ZN6ThreadD1Ev>
    800055e8:	00048513          	mv	a0,s1
    800055ec:	ffffc097          	auipc	ra,0xffffc
    800055f0:	314080e7          	jalr	788(ra) # 80001900 <_ZdlPv>
    800055f4:	01813083          	ld	ra,24(sp)
    800055f8:	01013403          	ld	s0,16(sp)
    800055fc:	00813483          	ld	s1,8(sp)
    80005600:	02010113          	addi	sp,sp,32
    80005604:	00008067          	ret

0000000080005608 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005608:	ff010113          	addi	sp,sp,-16
    8000560c:	00113423          	sd	ra,8(sp)
    80005610:	00813023          	sd	s0,0(sp)
    80005614:	01010413          	addi	s0,sp,16
    80005618:	00006797          	auipc	a5,0x6
    8000561c:	2e878793          	addi	a5,a5,744 # 8000b900 <_ZTV12ProducerSync+0x10>
    80005620:	00f53023          	sd	a5,0(a0)
    80005624:	ffffc097          	auipc	ra,0xffffc
    80005628:	244080e7          	jalr	580(ra) # 80001868 <_ZN6ThreadD1Ev>
    8000562c:	00813083          	ld	ra,8(sp)
    80005630:	00013403          	ld	s0,0(sp)
    80005634:	01010113          	addi	sp,sp,16
    80005638:	00008067          	ret

000000008000563c <_ZN12ProducerSyncD0Ev>:
    8000563c:	fe010113          	addi	sp,sp,-32
    80005640:	00113c23          	sd	ra,24(sp)
    80005644:	00813823          	sd	s0,16(sp)
    80005648:	00913423          	sd	s1,8(sp)
    8000564c:	02010413          	addi	s0,sp,32
    80005650:	00050493          	mv	s1,a0
    80005654:	00006797          	auipc	a5,0x6
    80005658:	2ac78793          	addi	a5,a5,684 # 8000b900 <_ZTV12ProducerSync+0x10>
    8000565c:	00f53023          	sd	a5,0(a0)
    80005660:	ffffc097          	auipc	ra,0xffffc
    80005664:	208080e7          	jalr	520(ra) # 80001868 <_ZN6ThreadD1Ev>
    80005668:	00048513          	mv	a0,s1
    8000566c:	ffffc097          	auipc	ra,0xffffc
    80005670:	294080e7          	jalr	660(ra) # 80001900 <_ZdlPv>
    80005674:	01813083          	ld	ra,24(sp)
    80005678:	01013403          	ld	s0,16(sp)
    8000567c:	00813483          	ld	s1,8(sp)
    80005680:	02010113          	addi	sp,sp,32
    80005684:	00008067          	ret

0000000080005688 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005688:	ff010113          	addi	sp,sp,-16
    8000568c:	00113423          	sd	ra,8(sp)
    80005690:	00813023          	sd	s0,0(sp)
    80005694:	01010413          	addi	s0,sp,16
    80005698:	00006797          	auipc	a5,0x6
    8000569c:	24078793          	addi	a5,a5,576 # 8000b8d8 <_ZTV16ProducerKeyboard+0x10>
    800056a0:	00f53023          	sd	a5,0(a0)
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	1c4080e7          	jalr	452(ra) # 80001868 <_ZN6ThreadD1Ev>
    800056ac:	00813083          	ld	ra,8(sp)
    800056b0:	00013403          	ld	s0,0(sp)
    800056b4:	01010113          	addi	sp,sp,16
    800056b8:	00008067          	ret

00000000800056bc <_ZN16ProducerKeyboardD0Ev>:
    800056bc:	fe010113          	addi	sp,sp,-32
    800056c0:	00113c23          	sd	ra,24(sp)
    800056c4:	00813823          	sd	s0,16(sp)
    800056c8:	00913423          	sd	s1,8(sp)
    800056cc:	02010413          	addi	s0,sp,32
    800056d0:	00050493          	mv	s1,a0
    800056d4:	00006797          	auipc	a5,0x6
    800056d8:	20478793          	addi	a5,a5,516 # 8000b8d8 <_ZTV16ProducerKeyboard+0x10>
    800056dc:	00f53023          	sd	a5,0(a0)
    800056e0:	ffffc097          	auipc	ra,0xffffc
    800056e4:	188080e7          	jalr	392(ra) # 80001868 <_ZN6ThreadD1Ev>
    800056e8:	00048513          	mv	a0,s1
    800056ec:	ffffc097          	auipc	ra,0xffffc
    800056f0:	214080e7          	jalr	532(ra) # 80001900 <_ZdlPv>
    800056f4:	01813083          	ld	ra,24(sp)
    800056f8:	01013403          	ld	s0,16(sp)
    800056fc:	00813483          	ld	s1,8(sp)
    80005700:	02010113          	addi	sp,sp,32
    80005704:	00008067          	ret

0000000080005708 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005708:	ff010113          	addi	sp,sp,-16
    8000570c:	00113423          	sd	ra,8(sp)
    80005710:	00813023          	sd	s0,0(sp)
    80005714:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005718:	02053583          	ld	a1,32(a0)
    8000571c:	fffff097          	auipc	ra,0xfffff
    80005720:	7e4080e7          	jalr	2020(ra) # 80004f00 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005724:	00813083          	ld	ra,8(sp)
    80005728:	00013403          	ld	s0,0(sp)
    8000572c:	01010113          	addi	sp,sp,16
    80005730:	00008067          	ret

0000000080005734 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005734:	ff010113          	addi	sp,sp,-16
    80005738:	00113423          	sd	ra,8(sp)
    8000573c:	00813023          	sd	s0,0(sp)
    80005740:	01010413          	addi	s0,sp,16
        producer(td);
    80005744:	02053583          	ld	a1,32(a0)
    80005748:	00000097          	auipc	ra,0x0
    8000574c:	878080e7          	jalr	-1928(ra) # 80004fc0 <_ZN12ProducerSync8producerEPv>
    }
    80005750:	00813083          	ld	ra,8(sp)
    80005754:	00013403          	ld	s0,0(sp)
    80005758:	01010113          	addi	sp,sp,16
    8000575c:	00008067          	ret

0000000080005760 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005760:	ff010113          	addi	sp,sp,-16
    80005764:	00113423          	sd	ra,8(sp)
    80005768:	00813023          	sd	s0,0(sp)
    8000576c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005770:	02053583          	ld	a1,32(a0)
    80005774:	00000097          	auipc	ra,0x0
    80005778:	8e0080e7          	jalr	-1824(ra) # 80005054 <_ZN12ConsumerSync8consumerEPv>
    }
    8000577c:	00813083          	ld	ra,8(sp)
    80005780:	00013403          	ld	s0,0(sp)
    80005784:	01010113          	addi	sp,sp,16
    80005788:	00008067          	ret

000000008000578c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000578c:	fe010113          	addi	sp,sp,-32
    80005790:	00113c23          	sd	ra,24(sp)
    80005794:	00813823          	sd	s0,16(sp)
    80005798:	00913423          	sd	s1,8(sp)
    8000579c:	02010413          	addi	s0,sp,32
    800057a0:	00050493          	mv	s1,a0
    LOCK();
    800057a4:	00100613          	li	a2,1
    800057a8:	00000593          	li	a1,0
    800057ac:	00006517          	auipc	a0,0x6
    800057b0:	31c50513          	addi	a0,a0,796 # 8000bac8 <lockPrint>
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	970080e7          	jalr	-1680(ra) # 80001124 <copy_and_swap>
    800057bc:	00050863          	beqz	a0,800057cc <_Z11printStringPKc+0x40>
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	ad0080e7          	jalr	-1328(ra) # 80001290 <_Z15thread_dispatchv>
    800057c8:	fddff06f          	j	800057a4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800057cc:	0004c503          	lbu	a0,0(s1)
    800057d0:	00050a63          	beqz	a0,800057e4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	c0c080e7          	jalr	-1012(ra) # 800013e0 <_Z4putcc>
        string++;
    800057dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800057e0:	fedff06f          	j	800057cc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800057e4:	00000613          	li	a2,0
    800057e8:	00100593          	li	a1,1
    800057ec:	00006517          	auipc	a0,0x6
    800057f0:	2dc50513          	addi	a0,a0,732 # 8000bac8 <lockPrint>
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	930080e7          	jalr	-1744(ra) # 80001124 <copy_and_swap>
    800057fc:	fe0514e3          	bnez	a0,800057e4 <_Z11printStringPKc+0x58>
}
    80005800:	01813083          	ld	ra,24(sp)
    80005804:	01013403          	ld	s0,16(sp)
    80005808:	00813483          	ld	s1,8(sp)
    8000580c:	02010113          	addi	sp,sp,32
    80005810:	00008067          	ret

0000000080005814 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005814:	fd010113          	addi	sp,sp,-48
    80005818:	02113423          	sd	ra,40(sp)
    8000581c:	02813023          	sd	s0,32(sp)
    80005820:	00913c23          	sd	s1,24(sp)
    80005824:	01213823          	sd	s2,16(sp)
    80005828:	01313423          	sd	s3,8(sp)
    8000582c:	01413023          	sd	s4,0(sp)
    80005830:	03010413          	addi	s0,sp,48
    80005834:	00050993          	mv	s3,a0
    80005838:	00058a13          	mv	s4,a1
    LOCK();
    8000583c:	00100613          	li	a2,1
    80005840:	00000593          	li	a1,0
    80005844:	00006517          	auipc	a0,0x6
    80005848:	28450513          	addi	a0,a0,644 # 8000bac8 <lockPrint>
    8000584c:	ffffc097          	auipc	ra,0xffffc
    80005850:	8d8080e7          	jalr	-1832(ra) # 80001124 <copy_and_swap>
    80005854:	00050863          	beqz	a0,80005864 <_Z9getStringPci+0x50>
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	a38080e7          	jalr	-1480(ra) # 80001290 <_Z15thread_dispatchv>
    80005860:	fddff06f          	j	8000583c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005864:	00000913          	li	s2,0
    80005868:	00090493          	mv	s1,s2
    8000586c:	0019091b          	addiw	s2,s2,1
    80005870:	03495a63          	bge	s2,s4,800058a4 <_Z9getStringPci+0x90>
        cc = getc();
    80005874:	ffffc097          	auipc	ra,0xffffc
    80005878:	b44080e7          	jalr	-1212(ra) # 800013b8 <_Z4getcv>
        if(cc < 1)
    8000587c:	02050463          	beqz	a0,800058a4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005880:	009984b3          	add	s1,s3,s1
    80005884:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005888:	00a00793          	li	a5,10
    8000588c:	00f50a63          	beq	a0,a5,800058a0 <_Z9getStringPci+0x8c>
    80005890:	00d00793          	li	a5,13
    80005894:	fcf51ae3          	bne	a0,a5,80005868 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005898:	00090493          	mv	s1,s2
    8000589c:	0080006f          	j	800058a4 <_Z9getStringPci+0x90>
    800058a0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800058a4:	009984b3          	add	s1,s3,s1
    800058a8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800058ac:	00000613          	li	a2,0
    800058b0:	00100593          	li	a1,1
    800058b4:	00006517          	auipc	a0,0x6
    800058b8:	21450513          	addi	a0,a0,532 # 8000bac8 <lockPrint>
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	868080e7          	jalr	-1944(ra) # 80001124 <copy_and_swap>
    800058c4:	fe0514e3          	bnez	a0,800058ac <_Z9getStringPci+0x98>
    return buf;
}
    800058c8:	00098513          	mv	a0,s3
    800058cc:	02813083          	ld	ra,40(sp)
    800058d0:	02013403          	ld	s0,32(sp)
    800058d4:	01813483          	ld	s1,24(sp)
    800058d8:	01013903          	ld	s2,16(sp)
    800058dc:	00813983          	ld	s3,8(sp)
    800058e0:	00013a03          	ld	s4,0(sp)
    800058e4:	03010113          	addi	sp,sp,48
    800058e8:	00008067          	ret

00000000800058ec <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800058ec:	ff010113          	addi	sp,sp,-16
    800058f0:	00813423          	sd	s0,8(sp)
    800058f4:	01010413          	addi	s0,sp,16
    800058f8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800058fc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005900:	0006c603          	lbu	a2,0(a3)
    80005904:	fd06071b          	addiw	a4,a2,-48
    80005908:	0ff77713          	andi	a4,a4,255
    8000590c:	00900793          	li	a5,9
    80005910:	02e7e063          	bltu	a5,a4,80005930 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005914:	0025179b          	slliw	a5,a0,0x2
    80005918:	00a787bb          	addw	a5,a5,a0
    8000591c:	0017979b          	slliw	a5,a5,0x1
    80005920:	00168693          	addi	a3,a3,1
    80005924:	00c787bb          	addw	a5,a5,a2
    80005928:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000592c:	fd5ff06f          	j	80005900 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005930:	00813403          	ld	s0,8(sp)
    80005934:	01010113          	addi	sp,sp,16
    80005938:	00008067          	ret

000000008000593c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000593c:	fc010113          	addi	sp,sp,-64
    80005940:	02113c23          	sd	ra,56(sp)
    80005944:	02813823          	sd	s0,48(sp)
    80005948:	02913423          	sd	s1,40(sp)
    8000594c:	03213023          	sd	s2,32(sp)
    80005950:	01313c23          	sd	s3,24(sp)
    80005954:	04010413          	addi	s0,sp,64
    80005958:	00050493          	mv	s1,a0
    8000595c:	00058913          	mv	s2,a1
    80005960:	00060993          	mv	s3,a2
    LOCK();
    80005964:	00100613          	li	a2,1
    80005968:	00000593          	li	a1,0
    8000596c:	00006517          	auipc	a0,0x6
    80005970:	15c50513          	addi	a0,a0,348 # 8000bac8 <lockPrint>
    80005974:	ffffb097          	auipc	ra,0xffffb
    80005978:	7b0080e7          	jalr	1968(ra) # 80001124 <copy_and_swap>
    8000597c:	00050863          	beqz	a0,8000598c <_Z8printIntiii+0x50>
    80005980:	ffffc097          	auipc	ra,0xffffc
    80005984:	910080e7          	jalr	-1776(ra) # 80001290 <_Z15thread_dispatchv>
    80005988:	fddff06f          	j	80005964 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000598c:	00098463          	beqz	s3,80005994 <_Z8printIntiii+0x58>
    80005990:	0804c463          	bltz	s1,80005a18 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005994:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005998:	00000593          	li	a1,0
    }

    i = 0;
    8000599c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800059a0:	0009079b          	sext.w	a5,s2
    800059a4:	0325773b          	remuw	a4,a0,s2
    800059a8:	00048613          	mv	a2,s1
    800059ac:	0014849b          	addiw	s1,s1,1
    800059b0:	02071693          	slli	a3,a4,0x20
    800059b4:	0206d693          	srli	a3,a3,0x20
    800059b8:	00006717          	auipc	a4,0x6
    800059bc:	f8870713          	addi	a4,a4,-120 # 8000b940 <digits>
    800059c0:	00d70733          	add	a4,a4,a3
    800059c4:	00074683          	lbu	a3,0(a4)
    800059c8:	fd040713          	addi	a4,s0,-48
    800059cc:	00c70733          	add	a4,a4,a2
    800059d0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800059d4:	0005071b          	sext.w	a4,a0
    800059d8:	0325553b          	divuw	a0,a0,s2
    800059dc:	fcf772e3          	bgeu	a4,a5,800059a0 <_Z8printIntiii+0x64>
    if(neg)
    800059e0:	00058c63          	beqz	a1,800059f8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800059e4:	fd040793          	addi	a5,s0,-48
    800059e8:	009784b3          	add	s1,a5,s1
    800059ec:	02d00793          	li	a5,45
    800059f0:	fef48823          	sb	a5,-16(s1)
    800059f4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800059f8:	fff4849b          	addiw	s1,s1,-1
    800059fc:	0204c463          	bltz	s1,80005a24 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005a00:	fd040793          	addi	a5,s0,-48
    80005a04:	009787b3          	add	a5,a5,s1
    80005a08:	ff07c503          	lbu	a0,-16(a5)
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	9d4080e7          	jalr	-1580(ra) # 800013e0 <_Z4putcc>
    80005a14:	fe5ff06f          	j	800059f8 <_Z8printIntiii+0xbc>
        x = -xx;
    80005a18:	4090053b          	negw	a0,s1
        neg = 1;
    80005a1c:	00100593          	li	a1,1
        x = -xx;
    80005a20:	f7dff06f          	j	8000599c <_Z8printIntiii+0x60>

    UNLOCK();
    80005a24:	00000613          	li	a2,0
    80005a28:	00100593          	li	a1,1
    80005a2c:	00006517          	auipc	a0,0x6
    80005a30:	09c50513          	addi	a0,a0,156 # 8000bac8 <lockPrint>
    80005a34:	ffffb097          	auipc	ra,0xffffb
    80005a38:	6f0080e7          	jalr	1776(ra) # 80001124 <copy_and_swap>
    80005a3c:	fe0514e3          	bnez	a0,80005a24 <_Z8printIntiii+0xe8>
    80005a40:	03813083          	ld	ra,56(sp)
    80005a44:	03013403          	ld	s0,48(sp)
    80005a48:	02813483          	ld	s1,40(sp)
    80005a4c:	02013903          	ld	s2,32(sp)
    80005a50:	01813983          	ld	s3,24(sp)
    80005a54:	04010113          	addi	sp,sp,64
    80005a58:	00008067          	ret

0000000080005a5c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a5c:	fd010113          	addi	sp,sp,-48
    80005a60:	02113423          	sd	ra,40(sp)
    80005a64:	02813023          	sd	s0,32(sp)
    80005a68:	00913c23          	sd	s1,24(sp)
    80005a6c:	01213823          	sd	s2,16(sp)
    80005a70:	01313423          	sd	s3,8(sp)
    80005a74:	03010413          	addi	s0,sp,48
    80005a78:	00050493          	mv	s1,a0
    80005a7c:	00058913          	mv	s2,a1
    80005a80:	0015879b          	addiw	a5,a1,1
    80005a84:	0007851b          	sext.w	a0,a5
    80005a88:	00f4a023          	sw	a5,0(s1)
    80005a8c:	0004a823          	sw	zero,16(s1)
    80005a90:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a94:	00251513          	slli	a0,a0,0x2
    80005a98:	ffffb097          	auipc	ra,0xffffb
    80005a9c:	6ac080e7          	jalr	1708(ra) # 80001144 <_Z9mem_allocm>
    80005aa0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005aa4:	01000513          	li	a0,16
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	e30080e7          	jalr	-464(ra) # 800018d8 <_Znwm>
    80005ab0:	00050993          	mv	s3,a0
    80005ab4:	00000593          	li	a1,0
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	078080e7          	jalr	120(ra) # 80001b30 <_ZN9SemaphoreC1Ej>
    80005ac0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ac4:	01000513          	li	a0,16
    80005ac8:	ffffc097          	auipc	ra,0xffffc
    80005acc:	e10080e7          	jalr	-496(ra) # 800018d8 <_Znwm>
    80005ad0:	00050993          	mv	s3,a0
    80005ad4:	00090593          	mv	a1,s2
    80005ad8:	ffffc097          	auipc	ra,0xffffc
    80005adc:	058080e7          	jalr	88(ra) # 80001b30 <_ZN9SemaphoreC1Ej>
    80005ae0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ae4:	01000513          	li	a0,16
    80005ae8:	ffffc097          	auipc	ra,0xffffc
    80005aec:	df0080e7          	jalr	-528(ra) # 800018d8 <_Znwm>
    80005af0:	00050913          	mv	s2,a0
    80005af4:	00100593          	li	a1,1
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	038080e7          	jalr	56(ra) # 80001b30 <_ZN9SemaphoreC1Ej>
    80005b00:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b04:	01000513          	li	a0,16
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	dd0080e7          	jalr	-560(ra) # 800018d8 <_Znwm>
    80005b10:	00050913          	mv	s2,a0
    80005b14:	00100593          	li	a1,1
    80005b18:	ffffc097          	auipc	ra,0xffffc
    80005b1c:	018080e7          	jalr	24(ra) # 80001b30 <_ZN9SemaphoreC1Ej>
    80005b20:	0324b823          	sd	s2,48(s1)
}
    80005b24:	02813083          	ld	ra,40(sp)
    80005b28:	02013403          	ld	s0,32(sp)
    80005b2c:	01813483          	ld	s1,24(sp)
    80005b30:	01013903          	ld	s2,16(sp)
    80005b34:	00813983          	ld	s3,8(sp)
    80005b38:	03010113          	addi	sp,sp,48
    80005b3c:	00008067          	ret
    80005b40:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005b44:	00098513          	mv	a0,s3
    80005b48:	ffffc097          	auipc	ra,0xffffc
    80005b4c:	db8080e7          	jalr	-584(ra) # 80001900 <_ZdlPv>
    80005b50:	00048513          	mv	a0,s1
    80005b54:	00007097          	auipc	ra,0x7
    80005b58:	054080e7          	jalr	84(ra) # 8000cba8 <_Unwind_Resume>
    80005b5c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005b60:	00098513          	mv	a0,s3
    80005b64:	ffffc097          	auipc	ra,0xffffc
    80005b68:	d9c080e7          	jalr	-612(ra) # 80001900 <_ZdlPv>
    80005b6c:	00048513          	mv	a0,s1
    80005b70:	00007097          	auipc	ra,0x7
    80005b74:	038080e7          	jalr	56(ra) # 8000cba8 <_Unwind_Resume>
    80005b78:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005b7c:	00090513          	mv	a0,s2
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	d80080e7          	jalr	-640(ra) # 80001900 <_ZdlPv>
    80005b88:	00048513          	mv	a0,s1
    80005b8c:	00007097          	auipc	ra,0x7
    80005b90:	01c080e7          	jalr	28(ra) # 8000cba8 <_Unwind_Resume>
    80005b94:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b98:	00090513          	mv	a0,s2
    80005b9c:	ffffc097          	auipc	ra,0xffffc
    80005ba0:	d64080e7          	jalr	-668(ra) # 80001900 <_ZdlPv>
    80005ba4:	00048513          	mv	a0,s1
    80005ba8:	00007097          	auipc	ra,0x7
    80005bac:	000080e7          	jalr	ra # 8000cba8 <_Unwind_Resume>

0000000080005bb0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00113c23          	sd	ra,24(sp)
    80005bb8:	00813823          	sd	s0,16(sp)
    80005bbc:	00913423          	sd	s1,8(sp)
    80005bc0:	01213023          	sd	s2,0(sp)
    80005bc4:	02010413          	addi	s0,sp,32
    80005bc8:	00050493          	mv	s1,a0
    80005bcc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005bd0:	01853503          	ld	a0,24(a0)
    80005bd4:	ffffc097          	auipc	ra,0xffffc
    80005bd8:	fc0080e7          	jalr	-64(ra) # 80001b94 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005bdc:	0304b503          	ld	a0,48(s1)
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	fb4080e7          	jalr	-76(ra) # 80001b94 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005be8:	0084b783          	ld	a5,8(s1)
    80005bec:	0144a703          	lw	a4,20(s1)
    80005bf0:	00271713          	slli	a4,a4,0x2
    80005bf4:	00e787b3          	add	a5,a5,a4
    80005bf8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bfc:	0144a783          	lw	a5,20(s1)
    80005c00:	0017879b          	addiw	a5,a5,1
    80005c04:	0004a703          	lw	a4,0(s1)
    80005c08:	02e7e7bb          	remw	a5,a5,a4
    80005c0c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005c10:	0304b503          	ld	a0,48(s1)
    80005c14:	ffffc097          	auipc	ra,0xffffc
    80005c18:	f54080e7          	jalr	-172(ra) # 80001b68 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005c1c:	0204b503          	ld	a0,32(s1)
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	f48080e7          	jalr	-184(ra) # 80001b68 <_ZN9Semaphore6signalEv>

}
    80005c28:	01813083          	ld	ra,24(sp)
    80005c2c:	01013403          	ld	s0,16(sp)
    80005c30:	00813483          	ld	s1,8(sp)
    80005c34:	00013903          	ld	s2,0(sp)
    80005c38:	02010113          	addi	sp,sp,32
    80005c3c:	00008067          	ret

0000000080005c40 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005c40:	fe010113          	addi	sp,sp,-32
    80005c44:	00113c23          	sd	ra,24(sp)
    80005c48:	00813823          	sd	s0,16(sp)
    80005c4c:	00913423          	sd	s1,8(sp)
    80005c50:	01213023          	sd	s2,0(sp)
    80005c54:	02010413          	addi	s0,sp,32
    80005c58:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c5c:	02053503          	ld	a0,32(a0)
    80005c60:	ffffc097          	auipc	ra,0xffffc
    80005c64:	f34080e7          	jalr	-204(ra) # 80001b94 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c68:	0284b503          	ld	a0,40(s1)
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	f28080e7          	jalr	-216(ra) # 80001b94 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c74:	0084b703          	ld	a4,8(s1)
    80005c78:	0104a783          	lw	a5,16(s1)
    80005c7c:	00279693          	slli	a3,a5,0x2
    80005c80:	00d70733          	add	a4,a4,a3
    80005c84:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c88:	0017879b          	addiw	a5,a5,1
    80005c8c:	0004a703          	lw	a4,0(s1)
    80005c90:	02e7e7bb          	remw	a5,a5,a4
    80005c94:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c98:	0284b503          	ld	a0,40(s1)
    80005c9c:	ffffc097          	auipc	ra,0xffffc
    80005ca0:	ecc080e7          	jalr	-308(ra) # 80001b68 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005ca4:	0184b503          	ld	a0,24(s1)
    80005ca8:	ffffc097          	auipc	ra,0xffffc
    80005cac:	ec0080e7          	jalr	-320(ra) # 80001b68 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005cb0:	00090513          	mv	a0,s2
    80005cb4:	01813083          	ld	ra,24(sp)
    80005cb8:	01013403          	ld	s0,16(sp)
    80005cbc:	00813483          	ld	s1,8(sp)
    80005cc0:	00013903          	ld	s2,0(sp)
    80005cc4:	02010113          	addi	sp,sp,32
    80005cc8:	00008067          	ret

0000000080005ccc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ccc:	fe010113          	addi	sp,sp,-32
    80005cd0:	00113c23          	sd	ra,24(sp)
    80005cd4:	00813823          	sd	s0,16(sp)
    80005cd8:	00913423          	sd	s1,8(sp)
    80005cdc:	01213023          	sd	s2,0(sp)
    80005ce0:	02010413          	addi	s0,sp,32
    80005ce4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005ce8:	02853503          	ld	a0,40(a0)
    80005cec:	ffffc097          	auipc	ra,0xffffc
    80005cf0:	ea8080e7          	jalr	-344(ra) # 80001b94 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005cf4:	0304b503          	ld	a0,48(s1)
    80005cf8:	ffffc097          	auipc	ra,0xffffc
    80005cfc:	e9c080e7          	jalr	-356(ra) # 80001b94 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005d00:	0144a783          	lw	a5,20(s1)
    80005d04:	0104a903          	lw	s2,16(s1)
    80005d08:	0327ce63          	blt	a5,s2,80005d44 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005d0c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005d10:	0304b503          	ld	a0,48(s1)
    80005d14:	ffffc097          	auipc	ra,0xffffc
    80005d18:	e54080e7          	jalr	-428(ra) # 80001b68 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005d1c:	0284b503          	ld	a0,40(s1)
    80005d20:	ffffc097          	auipc	ra,0xffffc
    80005d24:	e48080e7          	jalr	-440(ra) # 80001b68 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d28:	00090513          	mv	a0,s2
    80005d2c:	01813083          	ld	ra,24(sp)
    80005d30:	01013403          	ld	s0,16(sp)
    80005d34:	00813483          	ld	s1,8(sp)
    80005d38:	00013903          	ld	s2,0(sp)
    80005d3c:	02010113          	addi	sp,sp,32
    80005d40:	00008067          	ret
        ret = cap - head + tail;
    80005d44:	0004a703          	lw	a4,0(s1)
    80005d48:	4127093b          	subw	s2,a4,s2
    80005d4c:	00f9093b          	addw	s2,s2,a5
    80005d50:	fc1ff06f          	j	80005d10 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005d54 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005d54:	fe010113          	addi	sp,sp,-32
    80005d58:	00113c23          	sd	ra,24(sp)
    80005d5c:	00813823          	sd	s0,16(sp)
    80005d60:	00913423          	sd	s1,8(sp)
    80005d64:	02010413          	addi	s0,sp,32
    80005d68:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005d6c:	00a00513          	li	a0,10
    80005d70:	ffffc097          	auipc	ra,0xffffc
    80005d74:	e78080e7          	jalr	-392(ra) # 80001be8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005d78:	00003517          	auipc	a0,0x3
    80005d7c:	4c050513          	addi	a0,a0,1216 # 80009238 <CONSOLE_STATUS+0x228>
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	a0c080e7          	jalr	-1524(ra) # 8000578c <_Z11printStringPKc>
    while (getCnt()) {
    80005d88:	00048513          	mv	a0,s1
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	f40080e7          	jalr	-192(ra) # 80005ccc <_ZN9BufferCPP6getCntEv>
    80005d94:	02050c63          	beqz	a0,80005dcc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d98:	0084b783          	ld	a5,8(s1)
    80005d9c:	0104a703          	lw	a4,16(s1)
    80005da0:	00271713          	slli	a4,a4,0x2
    80005da4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005da8:	0007c503          	lbu	a0,0(a5)
    80005dac:	ffffc097          	auipc	ra,0xffffc
    80005db0:	e3c080e7          	jalr	-452(ra) # 80001be8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005db4:	0104a783          	lw	a5,16(s1)
    80005db8:	0017879b          	addiw	a5,a5,1
    80005dbc:	0004a703          	lw	a4,0(s1)
    80005dc0:	02e7e7bb          	remw	a5,a5,a4
    80005dc4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005dc8:	fc1ff06f          	j	80005d88 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005dcc:	02100513          	li	a0,33
    80005dd0:	ffffc097          	auipc	ra,0xffffc
    80005dd4:	e18080e7          	jalr	-488(ra) # 80001be8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005dd8:	00a00513          	li	a0,10
    80005ddc:	ffffc097          	auipc	ra,0xffffc
    80005de0:	e0c080e7          	jalr	-500(ra) # 80001be8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005de4:	0084b503          	ld	a0,8(s1)
    80005de8:	ffffb097          	auipc	ra,0xffffb
    80005dec:	394080e7          	jalr	916(ra) # 8000117c <_Z8mem_freePv>
    delete itemAvailable;
    80005df0:	0204b503          	ld	a0,32(s1)
    80005df4:	00050863          	beqz	a0,80005e04 <_ZN9BufferCPPD1Ev+0xb0>
    80005df8:	00053783          	ld	a5,0(a0)
    80005dfc:	0087b783          	ld	a5,8(a5)
    80005e00:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005e04:	0184b503          	ld	a0,24(s1)
    80005e08:	00050863          	beqz	a0,80005e18 <_ZN9BufferCPPD1Ev+0xc4>
    80005e0c:	00053783          	ld	a5,0(a0)
    80005e10:	0087b783          	ld	a5,8(a5)
    80005e14:	000780e7          	jalr	a5
    delete mutexTail;
    80005e18:	0304b503          	ld	a0,48(s1)
    80005e1c:	00050863          	beqz	a0,80005e2c <_ZN9BufferCPPD1Ev+0xd8>
    80005e20:	00053783          	ld	a5,0(a0)
    80005e24:	0087b783          	ld	a5,8(a5)
    80005e28:	000780e7          	jalr	a5
    delete mutexHead;
    80005e2c:	0284b503          	ld	a0,40(s1)
    80005e30:	00050863          	beqz	a0,80005e40 <_ZN9BufferCPPD1Ev+0xec>
    80005e34:	00053783          	ld	a5,0(a0)
    80005e38:	0087b783          	ld	a5,8(a5)
    80005e3c:	000780e7          	jalr	a5
}
    80005e40:	01813083          	ld	ra,24(sp)
    80005e44:	01013403          	ld	s0,16(sp)
    80005e48:	00813483          	ld	s1,8(sp)
    80005e4c:	02010113          	addi	sp,sp,32
    80005e50:	00008067          	ret

0000000080005e54 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005e54:	fe010113          	addi	sp,sp,-32
    80005e58:	00113c23          	sd	ra,24(sp)
    80005e5c:	00813823          	sd	s0,16(sp)
    80005e60:	00913423          	sd	s1,8(sp)
    80005e64:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005e68:	00003517          	auipc	a0,0x3
    80005e6c:	3e850513          	addi	a0,a0,1000 # 80009250 <CONSOLE_STATUS+0x240>
    80005e70:	00000097          	auipc	ra,0x0
    80005e74:	91c080e7          	jalr	-1764(ra) # 8000578c <_Z11printStringPKc>
    int test = getc() - '0';
    80005e78:	ffffb097          	auipc	ra,0xffffb
    80005e7c:	540080e7          	jalr	1344(ra) # 800013b8 <_Z4getcv>
    80005e80:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005e84:	ffffb097          	auipc	ra,0xffffb
    80005e88:	534080e7          	jalr	1332(ra) # 800013b8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005e8c:	00700793          	li	a5,7
    80005e90:	1097e263          	bltu	a5,s1,80005f94 <_Z8userMainv+0x140>
    80005e94:	00249493          	slli	s1,s1,0x2
    80005e98:	00003717          	auipc	a4,0x3
    80005e9c:	61070713          	addi	a4,a4,1552 # 800094a8 <CONSOLE_STATUS+0x498>
    80005ea0:	00e484b3          	add	s1,s1,a4
    80005ea4:	0004a783          	lw	a5,0(s1)
    80005ea8:	00e787b3          	add	a5,a5,a4
    80005eac:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005eb0:	fffff097          	auipc	ra,0xfffff
    80005eb4:	f54080e7          	jalr	-172(ra) # 80004e04 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005eb8:	00003517          	auipc	a0,0x3
    80005ebc:	3b850513          	addi	a0,a0,952 # 80009270 <CONSOLE_STATUS+0x260>
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	8cc080e7          	jalr	-1844(ra) # 8000578c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005ec8:	01813083          	ld	ra,24(sp)
    80005ecc:	01013403          	ld	s0,16(sp)
    80005ed0:	00813483          	ld	s1,8(sp)
    80005ed4:	02010113          	addi	sp,sp,32
    80005ed8:	00008067          	ret
            Threads_CPP_API_test();
    80005edc:	ffffe097          	auipc	ra,0xffffe
    80005ee0:	e08080e7          	jalr	-504(ra) # 80003ce4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	3cc50513          	addi	a0,a0,972 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005eec:	00000097          	auipc	ra,0x0
    80005ef0:	8a0080e7          	jalr	-1888(ra) # 8000578c <_Z11printStringPKc>
            break;
    80005ef4:	fd5ff06f          	j	80005ec8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005ef8:	ffffd097          	auipc	ra,0xffffd
    80005efc:	640080e7          	jalr	1600(ra) # 80003538 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005f00:	00003517          	auipc	a0,0x3
    80005f04:	3f050513          	addi	a0,a0,1008 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005f08:	00000097          	auipc	ra,0x0
    80005f0c:	884080e7          	jalr	-1916(ra) # 8000578c <_Z11printStringPKc>
            break;
    80005f10:	fb9ff06f          	j	80005ec8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005f14:	fffff097          	auipc	ra,0xfffff
    80005f18:	234080e7          	jalr	564(ra) # 80005148 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	42450513          	addi	a0,a0,1060 # 80009340 <CONSOLE_STATUS+0x330>
    80005f24:	00000097          	auipc	ra,0x0
    80005f28:	868080e7          	jalr	-1944(ra) # 8000578c <_Z11printStringPKc>
            break;
    80005f2c:	f9dff06f          	j	80005ec8 <_Z8userMainv+0x74>
            testSleeping();
    80005f30:	00000097          	auipc	ra,0x0
    80005f34:	11c080e7          	jalr	284(ra) # 8000604c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005f38:	00003517          	auipc	a0,0x3
    80005f3c:	46050513          	addi	a0,a0,1120 # 80009398 <CONSOLE_STATUS+0x388>
    80005f40:	00000097          	auipc	ra,0x0
    80005f44:	84c080e7          	jalr	-1972(ra) # 8000578c <_Z11printStringPKc>
            break;
    80005f48:	f81ff06f          	j	80005ec8 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005f4c:	ffffe097          	auipc	ra,0xffffe
    80005f50:	258080e7          	jalr	600(ra) # 800041a4 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005f54:	00003517          	auipc	a0,0x3
    80005f58:	47450513          	addi	a0,a0,1140 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005f5c:	00000097          	auipc	ra,0x0
    80005f60:	830080e7          	jalr	-2000(ra) # 8000578c <_Z11printStringPKc>
            break;
    80005f64:	f65ff06f          	j	80005ec8 <_Z8userMainv+0x74>
            System_Mode_test();
    80005f68:	00000097          	auipc	ra,0x0
    80005f6c:	66c080e7          	jalr	1644(ra) # 800065d4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005f70:	00003517          	auipc	a0,0x3
    80005f74:	49850513          	addi	a0,a0,1176 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005f78:	00000097          	auipc	ra,0x0
    80005f7c:	814080e7          	jalr	-2028(ra) # 8000578c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005f80:	00003517          	auipc	a0,0x3
    80005f84:	4a850513          	addi	a0,a0,1192 # 80009428 <CONSOLE_STATUS+0x418>
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	804080e7          	jalr	-2044(ra) # 8000578c <_Z11printStringPKc>
            break;
    80005f90:	f39ff06f          	j	80005ec8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005f94:	00003517          	auipc	a0,0x3
    80005f98:	4ec50513          	addi	a0,a0,1260 # 80009480 <CONSOLE_STATUS+0x470>
    80005f9c:	fffff097          	auipc	ra,0xfffff
    80005fa0:	7f0080e7          	jalr	2032(ra) # 8000578c <_Z11printStringPKc>
    80005fa4:	f25ff06f          	j	80005ec8 <_Z8userMainv+0x74>

0000000080005fa8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005fa8:	fe010113          	addi	sp,sp,-32
    80005fac:	00113c23          	sd	ra,24(sp)
    80005fb0:	00813823          	sd	s0,16(sp)
    80005fb4:	00913423          	sd	s1,8(sp)
    80005fb8:	01213023          	sd	s2,0(sp)
    80005fbc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005fc0:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005fc4:	00600493          	li	s1,6
    while (--i > 0) {
    80005fc8:	fff4849b          	addiw	s1,s1,-1
    80005fcc:	04905463          	blez	s1,80006014 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005fd0:	00003517          	auipc	a0,0x3
    80005fd4:	4f850513          	addi	a0,a0,1272 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005fd8:	fffff097          	auipc	ra,0xfffff
    80005fdc:	7b4080e7          	jalr	1972(ra) # 8000578c <_Z11printStringPKc>
        printInt(sleep_time);
    80005fe0:	00000613          	li	a2,0
    80005fe4:	00a00593          	li	a1,10
    80005fe8:	0009051b          	sext.w	a0,s2
    80005fec:	00000097          	auipc	ra,0x0
    80005ff0:	950080e7          	jalr	-1712(ra) # 8000593c <_Z8printIntiii>
        printString(" !\n");
    80005ff4:	00003517          	auipc	a0,0x3
    80005ff8:	4dc50513          	addi	a0,a0,1244 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005ffc:	fffff097          	auipc	ra,0xfffff
    80006000:	790080e7          	jalr	1936(ra) # 8000578c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006004:	00090513          	mv	a0,s2
    80006008:	ffffb097          	auipc	ra,0xffffb
    8000600c:	384080e7          	jalr	900(ra) # 8000138c <_Z10time_sleepm>
    while (--i > 0) {
    80006010:	fb9ff06f          	j	80005fc8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006014:	00a00793          	li	a5,10
    80006018:	02f95933          	divu	s2,s2,a5
    8000601c:	fff90913          	addi	s2,s2,-1
    80006020:	00006797          	auipc	a5,0x6
    80006024:	ab078793          	addi	a5,a5,-1360 # 8000bad0 <_ZL8finished>
    80006028:	01278933          	add	s2,a5,s2
    8000602c:	00100793          	li	a5,1
    80006030:	00f90023          	sb	a5,0(s2)
}
    80006034:	01813083          	ld	ra,24(sp)
    80006038:	01013403          	ld	s0,16(sp)
    8000603c:	00813483          	ld	s1,8(sp)
    80006040:	00013903          	ld	s2,0(sp)
    80006044:	02010113          	addi	sp,sp,32
    80006048:	00008067          	ret

000000008000604c <_Z12testSleepingv>:

void testSleeping() {
    8000604c:	fc010113          	addi	sp,sp,-64
    80006050:	02113c23          	sd	ra,56(sp)
    80006054:	02813823          	sd	s0,48(sp)
    80006058:	02913423          	sd	s1,40(sp)
    8000605c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006060:	00a00793          	li	a5,10
    80006064:	fcf43823          	sd	a5,-48(s0)
    80006068:	01400793          	li	a5,20
    8000606c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006070:	00000493          	li	s1,0
    80006074:	02c0006f          	j	800060a0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006078:	00349793          	slli	a5,s1,0x3
    8000607c:	fd040613          	addi	a2,s0,-48
    80006080:	00f60633          	add	a2,a2,a5
    80006084:	00000597          	auipc	a1,0x0
    80006088:	f2458593          	addi	a1,a1,-220 # 80005fa8 <_ZL9sleepyRunPv>
    8000608c:	fc040513          	addi	a0,s0,-64
    80006090:	00f50533          	add	a0,a0,a5
    80006094:	ffffb097          	auipc	ra,0xffffb
    80006098:	164080e7          	jalr	356(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000609c:	0014849b          	addiw	s1,s1,1
    800060a0:	00100793          	li	a5,1
    800060a4:	fc97dae3          	bge	a5,s1,80006078 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800060a8:	00006797          	auipc	a5,0x6
    800060ac:	a287c783          	lbu	a5,-1496(a5) # 8000bad0 <_ZL8finished>
    800060b0:	fe078ce3          	beqz	a5,800060a8 <_Z12testSleepingv+0x5c>
    800060b4:	00006797          	auipc	a5,0x6
    800060b8:	a1d7c783          	lbu	a5,-1507(a5) # 8000bad1 <_ZL8finished+0x1>
    800060bc:	fe0786e3          	beqz	a5,800060a8 <_Z12testSleepingv+0x5c>
    finished[0] = false;
    800060c0:	00006797          	auipc	a5,0x6
    800060c4:	a1078793          	addi	a5,a5,-1520 # 8000bad0 <_ZL8finished>
    800060c8:	00078023          	sb	zero,0(a5)
    finished[1] = true;
    800060cc:	00100713          	li	a4,1
    800060d0:	00e780a3          	sb	a4,1(a5)
}
    800060d4:	03813083          	ld	ra,56(sp)
    800060d8:	03013403          	ld	s0,48(sp)
    800060dc:	02813483          	ld	s1,40(sp)
    800060e0:	04010113          	addi	sp,sp,64
    800060e4:	00008067          	ret

00000000800060e8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800060e8:	fe010113          	addi	sp,sp,-32
    800060ec:	00113c23          	sd	ra,24(sp)
    800060f0:	00813823          	sd	s0,16(sp)
    800060f4:	00913423          	sd	s1,8(sp)
    800060f8:	01213023          	sd	s2,0(sp)
    800060fc:	02010413          	addi	s0,sp,32
    80006100:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006104:	00100793          	li	a5,1
    80006108:	02a7f863          	bgeu	a5,a0,80006138 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000610c:	00a00793          	li	a5,10
    80006110:	02f577b3          	remu	a5,a0,a5
    80006114:	02078e63          	beqz	a5,80006150 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006118:	fff48513          	addi	a0,s1,-1
    8000611c:	00000097          	auipc	ra,0x0
    80006120:	fcc080e7          	jalr	-52(ra) # 800060e8 <_ZL9fibonaccim>
    80006124:	00050913          	mv	s2,a0
    80006128:	ffe48513          	addi	a0,s1,-2
    8000612c:	00000097          	auipc	ra,0x0
    80006130:	fbc080e7          	jalr	-68(ra) # 800060e8 <_ZL9fibonaccim>
    80006134:	00a90533          	add	a0,s2,a0
}
    80006138:	01813083          	ld	ra,24(sp)
    8000613c:	01013403          	ld	s0,16(sp)
    80006140:	00813483          	ld	s1,8(sp)
    80006144:	00013903          	ld	s2,0(sp)
    80006148:	02010113          	addi	sp,sp,32
    8000614c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006150:	ffffb097          	auipc	ra,0xffffb
    80006154:	140080e7          	jalr	320(ra) # 80001290 <_Z15thread_dispatchv>
    80006158:	fc1ff06f          	j	80006118 <_ZL9fibonaccim+0x30>

000000008000615c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000615c:	fe010113          	addi	sp,sp,-32
    80006160:	00113c23          	sd	ra,24(sp)
    80006164:	00813823          	sd	s0,16(sp)
    80006168:	00913423          	sd	s1,8(sp)
    8000616c:	01213023          	sd	s2,0(sp)
    80006170:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006174:	00a00493          	li	s1,10
    80006178:	0400006f          	j	800061b8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000617c:	00003517          	auipc	a0,0x3
    80006180:	01450513          	addi	a0,a0,20 # 80009190 <CONSOLE_STATUS+0x180>
    80006184:	fffff097          	auipc	ra,0xfffff
    80006188:	608080e7          	jalr	1544(ra) # 8000578c <_Z11printStringPKc>
    8000618c:	00000613          	li	a2,0
    80006190:	00a00593          	li	a1,10
    80006194:	00048513          	mv	a0,s1
    80006198:	fffff097          	auipc	ra,0xfffff
    8000619c:	7a4080e7          	jalr	1956(ra) # 8000593c <_Z8printIntiii>
    800061a0:	00003517          	auipc	a0,0x3
    800061a4:	1f050513          	addi	a0,a0,496 # 80009390 <CONSOLE_STATUS+0x380>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	5e4080e7          	jalr	1508(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800061b0:	0014849b          	addiw	s1,s1,1
    800061b4:	0ff4f493          	andi	s1,s1,255
    800061b8:	00c00793          	li	a5,12
    800061bc:	fc97f0e3          	bgeu	a5,s1,8000617c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	fd850513          	addi	a0,a0,-40 # 80009198 <CONSOLE_STATUS+0x188>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	5c4080e7          	jalr	1476(ra) # 8000578c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800061d0:	00500313          	li	t1,5
    thread_dispatch();
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	0bc080e7          	jalr	188(ra) # 80001290 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800061dc:	01000513          	li	a0,16
    800061e0:	00000097          	auipc	ra,0x0
    800061e4:	f08080e7          	jalr	-248(ra) # 800060e8 <_ZL9fibonaccim>
    800061e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800061ec:	00003517          	auipc	a0,0x3
    800061f0:	fbc50513          	addi	a0,a0,-68 # 800091a8 <CONSOLE_STATUS+0x198>
    800061f4:	fffff097          	auipc	ra,0xfffff
    800061f8:	598080e7          	jalr	1432(ra) # 8000578c <_Z11printStringPKc>
    800061fc:	00000613          	li	a2,0
    80006200:	00a00593          	li	a1,10
    80006204:	0009051b          	sext.w	a0,s2
    80006208:	fffff097          	auipc	ra,0xfffff
    8000620c:	734080e7          	jalr	1844(ra) # 8000593c <_Z8printIntiii>
    80006210:	00003517          	auipc	a0,0x3
    80006214:	18050513          	addi	a0,a0,384 # 80009390 <CONSOLE_STATUS+0x380>
    80006218:	fffff097          	auipc	ra,0xfffff
    8000621c:	574080e7          	jalr	1396(ra) # 8000578c <_Z11printStringPKc>
    80006220:	0400006f          	j	80006260 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006224:	00003517          	auipc	a0,0x3
    80006228:	f6c50513          	addi	a0,a0,-148 # 80009190 <CONSOLE_STATUS+0x180>
    8000622c:	fffff097          	auipc	ra,0xfffff
    80006230:	560080e7          	jalr	1376(ra) # 8000578c <_Z11printStringPKc>
    80006234:	00000613          	li	a2,0
    80006238:	00a00593          	li	a1,10
    8000623c:	00048513          	mv	a0,s1
    80006240:	fffff097          	auipc	ra,0xfffff
    80006244:	6fc080e7          	jalr	1788(ra) # 8000593c <_Z8printIntiii>
    80006248:	00003517          	auipc	a0,0x3
    8000624c:	14850513          	addi	a0,a0,328 # 80009390 <CONSOLE_STATUS+0x380>
    80006250:	fffff097          	auipc	ra,0xfffff
    80006254:	53c080e7          	jalr	1340(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006258:	0014849b          	addiw	s1,s1,1
    8000625c:	0ff4f493          	andi	s1,s1,255
    80006260:	00f00793          	li	a5,15
    80006264:	fc97f0e3          	bgeu	a5,s1,80006224 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006268:	00003517          	auipc	a0,0x3
    8000626c:	f5050513          	addi	a0,a0,-176 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80006270:	fffff097          	auipc	ra,0xfffff
    80006274:	51c080e7          	jalr	1308(ra) # 8000578c <_Z11printStringPKc>
    finishedD = true;
    80006278:	00100793          	li	a5,1
    8000627c:	00006717          	auipc	a4,0x6
    80006280:	84f70b23          	sb	a5,-1962(a4) # 8000bad2 <_ZL9finishedD>
    thread_dispatch();
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	00c080e7          	jalr	12(ra) # 80001290 <_Z15thread_dispatchv>
}
    8000628c:	01813083          	ld	ra,24(sp)
    80006290:	01013403          	ld	s0,16(sp)
    80006294:	00813483          	ld	s1,8(sp)
    80006298:	00013903          	ld	s2,0(sp)
    8000629c:	02010113          	addi	sp,sp,32
    800062a0:	00008067          	ret

00000000800062a4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800062a4:	fe010113          	addi	sp,sp,-32
    800062a8:	00113c23          	sd	ra,24(sp)
    800062ac:	00813823          	sd	s0,16(sp)
    800062b0:	00913423          	sd	s1,8(sp)
    800062b4:	01213023          	sd	s2,0(sp)
    800062b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800062bc:	00000493          	li	s1,0
    800062c0:	0400006f          	j	80006300 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800062c4:	00003517          	auipc	a0,0x3
    800062c8:	e9c50513          	addi	a0,a0,-356 # 80009160 <CONSOLE_STATUS+0x150>
    800062cc:	fffff097          	auipc	ra,0xfffff
    800062d0:	4c0080e7          	jalr	1216(ra) # 8000578c <_Z11printStringPKc>
    800062d4:	00000613          	li	a2,0
    800062d8:	00a00593          	li	a1,10
    800062dc:	00048513          	mv	a0,s1
    800062e0:	fffff097          	auipc	ra,0xfffff
    800062e4:	65c080e7          	jalr	1628(ra) # 8000593c <_Z8printIntiii>
    800062e8:	00003517          	auipc	a0,0x3
    800062ec:	0a850513          	addi	a0,a0,168 # 80009390 <CONSOLE_STATUS+0x380>
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	49c080e7          	jalr	1180(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800062f8:	0014849b          	addiw	s1,s1,1
    800062fc:	0ff4f493          	andi	s1,s1,255
    80006300:	00200793          	li	a5,2
    80006304:	fc97f0e3          	bgeu	a5,s1,800062c4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006308:	00003517          	auipc	a0,0x3
    8000630c:	e6050513          	addi	a0,a0,-416 # 80009168 <CONSOLE_STATUS+0x158>
    80006310:	fffff097          	auipc	ra,0xfffff
    80006314:	47c080e7          	jalr	1148(ra) # 8000578c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006318:	00700313          	li	t1,7
    thread_dispatch();
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	f74080e7          	jalr	-140(ra) # 80001290 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006324:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	e5050513          	addi	a0,a0,-432 # 80009178 <CONSOLE_STATUS+0x168>
    80006330:	fffff097          	auipc	ra,0xfffff
    80006334:	45c080e7          	jalr	1116(ra) # 8000578c <_Z11printStringPKc>
    80006338:	00000613          	li	a2,0
    8000633c:	00a00593          	li	a1,10
    80006340:	0009051b          	sext.w	a0,s2
    80006344:	fffff097          	auipc	ra,0xfffff
    80006348:	5f8080e7          	jalr	1528(ra) # 8000593c <_Z8printIntiii>
    8000634c:	00003517          	auipc	a0,0x3
    80006350:	04450513          	addi	a0,a0,68 # 80009390 <CONSOLE_STATUS+0x380>
    80006354:	fffff097          	auipc	ra,0xfffff
    80006358:	438080e7          	jalr	1080(ra) # 8000578c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000635c:	00c00513          	li	a0,12
    80006360:	00000097          	auipc	ra,0x0
    80006364:	d88080e7          	jalr	-632(ra) # 800060e8 <_ZL9fibonaccim>
    80006368:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000636c:	00003517          	auipc	a0,0x3
    80006370:	e1450513          	addi	a0,a0,-492 # 80009180 <CONSOLE_STATUS+0x170>
    80006374:	fffff097          	auipc	ra,0xfffff
    80006378:	418080e7          	jalr	1048(ra) # 8000578c <_Z11printStringPKc>
    8000637c:	00000613          	li	a2,0
    80006380:	00a00593          	li	a1,10
    80006384:	0009051b          	sext.w	a0,s2
    80006388:	fffff097          	auipc	ra,0xfffff
    8000638c:	5b4080e7          	jalr	1460(ra) # 8000593c <_Z8printIntiii>
    80006390:	00003517          	auipc	a0,0x3
    80006394:	00050513          	mv	a0,a0
    80006398:	fffff097          	auipc	ra,0xfffff
    8000639c:	3f4080e7          	jalr	1012(ra) # 8000578c <_Z11printStringPKc>
    800063a0:	0400006f          	j	800063e0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800063a4:	00003517          	auipc	a0,0x3
    800063a8:	dbc50513          	addi	a0,a0,-580 # 80009160 <CONSOLE_STATUS+0x150>
    800063ac:	fffff097          	auipc	ra,0xfffff
    800063b0:	3e0080e7          	jalr	992(ra) # 8000578c <_Z11printStringPKc>
    800063b4:	00000613          	li	a2,0
    800063b8:	00a00593          	li	a1,10
    800063bc:	00048513          	mv	a0,s1
    800063c0:	fffff097          	auipc	ra,0xfffff
    800063c4:	57c080e7          	jalr	1404(ra) # 8000593c <_Z8printIntiii>
    800063c8:	00003517          	auipc	a0,0x3
    800063cc:	fc850513          	addi	a0,a0,-56 # 80009390 <CONSOLE_STATUS+0x380>
    800063d0:	fffff097          	auipc	ra,0xfffff
    800063d4:	3bc080e7          	jalr	956(ra) # 8000578c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800063d8:	0014849b          	addiw	s1,s1,1
    800063dc:	0ff4f493          	andi	s1,s1,255
    800063e0:	00500793          	li	a5,5
    800063e4:	fc97f0e3          	bgeu	a5,s1,800063a4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800063e8:	00003517          	auipc	a0,0x3
    800063ec:	d5050513          	addi	a0,a0,-688 # 80009138 <CONSOLE_STATUS+0x128>
    800063f0:	fffff097          	auipc	ra,0xfffff
    800063f4:	39c080e7          	jalr	924(ra) # 8000578c <_Z11printStringPKc>
    finishedC = true;
    800063f8:	00100793          	li	a5,1
    800063fc:	00005717          	auipc	a4,0x5
    80006400:	6cf70ba3          	sb	a5,1751(a4) # 8000bad3 <_ZL9finishedC>
    thread_dispatch();
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	e8c080e7          	jalr	-372(ra) # 80001290 <_Z15thread_dispatchv>
}
    8000640c:	01813083          	ld	ra,24(sp)
    80006410:	01013403          	ld	s0,16(sp)
    80006414:	00813483          	ld	s1,8(sp)
    80006418:	00013903          	ld	s2,0(sp)
    8000641c:	02010113          	addi	sp,sp,32
    80006420:	00008067          	ret

0000000080006424 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006424:	fe010113          	addi	sp,sp,-32
    80006428:	00113c23          	sd	ra,24(sp)
    8000642c:	00813823          	sd	s0,16(sp)
    80006430:	00913423          	sd	s1,8(sp)
    80006434:	01213023          	sd	s2,0(sp)
    80006438:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000643c:	00000913          	li	s2,0
    80006440:	0400006f          	j	80006480 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	e4c080e7          	jalr	-436(ra) # 80001290 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000644c:	00148493          	addi	s1,s1,1
    80006450:	000027b7          	lui	a5,0x2
    80006454:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006458:	0097ee63          	bltu	a5,s1,80006474 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000645c:	00000713          	li	a4,0
    80006460:	000077b7          	lui	a5,0x7
    80006464:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006468:	fce7eee3          	bltu	a5,a4,80006444 <_ZL11workerBodyBPv+0x20>
    8000646c:	00170713          	addi	a4,a4,1
    80006470:	ff1ff06f          	j	80006460 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006474:	00a00793          	li	a5,10
    80006478:	04f90663          	beq	s2,a5,800064c4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000647c:	00190913          	addi	s2,s2,1
    80006480:	00f00793          	li	a5,15
    80006484:	0527e463          	bltu	a5,s2,800064cc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	cc050513          	addi	a0,a0,-832 # 80009148 <CONSOLE_STATUS+0x138>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	2fc080e7          	jalr	764(ra) # 8000578c <_Z11printStringPKc>
    80006498:	00000613          	li	a2,0
    8000649c:	00a00593          	li	a1,10
    800064a0:	0009051b          	sext.w	a0,s2
    800064a4:	fffff097          	auipc	ra,0xfffff
    800064a8:	498080e7          	jalr	1176(ra) # 8000593c <_Z8printIntiii>
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	ee450513          	addi	a0,a0,-284 # 80009390 <CONSOLE_STATUS+0x380>
    800064b4:	fffff097          	auipc	ra,0xfffff
    800064b8:	2d8080e7          	jalr	728(ra) # 8000578c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800064bc:	00000493          	li	s1,0
    800064c0:	f91ff06f          	j	80006450 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800064c4:	14102ff3          	csrr	t6,sepc
    800064c8:	fb5ff06f          	j	8000647c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	c8450513          	addi	a0,a0,-892 # 80009150 <CONSOLE_STATUS+0x140>
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	2b8080e7          	jalr	696(ra) # 8000578c <_Z11printStringPKc>
    finishedB = true;
    800064dc:	00100793          	li	a5,1
    800064e0:	00005717          	auipc	a4,0x5
    800064e4:	5ef70a23          	sb	a5,1524(a4) # 8000bad4 <_ZL9finishedB>
    thread_dispatch();
    800064e8:	ffffb097          	auipc	ra,0xffffb
    800064ec:	da8080e7          	jalr	-600(ra) # 80001290 <_Z15thread_dispatchv>
}
    800064f0:	01813083          	ld	ra,24(sp)
    800064f4:	01013403          	ld	s0,16(sp)
    800064f8:	00813483          	ld	s1,8(sp)
    800064fc:	00013903          	ld	s2,0(sp)
    80006500:	02010113          	addi	sp,sp,32
    80006504:	00008067          	ret

0000000080006508 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006508:	fe010113          	addi	sp,sp,-32
    8000650c:	00113c23          	sd	ra,24(sp)
    80006510:	00813823          	sd	s0,16(sp)
    80006514:	00913423          	sd	s1,8(sp)
    80006518:	01213023          	sd	s2,0(sp)
    8000651c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006520:	00000913          	li	s2,0
    80006524:	0380006f          	j	8000655c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	d68080e7          	jalr	-664(ra) # 80001290 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006530:	00148493          	addi	s1,s1,1
    80006534:	000027b7          	lui	a5,0x2
    80006538:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000653c:	0097ee63          	bltu	a5,s1,80006558 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006540:	00000713          	li	a4,0
    80006544:	000077b7          	lui	a5,0x7
    80006548:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000654c:	fce7eee3          	bltu	a5,a4,80006528 <_ZL11workerBodyAPv+0x20>
    80006550:	00170713          	addi	a4,a4,1
    80006554:	ff1ff06f          	j	80006544 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006558:	00190913          	addi	s2,s2,1
    8000655c:	00900793          	li	a5,9
    80006560:	0527e063          	bltu	a5,s2,800065a0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006564:	00003517          	auipc	a0,0x3
    80006568:	bcc50513          	addi	a0,a0,-1076 # 80009130 <CONSOLE_STATUS+0x120>
    8000656c:	fffff097          	auipc	ra,0xfffff
    80006570:	220080e7          	jalr	544(ra) # 8000578c <_Z11printStringPKc>
    80006574:	00000613          	li	a2,0
    80006578:	00a00593          	li	a1,10
    8000657c:	0009051b          	sext.w	a0,s2
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	3bc080e7          	jalr	956(ra) # 8000593c <_Z8printIntiii>
    80006588:	00003517          	auipc	a0,0x3
    8000658c:	e0850513          	addi	a0,a0,-504 # 80009390 <CONSOLE_STATUS+0x380>
    80006590:	fffff097          	auipc	ra,0xfffff
    80006594:	1fc080e7          	jalr	508(ra) # 8000578c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006598:	00000493          	li	s1,0
    8000659c:	f99ff06f          	j	80006534 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800065a0:	00003517          	auipc	a0,0x3
    800065a4:	b9850513          	addi	a0,a0,-1128 # 80009138 <CONSOLE_STATUS+0x128>
    800065a8:	fffff097          	auipc	ra,0xfffff
    800065ac:	1e4080e7          	jalr	484(ra) # 8000578c <_Z11printStringPKc>
    finishedA = true;
    800065b0:	00100793          	li	a5,1
    800065b4:	00005717          	auipc	a4,0x5
    800065b8:	52f700a3          	sb	a5,1313(a4) # 8000bad5 <_ZL9finishedA>
}
    800065bc:	01813083          	ld	ra,24(sp)
    800065c0:	01013403          	ld	s0,16(sp)
    800065c4:	00813483          	ld	s1,8(sp)
    800065c8:	00013903          	ld	s2,0(sp)
    800065cc:	02010113          	addi	sp,sp,32
    800065d0:	00008067          	ret

00000000800065d4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800065d4:	fd010113          	addi	sp,sp,-48
    800065d8:	02113423          	sd	ra,40(sp)
    800065dc:	02813023          	sd	s0,32(sp)
    800065e0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800065e4:	00000613          	li	a2,0
    800065e8:	00000597          	auipc	a1,0x0
    800065ec:	f2058593          	addi	a1,a1,-224 # 80006508 <_ZL11workerBodyAPv>
    800065f0:	fd040513          	addi	a0,s0,-48
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	c04080e7          	jalr	-1020(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800065fc:	00003517          	auipc	a0,0x3
    80006600:	bcc50513          	addi	a0,a0,-1076 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80006604:	fffff097          	auipc	ra,0xfffff
    80006608:	188080e7          	jalr	392(ra) # 8000578c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000660c:	00000613          	li	a2,0
    80006610:	00000597          	auipc	a1,0x0
    80006614:	e1458593          	addi	a1,a1,-492 # 80006424 <_ZL11workerBodyBPv>
    80006618:	fd840513          	addi	a0,s0,-40
    8000661c:	ffffb097          	auipc	ra,0xffffb
    80006620:	bdc080e7          	jalr	-1060(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006624:	00003517          	auipc	a0,0x3
    80006628:	bbc50513          	addi	a0,a0,-1092 # 800091e0 <CONSOLE_STATUS+0x1d0>
    8000662c:	fffff097          	auipc	ra,0xfffff
    80006630:	160080e7          	jalr	352(ra) # 8000578c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006634:	00000613          	li	a2,0
    80006638:	00000597          	auipc	a1,0x0
    8000663c:	c6c58593          	addi	a1,a1,-916 # 800062a4 <_ZL11workerBodyCPv>
    80006640:	fe040513          	addi	a0,s0,-32
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	bb4080e7          	jalr	-1100(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000664c:	00003517          	auipc	a0,0x3
    80006650:	bac50513          	addi	a0,a0,-1108 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	138080e7          	jalr	312(ra) # 8000578c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000665c:	00000613          	li	a2,0
    80006660:	00000597          	auipc	a1,0x0
    80006664:	afc58593          	addi	a1,a1,-1284 # 8000615c <_ZL11workerBodyDPv>
    80006668:	fe840513          	addi	a0,s0,-24
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	b8c080e7          	jalr	-1140(ra) # 800011f8 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006674:	00003517          	auipc	a0,0x3
    80006678:	b9c50513          	addi	a0,a0,-1124 # 80009210 <CONSOLE_STATUS+0x200>
    8000667c:	fffff097          	auipc	ra,0xfffff
    80006680:	110080e7          	jalr	272(ra) # 8000578c <_Z11printStringPKc>
    80006684:	00c0006f          	j	80006690 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	c08080e7          	jalr	-1016(ra) # 80001290 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006690:	00005797          	auipc	a5,0x5
    80006694:	4457c783          	lbu	a5,1093(a5) # 8000bad5 <_ZL9finishedA>
    80006698:	fe0788e3          	beqz	a5,80006688 <_Z16System_Mode_testv+0xb4>
    8000669c:	00005797          	auipc	a5,0x5
    800066a0:	4387c783          	lbu	a5,1080(a5) # 8000bad4 <_ZL9finishedB>
    800066a4:	fe0782e3          	beqz	a5,80006688 <_Z16System_Mode_testv+0xb4>
    800066a8:	00005797          	auipc	a5,0x5
    800066ac:	42b7c783          	lbu	a5,1067(a5) # 8000bad3 <_ZL9finishedC>
    800066b0:	fc078ce3          	beqz	a5,80006688 <_Z16System_Mode_testv+0xb4>
    800066b4:	00005797          	auipc	a5,0x5
    800066b8:	41e7c783          	lbu	a5,1054(a5) # 8000bad2 <_ZL9finishedD>
    800066bc:	fc0786e3          	beqz	a5,80006688 <_Z16System_Mode_testv+0xb4>
    }

}
    800066c0:	02813083          	ld	ra,40(sp)
    800066c4:	02013403          	ld	s0,32(sp)
    800066c8:	03010113          	addi	sp,sp,48
    800066cc:	00008067          	ret

00000000800066d0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800066d0:	fe010113          	addi	sp,sp,-32
    800066d4:	00113c23          	sd	ra,24(sp)
    800066d8:	00813823          	sd	s0,16(sp)
    800066dc:	00913423          	sd	s1,8(sp)
    800066e0:	01213023          	sd	s2,0(sp)
    800066e4:	02010413          	addi	s0,sp,32
    800066e8:	00050493          	mv	s1,a0
    800066ec:	00058913          	mv	s2,a1
    800066f0:	0015879b          	addiw	a5,a1,1
    800066f4:	0007851b          	sext.w	a0,a5
    800066f8:	00f4a023          	sw	a5,0(s1)
    800066fc:	0004a823          	sw	zero,16(s1)
    80006700:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006704:	00251513          	slli	a0,a0,0x2
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	a3c080e7          	jalr	-1476(ra) # 80001144 <_Z9mem_allocm>
    80006710:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006714:	00000593          	li	a1,0
    80006718:	02048513          	addi	a0,s1,32
    8000671c:	ffffb097          	auipc	ra,0xffffb
    80006720:	bbc080e7          	jalr	-1092(ra) # 800012d8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006724:	00090593          	mv	a1,s2
    80006728:	01848513          	addi	a0,s1,24
    8000672c:	ffffb097          	auipc	ra,0xffffb
    80006730:	bac080e7          	jalr	-1108(ra) # 800012d8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006734:	00100593          	li	a1,1
    80006738:	02848513          	addi	a0,s1,40
    8000673c:	ffffb097          	auipc	ra,0xffffb
    80006740:	b9c080e7          	jalr	-1124(ra) # 800012d8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006744:	00100593          	li	a1,1
    80006748:	03048513          	addi	a0,s1,48
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	b8c080e7          	jalr	-1140(ra) # 800012d8 <_Z8sem_openPP4_semj>
}
    80006754:	01813083          	ld	ra,24(sp)
    80006758:	01013403          	ld	s0,16(sp)
    8000675c:	00813483          	ld	s1,8(sp)
    80006760:	00013903          	ld	s2,0(sp)
    80006764:	02010113          	addi	sp,sp,32
    80006768:	00008067          	ret

000000008000676c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000676c:	fe010113          	addi	sp,sp,-32
    80006770:	00113c23          	sd	ra,24(sp)
    80006774:	00813823          	sd	s0,16(sp)
    80006778:	00913423          	sd	s1,8(sp)
    8000677c:	01213023          	sd	s2,0(sp)
    80006780:	02010413          	addi	s0,sp,32
    80006784:	00050493          	mv	s1,a0
    80006788:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000678c:	01853503          	ld	a0,24(a0)
    80006790:	ffffb097          	auipc	ra,0xffffb
    80006794:	ba4080e7          	jalr	-1116(ra) # 80001334 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006798:	0304b503          	ld	a0,48(s1)
    8000679c:	ffffb097          	auipc	ra,0xffffb
    800067a0:	b98080e7          	jalr	-1128(ra) # 80001334 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800067a4:	0084b783          	ld	a5,8(s1)
    800067a8:	0144a703          	lw	a4,20(s1)
    800067ac:	00271713          	slli	a4,a4,0x2
    800067b0:	00e787b3          	add	a5,a5,a4
    800067b4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800067b8:	0144a783          	lw	a5,20(s1)
    800067bc:	0017879b          	addiw	a5,a5,1
    800067c0:	0004a703          	lw	a4,0(s1)
    800067c4:	02e7e7bb          	remw	a5,a5,a4
    800067c8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800067cc:	0304b503          	ld	a0,48(s1)
    800067d0:	ffffb097          	auipc	ra,0xffffb
    800067d4:	b90080e7          	jalr	-1136(ra) # 80001360 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800067d8:	0204b503          	ld	a0,32(s1)
    800067dc:	ffffb097          	auipc	ra,0xffffb
    800067e0:	b84080e7          	jalr	-1148(ra) # 80001360 <_Z10sem_signalP4_sem>

}
    800067e4:	01813083          	ld	ra,24(sp)
    800067e8:	01013403          	ld	s0,16(sp)
    800067ec:	00813483          	ld	s1,8(sp)
    800067f0:	00013903          	ld	s2,0(sp)
    800067f4:	02010113          	addi	sp,sp,32
    800067f8:	00008067          	ret

00000000800067fc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800067fc:	fe010113          	addi	sp,sp,-32
    80006800:	00113c23          	sd	ra,24(sp)
    80006804:	00813823          	sd	s0,16(sp)
    80006808:	00913423          	sd	s1,8(sp)
    8000680c:	01213023          	sd	s2,0(sp)
    80006810:	02010413          	addi	s0,sp,32
    80006814:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006818:	02053503          	ld	a0,32(a0)
    8000681c:	ffffb097          	auipc	ra,0xffffb
    80006820:	b18080e7          	jalr	-1256(ra) # 80001334 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006824:	0284b503          	ld	a0,40(s1)
    80006828:	ffffb097          	auipc	ra,0xffffb
    8000682c:	b0c080e7          	jalr	-1268(ra) # 80001334 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006830:	0084b703          	ld	a4,8(s1)
    80006834:	0104a783          	lw	a5,16(s1)
    80006838:	00279693          	slli	a3,a5,0x2
    8000683c:	00d70733          	add	a4,a4,a3
    80006840:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006844:	0017879b          	addiw	a5,a5,1
    80006848:	0004a703          	lw	a4,0(s1)
    8000684c:	02e7e7bb          	remw	a5,a5,a4
    80006850:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006854:	0284b503          	ld	a0,40(s1)
    80006858:	ffffb097          	auipc	ra,0xffffb
    8000685c:	b08080e7          	jalr	-1272(ra) # 80001360 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006860:	0184b503          	ld	a0,24(s1)
    80006864:	ffffb097          	auipc	ra,0xffffb
    80006868:	afc080e7          	jalr	-1284(ra) # 80001360 <_Z10sem_signalP4_sem>

    return ret;
}
    8000686c:	00090513          	mv	a0,s2
    80006870:	01813083          	ld	ra,24(sp)
    80006874:	01013403          	ld	s0,16(sp)
    80006878:	00813483          	ld	s1,8(sp)
    8000687c:	00013903          	ld	s2,0(sp)
    80006880:	02010113          	addi	sp,sp,32
    80006884:	00008067          	ret

0000000080006888 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006888:	fe010113          	addi	sp,sp,-32
    8000688c:	00113c23          	sd	ra,24(sp)
    80006890:	00813823          	sd	s0,16(sp)
    80006894:	00913423          	sd	s1,8(sp)
    80006898:	01213023          	sd	s2,0(sp)
    8000689c:	02010413          	addi	s0,sp,32
    800068a0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800068a4:	02853503          	ld	a0,40(a0)
    800068a8:	ffffb097          	auipc	ra,0xffffb
    800068ac:	a8c080e7          	jalr	-1396(ra) # 80001334 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800068b0:	0304b503          	ld	a0,48(s1)
    800068b4:	ffffb097          	auipc	ra,0xffffb
    800068b8:	a80080e7          	jalr	-1408(ra) # 80001334 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800068bc:	0144a783          	lw	a5,20(s1)
    800068c0:	0104a903          	lw	s2,16(s1)
    800068c4:	0327ce63          	blt	a5,s2,80006900 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800068c8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800068cc:	0304b503          	ld	a0,48(s1)
    800068d0:	ffffb097          	auipc	ra,0xffffb
    800068d4:	a90080e7          	jalr	-1392(ra) # 80001360 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800068d8:	0284b503          	ld	a0,40(s1)
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	a84080e7          	jalr	-1404(ra) # 80001360 <_Z10sem_signalP4_sem>

    return ret;
}
    800068e4:	00090513          	mv	a0,s2
    800068e8:	01813083          	ld	ra,24(sp)
    800068ec:	01013403          	ld	s0,16(sp)
    800068f0:	00813483          	ld	s1,8(sp)
    800068f4:	00013903          	ld	s2,0(sp)
    800068f8:	02010113          	addi	sp,sp,32
    800068fc:	00008067          	ret
        ret = cap - head + tail;
    80006900:	0004a703          	lw	a4,0(s1)
    80006904:	4127093b          	subw	s2,a4,s2
    80006908:	00f9093b          	addw	s2,s2,a5
    8000690c:	fc1ff06f          	j	800068cc <_ZN6Buffer6getCntEv+0x44>

0000000080006910 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006910:	fe010113          	addi	sp,sp,-32
    80006914:	00113c23          	sd	ra,24(sp)
    80006918:	00813823          	sd	s0,16(sp)
    8000691c:	00913423          	sd	s1,8(sp)
    80006920:	02010413          	addi	s0,sp,32
    80006924:	00050493          	mv	s1,a0
    putc('\n');
    80006928:	00a00513          	li	a0,10
    8000692c:	ffffb097          	auipc	ra,0xffffb
    80006930:	ab4080e7          	jalr	-1356(ra) # 800013e0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006934:	00003517          	auipc	a0,0x3
    80006938:	90450513          	addi	a0,a0,-1788 # 80009238 <CONSOLE_STATUS+0x228>
    8000693c:	fffff097          	auipc	ra,0xfffff
    80006940:	e50080e7          	jalr	-432(ra) # 8000578c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006944:	00048513          	mv	a0,s1
    80006948:	00000097          	auipc	ra,0x0
    8000694c:	f40080e7          	jalr	-192(ra) # 80006888 <_ZN6Buffer6getCntEv>
    80006950:	02a05c63          	blez	a0,80006988 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006954:	0084b783          	ld	a5,8(s1)
    80006958:	0104a703          	lw	a4,16(s1)
    8000695c:	00271713          	slli	a4,a4,0x2
    80006960:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006964:	0007c503          	lbu	a0,0(a5)
    80006968:	ffffb097          	auipc	ra,0xffffb
    8000696c:	a78080e7          	jalr	-1416(ra) # 800013e0 <_Z4putcc>
        head = (head + 1) % cap;
    80006970:	0104a783          	lw	a5,16(s1)
    80006974:	0017879b          	addiw	a5,a5,1
    80006978:	0004a703          	lw	a4,0(s1)
    8000697c:	02e7e7bb          	remw	a5,a5,a4
    80006980:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006984:	fc1ff06f          	j	80006944 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006988:	02100513          	li	a0,33
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	a54080e7          	jalr	-1452(ra) # 800013e0 <_Z4putcc>
    putc('\n');
    80006994:	00a00513          	li	a0,10
    80006998:	ffffb097          	auipc	ra,0xffffb
    8000699c:	a48080e7          	jalr	-1464(ra) # 800013e0 <_Z4putcc>
    mem_free(buffer);
    800069a0:	0084b503          	ld	a0,8(s1)
    800069a4:	ffffa097          	auipc	ra,0xffffa
    800069a8:	7d8080e7          	jalr	2008(ra) # 8000117c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800069ac:	0204b503          	ld	a0,32(s1)
    800069b0:	ffffb097          	auipc	ra,0xffffb
    800069b4:	958080e7          	jalr	-1704(ra) # 80001308 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800069b8:	0184b503          	ld	a0,24(s1)
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	94c080e7          	jalr	-1716(ra) # 80001308 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800069c4:	0304b503          	ld	a0,48(s1)
    800069c8:	ffffb097          	auipc	ra,0xffffb
    800069cc:	940080e7          	jalr	-1728(ra) # 80001308 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800069d0:	0284b503          	ld	a0,40(s1)
    800069d4:	ffffb097          	auipc	ra,0xffffb
    800069d8:	934080e7          	jalr	-1740(ra) # 80001308 <_Z9sem_closeP4_sem>
}
    800069dc:	01813083          	ld	ra,24(sp)
    800069e0:	01013403          	ld	s0,16(sp)
    800069e4:	00813483          	ld	s1,8(sp)
    800069e8:	02010113          	addi	sp,sp,32
    800069ec:	00008067          	ret

00000000800069f0 <start>:
    800069f0:	ff010113          	addi	sp,sp,-16
    800069f4:	00813423          	sd	s0,8(sp)
    800069f8:	01010413          	addi	s0,sp,16
    800069fc:	300027f3          	csrr	a5,mstatus
    80006a00:	ffffe737          	lui	a4,0xffffe
    80006a04:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1abf>
    80006a08:	00e7f7b3          	and	a5,a5,a4
    80006a0c:	00001737          	lui	a4,0x1
    80006a10:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a14:	00e7e7b3          	or	a5,a5,a4
    80006a18:	30079073          	csrw	mstatus,a5
    80006a1c:	00000797          	auipc	a5,0x0
    80006a20:	16078793          	addi	a5,a5,352 # 80006b7c <system_main>
    80006a24:	34179073          	csrw	mepc,a5
    80006a28:	00000793          	li	a5,0
    80006a2c:	18079073          	csrw	satp,a5
    80006a30:	000107b7          	lui	a5,0x10
    80006a34:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006a38:	30279073          	csrw	medeleg,a5
    80006a3c:	30379073          	csrw	mideleg,a5
    80006a40:	104027f3          	csrr	a5,sie
    80006a44:	2227e793          	ori	a5,a5,546
    80006a48:	10479073          	csrw	sie,a5
    80006a4c:	fff00793          	li	a5,-1
    80006a50:	00a7d793          	srli	a5,a5,0xa
    80006a54:	3b079073          	csrw	pmpaddr0,a5
    80006a58:	00f00793          	li	a5,15
    80006a5c:	3a079073          	csrw	pmpcfg0,a5
    80006a60:	f14027f3          	csrr	a5,mhartid
    80006a64:	0200c737          	lui	a4,0x200c
    80006a68:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a6c:	0007869b          	sext.w	a3,a5
    80006a70:	00269713          	slli	a4,a3,0x2
    80006a74:	000f4637          	lui	a2,0xf4
    80006a78:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a7c:	00d70733          	add	a4,a4,a3
    80006a80:	0037979b          	slliw	a5,a5,0x3
    80006a84:	020046b7          	lui	a3,0x2004
    80006a88:	00d787b3          	add	a5,a5,a3
    80006a8c:	00c585b3          	add	a1,a1,a2
    80006a90:	00371693          	slli	a3,a4,0x3
    80006a94:	00005717          	auipc	a4,0x5
    80006a98:	04c70713          	addi	a4,a4,76 # 8000bae0 <timer_scratch>
    80006a9c:	00b7b023          	sd	a1,0(a5)
    80006aa0:	00d70733          	add	a4,a4,a3
    80006aa4:	00f73c23          	sd	a5,24(a4)
    80006aa8:	02c73023          	sd	a2,32(a4)
    80006aac:	34071073          	csrw	mscratch,a4
    80006ab0:	00000797          	auipc	a5,0x0
    80006ab4:	6e078793          	addi	a5,a5,1760 # 80007190 <timervec>
    80006ab8:	30579073          	csrw	mtvec,a5
    80006abc:	300027f3          	csrr	a5,mstatus
    80006ac0:	0087e793          	ori	a5,a5,8
    80006ac4:	30079073          	csrw	mstatus,a5
    80006ac8:	304027f3          	csrr	a5,mie
    80006acc:	0807e793          	ori	a5,a5,128
    80006ad0:	30479073          	csrw	mie,a5
    80006ad4:	f14027f3          	csrr	a5,mhartid
    80006ad8:	0007879b          	sext.w	a5,a5
    80006adc:	00078213          	mv	tp,a5
    80006ae0:	30200073          	mret
    80006ae4:	00813403          	ld	s0,8(sp)
    80006ae8:	01010113          	addi	sp,sp,16
    80006aec:	00008067          	ret

0000000080006af0 <timerinit>:
    80006af0:	ff010113          	addi	sp,sp,-16
    80006af4:	00813423          	sd	s0,8(sp)
    80006af8:	01010413          	addi	s0,sp,16
    80006afc:	f14027f3          	csrr	a5,mhartid
    80006b00:	0200c737          	lui	a4,0x200c
    80006b04:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b08:	0007869b          	sext.w	a3,a5
    80006b0c:	00269713          	slli	a4,a3,0x2
    80006b10:	000f4637          	lui	a2,0xf4
    80006b14:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b18:	00d70733          	add	a4,a4,a3
    80006b1c:	0037979b          	slliw	a5,a5,0x3
    80006b20:	020046b7          	lui	a3,0x2004
    80006b24:	00d787b3          	add	a5,a5,a3
    80006b28:	00c585b3          	add	a1,a1,a2
    80006b2c:	00371693          	slli	a3,a4,0x3
    80006b30:	00005717          	auipc	a4,0x5
    80006b34:	fb070713          	addi	a4,a4,-80 # 8000bae0 <timer_scratch>
    80006b38:	00b7b023          	sd	a1,0(a5)
    80006b3c:	00d70733          	add	a4,a4,a3
    80006b40:	00f73c23          	sd	a5,24(a4)
    80006b44:	02c73023          	sd	a2,32(a4)
    80006b48:	34071073          	csrw	mscratch,a4
    80006b4c:	00000797          	auipc	a5,0x0
    80006b50:	64478793          	addi	a5,a5,1604 # 80007190 <timervec>
    80006b54:	30579073          	csrw	mtvec,a5
    80006b58:	300027f3          	csrr	a5,mstatus
    80006b5c:	0087e793          	ori	a5,a5,8
    80006b60:	30079073          	csrw	mstatus,a5
    80006b64:	304027f3          	csrr	a5,mie
    80006b68:	0807e793          	ori	a5,a5,128
    80006b6c:	30479073          	csrw	mie,a5
    80006b70:	00813403          	ld	s0,8(sp)
    80006b74:	01010113          	addi	sp,sp,16
    80006b78:	00008067          	ret

0000000080006b7c <system_main>:
    80006b7c:	fe010113          	addi	sp,sp,-32
    80006b80:	00813823          	sd	s0,16(sp)
    80006b84:	00913423          	sd	s1,8(sp)
    80006b88:	00113c23          	sd	ra,24(sp)
    80006b8c:	02010413          	addi	s0,sp,32
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	0c4080e7          	jalr	196(ra) # 80006c54 <cpuid>
    80006b98:	00005497          	auipc	s1,0x5
    80006b9c:	e5848493          	addi	s1,s1,-424 # 8000b9f0 <started>
    80006ba0:	02050263          	beqz	a0,80006bc4 <system_main+0x48>
    80006ba4:	0004a783          	lw	a5,0(s1)
    80006ba8:	0007879b          	sext.w	a5,a5
    80006bac:	fe078ce3          	beqz	a5,80006ba4 <system_main+0x28>
    80006bb0:	0ff0000f          	fence
    80006bb4:	00003517          	auipc	a0,0x3
    80006bb8:	95450513          	addi	a0,a0,-1708 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006bbc:	00001097          	auipc	ra,0x1
    80006bc0:	a70080e7          	jalr	-1424(ra) # 8000762c <panic>
    80006bc4:	00001097          	auipc	ra,0x1
    80006bc8:	9c4080e7          	jalr	-1596(ra) # 80007588 <consoleinit>
    80006bcc:	00001097          	auipc	ra,0x1
    80006bd0:	150080e7          	jalr	336(ra) # 80007d1c <printfinit>
    80006bd4:	00002517          	auipc	a0,0x2
    80006bd8:	7bc50513          	addi	a0,a0,1980 # 80009390 <CONSOLE_STATUS+0x380>
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	aac080e7          	jalr	-1364(ra) # 80007688 <__printf>
    80006be4:	00003517          	auipc	a0,0x3
    80006be8:	8f450513          	addi	a0,a0,-1804 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80006bec:	00001097          	auipc	ra,0x1
    80006bf0:	a9c080e7          	jalr	-1380(ra) # 80007688 <__printf>
    80006bf4:	00002517          	auipc	a0,0x2
    80006bf8:	79c50513          	addi	a0,a0,1948 # 80009390 <CONSOLE_STATUS+0x380>
    80006bfc:	00001097          	auipc	ra,0x1
    80006c00:	a8c080e7          	jalr	-1396(ra) # 80007688 <__printf>
    80006c04:	00001097          	auipc	ra,0x1
    80006c08:	4a4080e7          	jalr	1188(ra) # 800080a8 <kinit>
    80006c0c:	00000097          	auipc	ra,0x0
    80006c10:	148080e7          	jalr	328(ra) # 80006d54 <trapinit>
    80006c14:	00000097          	auipc	ra,0x0
    80006c18:	16c080e7          	jalr	364(ra) # 80006d80 <trapinithart>
    80006c1c:	00000097          	auipc	ra,0x0
    80006c20:	5b4080e7          	jalr	1460(ra) # 800071d0 <plicinit>
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	5d4080e7          	jalr	1492(ra) # 800071f8 <plicinithart>
    80006c2c:	00000097          	auipc	ra,0x0
    80006c30:	078080e7          	jalr	120(ra) # 80006ca4 <userinit>
    80006c34:	0ff0000f          	fence
    80006c38:	00100793          	li	a5,1
    80006c3c:	00003517          	auipc	a0,0x3
    80006c40:	8b450513          	addi	a0,a0,-1868 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006c44:	00f4a023          	sw	a5,0(s1)
    80006c48:	00001097          	auipc	ra,0x1
    80006c4c:	a40080e7          	jalr	-1472(ra) # 80007688 <__printf>
    80006c50:	0000006f          	j	80006c50 <system_main+0xd4>

0000000080006c54 <cpuid>:
    80006c54:	ff010113          	addi	sp,sp,-16
    80006c58:	00813423          	sd	s0,8(sp)
    80006c5c:	01010413          	addi	s0,sp,16
    80006c60:	00020513          	mv	a0,tp
    80006c64:	00813403          	ld	s0,8(sp)
    80006c68:	0005051b          	sext.w	a0,a0
    80006c6c:	01010113          	addi	sp,sp,16
    80006c70:	00008067          	ret

0000000080006c74 <mycpu>:
    80006c74:	ff010113          	addi	sp,sp,-16
    80006c78:	00813423          	sd	s0,8(sp)
    80006c7c:	01010413          	addi	s0,sp,16
    80006c80:	00020793          	mv	a5,tp
    80006c84:	00813403          	ld	s0,8(sp)
    80006c88:	0007879b          	sext.w	a5,a5
    80006c8c:	00779793          	slli	a5,a5,0x7
    80006c90:	00006517          	auipc	a0,0x6
    80006c94:	e8050513          	addi	a0,a0,-384 # 8000cb10 <cpus>
    80006c98:	00f50533          	add	a0,a0,a5
    80006c9c:	01010113          	addi	sp,sp,16
    80006ca0:	00008067          	ret

0000000080006ca4 <userinit>:
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00813423          	sd	s0,8(sp)
    80006cac:	01010413          	addi	s0,sp,16
    80006cb0:	00813403          	ld	s0,8(sp)
    80006cb4:	01010113          	addi	sp,sp,16
    80006cb8:	ffffb317          	auipc	t1,0xffffb
    80006cbc:	a2430067          	jr	-1500(t1) # 800016dc <main>

0000000080006cc0 <either_copyout>:
    80006cc0:	ff010113          	addi	sp,sp,-16
    80006cc4:	00813023          	sd	s0,0(sp)
    80006cc8:	00113423          	sd	ra,8(sp)
    80006ccc:	01010413          	addi	s0,sp,16
    80006cd0:	02051663          	bnez	a0,80006cfc <either_copyout+0x3c>
    80006cd4:	00058513          	mv	a0,a1
    80006cd8:	00060593          	mv	a1,a2
    80006cdc:	0006861b          	sext.w	a2,a3
    80006ce0:	00002097          	auipc	ra,0x2
    80006ce4:	c54080e7          	jalr	-940(ra) # 80008934 <__memmove>
    80006ce8:	00813083          	ld	ra,8(sp)
    80006cec:	00013403          	ld	s0,0(sp)
    80006cf0:	00000513          	li	a0,0
    80006cf4:	01010113          	addi	sp,sp,16
    80006cf8:	00008067          	ret
    80006cfc:	00003517          	auipc	a0,0x3
    80006d00:	83450513          	addi	a0,a0,-1996 # 80009530 <CONSOLE_STATUS+0x520>
    80006d04:	00001097          	auipc	ra,0x1
    80006d08:	928080e7          	jalr	-1752(ra) # 8000762c <panic>

0000000080006d0c <either_copyin>:
    80006d0c:	ff010113          	addi	sp,sp,-16
    80006d10:	00813023          	sd	s0,0(sp)
    80006d14:	00113423          	sd	ra,8(sp)
    80006d18:	01010413          	addi	s0,sp,16
    80006d1c:	02059463          	bnez	a1,80006d44 <either_copyin+0x38>
    80006d20:	00060593          	mv	a1,a2
    80006d24:	0006861b          	sext.w	a2,a3
    80006d28:	00002097          	auipc	ra,0x2
    80006d2c:	c0c080e7          	jalr	-1012(ra) # 80008934 <__memmove>
    80006d30:	00813083          	ld	ra,8(sp)
    80006d34:	00013403          	ld	s0,0(sp)
    80006d38:	00000513          	li	a0,0
    80006d3c:	01010113          	addi	sp,sp,16
    80006d40:	00008067          	ret
    80006d44:	00003517          	auipc	a0,0x3
    80006d48:	81450513          	addi	a0,a0,-2028 # 80009558 <CONSOLE_STATUS+0x548>
    80006d4c:	00001097          	auipc	ra,0x1
    80006d50:	8e0080e7          	jalr	-1824(ra) # 8000762c <panic>

0000000080006d54 <trapinit>:
    80006d54:	ff010113          	addi	sp,sp,-16
    80006d58:	00813423          	sd	s0,8(sp)
    80006d5c:	01010413          	addi	s0,sp,16
    80006d60:	00813403          	ld	s0,8(sp)
    80006d64:	00003597          	auipc	a1,0x3
    80006d68:	81c58593          	addi	a1,a1,-2020 # 80009580 <CONSOLE_STATUS+0x570>
    80006d6c:	00006517          	auipc	a0,0x6
    80006d70:	e2450513          	addi	a0,a0,-476 # 8000cb90 <tickslock>
    80006d74:	01010113          	addi	sp,sp,16
    80006d78:	00001317          	auipc	t1,0x1
    80006d7c:	5c030067          	jr	1472(t1) # 80008338 <initlock>

0000000080006d80 <trapinithart>:
    80006d80:	ff010113          	addi	sp,sp,-16
    80006d84:	00813423          	sd	s0,8(sp)
    80006d88:	01010413          	addi	s0,sp,16
    80006d8c:	00000797          	auipc	a5,0x0
    80006d90:	2f478793          	addi	a5,a5,756 # 80007080 <kernelvec>
    80006d94:	10579073          	csrw	stvec,a5
    80006d98:	00813403          	ld	s0,8(sp)
    80006d9c:	01010113          	addi	sp,sp,16
    80006da0:	00008067          	ret

0000000080006da4 <usertrap>:
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00813423          	sd	s0,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	00813403          	ld	s0,8(sp)
    80006db4:	01010113          	addi	sp,sp,16
    80006db8:	00008067          	ret

0000000080006dbc <usertrapret>:
    80006dbc:	ff010113          	addi	sp,sp,-16
    80006dc0:	00813423          	sd	s0,8(sp)
    80006dc4:	01010413          	addi	s0,sp,16
    80006dc8:	00813403          	ld	s0,8(sp)
    80006dcc:	01010113          	addi	sp,sp,16
    80006dd0:	00008067          	ret

0000000080006dd4 <kerneltrap>:
    80006dd4:	fe010113          	addi	sp,sp,-32
    80006dd8:	00813823          	sd	s0,16(sp)
    80006ddc:	00113c23          	sd	ra,24(sp)
    80006de0:	00913423          	sd	s1,8(sp)
    80006de4:	02010413          	addi	s0,sp,32
    80006de8:	142025f3          	csrr	a1,scause
    80006dec:	100027f3          	csrr	a5,sstatus
    80006df0:	0027f793          	andi	a5,a5,2
    80006df4:	10079c63          	bnez	a5,80006f0c <kerneltrap+0x138>
    80006df8:	142027f3          	csrr	a5,scause
    80006dfc:	0207ce63          	bltz	a5,80006e38 <kerneltrap+0x64>
    80006e00:	00002517          	auipc	a0,0x2
    80006e04:	7c850513          	addi	a0,a0,1992 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006e08:	00001097          	auipc	ra,0x1
    80006e0c:	880080e7          	jalr	-1920(ra) # 80007688 <__printf>
    80006e10:	141025f3          	csrr	a1,sepc
    80006e14:	14302673          	csrr	a2,stval
    80006e18:	00002517          	auipc	a0,0x2
    80006e1c:	7c050513          	addi	a0,a0,1984 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006e20:	00001097          	auipc	ra,0x1
    80006e24:	868080e7          	jalr	-1944(ra) # 80007688 <__printf>
    80006e28:	00002517          	auipc	a0,0x2
    80006e2c:	7c850513          	addi	a0,a0,1992 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	7fc080e7          	jalr	2044(ra) # 8000762c <panic>
    80006e38:	0ff7f713          	andi	a4,a5,255
    80006e3c:	00900693          	li	a3,9
    80006e40:	04d70063          	beq	a4,a3,80006e80 <kerneltrap+0xac>
    80006e44:	fff00713          	li	a4,-1
    80006e48:	03f71713          	slli	a4,a4,0x3f
    80006e4c:	00170713          	addi	a4,a4,1
    80006e50:	fae798e3          	bne	a5,a4,80006e00 <kerneltrap+0x2c>
    80006e54:	00000097          	auipc	ra,0x0
    80006e58:	e00080e7          	jalr	-512(ra) # 80006c54 <cpuid>
    80006e5c:	06050663          	beqz	a0,80006ec8 <kerneltrap+0xf4>
    80006e60:	144027f3          	csrr	a5,sip
    80006e64:	ffd7f793          	andi	a5,a5,-3
    80006e68:	14479073          	csrw	sip,a5
    80006e6c:	01813083          	ld	ra,24(sp)
    80006e70:	01013403          	ld	s0,16(sp)
    80006e74:	00813483          	ld	s1,8(sp)
    80006e78:	02010113          	addi	sp,sp,32
    80006e7c:	00008067          	ret
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	3c4080e7          	jalr	964(ra) # 80007244 <plic_claim>
    80006e88:	00a00793          	li	a5,10
    80006e8c:	00050493          	mv	s1,a0
    80006e90:	06f50863          	beq	a0,a5,80006f00 <kerneltrap+0x12c>
    80006e94:	fc050ce3          	beqz	a0,80006e6c <kerneltrap+0x98>
    80006e98:	00050593          	mv	a1,a0
    80006e9c:	00002517          	auipc	a0,0x2
    80006ea0:	70c50513          	addi	a0,a0,1804 # 800095a8 <CONSOLE_STATUS+0x598>
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	7e4080e7          	jalr	2020(ra) # 80007688 <__printf>
    80006eac:	01013403          	ld	s0,16(sp)
    80006eb0:	01813083          	ld	ra,24(sp)
    80006eb4:	00048513          	mv	a0,s1
    80006eb8:	00813483          	ld	s1,8(sp)
    80006ebc:	02010113          	addi	sp,sp,32
    80006ec0:	00000317          	auipc	t1,0x0
    80006ec4:	3bc30067          	jr	956(t1) # 8000727c <plic_complete>
    80006ec8:	00006517          	auipc	a0,0x6
    80006ecc:	cc850513          	addi	a0,a0,-824 # 8000cb90 <tickslock>
    80006ed0:	00001097          	auipc	ra,0x1
    80006ed4:	48c080e7          	jalr	1164(ra) # 8000835c <acquire>
    80006ed8:	00005717          	auipc	a4,0x5
    80006edc:	b1c70713          	addi	a4,a4,-1252 # 8000b9f4 <ticks>
    80006ee0:	00072783          	lw	a5,0(a4)
    80006ee4:	00006517          	auipc	a0,0x6
    80006ee8:	cac50513          	addi	a0,a0,-852 # 8000cb90 <tickslock>
    80006eec:	0017879b          	addiw	a5,a5,1
    80006ef0:	00f72023          	sw	a5,0(a4)
    80006ef4:	00001097          	auipc	ra,0x1
    80006ef8:	534080e7          	jalr	1332(ra) # 80008428 <release>
    80006efc:	f65ff06f          	j	80006e60 <kerneltrap+0x8c>
    80006f00:	00001097          	auipc	ra,0x1
    80006f04:	090080e7          	jalr	144(ra) # 80007f90 <uartintr>
    80006f08:	fa5ff06f          	j	80006eac <kerneltrap+0xd8>
    80006f0c:	00002517          	auipc	a0,0x2
    80006f10:	67c50513          	addi	a0,a0,1660 # 80009588 <CONSOLE_STATUS+0x578>
    80006f14:	00000097          	auipc	ra,0x0
    80006f18:	718080e7          	jalr	1816(ra) # 8000762c <panic>

0000000080006f1c <clockintr>:
    80006f1c:	fe010113          	addi	sp,sp,-32
    80006f20:	00813823          	sd	s0,16(sp)
    80006f24:	00913423          	sd	s1,8(sp)
    80006f28:	00113c23          	sd	ra,24(sp)
    80006f2c:	02010413          	addi	s0,sp,32
    80006f30:	00006497          	auipc	s1,0x6
    80006f34:	c6048493          	addi	s1,s1,-928 # 8000cb90 <tickslock>
    80006f38:	00048513          	mv	a0,s1
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	420080e7          	jalr	1056(ra) # 8000835c <acquire>
    80006f44:	00005717          	auipc	a4,0x5
    80006f48:	ab070713          	addi	a4,a4,-1360 # 8000b9f4 <ticks>
    80006f4c:	00072783          	lw	a5,0(a4)
    80006f50:	01013403          	ld	s0,16(sp)
    80006f54:	01813083          	ld	ra,24(sp)
    80006f58:	00048513          	mv	a0,s1
    80006f5c:	0017879b          	addiw	a5,a5,1
    80006f60:	00813483          	ld	s1,8(sp)
    80006f64:	00f72023          	sw	a5,0(a4)
    80006f68:	02010113          	addi	sp,sp,32
    80006f6c:	00001317          	auipc	t1,0x1
    80006f70:	4bc30067          	jr	1212(t1) # 80008428 <release>

0000000080006f74 <devintr>:
    80006f74:	142027f3          	csrr	a5,scause
    80006f78:	00000513          	li	a0,0
    80006f7c:	0007c463          	bltz	a5,80006f84 <devintr+0x10>
    80006f80:	00008067          	ret
    80006f84:	fe010113          	addi	sp,sp,-32
    80006f88:	00813823          	sd	s0,16(sp)
    80006f8c:	00113c23          	sd	ra,24(sp)
    80006f90:	00913423          	sd	s1,8(sp)
    80006f94:	02010413          	addi	s0,sp,32
    80006f98:	0ff7f713          	andi	a4,a5,255
    80006f9c:	00900693          	li	a3,9
    80006fa0:	04d70c63          	beq	a4,a3,80006ff8 <devintr+0x84>
    80006fa4:	fff00713          	li	a4,-1
    80006fa8:	03f71713          	slli	a4,a4,0x3f
    80006fac:	00170713          	addi	a4,a4,1
    80006fb0:	00e78c63          	beq	a5,a4,80006fc8 <devintr+0x54>
    80006fb4:	01813083          	ld	ra,24(sp)
    80006fb8:	01013403          	ld	s0,16(sp)
    80006fbc:	00813483          	ld	s1,8(sp)
    80006fc0:	02010113          	addi	sp,sp,32
    80006fc4:	00008067          	ret
    80006fc8:	00000097          	auipc	ra,0x0
    80006fcc:	c8c080e7          	jalr	-884(ra) # 80006c54 <cpuid>
    80006fd0:	06050663          	beqz	a0,8000703c <devintr+0xc8>
    80006fd4:	144027f3          	csrr	a5,sip
    80006fd8:	ffd7f793          	andi	a5,a5,-3
    80006fdc:	14479073          	csrw	sip,a5
    80006fe0:	01813083          	ld	ra,24(sp)
    80006fe4:	01013403          	ld	s0,16(sp)
    80006fe8:	00813483          	ld	s1,8(sp)
    80006fec:	00200513          	li	a0,2
    80006ff0:	02010113          	addi	sp,sp,32
    80006ff4:	00008067          	ret
    80006ff8:	00000097          	auipc	ra,0x0
    80006ffc:	24c080e7          	jalr	588(ra) # 80007244 <plic_claim>
    80007000:	00a00793          	li	a5,10
    80007004:	00050493          	mv	s1,a0
    80007008:	06f50663          	beq	a0,a5,80007074 <devintr+0x100>
    8000700c:	00100513          	li	a0,1
    80007010:	fa0482e3          	beqz	s1,80006fb4 <devintr+0x40>
    80007014:	00048593          	mv	a1,s1
    80007018:	00002517          	auipc	a0,0x2
    8000701c:	59050513          	addi	a0,a0,1424 # 800095a8 <CONSOLE_STATUS+0x598>
    80007020:	00000097          	auipc	ra,0x0
    80007024:	668080e7          	jalr	1640(ra) # 80007688 <__printf>
    80007028:	00048513          	mv	a0,s1
    8000702c:	00000097          	auipc	ra,0x0
    80007030:	250080e7          	jalr	592(ra) # 8000727c <plic_complete>
    80007034:	00100513          	li	a0,1
    80007038:	f7dff06f          	j	80006fb4 <devintr+0x40>
    8000703c:	00006517          	auipc	a0,0x6
    80007040:	b5450513          	addi	a0,a0,-1196 # 8000cb90 <tickslock>
    80007044:	00001097          	auipc	ra,0x1
    80007048:	318080e7          	jalr	792(ra) # 8000835c <acquire>
    8000704c:	00005717          	auipc	a4,0x5
    80007050:	9a870713          	addi	a4,a4,-1624 # 8000b9f4 <ticks>
    80007054:	00072783          	lw	a5,0(a4)
    80007058:	00006517          	auipc	a0,0x6
    8000705c:	b3850513          	addi	a0,a0,-1224 # 8000cb90 <tickslock>
    80007060:	0017879b          	addiw	a5,a5,1
    80007064:	00f72023          	sw	a5,0(a4)
    80007068:	00001097          	auipc	ra,0x1
    8000706c:	3c0080e7          	jalr	960(ra) # 80008428 <release>
    80007070:	f65ff06f          	j	80006fd4 <devintr+0x60>
    80007074:	00001097          	auipc	ra,0x1
    80007078:	f1c080e7          	jalr	-228(ra) # 80007f90 <uartintr>
    8000707c:	fadff06f          	j	80007028 <devintr+0xb4>

0000000080007080 <kernelvec>:
    80007080:	f0010113          	addi	sp,sp,-256
    80007084:	00113023          	sd	ra,0(sp)
    80007088:	00213423          	sd	sp,8(sp)
    8000708c:	00313823          	sd	gp,16(sp)
    80007090:	00413c23          	sd	tp,24(sp)
    80007094:	02513023          	sd	t0,32(sp)
    80007098:	02613423          	sd	t1,40(sp)
    8000709c:	02713823          	sd	t2,48(sp)
    800070a0:	02813c23          	sd	s0,56(sp)
    800070a4:	04913023          	sd	s1,64(sp)
    800070a8:	04a13423          	sd	a0,72(sp)
    800070ac:	04b13823          	sd	a1,80(sp)
    800070b0:	04c13c23          	sd	a2,88(sp)
    800070b4:	06d13023          	sd	a3,96(sp)
    800070b8:	06e13423          	sd	a4,104(sp)
    800070bc:	06f13823          	sd	a5,112(sp)
    800070c0:	07013c23          	sd	a6,120(sp)
    800070c4:	09113023          	sd	a7,128(sp)
    800070c8:	09213423          	sd	s2,136(sp)
    800070cc:	09313823          	sd	s3,144(sp)
    800070d0:	09413c23          	sd	s4,152(sp)
    800070d4:	0b513023          	sd	s5,160(sp)
    800070d8:	0b613423          	sd	s6,168(sp)
    800070dc:	0b713823          	sd	s7,176(sp)
    800070e0:	0b813c23          	sd	s8,184(sp)
    800070e4:	0d913023          	sd	s9,192(sp)
    800070e8:	0da13423          	sd	s10,200(sp)
    800070ec:	0db13823          	sd	s11,208(sp)
    800070f0:	0dc13c23          	sd	t3,216(sp)
    800070f4:	0fd13023          	sd	t4,224(sp)
    800070f8:	0fe13423          	sd	t5,232(sp)
    800070fc:	0ff13823          	sd	t6,240(sp)
    80007100:	cd5ff0ef          	jal	ra,80006dd4 <kerneltrap>
    80007104:	00013083          	ld	ra,0(sp)
    80007108:	00813103          	ld	sp,8(sp)
    8000710c:	01013183          	ld	gp,16(sp)
    80007110:	02013283          	ld	t0,32(sp)
    80007114:	02813303          	ld	t1,40(sp)
    80007118:	03013383          	ld	t2,48(sp)
    8000711c:	03813403          	ld	s0,56(sp)
    80007120:	04013483          	ld	s1,64(sp)
    80007124:	04813503          	ld	a0,72(sp)
    80007128:	05013583          	ld	a1,80(sp)
    8000712c:	05813603          	ld	a2,88(sp)
    80007130:	06013683          	ld	a3,96(sp)
    80007134:	06813703          	ld	a4,104(sp)
    80007138:	07013783          	ld	a5,112(sp)
    8000713c:	07813803          	ld	a6,120(sp)
    80007140:	08013883          	ld	a7,128(sp)
    80007144:	08813903          	ld	s2,136(sp)
    80007148:	09013983          	ld	s3,144(sp)
    8000714c:	09813a03          	ld	s4,152(sp)
    80007150:	0a013a83          	ld	s5,160(sp)
    80007154:	0a813b03          	ld	s6,168(sp)
    80007158:	0b013b83          	ld	s7,176(sp)
    8000715c:	0b813c03          	ld	s8,184(sp)
    80007160:	0c013c83          	ld	s9,192(sp)
    80007164:	0c813d03          	ld	s10,200(sp)
    80007168:	0d013d83          	ld	s11,208(sp)
    8000716c:	0d813e03          	ld	t3,216(sp)
    80007170:	0e013e83          	ld	t4,224(sp)
    80007174:	0e813f03          	ld	t5,232(sp)
    80007178:	0f013f83          	ld	t6,240(sp)
    8000717c:	10010113          	addi	sp,sp,256
    80007180:	10200073          	sret
    80007184:	00000013          	nop
    80007188:	00000013          	nop
    8000718c:	00000013          	nop

0000000080007190 <timervec>:
    80007190:	34051573          	csrrw	a0,mscratch,a0
    80007194:	00b53023          	sd	a1,0(a0)
    80007198:	00c53423          	sd	a2,8(a0)
    8000719c:	00d53823          	sd	a3,16(a0)
    800071a0:	01853583          	ld	a1,24(a0)
    800071a4:	02053603          	ld	a2,32(a0)
    800071a8:	0005b683          	ld	a3,0(a1)
    800071ac:	00c686b3          	add	a3,a3,a2
    800071b0:	00d5b023          	sd	a3,0(a1)
    800071b4:	00200593          	li	a1,2
    800071b8:	14459073          	csrw	sip,a1
    800071bc:	01053683          	ld	a3,16(a0)
    800071c0:	00853603          	ld	a2,8(a0)
    800071c4:	00053583          	ld	a1,0(a0)
    800071c8:	34051573          	csrrw	a0,mscratch,a0
    800071cc:	30200073          	mret

00000000800071d0 <plicinit>:
    800071d0:	ff010113          	addi	sp,sp,-16
    800071d4:	00813423          	sd	s0,8(sp)
    800071d8:	01010413          	addi	s0,sp,16
    800071dc:	00813403          	ld	s0,8(sp)
    800071e0:	0c0007b7          	lui	a5,0xc000
    800071e4:	00100713          	li	a4,1
    800071e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800071ec:	00e7a223          	sw	a4,4(a5)
    800071f0:	01010113          	addi	sp,sp,16
    800071f4:	00008067          	ret

00000000800071f8 <plicinithart>:
    800071f8:	ff010113          	addi	sp,sp,-16
    800071fc:	00813023          	sd	s0,0(sp)
    80007200:	00113423          	sd	ra,8(sp)
    80007204:	01010413          	addi	s0,sp,16
    80007208:	00000097          	auipc	ra,0x0
    8000720c:	a4c080e7          	jalr	-1460(ra) # 80006c54 <cpuid>
    80007210:	0085171b          	slliw	a4,a0,0x8
    80007214:	0c0027b7          	lui	a5,0xc002
    80007218:	00e787b3          	add	a5,a5,a4
    8000721c:	40200713          	li	a4,1026
    80007220:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007224:	00813083          	ld	ra,8(sp)
    80007228:	00013403          	ld	s0,0(sp)
    8000722c:	00d5151b          	slliw	a0,a0,0xd
    80007230:	0c2017b7          	lui	a5,0xc201
    80007234:	00a78533          	add	a0,a5,a0
    80007238:	00052023          	sw	zero,0(a0)
    8000723c:	01010113          	addi	sp,sp,16
    80007240:	00008067          	ret

0000000080007244 <plic_claim>:
    80007244:	ff010113          	addi	sp,sp,-16
    80007248:	00813023          	sd	s0,0(sp)
    8000724c:	00113423          	sd	ra,8(sp)
    80007250:	01010413          	addi	s0,sp,16
    80007254:	00000097          	auipc	ra,0x0
    80007258:	a00080e7          	jalr	-1536(ra) # 80006c54 <cpuid>
    8000725c:	00813083          	ld	ra,8(sp)
    80007260:	00013403          	ld	s0,0(sp)
    80007264:	00d5151b          	slliw	a0,a0,0xd
    80007268:	0c2017b7          	lui	a5,0xc201
    8000726c:	00a78533          	add	a0,a5,a0
    80007270:	00452503          	lw	a0,4(a0)
    80007274:	01010113          	addi	sp,sp,16
    80007278:	00008067          	ret

000000008000727c <plic_complete>:
    8000727c:	fe010113          	addi	sp,sp,-32
    80007280:	00813823          	sd	s0,16(sp)
    80007284:	00913423          	sd	s1,8(sp)
    80007288:	00113c23          	sd	ra,24(sp)
    8000728c:	02010413          	addi	s0,sp,32
    80007290:	00050493          	mv	s1,a0
    80007294:	00000097          	auipc	ra,0x0
    80007298:	9c0080e7          	jalr	-1600(ra) # 80006c54 <cpuid>
    8000729c:	01813083          	ld	ra,24(sp)
    800072a0:	01013403          	ld	s0,16(sp)
    800072a4:	00d5179b          	slliw	a5,a0,0xd
    800072a8:	0c201737          	lui	a4,0xc201
    800072ac:	00f707b3          	add	a5,a4,a5
    800072b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800072b4:	00813483          	ld	s1,8(sp)
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00008067          	ret

00000000800072c0 <consolewrite>:
    800072c0:	fb010113          	addi	sp,sp,-80
    800072c4:	04813023          	sd	s0,64(sp)
    800072c8:	04113423          	sd	ra,72(sp)
    800072cc:	02913c23          	sd	s1,56(sp)
    800072d0:	03213823          	sd	s2,48(sp)
    800072d4:	03313423          	sd	s3,40(sp)
    800072d8:	03413023          	sd	s4,32(sp)
    800072dc:	01513c23          	sd	s5,24(sp)
    800072e0:	05010413          	addi	s0,sp,80
    800072e4:	06c05c63          	blez	a2,8000735c <consolewrite+0x9c>
    800072e8:	00060993          	mv	s3,a2
    800072ec:	00050a13          	mv	s4,a0
    800072f0:	00058493          	mv	s1,a1
    800072f4:	00000913          	li	s2,0
    800072f8:	fff00a93          	li	s5,-1
    800072fc:	01c0006f          	j	80007318 <consolewrite+0x58>
    80007300:	fbf44503          	lbu	a0,-65(s0)
    80007304:	0019091b          	addiw	s2,s2,1
    80007308:	00148493          	addi	s1,s1,1
    8000730c:	00001097          	auipc	ra,0x1
    80007310:	a9c080e7          	jalr	-1380(ra) # 80007da8 <uartputc>
    80007314:	03298063          	beq	s3,s2,80007334 <consolewrite+0x74>
    80007318:	00048613          	mv	a2,s1
    8000731c:	00100693          	li	a3,1
    80007320:	000a0593          	mv	a1,s4
    80007324:	fbf40513          	addi	a0,s0,-65
    80007328:	00000097          	auipc	ra,0x0
    8000732c:	9e4080e7          	jalr	-1564(ra) # 80006d0c <either_copyin>
    80007330:	fd5518e3          	bne	a0,s5,80007300 <consolewrite+0x40>
    80007334:	04813083          	ld	ra,72(sp)
    80007338:	04013403          	ld	s0,64(sp)
    8000733c:	03813483          	ld	s1,56(sp)
    80007340:	02813983          	ld	s3,40(sp)
    80007344:	02013a03          	ld	s4,32(sp)
    80007348:	01813a83          	ld	s5,24(sp)
    8000734c:	00090513          	mv	a0,s2
    80007350:	03013903          	ld	s2,48(sp)
    80007354:	05010113          	addi	sp,sp,80
    80007358:	00008067          	ret
    8000735c:	00000913          	li	s2,0
    80007360:	fd5ff06f          	j	80007334 <consolewrite+0x74>

0000000080007364 <consoleread>:
    80007364:	f9010113          	addi	sp,sp,-112
    80007368:	06813023          	sd	s0,96(sp)
    8000736c:	04913c23          	sd	s1,88(sp)
    80007370:	05213823          	sd	s2,80(sp)
    80007374:	05313423          	sd	s3,72(sp)
    80007378:	05413023          	sd	s4,64(sp)
    8000737c:	03513c23          	sd	s5,56(sp)
    80007380:	03613823          	sd	s6,48(sp)
    80007384:	03713423          	sd	s7,40(sp)
    80007388:	03813023          	sd	s8,32(sp)
    8000738c:	06113423          	sd	ra,104(sp)
    80007390:	01913c23          	sd	s9,24(sp)
    80007394:	07010413          	addi	s0,sp,112
    80007398:	00060b93          	mv	s7,a2
    8000739c:	00050913          	mv	s2,a0
    800073a0:	00058c13          	mv	s8,a1
    800073a4:	00060b1b          	sext.w	s6,a2
    800073a8:	00006497          	auipc	s1,0x6
    800073ac:	81048493          	addi	s1,s1,-2032 # 8000cbb8 <cons>
    800073b0:	00400993          	li	s3,4
    800073b4:	fff00a13          	li	s4,-1
    800073b8:	00a00a93          	li	s5,10
    800073bc:	05705e63          	blez	s7,80007418 <consoleread+0xb4>
    800073c0:	09c4a703          	lw	a4,156(s1)
    800073c4:	0984a783          	lw	a5,152(s1)
    800073c8:	0007071b          	sext.w	a4,a4
    800073cc:	08e78463          	beq	a5,a4,80007454 <consoleread+0xf0>
    800073d0:	07f7f713          	andi	a4,a5,127
    800073d4:	00e48733          	add	a4,s1,a4
    800073d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800073dc:	0017869b          	addiw	a3,a5,1
    800073e0:	08d4ac23          	sw	a3,152(s1)
    800073e4:	00070c9b          	sext.w	s9,a4
    800073e8:	0b370663          	beq	a4,s3,80007494 <consoleread+0x130>
    800073ec:	00100693          	li	a3,1
    800073f0:	f9f40613          	addi	a2,s0,-97
    800073f4:	000c0593          	mv	a1,s8
    800073f8:	00090513          	mv	a0,s2
    800073fc:	f8e40fa3          	sb	a4,-97(s0)
    80007400:	00000097          	auipc	ra,0x0
    80007404:	8c0080e7          	jalr	-1856(ra) # 80006cc0 <either_copyout>
    80007408:	01450863          	beq	a0,s4,80007418 <consoleread+0xb4>
    8000740c:	001c0c13          	addi	s8,s8,1
    80007410:	fffb8b9b          	addiw	s7,s7,-1
    80007414:	fb5c94e3          	bne	s9,s5,800073bc <consoleread+0x58>
    80007418:	000b851b          	sext.w	a0,s7
    8000741c:	06813083          	ld	ra,104(sp)
    80007420:	06013403          	ld	s0,96(sp)
    80007424:	05813483          	ld	s1,88(sp)
    80007428:	05013903          	ld	s2,80(sp)
    8000742c:	04813983          	ld	s3,72(sp)
    80007430:	04013a03          	ld	s4,64(sp)
    80007434:	03813a83          	ld	s5,56(sp)
    80007438:	02813b83          	ld	s7,40(sp)
    8000743c:	02013c03          	ld	s8,32(sp)
    80007440:	01813c83          	ld	s9,24(sp)
    80007444:	40ab053b          	subw	a0,s6,a0
    80007448:	03013b03          	ld	s6,48(sp)
    8000744c:	07010113          	addi	sp,sp,112
    80007450:	00008067          	ret
    80007454:	00001097          	auipc	ra,0x1
    80007458:	1d8080e7          	jalr	472(ra) # 8000862c <push_on>
    8000745c:	0984a703          	lw	a4,152(s1)
    80007460:	09c4a783          	lw	a5,156(s1)
    80007464:	0007879b          	sext.w	a5,a5
    80007468:	fef70ce3          	beq	a4,a5,80007460 <consoleread+0xfc>
    8000746c:	00001097          	auipc	ra,0x1
    80007470:	234080e7          	jalr	564(ra) # 800086a0 <pop_on>
    80007474:	0984a783          	lw	a5,152(s1)
    80007478:	07f7f713          	andi	a4,a5,127
    8000747c:	00e48733          	add	a4,s1,a4
    80007480:	01874703          	lbu	a4,24(a4)
    80007484:	0017869b          	addiw	a3,a5,1
    80007488:	08d4ac23          	sw	a3,152(s1)
    8000748c:	00070c9b          	sext.w	s9,a4
    80007490:	f5371ee3          	bne	a4,s3,800073ec <consoleread+0x88>
    80007494:	000b851b          	sext.w	a0,s7
    80007498:	f96bf2e3          	bgeu	s7,s6,8000741c <consoleread+0xb8>
    8000749c:	08f4ac23          	sw	a5,152(s1)
    800074a0:	f7dff06f          	j	8000741c <consoleread+0xb8>

00000000800074a4 <consputc>:
    800074a4:	10000793          	li	a5,256
    800074a8:	00f50663          	beq	a0,a5,800074b4 <consputc+0x10>
    800074ac:	00001317          	auipc	t1,0x1
    800074b0:	9f430067          	jr	-1548(t1) # 80007ea0 <uartputc_sync>
    800074b4:	ff010113          	addi	sp,sp,-16
    800074b8:	00113423          	sd	ra,8(sp)
    800074bc:	00813023          	sd	s0,0(sp)
    800074c0:	01010413          	addi	s0,sp,16
    800074c4:	00800513          	li	a0,8
    800074c8:	00001097          	auipc	ra,0x1
    800074cc:	9d8080e7          	jalr	-1576(ra) # 80007ea0 <uartputc_sync>
    800074d0:	02000513          	li	a0,32
    800074d4:	00001097          	auipc	ra,0x1
    800074d8:	9cc080e7          	jalr	-1588(ra) # 80007ea0 <uartputc_sync>
    800074dc:	00013403          	ld	s0,0(sp)
    800074e0:	00813083          	ld	ra,8(sp)
    800074e4:	00800513          	li	a0,8
    800074e8:	01010113          	addi	sp,sp,16
    800074ec:	00001317          	auipc	t1,0x1
    800074f0:	9b430067          	jr	-1612(t1) # 80007ea0 <uartputc_sync>

00000000800074f4 <consoleintr>:
    800074f4:	fe010113          	addi	sp,sp,-32
    800074f8:	00813823          	sd	s0,16(sp)
    800074fc:	00913423          	sd	s1,8(sp)
    80007500:	01213023          	sd	s2,0(sp)
    80007504:	00113c23          	sd	ra,24(sp)
    80007508:	02010413          	addi	s0,sp,32
    8000750c:	00005917          	auipc	s2,0x5
    80007510:	6ac90913          	addi	s2,s2,1708 # 8000cbb8 <cons>
    80007514:	00050493          	mv	s1,a0
    80007518:	00090513          	mv	a0,s2
    8000751c:	00001097          	auipc	ra,0x1
    80007520:	e40080e7          	jalr	-448(ra) # 8000835c <acquire>
    80007524:	02048c63          	beqz	s1,8000755c <consoleintr+0x68>
    80007528:	0a092783          	lw	a5,160(s2)
    8000752c:	09892703          	lw	a4,152(s2)
    80007530:	07f00693          	li	a3,127
    80007534:	40e7873b          	subw	a4,a5,a4
    80007538:	02e6e263          	bltu	a3,a4,8000755c <consoleintr+0x68>
    8000753c:	00d00713          	li	a4,13
    80007540:	04e48063          	beq	s1,a4,80007580 <consoleintr+0x8c>
    80007544:	07f7f713          	andi	a4,a5,127
    80007548:	00e90733          	add	a4,s2,a4
    8000754c:	0017879b          	addiw	a5,a5,1
    80007550:	0af92023          	sw	a5,160(s2)
    80007554:	00970c23          	sb	s1,24(a4)
    80007558:	08f92e23          	sw	a5,156(s2)
    8000755c:	01013403          	ld	s0,16(sp)
    80007560:	01813083          	ld	ra,24(sp)
    80007564:	00813483          	ld	s1,8(sp)
    80007568:	00013903          	ld	s2,0(sp)
    8000756c:	00005517          	auipc	a0,0x5
    80007570:	64c50513          	addi	a0,a0,1612 # 8000cbb8 <cons>
    80007574:	02010113          	addi	sp,sp,32
    80007578:	00001317          	auipc	t1,0x1
    8000757c:	eb030067          	jr	-336(t1) # 80008428 <release>
    80007580:	00a00493          	li	s1,10
    80007584:	fc1ff06f          	j	80007544 <consoleintr+0x50>

0000000080007588 <consoleinit>:
    80007588:	fe010113          	addi	sp,sp,-32
    8000758c:	00113c23          	sd	ra,24(sp)
    80007590:	00813823          	sd	s0,16(sp)
    80007594:	00913423          	sd	s1,8(sp)
    80007598:	02010413          	addi	s0,sp,32
    8000759c:	00005497          	auipc	s1,0x5
    800075a0:	61c48493          	addi	s1,s1,1564 # 8000cbb8 <cons>
    800075a4:	00048513          	mv	a0,s1
    800075a8:	00002597          	auipc	a1,0x2
    800075ac:	05858593          	addi	a1,a1,88 # 80009600 <CONSOLE_STATUS+0x5f0>
    800075b0:	00001097          	auipc	ra,0x1
    800075b4:	d88080e7          	jalr	-632(ra) # 80008338 <initlock>
    800075b8:	00000097          	auipc	ra,0x0
    800075bc:	7ac080e7          	jalr	1964(ra) # 80007d64 <uartinit>
    800075c0:	01813083          	ld	ra,24(sp)
    800075c4:	01013403          	ld	s0,16(sp)
    800075c8:	00000797          	auipc	a5,0x0
    800075cc:	d9c78793          	addi	a5,a5,-612 # 80007364 <consoleread>
    800075d0:	0af4bc23          	sd	a5,184(s1)
    800075d4:	00000797          	auipc	a5,0x0
    800075d8:	cec78793          	addi	a5,a5,-788 # 800072c0 <consolewrite>
    800075dc:	0cf4b023          	sd	a5,192(s1)
    800075e0:	00813483          	ld	s1,8(sp)
    800075e4:	02010113          	addi	sp,sp,32
    800075e8:	00008067          	ret

00000000800075ec <console_read>:
    800075ec:	ff010113          	addi	sp,sp,-16
    800075f0:	00813423          	sd	s0,8(sp)
    800075f4:	01010413          	addi	s0,sp,16
    800075f8:	00813403          	ld	s0,8(sp)
    800075fc:	00005317          	auipc	t1,0x5
    80007600:	67433303          	ld	t1,1652(t1) # 8000cc70 <devsw+0x10>
    80007604:	01010113          	addi	sp,sp,16
    80007608:	00030067          	jr	t1

000000008000760c <console_write>:
    8000760c:	ff010113          	addi	sp,sp,-16
    80007610:	00813423          	sd	s0,8(sp)
    80007614:	01010413          	addi	s0,sp,16
    80007618:	00813403          	ld	s0,8(sp)
    8000761c:	00005317          	auipc	t1,0x5
    80007620:	65c33303          	ld	t1,1628(t1) # 8000cc78 <devsw+0x18>
    80007624:	01010113          	addi	sp,sp,16
    80007628:	00030067          	jr	t1

000000008000762c <panic>:
    8000762c:	fe010113          	addi	sp,sp,-32
    80007630:	00113c23          	sd	ra,24(sp)
    80007634:	00813823          	sd	s0,16(sp)
    80007638:	00913423          	sd	s1,8(sp)
    8000763c:	02010413          	addi	s0,sp,32
    80007640:	00050493          	mv	s1,a0
    80007644:	00002517          	auipc	a0,0x2
    80007648:	fc450513          	addi	a0,a0,-60 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000764c:	00005797          	auipc	a5,0x5
    80007650:	6c07a623          	sw	zero,1740(a5) # 8000cd18 <pr+0x18>
    80007654:	00000097          	auipc	ra,0x0
    80007658:	034080e7          	jalr	52(ra) # 80007688 <__printf>
    8000765c:	00048513          	mv	a0,s1
    80007660:	00000097          	auipc	ra,0x0
    80007664:	028080e7          	jalr	40(ra) # 80007688 <__printf>
    80007668:	00002517          	auipc	a0,0x2
    8000766c:	d2850513          	addi	a0,a0,-728 # 80009390 <CONSOLE_STATUS+0x380>
    80007670:	00000097          	auipc	ra,0x0
    80007674:	018080e7          	jalr	24(ra) # 80007688 <__printf>
    80007678:	00100793          	li	a5,1
    8000767c:	00004717          	auipc	a4,0x4
    80007680:	36f72e23          	sw	a5,892(a4) # 8000b9f8 <panicked>
    80007684:	0000006f          	j	80007684 <panic+0x58>

0000000080007688 <__printf>:
    80007688:	f3010113          	addi	sp,sp,-208
    8000768c:	08813023          	sd	s0,128(sp)
    80007690:	07313423          	sd	s3,104(sp)
    80007694:	09010413          	addi	s0,sp,144
    80007698:	05813023          	sd	s8,64(sp)
    8000769c:	08113423          	sd	ra,136(sp)
    800076a0:	06913c23          	sd	s1,120(sp)
    800076a4:	07213823          	sd	s2,112(sp)
    800076a8:	07413023          	sd	s4,96(sp)
    800076ac:	05513c23          	sd	s5,88(sp)
    800076b0:	05613823          	sd	s6,80(sp)
    800076b4:	05713423          	sd	s7,72(sp)
    800076b8:	03913c23          	sd	s9,56(sp)
    800076bc:	03a13823          	sd	s10,48(sp)
    800076c0:	03b13423          	sd	s11,40(sp)
    800076c4:	00005317          	auipc	t1,0x5
    800076c8:	63c30313          	addi	t1,t1,1596 # 8000cd00 <pr>
    800076cc:	01832c03          	lw	s8,24(t1)
    800076d0:	00b43423          	sd	a1,8(s0)
    800076d4:	00c43823          	sd	a2,16(s0)
    800076d8:	00d43c23          	sd	a3,24(s0)
    800076dc:	02e43023          	sd	a4,32(s0)
    800076e0:	02f43423          	sd	a5,40(s0)
    800076e4:	03043823          	sd	a6,48(s0)
    800076e8:	03143c23          	sd	a7,56(s0)
    800076ec:	00050993          	mv	s3,a0
    800076f0:	4a0c1663          	bnez	s8,80007b9c <__printf+0x514>
    800076f4:	60098c63          	beqz	s3,80007d0c <__printf+0x684>
    800076f8:	0009c503          	lbu	a0,0(s3)
    800076fc:	00840793          	addi	a5,s0,8
    80007700:	f6f43c23          	sd	a5,-136(s0)
    80007704:	00000493          	li	s1,0
    80007708:	22050063          	beqz	a0,80007928 <__printf+0x2a0>
    8000770c:	00002a37          	lui	s4,0x2
    80007710:	00018ab7          	lui	s5,0x18
    80007714:	000f4b37          	lui	s6,0xf4
    80007718:	00989bb7          	lui	s7,0x989
    8000771c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007720:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007724:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007728:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000772c:	00148c9b          	addiw	s9,s1,1
    80007730:	02500793          	li	a5,37
    80007734:	01998933          	add	s2,s3,s9
    80007738:	38f51263          	bne	a0,a5,80007abc <__printf+0x434>
    8000773c:	00094783          	lbu	a5,0(s2)
    80007740:	00078c9b          	sext.w	s9,a5
    80007744:	1e078263          	beqz	a5,80007928 <__printf+0x2a0>
    80007748:	0024849b          	addiw	s1,s1,2
    8000774c:	07000713          	li	a4,112
    80007750:	00998933          	add	s2,s3,s1
    80007754:	38e78a63          	beq	a5,a4,80007ae8 <__printf+0x460>
    80007758:	20f76863          	bltu	a4,a5,80007968 <__printf+0x2e0>
    8000775c:	42a78863          	beq	a5,a0,80007b8c <__printf+0x504>
    80007760:	06400713          	li	a4,100
    80007764:	40e79663          	bne	a5,a4,80007b70 <__printf+0x4e8>
    80007768:	f7843783          	ld	a5,-136(s0)
    8000776c:	0007a603          	lw	a2,0(a5)
    80007770:	00878793          	addi	a5,a5,8
    80007774:	f6f43c23          	sd	a5,-136(s0)
    80007778:	42064a63          	bltz	a2,80007bac <__printf+0x524>
    8000777c:	00a00713          	li	a4,10
    80007780:	02e677bb          	remuw	a5,a2,a4
    80007784:	00002d97          	auipc	s11,0x2
    80007788:	eacd8d93          	addi	s11,s11,-340 # 80009630 <digits>
    8000778c:	00900593          	li	a1,9
    80007790:	0006051b          	sext.w	a0,a2
    80007794:	00000c93          	li	s9,0
    80007798:	02079793          	slli	a5,a5,0x20
    8000779c:	0207d793          	srli	a5,a5,0x20
    800077a0:	00fd87b3          	add	a5,s11,a5
    800077a4:	0007c783          	lbu	a5,0(a5)
    800077a8:	02e656bb          	divuw	a3,a2,a4
    800077ac:	f8f40023          	sb	a5,-128(s0)
    800077b0:	14c5d863          	bge	a1,a2,80007900 <__printf+0x278>
    800077b4:	06300593          	li	a1,99
    800077b8:	00100c93          	li	s9,1
    800077bc:	02e6f7bb          	remuw	a5,a3,a4
    800077c0:	02079793          	slli	a5,a5,0x20
    800077c4:	0207d793          	srli	a5,a5,0x20
    800077c8:	00fd87b3          	add	a5,s11,a5
    800077cc:	0007c783          	lbu	a5,0(a5)
    800077d0:	02e6d73b          	divuw	a4,a3,a4
    800077d4:	f8f400a3          	sb	a5,-127(s0)
    800077d8:	12a5f463          	bgeu	a1,a0,80007900 <__printf+0x278>
    800077dc:	00a00693          	li	a3,10
    800077e0:	00900593          	li	a1,9
    800077e4:	02d777bb          	remuw	a5,a4,a3
    800077e8:	02079793          	slli	a5,a5,0x20
    800077ec:	0207d793          	srli	a5,a5,0x20
    800077f0:	00fd87b3          	add	a5,s11,a5
    800077f4:	0007c503          	lbu	a0,0(a5)
    800077f8:	02d757bb          	divuw	a5,a4,a3
    800077fc:	f8a40123          	sb	a0,-126(s0)
    80007800:	48e5f263          	bgeu	a1,a4,80007c84 <__printf+0x5fc>
    80007804:	06300513          	li	a0,99
    80007808:	02d7f5bb          	remuw	a1,a5,a3
    8000780c:	02059593          	slli	a1,a1,0x20
    80007810:	0205d593          	srli	a1,a1,0x20
    80007814:	00bd85b3          	add	a1,s11,a1
    80007818:	0005c583          	lbu	a1,0(a1)
    8000781c:	02d7d7bb          	divuw	a5,a5,a3
    80007820:	f8b401a3          	sb	a1,-125(s0)
    80007824:	48e57263          	bgeu	a0,a4,80007ca8 <__printf+0x620>
    80007828:	3e700513          	li	a0,999
    8000782c:	02d7f5bb          	remuw	a1,a5,a3
    80007830:	02059593          	slli	a1,a1,0x20
    80007834:	0205d593          	srli	a1,a1,0x20
    80007838:	00bd85b3          	add	a1,s11,a1
    8000783c:	0005c583          	lbu	a1,0(a1)
    80007840:	02d7d7bb          	divuw	a5,a5,a3
    80007844:	f8b40223          	sb	a1,-124(s0)
    80007848:	46e57663          	bgeu	a0,a4,80007cb4 <__printf+0x62c>
    8000784c:	02d7f5bb          	remuw	a1,a5,a3
    80007850:	02059593          	slli	a1,a1,0x20
    80007854:	0205d593          	srli	a1,a1,0x20
    80007858:	00bd85b3          	add	a1,s11,a1
    8000785c:	0005c583          	lbu	a1,0(a1)
    80007860:	02d7d7bb          	divuw	a5,a5,a3
    80007864:	f8b402a3          	sb	a1,-123(s0)
    80007868:	46ea7863          	bgeu	s4,a4,80007cd8 <__printf+0x650>
    8000786c:	02d7f5bb          	remuw	a1,a5,a3
    80007870:	02059593          	slli	a1,a1,0x20
    80007874:	0205d593          	srli	a1,a1,0x20
    80007878:	00bd85b3          	add	a1,s11,a1
    8000787c:	0005c583          	lbu	a1,0(a1)
    80007880:	02d7d7bb          	divuw	a5,a5,a3
    80007884:	f8b40323          	sb	a1,-122(s0)
    80007888:	3eeaf863          	bgeu	s5,a4,80007c78 <__printf+0x5f0>
    8000788c:	02d7f5bb          	remuw	a1,a5,a3
    80007890:	02059593          	slli	a1,a1,0x20
    80007894:	0205d593          	srli	a1,a1,0x20
    80007898:	00bd85b3          	add	a1,s11,a1
    8000789c:	0005c583          	lbu	a1,0(a1)
    800078a0:	02d7d7bb          	divuw	a5,a5,a3
    800078a4:	f8b403a3          	sb	a1,-121(s0)
    800078a8:	42eb7e63          	bgeu	s6,a4,80007ce4 <__printf+0x65c>
    800078ac:	02d7f5bb          	remuw	a1,a5,a3
    800078b0:	02059593          	slli	a1,a1,0x20
    800078b4:	0205d593          	srli	a1,a1,0x20
    800078b8:	00bd85b3          	add	a1,s11,a1
    800078bc:	0005c583          	lbu	a1,0(a1)
    800078c0:	02d7d7bb          	divuw	a5,a5,a3
    800078c4:	f8b40423          	sb	a1,-120(s0)
    800078c8:	42ebfc63          	bgeu	s7,a4,80007d00 <__printf+0x678>
    800078cc:	02079793          	slli	a5,a5,0x20
    800078d0:	0207d793          	srli	a5,a5,0x20
    800078d4:	00fd8db3          	add	s11,s11,a5
    800078d8:	000dc703          	lbu	a4,0(s11)
    800078dc:	00a00793          	li	a5,10
    800078e0:	00900c93          	li	s9,9
    800078e4:	f8e404a3          	sb	a4,-119(s0)
    800078e8:	00065c63          	bgez	a2,80007900 <__printf+0x278>
    800078ec:	f9040713          	addi	a4,s0,-112
    800078f0:	00f70733          	add	a4,a4,a5
    800078f4:	02d00693          	li	a3,45
    800078f8:	fed70823          	sb	a3,-16(a4)
    800078fc:	00078c93          	mv	s9,a5
    80007900:	f8040793          	addi	a5,s0,-128
    80007904:	01978cb3          	add	s9,a5,s9
    80007908:	f7f40d13          	addi	s10,s0,-129
    8000790c:	000cc503          	lbu	a0,0(s9)
    80007910:	fffc8c93          	addi	s9,s9,-1
    80007914:	00000097          	auipc	ra,0x0
    80007918:	b90080e7          	jalr	-1136(ra) # 800074a4 <consputc>
    8000791c:	ffac98e3          	bne	s9,s10,8000790c <__printf+0x284>
    80007920:	00094503          	lbu	a0,0(s2)
    80007924:	e00514e3          	bnez	a0,8000772c <__printf+0xa4>
    80007928:	1a0c1663          	bnez	s8,80007ad4 <__printf+0x44c>
    8000792c:	08813083          	ld	ra,136(sp)
    80007930:	08013403          	ld	s0,128(sp)
    80007934:	07813483          	ld	s1,120(sp)
    80007938:	07013903          	ld	s2,112(sp)
    8000793c:	06813983          	ld	s3,104(sp)
    80007940:	06013a03          	ld	s4,96(sp)
    80007944:	05813a83          	ld	s5,88(sp)
    80007948:	05013b03          	ld	s6,80(sp)
    8000794c:	04813b83          	ld	s7,72(sp)
    80007950:	04013c03          	ld	s8,64(sp)
    80007954:	03813c83          	ld	s9,56(sp)
    80007958:	03013d03          	ld	s10,48(sp)
    8000795c:	02813d83          	ld	s11,40(sp)
    80007960:	0d010113          	addi	sp,sp,208
    80007964:	00008067          	ret
    80007968:	07300713          	li	a4,115
    8000796c:	1ce78a63          	beq	a5,a4,80007b40 <__printf+0x4b8>
    80007970:	07800713          	li	a4,120
    80007974:	1ee79e63          	bne	a5,a4,80007b70 <__printf+0x4e8>
    80007978:	f7843783          	ld	a5,-136(s0)
    8000797c:	0007a703          	lw	a4,0(a5)
    80007980:	00878793          	addi	a5,a5,8
    80007984:	f6f43c23          	sd	a5,-136(s0)
    80007988:	28074263          	bltz	a4,80007c0c <__printf+0x584>
    8000798c:	00002d97          	auipc	s11,0x2
    80007990:	ca4d8d93          	addi	s11,s11,-860 # 80009630 <digits>
    80007994:	00f77793          	andi	a5,a4,15
    80007998:	00fd87b3          	add	a5,s11,a5
    8000799c:	0007c683          	lbu	a3,0(a5)
    800079a0:	00f00613          	li	a2,15
    800079a4:	0007079b          	sext.w	a5,a4
    800079a8:	f8d40023          	sb	a3,-128(s0)
    800079ac:	0047559b          	srliw	a1,a4,0x4
    800079b0:	0047569b          	srliw	a3,a4,0x4
    800079b4:	00000c93          	li	s9,0
    800079b8:	0ee65063          	bge	a2,a4,80007a98 <__printf+0x410>
    800079bc:	00f6f693          	andi	a3,a3,15
    800079c0:	00dd86b3          	add	a3,s11,a3
    800079c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800079c8:	0087d79b          	srliw	a5,a5,0x8
    800079cc:	00100c93          	li	s9,1
    800079d0:	f8d400a3          	sb	a3,-127(s0)
    800079d4:	0cb67263          	bgeu	a2,a1,80007a98 <__printf+0x410>
    800079d8:	00f7f693          	andi	a3,a5,15
    800079dc:	00dd86b3          	add	a3,s11,a3
    800079e0:	0006c583          	lbu	a1,0(a3)
    800079e4:	00f00613          	li	a2,15
    800079e8:	0047d69b          	srliw	a3,a5,0x4
    800079ec:	f8b40123          	sb	a1,-126(s0)
    800079f0:	0047d593          	srli	a1,a5,0x4
    800079f4:	28f67e63          	bgeu	a2,a5,80007c90 <__printf+0x608>
    800079f8:	00f6f693          	andi	a3,a3,15
    800079fc:	00dd86b3          	add	a3,s11,a3
    80007a00:	0006c503          	lbu	a0,0(a3)
    80007a04:	0087d813          	srli	a6,a5,0x8
    80007a08:	0087d69b          	srliw	a3,a5,0x8
    80007a0c:	f8a401a3          	sb	a0,-125(s0)
    80007a10:	28b67663          	bgeu	a2,a1,80007c9c <__printf+0x614>
    80007a14:	00f6f693          	andi	a3,a3,15
    80007a18:	00dd86b3          	add	a3,s11,a3
    80007a1c:	0006c583          	lbu	a1,0(a3)
    80007a20:	00c7d513          	srli	a0,a5,0xc
    80007a24:	00c7d69b          	srliw	a3,a5,0xc
    80007a28:	f8b40223          	sb	a1,-124(s0)
    80007a2c:	29067a63          	bgeu	a2,a6,80007cc0 <__printf+0x638>
    80007a30:	00f6f693          	andi	a3,a3,15
    80007a34:	00dd86b3          	add	a3,s11,a3
    80007a38:	0006c583          	lbu	a1,0(a3)
    80007a3c:	0107d813          	srli	a6,a5,0x10
    80007a40:	0107d69b          	srliw	a3,a5,0x10
    80007a44:	f8b402a3          	sb	a1,-123(s0)
    80007a48:	28a67263          	bgeu	a2,a0,80007ccc <__printf+0x644>
    80007a4c:	00f6f693          	andi	a3,a3,15
    80007a50:	00dd86b3          	add	a3,s11,a3
    80007a54:	0006c683          	lbu	a3,0(a3)
    80007a58:	0147d79b          	srliw	a5,a5,0x14
    80007a5c:	f8d40323          	sb	a3,-122(s0)
    80007a60:	21067663          	bgeu	a2,a6,80007c6c <__printf+0x5e4>
    80007a64:	02079793          	slli	a5,a5,0x20
    80007a68:	0207d793          	srli	a5,a5,0x20
    80007a6c:	00fd8db3          	add	s11,s11,a5
    80007a70:	000dc683          	lbu	a3,0(s11)
    80007a74:	00800793          	li	a5,8
    80007a78:	00700c93          	li	s9,7
    80007a7c:	f8d403a3          	sb	a3,-121(s0)
    80007a80:	00075c63          	bgez	a4,80007a98 <__printf+0x410>
    80007a84:	f9040713          	addi	a4,s0,-112
    80007a88:	00f70733          	add	a4,a4,a5
    80007a8c:	02d00693          	li	a3,45
    80007a90:	fed70823          	sb	a3,-16(a4)
    80007a94:	00078c93          	mv	s9,a5
    80007a98:	f8040793          	addi	a5,s0,-128
    80007a9c:	01978cb3          	add	s9,a5,s9
    80007aa0:	f7f40d13          	addi	s10,s0,-129
    80007aa4:	000cc503          	lbu	a0,0(s9)
    80007aa8:	fffc8c93          	addi	s9,s9,-1
    80007aac:	00000097          	auipc	ra,0x0
    80007ab0:	9f8080e7          	jalr	-1544(ra) # 800074a4 <consputc>
    80007ab4:	ff9d18e3          	bne	s10,s9,80007aa4 <__printf+0x41c>
    80007ab8:	0100006f          	j	80007ac8 <__printf+0x440>
    80007abc:	00000097          	auipc	ra,0x0
    80007ac0:	9e8080e7          	jalr	-1560(ra) # 800074a4 <consputc>
    80007ac4:	000c8493          	mv	s1,s9
    80007ac8:	00094503          	lbu	a0,0(s2)
    80007acc:	c60510e3          	bnez	a0,8000772c <__printf+0xa4>
    80007ad0:	e40c0ee3          	beqz	s8,8000792c <__printf+0x2a4>
    80007ad4:	00005517          	auipc	a0,0x5
    80007ad8:	22c50513          	addi	a0,a0,556 # 8000cd00 <pr>
    80007adc:	00001097          	auipc	ra,0x1
    80007ae0:	94c080e7          	jalr	-1716(ra) # 80008428 <release>
    80007ae4:	e49ff06f          	j	8000792c <__printf+0x2a4>
    80007ae8:	f7843783          	ld	a5,-136(s0)
    80007aec:	03000513          	li	a0,48
    80007af0:	01000d13          	li	s10,16
    80007af4:	00878713          	addi	a4,a5,8
    80007af8:	0007bc83          	ld	s9,0(a5)
    80007afc:	f6e43c23          	sd	a4,-136(s0)
    80007b00:	00000097          	auipc	ra,0x0
    80007b04:	9a4080e7          	jalr	-1628(ra) # 800074a4 <consputc>
    80007b08:	07800513          	li	a0,120
    80007b0c:	00000097          	auipc	ra,0x0
    80007b10:	998080e7          	jalr	-1640(ra) # 800074a4 <consputc>
    80007b14:	00002d97          	auipc	s11,0x2
    80007b18:	b1cd8d93          	addi	s11,s11,-1252 # 80009630 <digits>
    80007b1c:	03ccd793          	srli	a5,s9,0x3c
    80007b20:	00fd87b3          	add	a5,s11,a5
    80007b24:	0007c503          	lbu	a0,0(a5)
    80007b28:	fffd0d1b          	addiw	s10,s10,-1
    80007b2c:	004c9c93          	slli	s9,s9,0x4
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	974080e7          	jalr	-1676(ra) # 800074a4 <consputc>
    80007b38:	fe0d12e3          	bnez	s10,80007b1c <__printf+0x494>
    80007b3c:	f8dff06f          	j	80007ac8 <__printf+0x440>
    80007b40:	f7843783          	ld	a5,-136(s0)
    80007b44:	0007bc83          	ld	s9,0(a5)
    80007b48:	00878793          	addi	a5,a5,8
    80007b4c:	f6f43c23          	sd	a5,-136(s0)
    80007b50:	000c9a63          	bnez	s9,80007b64 <__printf+0x4dc>
    80007b54:	1080006f          	j	80007c5c <__printf+0x5d4>
    80007b58:	001c8c93          	addi	s9,s9,1
    80007b5c:	00000097          	auipc	ra,0x0
    80007b60:	948080e7          	jalr	-1720(ra) # 800074a4 <consputc>
    80007b64:	000cc503          	lbu	a0,0(s9)
    80007b68:	fe0518e3          	bnez	a0,80007b58 <__printf+0x4d0>
    80007b6c:	f5dff06f          	j	80007ac8 <__printf+0x440>
    80007b70:	02500513          	li	a0,37
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	930080e7          	jalr	-1744(ra) # 800074a4 <consputc>
    80007b7c:	000c8513          	mv	a0,s9
    80007b80:	00000097          	auipc	ra,0x0
    80007b84:	924080e7          	jalr	-1756(ra) # 800074a4 <consputc>
    80007b88:	f41ff06f          	j	80007ac8 <__printf+0x440>
    80007b8c:	02500513          	li	a0,37
    80007b90:	00000097          	auipc	ra,0x0
    80007b94:	914080e7          	jalr	-1772(ra) # 800074a4 <consputc>
    80007b98:	f31ff06f          	j	80007ac8 <__printf+0x440>
    80007b9c:	00030513          	mv	a0,t1
    80007ba0:	00000097          	auipc	ra,0x0
    80007ba4:	7bc080e7          	jalr	1980(ra) # 8000835c <acquire>
    80007ba8:	b4dff06f          	j	800076f4 <__printf+0x6c>
    80007bac:	40c0053b          	negw	a0,a2
    80007bb0:	00a00713          	li	a4,10
    80007bb4:	02e576bb          	remuw	a3,a0,a4
    80007bb8:	00002d97          	auipc	s11,0x2
    80007bbc:	a78d8d93          	addi	s11,s11,-1416 # 80009630 <digits>
    80007bc0:	ff700593          	li	a1,-9
    80007bc4:	02069693          	slli	a3,a3,0x20
    80007bc8:	0206d693          	srli	a3,a3,0x20
    80007bcc:	00dd86b3          	add	a3,s11,a3
    80007bd0:	0006c683          	lbu	a3,0(a3)
    80007bd4:	02e557bb          	divuw	a5,a0,a4
    80007bd8:	f8d40023          	sb	a3,-128(s0)
    80007bdc:	10b65e63          	bge	a2,a1,80007cf8 <__printf+0x670>
    80007be0:	06300593          	li	a1,99
    80007be4:	02e7f6bb          	remuw	a3,a5,a4
    80007be8:	02069693          	slli	a3,a3,0x20
    80007bec:	0206d693          	srli	a3,a3,0x20
    80007bf0:	00dd86b3          	add	a3,s11,a3
    80007bf4:	0006c683          	lbu	a3,0(a3)
    80007bf8:	02e7d73b          	divuw	a4,a5,a4
    80007bfc:	00200793          	li	a5,2
    80007c00:	f8d400a3          	sb	a3,-127(s0)
    80007c04:	bca5ece3          	bltu	a1,a0,800077dc <__printf+0x154>
    80007c08:	ce5ff06f          	j	800078ec <__printf+0x264>
    80007c0c:	40e007bb          	negw	a5,a4
    80007c10:	00002d97          	auipc	s11,0x2
    80007c14:	a20d8d93          	addi	s11,s11,-1504 # 80009630 <digits>
    80007c18:	00f7f693          	andi	a3,a5,15
    80007c1c:	00dd86b3          	add	a3,s11,a3
    80007c20:	0006c583          	lbu	a1,0(a3)
    80007c24:	ff100613          	li	a2,-15
    80007c28:	0047d69b          	srliw	a3,a5,0x4
    80007c2c:	f8b40023          	sb	a1,-128(s0)
    80007c30:	0047d59b          	srliw	a1,a5,0x4
    80007c34:	0ac75e63          	bge	a4,a2,80007cf0 <__printf+0x668>
    80007c38:	00f6f693          	andi	a3,a3,15
    80007c3c:	00dd86b3          	add	a3,s11,a3
    80007c40:	0006c603          	lbu	a2,0(a3)
    80007c44:	00f00693          	li	a3,15
    80007c48:	0087d79b          	srliw	a5,a5,0x8
    80007c4c:	f8c400a3          	sb	a2,-127(s0)
    80007c50:	d8b6e4e3          	bltu	a3,a1,800079d8 <__printf+0x350>
    80007c54:	00200793          	li	a5,2
    80007c58:	e2dff06f          	j	80007a84 <__printf+0x3fc>
    80007c5c:	00002c97          	auipc	s9,0x2
    80007c60:	9b4c8c93          	addi	s9,s9,-1612 # 80009610 <CONSOLE_STATUS+0x600>
    80007c64:	02800513          	li	a0,40
    80007c68:	ef1ff06f          	j	80007b58 <__printf+0x4d0>
    80007c6c:	00700793          	li	a5,7
    80007c70:	00600c93          	li	s9,6
    80007c74:	e0dff06f          	j	80007a80 <__printf+0x3f8>
    80007c78:	00700793          	li	a5,7
    80007c7c:	00600c93          	li	s9,6
    80007c80:	c69ff06f          	j	800078e8 <__printf+0x260>
    80007c84:	00300793          	li	a5,3
    80007c88:	00200c93          	li	s9,2
    80007c8c:	c5dff06f          	j	800078e8 <__printf+0x260>
    80007c90:	00300793          	li	a5,3
    80007c94:	00200c93          	li	s9,2
    80007c98:	de9ff06f          	j	80007a80 <__printf+0x3f8>
    80007c9c:	00400793          	li	a5,4
    80007ca0:	00300c93          	li	s9,3
    80007ca4:	dddff06f          	j	80007a80 <__printf+0x3f8>
    80007ca8:	00400793          	li	a5,4
    80007cac:	00300c93          	li	s9,3
    80007cb0:	c39ff06f          	j	800078e8 <__printf+0x260>
    80007cb4:	00500793          	li	a5,5
    80007cb8:	00400c93          	li	s9,4
    80007cbc:	c2dff06f          	j	800078e8 <__printf+0x260>
    80007cc0:	00500793          	li	a5,5
    80007cc4:	00400c93          	li	s9,4
    80007cc8:	db9ff06f          	j	80007a80 <__printf+0x3f8>
    80007ccc:	00600793          	li	a5,6
    80007cd0:	00500c93          	li	s9,5
    80007cd4:	dadff06f          	j	80007a80 <__printf+0x3f8>
    80007cd8:	00600793          	li	a5,6
    80007cdc:	00500c93          	li	s9,5
    80007ce0:	c09ff06f          	j	800078e8 <__printf+0x260>
    80007ce4:	00800793          	li	a5,8
    80007ce8:	00700c93          	li	s9,7
    80007cec:	bfdff06f          	j	800078e8 <__printf+0x260>
    80007cf0:	00100793          	li	a5,1
    80007cf4:	d91ff06f          	j	80007a84 <__printf+0x3fc>
    80007cf8:	00100793          	li	a5,1
    80007cfc:	bf1ff06f          	j	800078ec <__printf+0x264>
    80007d00:	00900793          	li	a5,9
    80007d04:	00800c93          	li	s9,8
    80007d08:	be1ff06f          	j	800078e8 <__printf+0x260>
    80007d0c:	00002517          	auipc	a0,0x2
    80007d10:	90c50513          	addi	a0,a0,-1780 # 80009618 <CONSOLE_STATUS+0x608>
    80007d14:	00000097          	auipc	ra,0x0
    80007d18:	918080e7          	jalr	-1768(ra) # 8000762c <panic>

0000000080007d1c <printfinit>:
    80007d1c:	fe010113          	addi	sp,sp,-32
    80007d20:	00813823          	sd	s0,16(sp)
    80007d24:	00913423          	sd	s1,8(sp)
    80007d28:	00113c23          	sd	ra,24(sp)
    80007d2c:	02010413          	addi	s0,sp,32
    80007d30:	00005497          	auipc	s1,0x5
    80007d34:	fd048493          	addi	s1,s1,-48 # 8000cd00 <pr>
    80007d38:	00048513          	mv	a0,s1
    80007d3c:	00002597          	auipc	a1,0x2
    80007d40:	8ec58593          	addi	a1,a1,-1812 # 80009628 <CONSOLE_STATUS+0x618>
    80007d44:	00000097          	auipc	ra,0x0
    80007d48:	5f4080e7          	jalr	1524(ra) # 80008338 <initlock>
    80007d4c:	01813083          	ld	ra,24(sp)
    80007d50:	01013403          	ld	s0,16(sp)
    80007d54:	0004ac23          	sw	zero,24(s1)
    80007d58:	00813483          	ld	s1,8(sp)
    80007d5c:	02010113          	addi	sp,sp,32
    80007d60:	00008067          	ret

0000000080007d64 <uartinit>:
    80007d64:	ff010113          	addi	sp,sp,-16
    80007d68:	00813423          	sd	s0,8(sp)
    80007d6c:	01010413          	addi	s0,sp,16
    80007d70:	100007b7          	lui	a5,0x10000
    80007d74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007d78:	f8000713          	li	a4,-128
    80007d7c:	00e781a3          	sb	a4,3(a5)
    80007d80:	00300713          	li	a4,3
    80007d84:	00e78023          	sb	a4,0(a5)
    80007d88:	000780a3          	sb	zero,1(a5)
    80007d8c:	00e781a3          	sb	a4,3(a5)
    80007d90:	00700693          	li	a3,7
    80007d94:	00d78123          	sb	a3,2(a5)
    80007d98:	00e780a3          	sb	a4,1(a5)
    80007d9c:	00813403          	ld	s0,8(sp)
    80007da0:	01010113          	addi	sp,sp,16
    80007da4:	00008067          	ret

0000000080007da8 <uartputc>:
    80007da8:	00004797          	auipc	a5,0x4
    80007dac:	c507a783          	lw	a5,-944(a5) # 8000b9f8 <panicked>
    80007db0:	00078463          	beqz	a5,80007db8 <uartputc+0x10>
    80007db4:	0000006f          	j	80007db4 <uartputc+0xc>
    80007db8:	fd010113          	addi	sp,sp,-48
    80007dbc:	02813023          	sd	s0,32(sp)
    80007dc0:	00913c23          	sd	s1,24(sp)
    80007dc4:	01213823          	sd	s2,16(sp)
    80007dc8:	01313423          	sd	s3,8(sp)
    80007dcc:	02113423          	sd	ra,40(sp)
    80007dd0:	03010413          	addi	s0,sp,48
    80007dd4:	00004917          	auipc	s2,0x4
    80007dd8:	c2c90913          	addi	s2,s2,-980 # 8000ba00 <uart_tx_r>
    80007ddc:	00093783          	ld	a5,0(s2)
    80007de0:	00004497          	auipc	s1,0x4
    80007de4:	c2848493          	addi	s1,s1,-984 # 8000ba08 <uart_tx_w>
    80007de8:	0004b703          	ld	a4,0(s1)
    80007dec:	02078693          	addi	a3,a5,32
    80007df0:	00050993          	mv	s3,a0
    80007df4:	02e69c63          	bne	a3,a4,80007e2c <uartputc+0x84>
    80007df8:	00001097          	auipc	ra,0x1
    80007dfc:	834080e7          	jalr	-1996(ra) # 8000862c <push_on>
    80007e00:	00093783          	ld	a5,0(s2)
    80007e04:	0004b703          	ld	a4,0(s1)
    80007e08:	02078793          	addi	a5,a5,32
    80007e0c:	00e79463          	bne	a5,a4,80007e14 <uartputc+0x6c>
    80007e10:	0000006f          	j	80007e10 <uartputc+0x68>
    80007e14:	00001097          	auipc	ra,0x1
    80007e18:	88c080e7          	jalr	-1908(ra) # 800086a0 <pop_on>
    80007e1c:	00093783          	ld	a5,0(s2)
    80007e20:	0004b703          	ld	a4,0(s1)
    80007e24:	02078693          	addi	a3,a5,32
    80007e28:	fce688e3          	beq	a3,a4,80007df8 <uartputc+0x50>
    80007e2c:	01f77693          	andi	a3,a4,31
    80007e30:	00005597          	auipc	a1,0x5
    80007e34:	ef058593          	addi	a1,a1,-272 # 8000cd20 <uart_tx_buf>
    80007e38:	00d586b3          	add	a3,a1,a3
    80007e3c:	00170713          	addi	a4,a4,1
    80007e40:	01368023          	sb	s3,0(a3)
    80007e44:	00e4b023          	sd	a4,0(s1)
    80007e48:	10000637          	lui	a2,0x10000
    80007e4c:	02f71063          	bne	a4,a5,80007e6c <uartputc+0xc4>
    80007e50:	0340006f          	j	80007e84 <uartputc+0xdc>
    80007e54:	00074703          	lbu	a4,0(a4)
    80007e58:	00f93023          	sd	a5,0(s2)
    80007e5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007e60:	00093783          	ld	a5,0(s2)
    80007e64:	0004b703          	ld	a4,0(s1)
    80007e68:	00f70e63          	beq	a4,a5,80007e84 <uartputc+0xdc>
    80007e6c:	00564683          	lbu	a3,5(a2)
    80007e70:	01f7f713          	andi	a4,a5,31
    80007e74:	00e58733          	add	a4,a1,a4
    80007e78:	0206f693          	andi	a3,a3,32
    80007e7c:	00178793          	addi	a5,a5,1
    80007e80:	fc069ae3          	bnez	a3,80007e54 <uartputc+0xac>
    80007e84:	02813083          	ld	ra,40(sp)
    80007e88:	02013403          	ld	s0,32(sp)
    80007e8c:	01813483          	ld	s1,24(sp)
    80007e90:	01013903          	ld	s2,16(sp)
    80007e94:	00813983          	ld	s3,8(sp)
    80007e98:	03010113          	addi	sp,sp,48
    80007e9c:	00008067          	ret

0000000080007ea0 <uartputc_sync>:
    80007ea0:	ff010113          	addi	sp,sp,-16
    80007ea4:	00813423          	sd	s0,8(sp)
    80007ea8:	01010413          	addi	s0,sp,16
    80007eac:	00004717          	auipc	a4,0x4
    80007eb0:	b4c72703          	lw	a4,-1204(a4) # 8000b9f8 <panicked>
    80007eb4:	02071663          	bnez	a4,80007ee0 <uartputc_sync+0x40>
    80007eb8:	00050793          	mv	a5,a0
    80007ebc:	100006b7          	lui	a3,0x10000
    80007ec0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ec4:	02077713          	andi	a4,a4,32
    80007ec8:	fe070ce3          	beqz	a4,80007ec0 <uartputc_sync+0x20>
    80007ecc:	0ff7f793          	andi	a5,a5,255
    80007ed0:	00f68023          	sb	a5,0(a3)
    80007ed4:	00813403          	ld	s0,8(sp)
    80007ed8:	01010113          	addi	sp,sp,16
    80007edc:	00008067          	ret
    80007ee0:	0000006f          	j	80007ee0 <uartputc_sync+0x40>

0000000080007ee4 <uartstart>:
    80007ee4:	ff010113          	addi	sp,sp,-16
    80007ee8:	00813423          	sd	s0,8(sp)
    80007eec:	01010413          	addi	s0,sp,16
    80007ef0:	00004617          	auipc	a2,0x4
    80007ef4:	b1060613          	addi	a2,a2,-1264 # 8000ba00 <uart_tx_r>
    80007ef8:	00004517          	auipc	a0,0x4
    80007efc:	b1050513          	addi	a0,a0,-1264 # 8000ba08 <uart_tx_w>
    80007f00:	00063783          	ld	a5,0(a2)
    80007f04:	00053703          	ld	a4,0(a0)
    80007f08:	04f70263          	beq	a4,a5,80007f4c <uartstart+0x68>
    80007f0c:	100005b7          	lui	a1,0x10000
    80007f10:	00005817          	auipc	a6,0x5
    80007f14:	e1080813          	addi	a6,a6,-496 # 8000cd20 <uart_tx_buf>
    80007f18:	01c0006f          	j	80007f34 <uartstart+0x50>
    80007f1c:	0006c703          	lbu	a4,0(a3)
    80007f20:	00f63023          	sd	a5,0(a2)
    80007f24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f28:	00063783          	ld	a5,0(a2)
    80007f2c:	00053703          	ld	a4,0(a0)
    80007f30:	00f70e63          	beq	a4,a5,80007f4c <uartstart+0x68>
    80007f34:	01f7f713          	andi	a4,a5,31
    80007f38:	00e806b3          	add	a3,a6,a4
    80007f3c:	0055c703          	lbu	a4,5(a1)
    80007f40:	00178793          	addi	a5,a5,1
    80007f44:	02077713          	andi	a4,a4,32
    80007f48:	fc071ae3          	bnez	a4,80007f1c <uartstart+0x38>
    80007f4c:	00813403          	ld	s0,8(sp)
    80007f50:	01010113          	addi	sp,sp,16
    80007f54:	00008067          	ret

0000000080007f58 <uartgetc>:
    80007f58:	ff010113          	addi	sp,sp,-16
    80007f5c:	00813423          	sd	s0,8(sp)
    80007f60:	01010413          	addi	s0,sp,16
    80007f64:	10000737          	lui	a4,0x10000
    80007f68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007f6c:	0017f793          	andi	a5,a5,1
    80007f70:	00078c63          	beqz	a5,80007f88 <uartgetc+0x30>
    80007f74:	00074503          	lbu	a0,0(a4)
    80007f78:	0ff57513          	andi	a0,a0,255
    80007f7c:	00813403          	ld	s0,8(sp)
    80007f80:	01010113          	addi	sp,sp,16
    80007f84:	00008067          	ret
    80007f88:	fff00513          	li	a0,-1
    80007f8c:	ff1ff06f          	j	80007f7c <uartgetc+0x24>

0000000080007f90 <uartintr>:
    80007f90:	100007b7          	lui	a5,0x10000
    80007f94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007f98:	0017f793          	andi	a5,a5,1
    80007f9c:	0a078463          	beqz	a5,80008044 <uartintr+0xb4>
    80007fa0:	fe010113          	addi	sp,sp,-32
    80007fa4:	00813823          	sd	s0,16(sp)
    80007fa8:	00913423          	sd	s1,8(sp)
    80007fac:	00113c23          	sd	ra,24(sp)
    80007fb0:	02010413          	addi	s0,sp,32
    80007fb4:	100004b7          	lui	s1,0x10000
    80007fb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007fbc:	0ff57513          	andi	a0,a0,255
    80007fc0:	fffff097          	auipc	ra,0xfffff
    80007fc4:	534080e7          	jalr	1332(ra) # 800074f4 <consoleintr>
    80007fc8:	0054c783          	lbu	a5,5(s1)
    80007fcc:	0017f793          	andi	a5,a5,1
    80007fd0:	fe0794e3          	bnez	a5,80007fb8 <uartintr+0x28>
    80007fd4:	00004617          	auipc	a2,0x4
    80007fd8:	a2c60613          	addi	a2,a2,-1492 # 8000ba00 <uart_tx_r>
    80007fdc:	00004517          	auipc	a0,0x4
    80007fe0:	a2c50513          	addi	a0,a0,-1492 # 8000ba08 <uart_tx_w>
    80007fe4:	00063783          	ld	a5,0(a2)
    80007fe8:	00053703          	ld	a4,0(a0)
    80007fec:	04f70263          	beq	a4,a5,80008030 <uartintr+0xa0>
    80007ff0:	100005b7          	lui	a1,0x10000
    80007ff4:	00005817          	auipc	a6,0x5
    80007ff8:	d2c80813          	addi	a6,a6,-724 # 8000cd20 <uart_tx_buf>
    80007ffc:	01c0006f          	j	80008018 <uartintr+0x88>
    80008000:	0006c703          	lbu	a4,0(a3)
    80008004:	00f63023          	sd	a5,0(a2)
    80008008:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000800c:	00063783          	ld	a5,0(a2)
    80008010:	00053703          	ld	a4,0(a0)
    80008014:	00f70e63          	beq	a4,a5,80008030 <uartintr+0xa0>
    80008018:	01f7f713          	andi	a4,a5,31
    8000801c:	00e806b3          	add	a3,a6,a4
    80008020:	0055c703          	lbu	a4,5(a1)
    80008024:	00178793          	addi	a5,a5,1
    80008028:	02077713          	andi	a4,a4,32
    8000802c:	fc071ae3          	bnez	a4,80008000 <uartintr+0x70>
    80008030:	01813083          	ld	ra,24(sp)
    80008034:	01013403          	ld	s0,16(sp)
    80008038:	00813483          	ld	s1,8(sp)
    8000803c:	02010113          	addi	sp,sp,32
    80008040:	00008067          	ret
    80008044:	00004617          	auipc	a2,0x4
    80008048:	9bc60613          	addi	a2,a2,-1604 # 8000ba00 <uart_tx_r>
    8000804c:	00004517          	auipc	a0,0x4
    80008050:	9bc50513          	addi	a0,a0,-1604 # 8000ba08 <uart_tx_w>
    80008054:	00063783          	ld	a5,0(a2)
    80008058:	00053703          	ld	a4,0(a0)
    8000805c:	04f70263          	beq	a4,a5,800080a0 <uartintr+0x110>
    80008060:	100005b7          	lui	a1,0x10000
    80008064:	00005817          	auipc	a6,0x5
    80008068:	cbc80813          	addi	a6,a6,-836 # 8000cd20 <uart_tx_buf>
    8000806c:	01c0006f          	j	80008088 <uartintr+0xf8>
    80008070:	0006c703          	lbu	a4,0(a3)
    80008074:	00f63023          	sd	a5,0(a2)
    80008078:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000807c:	00063783          	ld	a5,0(a2)
    80008080:	00053703          	ld	a4,0(a0)
    80008084:	02f70063          	beq	a4,a5,800080a4 <uartintr+0x114>
    80008088:	01f7f713          	andi	a4,a5,31
    8000808c:	00e806b3          	add	a3,a6,a4
    80008090:	0055c703          	lbu	a4,5(a1)
    80008094:	00178793          	addi	a5,a5,1
    80008098:	02077713          	andi	a4,a4,32
    8000809c:	fc071ae3          	bnez	a4,80008070 <uartintr+0xe0>
    800080a0:	00008067          	ret
    800080a4:	00008067          	ret

00000000800080a8 <kinit>:
    800080a8:	fc010113          	addi	sp,sp,-64
    800080ac:	02913423          	sd	s1,40(sp)
    800080b0:	fffff7b7          	lui	a5,0xfffff
    800080b4:	00006497          	auipc	s1,0x6
    800080b8:	c8b48493          	addi	s1,s1,-885 # 8000dd3f <end+0xfff>
    800080bc:	02813823          	sd	s0,48(sp)
    800080c0:	01313c23          	sd	s3,24(sp)
    800080c4:	00f4f4b3          	and	s1,s1,a5
    800080c8:	02113c23          	sd	ra,56(sp)
    800080cc:	03213023          	sd	s2,32(sp)
    800080d0:	01413823          	sd	s4,16(sp)
    800080d4:	01513423          	sd	s5,8(sp)
    800080d8:	04010413          	addi	s0,sp,64
    800080dc:	000017b7          	lui	a5,0x1
    800080e0:	01100993          	li	s3,17
    800080e4:	00f487b3          	add	a5,s1,a5
    800080e8:	01b99993          	slli	s3,s3,0x1b
    800080ec:	06f9e063          	bltu	s3,a5,8000814c <kinit+0xa4>
    800080f0:	00005a97          	auipc	s5,0x5
    800080f4:	c50a8a93          	addi	s5,s5,-944 # 8000cd40 <end>
    800080f8:	0754ec63          	bltu	s1,s5,80008170 <kinit+0xc8>
    800080fc:	0734fa63          	bgeu	s1,s3,80008170 <kinit+0xc8>
    80008100:	00088a37          	lui	s4,0x88
    80008104:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008108:	00004917          	auipc	s2,0x4
    8000810c:	90890913          	addi	s2,s2,-1784 # 8000ba10 <kmem>
    80008110:	00ca1a13          	slli	s4,s4,0xc
    80008114:	0140006f          	j	80008128 <kinit+0x80>
    80008118:	000017b7          	lui	a5,0x1
    8000811c:	00f484b3          	add	s1,s1,a5
    80008120:	0554e863          	bltu	s1,s5,80008170 <kinit+0xc8>
    80008124:	0534f663          	bgeu	s1,s3,80008170 <kinit+0xc8>
    80008128:	00001637          	lui	a2,0x1
    8000812c:	00100593          	li	a1,1
    80008130:	00048513          	mv	a0,s1
    80008134:	00000097          	auipc	ra,0x0
    80008138:	5e4080e7          	jalr	1508(ra) # 80008718 <__memset>
    8000813c:	00093783          	ld	a5,0(s2)
    80008140:	00f4b023          	sd	a5,0(s1)
    80008144:	00993023          	sd	s1,0(s2)
    80008148:	fd4498e3          	bne	s1,s4,80008118 <kinit+0x70>
    8000814c:	03813083          	ld	ra,56(sp)
    80008150:	03013403          	ld	s0,48(sp)
    80008154:	02813483          	ld	s1,40(sp)
    80008158:	02013903          	ld	s2,32(sp)
    8000815c:	01813983          	ld	s3,24(sp)
    80008160:	01013a03          	ld	s4,16(sp)
    80008164:	00813a83          	ld	s5,8(sp)
    80008168:	04010113          	addi	sp,sp,64
    8000816c:	00008067          	ret
    80008170:	00001517          	auipc	a0,0x1
    80008174:	4d850513          	addi	a0,a0,1240 # 80009648 <digits+0x18>
    80008178:	fffff097          	auipc	ra,0xfffff
    8000817c:	4b4080e7          	jalr	1204(ra) # 8000762c <panic>

0000000080008180 <freerange>:
    80008180:	fc010113          	addi	sp,sp,-64
    80008184:	000017b7          	lui	a5,0x1
    80008188:	02913423          	sd	s1,40(sp)
    8000818c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008190:	009504b3          	add	s1,a0,s1
    80008194:	fffff537          	lui	a0,0xfffff
    80008198:	02813823          	sd	s0,48(sp)
    8000819c:	02113c23          	sd	ra,56(sp)
    800081a0:	03213023          	sd	s2,32(sp)
    800081a4:	01313c23          	sd	s3,24(sp)
    800081a8:	01413823          	sd	s4,16(sp)
    800081ac:	01513423          	sd	s5,8(sp)
    800081b0:	01613023          	sd	s6,0(sp)
    800081b4:	04010413          	addi	s0,sp,64
    800081b8:	00a4f4b3          	and	s1,s1,a0
    800081bc:	00f487b3          	add	a5,s1,a5
    800081c0:	06f5e463          	bltu	a1,a5,80008228 <freerange+0xa8>
    800081c4:	00005a97          	auipc	s5,0x5
    800081c8:	b7ca8a93          	addi	s5,s5,-1156 # 8000cd40 <end>
    800081cc:	0954e263          	bltu	s1,s5,80008250 <freerange+0xd0>
    800081d0:	01100993          	li	s3,17
    800081d4:	01b99993          	slli	s3,s3,0x1b
    800081d8:	0734fc63          	bgeu	s1,s3,80008250 <freerange+0xd0>
    800081dc:	00058a13          	mv	s4,a1
    800081e0:	00004917          	auipc	s2,0x4
    800081e4:	83090913          	addi	s2,s2,-2000 # 8000ba10 <kmem>
    800081e8:	00002b37          	lui	s6,0x2
    800081ec:	0140006f          	j	80008200 <freerange+0x80>
    800081f0:	000017b7          	lui	a5,0x1
    800081f4:	00f484b3          	add	s1,s1,a5
    800081f8:	0554ec63          	bltu	s1,s5,80008250 <freerange+0xd0>
    800081fc:	0534fa63          	bgeu	s1,s3,80008250 <freerange+0xd0>
    80008200:	00001637          	lui	a2,0x1
    80008204:	00100593          	li	a1,1
    80008208:	00048513          	mv	a0,s1
    8000820c:	00000097          	auipc	ra,0x0
    80008210:	50c080e7          	jalr	1292(ra) # 80008718 <__memset>
    80008214:	00093703          	ld	a4,0(s2)
    80008218:	016487b3          	add	a5,s1,s6
    8000821c:	00e4b023          	sd	a4,0(s1)
    80008220:	00993023          	sd	s1,0(s2)
    80008224:	fcfa76e3          	bgeu	s4,a5,800081f0 <freerange+0x70>
    80008228:	03813083          	ld	ra,56(sp)
    8000822c:	03013403          	ld	s0,48(sp)
    80008230:	02813483          	ld	s1,40(sp)
    80008234:	02013903          	ld	s2,32(sp)
    80008238:	01813983          	ld	s3,24(sp)
    8000823c:	01013a03          	ld	s4,16(sp)
    80008240:	00813a83          	ld	s5,8(sp)
    80008244:	00013b03          	ld	s6,0(sp)
    80008248:	04010113          	addi	sp,sp,64
    8000824c:	00008067          	ret
    80008250:	00001517          	auipc	a0,0x1
    80008254:	3f850513          	addi	a0,a0,1016 # 80009648 <digits+0x18>
    80008258:	fffff097          	auipc	ra,0xfffff
    8000825c:	3d4080e7          	jalr	980(ra) # 8000762c <panic>

0000000080008260 <kfree>:
    80008260:	fe010113          	addi	sp,sp,-32
    80008264:	00813823          	sd	s0,16(sp)
    80008268:	00113c23          	sd	ra,24(sp)
    8000826c:	00913423          	sd	s1,8(sp)
    80008270:	02010413          	addi	s0,sp,32
    80008274:	03451793          	slli	a5,a0,0x34
    80008278:	04079c63          	bnez	a5,800082d0 <kfree+0x70>
    8000827c:	00005797          	auipc	a5,0x5
    80008280:	ac478793          	addi	a5,a5,-1340 # 8000cd40 <end>
    80008284:	00050493          	mv	s1,a0
    80008288:	04f56463          	bltu	a0,a5,800082d0 <kfree+0x70>
    8000828c:	01100793          	li	a5,17
    80008290:	01b79793          	slli	a5,a5,0x1b
    80008294:	02f57e63          	bgeu	a0,a5,800082d0 <kfree+0x70>
    80008298:	00001637          	lui	a2,0x1
    8000829c:	00100593          	li	a1,1
    800082a0:	00000097          	auipc	ra,0x0
    800082a4:	478080e7          	jalr	1144(ra) # 80008718 <__memset>
    800082a8:	00003797          	auipc	a5,0x3
    800082ac:	76878793          	addi	a5,a5,1896 # 8000ba10 <kmem>
    800082b0:	0007b703          	ld	a4,0(a5)
    800082b4:	01813083          	ld	ra,24(sp)
    800082b8:	01013403          	ld	s0,16(sp)
    800082bc:	00e4b023          	sd	a4,0(s1)
    800082c0:	0097b023          	sd	s1,0(a5)
    800082c4:	00813483          	ld	s1,8(sp)
    800082c8:	02010113          	addi	sp,sp,32
    800082cc:	00008067          	ret
    800082d0:	00001517          	auipc	a0,0x1
    800082d4:	37850513          	addi	a0,a0,888 # 80009648 <digits+0x18>
    800082d8:	fffff097          	auipc	ra,0xfffff
    800082dc:	354080e7          	jalr	852(ra) # 8000762c <panic>

00000000800082e0 <kalloc>:
    800082e0:	fe010113          	addi	sp,sp,-32
    800082e4:	00813823          	sd	s0,16(sp)
    800082e8:	00913423          	sd	s1,8(sp)
    800082ec:	00113c23          	sd	ra,24(sp)
    800082f0:	02010413          	addi	s0,sp,32
    800082f4:	00003797          	auipc	a5,0x3
    800082f8:	71c78793          	addi	a5,a5,1820 # 8000ba10 <kmem>
    800082fc:	0007b483          	ld	s1,0(a5)
    80008300:	02048063          	beqz	s1,80008320 <kalloc+0x40>
    80008304:	0004b703          	ld	a4,0(s1)
    80008308:	00001637          	lui	a2,0x1
    8000830c:	00500593          	li	a1,5
    80008310:	00048513          	mv	a0,s1
    80008314:	00e7b023          	sd	a4,0(a5)
    80008318:	00000097          	auipc	ra,0x0
    8000831c:	400080e7          	jalr	1024(ra) # 80008718 <__memset>
    80008320:	01813083          	ld	ra,24(sp)
    80008324:	01013403          	ld	s0,16(sp)
    80008328:	00048513          	mv	a0,s1
    8000832c:	00813483          	ld	s1,8(sp)
    80008330:	02010113          	addi	sp,sp,32
    80008334:	00008067          	ret

0000000080008338 <initlock>:
    80008338:	ff010113          	addi	sp,sp,-16
    8000833c:	00813423          	sd	s0,8(sp)
    80008340:	01010413          	addi	s0,sp,16
    80008344:	00813403          	ld	s0,8(sp)
    80008348:	00b53423          	sd	a1,8(a0)
    8000834c:	00052023          	sw	zero,0(a0)
    80008350:	00053823          	sd	zero,16(a0)
    80008354:	01010113          	addi	sp,sp,16
    80008358:	00008067          	ret

000000008000835c <acquire>:
    8000835c:	fe010113          	addi	sp,sp,-32
    80008360:	00813823          	sd	s0,16(sp)
    80008364:	00913423          	sd	s1,8(sp)
    80008368:	00113c23          	sd	ra,24(sp)
    8000836c:	01213023          	sd	s2,0(sp)
    80008370:	02010413          	addi	s0,sp,32
    80008374:	00050493          	mv	s1,a0
    80008378:	10002973          	csrr	s2,sstatus
    8000837c:	100027f3          	csrr	a5,sstatus
    80008380:	ffd7f793          	andi	a5,a5,-3
    80008384:	10079073          	csrw	sstatus,a5
    80008388:	fffff097          	auipc	ra,0xfffff
    8000838c:	8ec080e7          	jalr	-1812(ra) # 80006c74 <mycpu>
    80008390:	07852783          	lw	a5,120(a0)
    80008394:	06078e63          	beqz	a5,80008410 <acquire+0xb4>
    80008398:	fffff097          	auipc	ra,0xfffff
    8000839c:	8dc080e7          	jalr	-1828(ra) # 80006c74 <mycpu>
    800083a0:	07852783          	lw	a5,120(a0)
    800083a4:	0004a703          	lw	a4,0(s1)
    800083a8:	0017879b          	addiw	a5,a5,1
    800083ac:	06f52c23          	sw	a5,120(a0)
    800083b0:	04071063          	bnez	a4,800083f0 <acquire+0x94>
    800083b4:	00100713          	li	a4,1
    800083b8:	00070793          	mv	a5,a4
    800083bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800083c0:	0007879b          	sext.w	a5,a5
    800083c4:	fe079ae3          	bnez	a5,800083b8 <acquire+0x5c>
    800083c8:	0ff0000f          	fence
    800083cc:	fffff097          	auipc	ra,0xfffff
    800083d0:	8a8080e7          	jalr	-1880(ra) # 80006c74 <mycpu>
    800083d4:	01813083          	ld	ra,24(sp)
    800083d8:	01013403          	ld	s0,16(sp)
    800083dc:	00a4b823          	sd	a0,16(s1)
    800083e0:	00013903          	ld	s2,0(sp)
    800083e4:	00813483          	ld	s1,8(sp)
    800083e8:	02010113          	addi	sp,sp,32
    800083ec:	00008067          	ret
    800083f0:	0104b903          	ld	s2,16(s1)
    800083f4:	fffff097          	auipc	ra,0xfffff
    800083f8:	880080e7          	jalr	-1920(ra) # 80006c74 <mycpu>
    800083fc:	faa91ce3          	bne	s2,a0,800083b4 <acquire+0x58>
    80008400:	00001517          	auipc	a0,0x1
    80008404:	25050513          	addi	a0,a0,592 # 80009650 <digits+0x20>
    80008408:	fffff097          	auipc	ra,0xfffff
    8000840c:	224080e7          	jalr	548(ra) # 8000762c <panic>
    80008410:	00195913          	srli	s2,s2,0x1
    80008414:	fffff097          	auipc	ra,0xfffff
    80008418:	860080e7          	jalr	-1952(ra) # 80006c74 <mycpu>
    8000841c:	00197913          	andi	s2,s2,1
    80008420:	07252e23          	sw	s2,124(a0)
    80008424:	f75ff06f          	j	80008398 <acquire+0x3c>

0000000080008428 <release>:
    80008428:	fe010113          	addi	sp,sp,-32
    8000842c:	00813823          	sd	s0,16(sp)
    80008430:	00113c23          	sd	ra,24(sp)
    80008434:	00913423          	sd	s1,8(sp)
    80008438:	01213023          	sd	s2,0(sp)
    8000843c:	02010413          	addi	s0,sp,32
    80008440:	00052783          	lw	a5,0(a0)
    80008444:	00079a63          	bnez	a5,80008458 <release+0x30>
    80008448:	00001517          	auipc	a0,0x1
    8000844c:	21050513          	addi	a0,a0,528 # 80009658 <digits+0x28>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	1dc080e7          	jalr	476(ra) # 8000762c <panic>
    80008458:	01053903          	ld	s2,16(a0)
    8000845c:	00050493          	mv	s1,a0
    80008460:	fffff097          	auipc	ra,0xfffff
    80008464:	814080e7          	jalr	-2028(ra) # 80006c74 <mycpu>
    80008468:	fea910e3          	bne	s2,a0,80008448 <release+0x20>
    8000846c:	0004b823          	sd	zero,16(s1)
    80008470:	0ff0000f          	fence
    80008474:	0f50000f          	fence	iorw,ow
    80008478:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000847c:	ffffe097          	auipc	ra,0xffffe
    80008480:	7f8080e7          	jalr	2040(ra) # 80006c74 <mycpu>
    80008484:	100027f3          	csrr	a5,sstatus
    80008488:	0027f793          	andi	a5,a5,2
    8000848c:	04079a63          	bnez	a5,800084e0 <release+0xb8>
    80008490:	07852783          	lw	a5,120(a0)
    80008494:	02f05e63          	blez	a5,800084d0 <release+0xa8>
    80008498:	fff7871b          	addiw	a4,a5,-1
    8000849c:	06e52c23          	sw	a4,120(a0)
    800084a0:	00071c63          	bnez	a4,800084b8 <release+0x90>
    800084a4:	07c52783          	lw	a5,124(a0)
    800084a8:	00078863          	beqz	a5,800084b8 <release+0x90>
    800084ac:	100027f3          	csrr	a5,sstatus
    800084b0:	0027e793          	ori	a5,a5,2
    800084b4:	10079073          	csrw	sstatus,a5
    800084b8:	01813083          	ld	ra,24(sp)
    800084bc:	01013403          	ld	s0,16(sp)
    800084c0:	00813483          	ld	s1,8(sp)
    800084c4:	00013903          	ld	s2,0(sp)
    800084c8:	02010113          	addi	sp,sp,32
    800084cc:	00008067          	ret
    800084d0:	00001517          	auipc	a0,0x1
    800084d4:	1a850513          	addi	a0,a0,424 # 80009678 <digits+0x48>
    800084d8:	fffff097          	auipc	ra,0xfffff
    800084dc:	154080e7          	jalr	340(ra) # 8000762c <panic>
    800084e0:	00001517          	auipc	a0,0x1
    800084e4:	18050513          	addi	a0,a0,384 # 80009660 <digits+0x30>
    800084e8:	fffff097          	auipc	ra,0xfffff
    800084ec:	144080e7          	jalr	324(ra) # 8000762c <panic>

00000000800084f0 <holding>:
    800084f0:	00052783          	lw	a5,0(a0)
    800084f4:	00079663          	bnez	a5,80008500 <holding+0x10>
    800084f8:	00000513          	li	a0,0
    800084fc:	00008067          	ret
    80008500:	fe010113          	addi	sp,sp,-32
    80008504:	00813823          	sd	s0,16(sp)
    80008508:	00913423          	sd	s1,8(sp)
    8000850c:	00113c23          	sd	ra,24(sp)
    80008510:	02010413          	addi	s0,sp,32
    80008514:	01053483          	ld	s1,16(a0)
    80008518:	ffffe097          	auipc	ra,0xffffe
    8000851c:	75c080e7          	jalr	1884(ra) # 80006c74 <mycpu>
    80008520:	01813083          	ld	ra,24(sp)
    80008524:	01013403          	ld	s0,16(sp)
    80008528:	40a48533          	sub	a0,s1,a0
    8000852c:	00153513          	seqz	a0,a0
    80008530:	00813483          	ld	s1,8(sp)
    80008534:	02010113          	addi	sp,sp,32
    80008538:	00008067          	ret

000000008000853c <push_off>:
    8000853c:	fe010113          	addi	sp,sp,-32
    80008540:	00813823          	sd	s0,16(sp)
    80008544:	00113c23          	sd	ra,24(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	02010413          	addi	s0,sp,32
    80008550:	100024f3          	csrr	s1,sstatus
    80008554:	100027f3          	csrr	a5,sstatus
    80008558:	ffd7f793          	andi	a5,a5,-3
    8000855c:	10079073          	csrw	sstatus,a5
    80008560:	ffffe097          	auipc	ra,0xffffe
    80008564:	714080e7          	jalr	1812(ra) # 80006c74 <mycpu>
    80008568:	07852783          	lw	a5,120(a0)
    8000856c:	02078663          	beqz	a5,80008598 <push_off+0x5c>
    80008570:	ffffe097          	auipc	ra,0xffffe
    80008574:	704080e7          	jalr	1796(ra) # 80006c74 <mycpu>
    80008578:	07852783          	lw	a5,120(a0)
    8000857c:	01813083          	ld	ra,24(sp)
    80008580:	01013403          	ld	s0,16(sp)
    80008584:	0017879b          	addiw	a5,a5,1
    80008588:	06f52c23          	sw	a5,120(a0)
    8000858c:	00813483          	ld	s1,8(sp)
    80008590:	02010113          	addi	sp,sp,32
    80008594:	00008067          	ret
    80008598:	0014d493          	srli	s1,s1,0x1
    8000859c:	ffffe097          	auipc	ra,0xffffe
    800085a0:	6d8080e7          	jalr	1752(ra) # 80006c74 <mycpu>
    800085a4:	0014f493          	andi	s1,s1,1
    800085a8:	06952e23          	sw	s1,124(a0)
    800085ac:	fc5ff06f          	j	80008570 <push_off+0x34>

00000000800085b0 <pop_off>:
    800085b0:	ff010113          	addi	sp,sp,-16
    800085b4:	00813023          	sd	s0,0(sp)
    800085b8:	00113423          	sd	ra,8(sp)
    800085bc:	01010413          	addi	s0,sp,16
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	6b4080e7          	jalr	1716(ra) # 80006c74 <mycpu>
    800085c8:	100027f3          	csrr	a5,sstatus
    800085cc:	0027f793          	andi	a5,a5,2
    800085d0:	04079663          	bnez	a5,8000861c <pop_off+0x6c>
    800085d4:	07852783          	lw	a5,120(a0)
    800085d8:	02f05a63          	blez	a5,8000860c <pop_off+0x5c>
    800085dc:	fff7871b          	addiw	a4,a5,-1
    800085e0:	06e52c23          	sw	a4,120(a0)
    800085e4:	00071c63          	bnez	a4,800085fc <pop_off+0x4c>
    800085e8:	07c52783          	lw	a5,124(a0)
    800085ec:	00078863          	beqz	a5,800085fc <pop_off+0x4c>
    800085f0:	100027f3          	csrr	a5,sstatus
    800085f4:	0027e793          	ori	a5,a5,2
    800085f8:	10079073          	csrw	sstatus,a5
    800085fc:	00813083          	ld	ra,8(sp)
    80008600:	00013403          	ld	s0,0(sp)
    80008604:	01010113          	addi	sp,sp,16
    80008608:	00008067          	ret
    8000860c:	00001517          	auipc	a0,0x1
    80008610:	06c50513          	addi	a0,a0,108 # 80009678 <digits+0x48>
    80008614:	fffff097          	auipc	ra,0xfffff
    80008618:	018080e7          	jalr	24(ra) # 8000762c <panic>
    8000861c:	00001517          	auipc	a0,0x1
    80008620:	04450513          	addi	a0,a0,68 # 80009660 <digits+0x30>
    80008624:	fffff097          	auipc	ra,0xfffff
    80008628:	008080e7          	jalr	8(ra) # 8000762c <panic>

000000008000862c <push_on>:
    8000862c:	fe010113          	addi	sp,sp,-32
    80008630:	00813823          	sd	s0,16(sp)
    80008634:	00113c23          	sd	ra,24(sp)
    80008638:	00913423          	sd	s1,8(sp)
    8000863c:	02010413          	addi	s0,sp,32
    80008640:	100024f3          	csrr	s1,sstatus
    80008644:	100027f3          	csrr	a5,sstatus
    80008648:	0027e793          	ori	a5,a5,2
    8000864c:	10079073          	csrw	sstatus,a5
    80008650:	ffffe097          	auipc	ra,0xffffe
    80008654:	624080e7          	jalr	1572(ra) # 80006c74 <mycpu>
    80008658:	07852783          	lw	a5,120(a0)
    8000865c:	02078663          	beqz	a5,80008688 <push_on+0x5c>
    80008660:	ffffe097          	auipc	ra,0xffffe
    80008664:	614080e7          	jalr	1556(ra) # 80006c74 <mycpu>
    80008668:	07852783          	lw	a5,120(a0)
    8000866c:	01813083          	ld	ra,24(sp)
    80008670:	01013403          	ld	s0,16(sp)
    80008674:	0017879b          	addiw	a5,a5,1
    80008678:	06f52c23          	sw	a5,120(a0)
    8000867c:	00813483          	ld	s1,8(sp)
    80008680:	02010113          	addi	sp,sp,32
    80008684:	00008067          	ret
    80008688:	0014d493          	srli	s1,s1,0x1
    8000868c:	ffffe097          	auipc	ra,0xffffe
    80008690:	5e8080e7          	jalr	1512(ra) # 80006c74 <mycpu>
    80008694:	0014f493          	andi	s1,s1,1
    80008698:	06952e23          	sw	s1,124(a0)
    8000869c:	fc5ff06f          	j	80008660 <push_on+0x34>

00000000800086a0 <pop_on>:
    800086a0:	ff010113          	addi	sp,sp,-16
    800086a4:	00813023          	sd	s0,0(sp)
    800086a8:	00113423          	sd	ra,8(sp)
    800086ac:	01010413          	addi	s0,sp,16
    800086b0:	ffffe097          	auipc	ra,0xffffe
    800086b4:	5c4080e7          	jalr	1476(ra) # 80006c74 <mycpu>
    800086b8:	100027f3          	csrr	a5,sstatus
    800086bc:	0027f793          	andi	a5,a5,2
    800086c0:	04078463          	beqz	a5,80008708 <pop_on+0x68>
    800086c4:	07852783          	lw	a5,120(a0)
    800086c8:	02f05863          	blez	a5,800086f8 <pop_on+0x58>
    800086cc:	fff7879b          	addiw	a5,a5,-1
    800086d0:	06f52c23          	sw	a5,120(a0)
    800086d4:	07853783          	ld	a5,120(a0)
    800086d8:	00079863          	bnez	a5,800086e8 <pop_on+0x48>
    800086dc:	100027f3          	csrr	a5,sstatus
    800086e0:	ffd7f793          	andi	a5,a5,-3
    800086e4:	10079073          	csrw	sstatus,a5
    800086e8:	00813083          	ld	ra,8(sp)
    800086ec:	00013403          	ld	s0,0(sp)
    800086f0:	01010113          	addi	sp,sp,16
    800086f4:	00008067          	ret
    800086f8:	00001517          	auipc	a0,0x1
    800086fc:	fa850513          	addi	a0,a0,-88 # 800096a0 <digits+0x70>
    80008700:	fffff097          	auipc	ra,0xfffff
    80008704:	f2c080e7          	jalr	-212(ra) # 8000762c <panic>
    80008708:	00001517          	auipc	a0,0x1
    8000870c:	f7850513          	addi	a0,a0,-136 # 80009680 <digits+0x50>
    80008710:	fffff097          	auipc	ra,0xfffff
    80008714:	f1c080e7          	jalr	-228(ra) # 8000762c <panic>

0000000080008718 <__memset>:
    80008718:	ff010113          	addi	sp,sp,-16
    8000871c:	00813423          	sd	s0,8(sp)
    80008720:	01010413          	addi	s0,sp,16
    80008724:	1a060e63          	beqz	a2,800088e0 <__memset+0x1c8>
    80008728:	40a007b3          	neg	a5,a0
    8000872c:	0077f793          	andi	a5,a5,7
    80008730:	00778693          	addi	a3,a5,7
    80008734:	00b00813          	li	a6,11
    80008738:	0ff5f593          	andi	a1,a1,255
    8000873c:	fff6071b          	addiw	a4,a2,-1
    80008740:	1b06e663          	bltu	a3,a6,800088ec <__memset+0x1d4>
    80008744:	1cd76463          	bltu	a4,a3,8000890c <__memset+0x1f4>
    80008748:	1a078e63          	beqz	a5,80008904 <__memset+0x1ec>
    8000874c:	00b50023          	sb	a1,0(a0)
    80008750:	00100713          	li	a4,1
    80008754:	1ae78463          	beq	a5,a4,800088fc <__memset+0x1e4>
    80008758:	00b500a3          	sb	a1,1(a0)
    8000875c:	00200713          	li	a4,2
    80008760:	1ae78a63          	beq	a5,a4,80008914 <__memset+0x1fc>
    80008764:	00b50123          	sb	a1,2(a0)
    80008768:	00300713          	li	a4,3
    8000876c:	18e78463          	beq	a5,a4,800088f4 <__memset+0x1dc>
    80008770:	00b501a3          	sb	a1,3(a0)
    80008774:	00400713          	li	a4,4
    80008778:	1ae78263          	beq	a5,a4,8000891c <__memset+0x204>
    8000877c:	00b50223          	sb	a1,4(a0)
    80008780:	00500713          	li	a4,5
    80008784:	1ae78063          	beq	a5,a4,80008924 <__memset+0x20c>
    80008788:	00b502a3          	sb	a1,5(a0)
    8000878c:	00700713          	li	a4,7
    80008790:	18e79e63          	bne	a5,a4,8000892c <__memset+0x214>
    80008794:	00b50323          	sb	a1,6(a0)
    80008798:	00700e93          	li	t4,7
    8000879c:	00859713          	slli	a4,a1,0x8
    800087a0:	00e5e733          	or	a4,a1,a4
    800087a4:	01059e13          	slli	t3,a1,0x10
    800087a8:	01c76e33          	or	t3,a4,t3
    800087ac:	01859313          	slli	t1,a1,0x18
    800087b0:	006e6333          	or	t1,t3,t1
    800087b4:	02059893          	slli	a7,a1,0x20
    800087b8:	40f60e3b          	subw	t3,a2,a5
    800087bc:	011368b3          	or	a7,t1,a7
    800087c0:	02859813          	slli	a6,a1,0x28
    800087c4:	0108e833          	or	a6,a7,a6
    800087c8:	03059693          	slli	a3,a1,0x30
    800087cc:	003e589b          	srliw	a7,t3,0x3
    800087d0:	00d866b3          	or	a3,a6,a3
    800087d4:	03859713          	slli	a4,a1,0x38
    800087d8:	00389813          	slli	a6,a7,0x3
    800087dc:	00f507b3          	add	a5,a0,a5
    800087e0:	00e6e733          	or	a4,a3,a4
    800087e4:	000e089b          	sext.w	a7,t3
    800087e8:	00f806b3          	add	a3,a6,a5
    800087ec:	00e7b023          	sd	a4,0(a5)
    800087f0:	00878793          	addi	a5,a5,8
    800087f4:	fed79ce3          	bne	a5,a3,800087ec <__memset+0xd4>
    800087f8:	ff8e7793          	andi	a5,t3,-8
    800087fc:	0007871b          	sext.w	a4,a5
    80008800:	01d787bb          	addw	a5,a5,t4
    80008804:	0ce88e63          	beq	a7,a4,800088e0 <__memset+0x1c8>
    80008808:	00f50733          	add	a4,a0,a5
    8000880c:	00b70023          	sb	a1,0(a4)
    80008810:	0017871b          	addiw	a4,a5,1
    80008814:	0cc77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008818:	00e50733          	add	a4,a0,a4
    8000881c:	00b70023          	sb	a1,0(a4)
    80008820:	0027871b          	addiw	a4,a5,2
    80008824:	0ac77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008828:	00e50733          	add	a4,a0,a4
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	0037871b          	addiw	a4,a5,3
    80008834:	0ac77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008838:	00e50733          	add	a4,a0,a4
    8000883c:	00b70023          	sb	a1,0(a4)
    80008840:	0047871b          	addiw	a4,a5,4
    80008844:	08c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008848:	00e50733          	add	a4,a0,a4
    8000884c:	00b70023          	sb	a1,0(a4)
    80008850:	0057871b          	addiw	a4,a5,5
    80008854:	08c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00b70023          	sb	a1,0(a4)
    80008860:	0067871b          	addiw	a4,a5,6
    80008864:	06c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008868:	00e50733          	add	a4,a0,a4
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	0077871b          	addiw	a4,a5,7
    80008874:	06c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	0087871b          	addiw	a4,a5,8
    80008884:	04c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	0097871b          	addiw	a4,a5,9
    80008894:	04c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	00a7871b          	addiw	a4,a5,10
    800088a4:	02c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	00b7871b          	addiw	a4,a5,11
    800088b4:	02c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	00c7871b          	addiw	a4,a5,12
    800088c4:	00c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	00d7879b          	addiw	a5,a5,13
    800088d4:	00c7f663          	bgeu	a5,a2,800088e0 <__memset+0x1c8>
    800088d8:	00f507b3          	add	a5,a0,a5
    800088dc:	00b78023          	sb	a1,0(a5)
    800088e0:	00813403          	ld	s0,8(sp)
    800088e4:	01010113          	addi	sp,sp,16
    800088e8:	00008067          	ret
    800088ec:	00b00693          	li	a3,11
    800088f0:	e55ff06f          	j	80008744 <__memset+0x2c>
    800088f4:	00300e93          	li	t4,3
    800088f8:	ea5ff06f          	j	8000879c <__memset+0x84>
    800088fc:	00100e93          	li	t4,1
    80008900:	e9dff06f          	j	8000879c <__memset+0x84>
    80008904:	00000e93          	li	t4,0
    80008908:	e95ff06f          	j	8000879c <__memset+0x84>
    8000890c:	00000793          	li	a5,0
    80008910:	ef9ff06f          	j	80008808 <__memset+0xf0>
    80008914:	00200e93          	li	t4,2
    80008918:	e85ff06f          	j	8000879c <__memset+0x84>
    8000891c:	00400e93          	li	t4,4
    80008920:	e7dff06f          	j	8000879c <__memset+0x84>
    80008924:	00500e93          	li	t4,5
    80008928:	e75ff06f          	j	8000879c <__memset+0x84>
    8000892c:	00600e93          	li	t4,6
    80008930:	e6dff06f          	j	8000879c <__memset+0x84>

0000000080008934 <__memmove>:
    80008934:	ff010113          	addi	sp,sp,-16
    80008938:	00813423          	sd	s0,8(sp)
    8000893c:	01010413          	addi	s0,sp,16
    80008940:	0e060863          	beqz	a2,80008a30 <__memmove+0xfc>
    80008944:	fff6069b          	addiw	a3,a2,-1
    80008948:	0006881b          	sext.w	a6,a3
    8000894c:	0ea5e863          	bltu	a1,a0,80008a3c <__memmove+0x108>
    80008950:	00758713          	addi	a4,a1,7
    80008954:	00a5e7b3          	or	a5,a1,a0
    80008958:	40a70733          	sub	a4,a4,a0
    8000895c:	0077f793          	andi	a5,a5,7
    80008960:	00f73713          	sltiu	a4,a4,15
    80008964:	00174713          	xori	a4,a4,1
    80008968:	0017b793          	seqz	a5,a5
    8000896c:	00e7f7b3          	and	a5,a5,a4
    80008970:	10078863          	beqz	a5,80008a80 <__memmove+0x14c>
    80008974:	00900793          	li	a5,9
    80008978:	1107f463          	bgeu	a5,a6,80008a80 <__memmove+0x14c>
    8000897c:	0036581b          	srliw	a6,a2,0x3
    80008980:	fff8081b          	addiw	a6,a6,-1
    80008984:	02081813          	slli	a6,a6,0x20
    80008988:	01d85893          	srli	a7,a6,0x1d
    8000898c:	00858813          	addi	a6,a1,8
    80008990:	00058793          	mv	a5,a1
    80008994:	00050713          	mv	a4,a0
    80008998:	01088833          	add	a6,a7,a6
    8000899c:	0007b883          	ld	a7,0(a5)
    800089a0:	00878793          	addi	a5,a5,8
    800089a4:	00870713          	addi	a4,a4,8
    800089a8:	ff173c23          	sd	a7,-8(a4)
    800089ac:	ff0798e3          	bne	a5,a6,8000899c <__memmove+0x68>
    800089b0:	ff867713          	andi	a4,a2,-8
    800089b4:	02071793          	slli	a5,a4,0x20
    800089b8:	0207d793          	srli	a5,a5,0x20
    800089bc:	00f585b3          	add	a1,a1,a5
    800089c0:	40e686bb          	subw	a3,a3,a4
    800089c4:	00f507b3          	add	a5,a0,a5
    800089c8:	06e60463          	beq	a2,a4,80008a30 <__memmove+0xfc>
    800089cc:	0005c703          	lbu	a4,0(a1)
    800089d0:	00e78023          	sb	a4,0(a5)
    800089d4:	04068e63          	beqz	a3,80008a30 <__memmove+0xfc>
    800089d8:	0015c603          	lbu	a2,1(a1)
    800089dc:	00100713          	li	a4,1
    800089e0:	00c780a3          	sb	a2,1(a5)
    800089e4:	04e68663          	beq	a3,a4,80008a30 <__memmove+0xfc>
    800089e8:	0025c603          	lbu	a2,2(a1)
    800089ec:	00200713          	li	a4,2
    800089f0:	00c78123          	sb	a2,2(a5)
    800089f4:	02e68e63          	beq	a3,a4,80008a30 <__memmove+0xfc>
    800089f8:	0035c603          	lbu	a2,3(a1)
    800089fc:	00300713          	li	a4,3
    80008a00:	00c781a3          	sb	a2,3(a5)
    80008a04:	02e68663          	beq	a3,a4,80008a30 <__memmove+0xfc>
    80008a08:	0045c603          	lbu	a2,4(a1)
    80008a0c:	00400713          	li	a4,4
    80008a10:	00c78223          	sb	a2,4(a5)
    80008a14:	00e68e63          	beq	a3,a4,80008a30 <__memmove+0xfc>
    80008a18:	0055c603          	lbu	a2,5(a1)
    80008a1c:	00500713          	li	a4,5
    80008a20:	00c782a3          	sb	a2,5(a5)
    80008a24:	00e68663          	beq	a3,a4,80008a30 <__memmove+0xfc>
    80008a28:	0065c703          	lbu	a4,6(a1)
    80008a2c:	00e78323          	sb	a4,6(a5)
    80008a30:	00813403          	ld	s0,8(sp)
    80008a34:	01010113          	addi	sp,sp,16
    80008a38:	00008067          	ret
    80008a3c:	02061713          	slli	a4,a2,0x20
    80008a40:	02075713          	srli	a4,a4,0x20
    80008a44:	00e587b3          	add	a5,a1,a4
    80008a48:	f0f574e3          	bgeu	a0,a5,80008950 <__memmove+0x1c>
    80008a4c:	02069613          	slli	a2,a3,0x20
    80008a50:	02065613          	srli	a2,a2,0x20
    80008a54:	fff64613          	not	a2,a2
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00c78633          	add	a2,a5,a2
    80008a60:	fff7c683          	lbu	a3,-1(a5)
    80008a64:	fff78793          	addi	a5,a5,-1
    80008a68:	fff70713          	addi	a4,a4,-1
    80008a6c:	00d70023          	sb	a3,0(a4)
    80008a70:	fec798e3          	bne	a5,a2,80008a60 <__memmove+0x12c>
    80008a74:	00813403          	ld	s0,8(sp)
    80008a78:	01010113          	addi	sp,sp,16
    80008a7c:	00008067          	ret
    80008a80:	02069713          	slli	a4,a3,0x20
    80008a84:	02075713          	srli	a4,a4,0x20
    80008a88:	00170713          	addi	a4,a4,1
    80008a8c:	00e50733          	add	a4,a0,a4
    80008a90:	00050793          	mv	a5,a0
    80008a94:	0005c683          	lbu	a3,0(a1)
    80008a98:	00178793          	addi	a5,a5,1
    80008a9c:	00158593          	addi	a1,a1,1
    80008aa0:	fed78fa3          	sb	a3,-1(a5)
    80008aa4:	fee798e3          	bne	a5,a4,80008a94 <__memmove+0x160>
    80008aa8:	f89ff06f          	j	80008a30 <__memmove+0xfc>
	...
