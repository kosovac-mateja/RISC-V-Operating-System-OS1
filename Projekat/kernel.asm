
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	52813103          	ld	sp,1320(sp) # 80007528 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7bc030ef          	jal	ra,800037d8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <supervisorTrap>:
.global supervisorTrap
.align 4
supervisorTrap:

    #push svih registara
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)
    addi x8, sp, 0 #frame pointer
    80001184:	00010413          	mv	s0,sp

    call handleSupervisorTrap
    80001188:	688000ef          	jal	ra,80001810 <handleSupervisorTrap>

    sd x10, 10 * 8(x8) #da se ne pregazi a0
    8000118c:	04a43823          	sd	a0,80(s0)
    #csrw sepc, x5

    #pop svih registara
    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001190:	00013003          	ld	zero,0(sp)
    80001194:	00813083          	ld	ra,8(sp)
    80001198:	01013103          	ld	sp,16(sp)
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
     addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256

    80001214:	10200073          	sret
	...

0000000080001220 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001220:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001224:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001228:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000122c:	0085b103          	ld	sp,8(a1)

    80001230:	00008067          	ret

0000000080001234 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001234:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001238:	00b29a63          	bne	t0,a1,8000124c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000123c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001240:	fe029ae3          	bnez	t0,80001234 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001244:	00000513          	li	a0,0
    jr ra                  # Return.
    80001248:	00008067          	ret

000000008000124c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000124c:	00100513          	li	a0,1
    80001250:	00008067          	ret

0000000080001254 <_Z7syscallv>:

#include "../h/pcb.h"
#include "../lib/console.h"


void syscall() {
    80001254:	ff010113          	addi	sp,sp,-16
    80001258:	00813423          	sd	s0,8(sp)
    8000125c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001260:	00000073          	ecall
}
    80001264:	00813403          	ld	s0,8(sp)
    80001268:	01010113          	addi	sp,sp,16
    8000126c:	00008067          	ret

0000000080001270 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    80001270:	ff010113          	addi	sp,sp,-16
    80001274:	00113423          	sd	ra,8(sp)
    80001278:	00813023          	sd	s0,0(sp)
    8000127c:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80001280:	03f57793          	andi	a5,a0,63
    80001284:	02079863          	bnez	a5,800012b4 <_Z9mem_allocm+0x44>
    80001288:	00655513          	srli	a0,a0,0x6

    __asm__ volatile("mv a1, %0" : : "r" (size));
    8000128c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (MALLOC_CODE));
    80001290:	00100793          	li	a5,1
    80001294:	00078513          	mv	a0,a5

    syscall();
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	fbc080e7          	jalr	-68(ra) # 80001254 <_Z7syscallv>

    void* ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012a0:	00050513          	mv	a0,a0
    return ret;
}
    800012a4:	00813083          	ld	ra,8(sp)
    800012a8:	00013403          	ld	s0,0(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    800012b4:	00655513          	srli	a0,a0,0x6
    800012b8:	00150513          	addi	a0,a0,1
    800012bc:	fd1ff06f          	j	8000128c <_Z9mem_allocm+0x1c>

00000000800012c0 <_Z8mem_freePv>:

int mem_free(void *addr) {
    800012c0:	ff010113          	addi	sp,sp,-16
    800012c4:	00113423          	sd	ra,8(sp)
    800012c8:	00813023          	sd	s0,0(sp)
    800012cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (addr));
    800012d0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (MFREE_CODE));
    800012d4:	00200793          	li	a5,2
    800012d8:	00078513          	mv	a0,a5

    syscall();
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f78080e7          	jalr	-136(ra) # 80001254 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012e4:	00050513          	mv	a0,a0
    return ret;
}
    800012e8:	0005051b          	sext.w	a0,a0
    800012ec:	00813083          	ld	ra,8(sp)
    800012f0:	00013403          	ld	s0,0(sp)
    800012f4:	01010113          	addi	sp,sp,16
    800012f8:	00008067          	ret

00000000800012fc <_Z13thread_createPP3PCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    800012fc:	fd010113          	addi	sp,sp,-48
    80001300:	02113423          	sd	ra,40(sp)
    80001304:	02813023          	sd	s0,32(sp)
    80001308:	00913c23          	sd	s1,24(sp)
    8000130c:	01213823          	sd	s2,16(sp)
    80001310:	01313423          	sd	s3,8(sp)
    80001314:	03010413          	addi	s0,sp,48
    80001318:	00050493          	mv	s1,a0
    8000131c:	00058913          	mv	s2,a1
    80001320:	00060993          	mv	s3,a2
    thread_t *tempHandle = handle; void(*tempRoutine)(void*) = start_routine; void* tempArg = arg;

    uint64* stack_space;
    if (start_routine != nullptr) {
    80001324:	06058063          	beqz	a1,80001384 <_Z13thread_createPP3PCBPFvPvES2_+0x88>
        stack_space = new uint64[DEFAULT_STACK_SIZE];
    80001328:	00008537          	lui	a0,0x8
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	c24080e7          	jalr	-988(ra) # 80001f50 <_Znam>
        stack_space = &stack_space[DEFAULT_STACK_SIZE];
    80001334:	000087b7          	lui	a5,0x8
    80001338:	00f50533          	add	a0,a0,a5
    } else stack_space = nullptr;

    __asm__ volatile("mv a7, %0" : : "r" (stack_space));
    8000133c:	00050893          	mv	a7,a0
    __asm__ volatile("mv a3, %0" : : "r" (tempArg));
    80001340:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" (tempRoutine));
    80001344:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r" (tempHandle));
    80001348:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" : : "r" (TCREATE_CODE));
    8000134c:	01100793          	li	a5,17
    80001350:	00078513          	mv	a0,a5

    syscall();
    80001354:	00000097          	auipc	ra,0x0
    80001358:	f00080e7          	jalr	-256(ra) # 80001254 <_Z7syscallv>

    int ret = *handle ? 0 : -1;
    8000135c:	0004b783          	ld	a5,0(s1)
    80001360:	02078663          	beqz	a5,8000138c <_Z13thread_createPP3PCBPFvPvES2_+0x90>
    80001364:	00000513          	li	a0,0
    return ret;
}
    80001368:	02813083          	ld	ra,40(sp)
    8000136c:	02013403          	ld	s0,32(sp)
    80001370:	01813483          	ld	s1,24(sp)
    80001374:	01013903          	ld	s2,16(sp)
    80001378:	00813983          	ld	s3,8(sp)
    8000137c:	03010113          	addi	sp,sp,48
    80001380:	00008067          	ret
    } else stack_space = nullptr;
    80001384:	00000513          	li	a0,0
    80001388:	fb5ff06f          	j	8000133c <_Z13thread_createPP3PCBPFvPvES2_+0x40>
    int ret = *handle ? 0 : -1;
    8000138c:	fff00513          	li	a0,-1
    80001390:	fd9ff06f          	j	80001368 <_Z13thread_createPP3PCBPFvPvES2_+0x6c>

0000000080001394 <_Z15thread_dispatchv>:

void thread_dispatch () {
    80001394:	ff010113          	addi	sp,sp,-16
    80001398:	00113423          	sd	ra,8(sp)
    8000139c:	00813023          	sd	s0,0(sp)
    800013a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (TDISPATCH_CODE));
    800013a4:	01300793          	li	a5,19
    800013a8:	00078513          	mv	a0,a5

    syscall();
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	ea8080e7          	jalr	-344(ra) # 80001254 <_Z7syscallv>
}
    800013b4:	00813083          	ld	ra,8(sp)
    800013b8:	00013403          	ld	s0,0(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_Z11thread_exitv>:


int thread_exit() {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (TEXIT_CODE));
    800013d4:	01200793          	li	a5,18
    800013d8:	00078513          	mv	a0,a5

    syscall();
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	e78080e7          	jalr	-392(ra) # 80001254 <_Z7syscallv>

    return 0; //ne znam kad moze da dodje do greske
}
    800013e4:	00000513          	li	a0,0
    800013e8:	00813083          	ld	ra,8(sp)
    800013ec:	00013403          	ld	s0,0(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, uint32 init) {
    800013f8:	fe010113          	addi	sp,sp,-32
    800013fc:	00113c23          	sd	ra,24(sp)
    80001400:	00813823          	sd	s0,16(sp)
    80001404:	00913423          	sd	s1,8(sp)
    80001408:	02010413          	addi	s0,sp,32
    8000140c:	00050493          	mv	s1,a0
    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001410:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001414:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SOPEN_CODE));
    80001418:	02100793          	li	a5,33
    8000141c:	00078513          	mv	a0,a5

    syscall();
    80001420:	00000097          	auipc	ra,0x0
    80001424:	e34080e7          	jalr	-460(ra) # 80001254 <_Z7syscallv>

    int ret = *handle ? 0 : -1;
    80001428:	0004b783          	ld	a5,0(s1)
    8000142c:	00078e63          	beqz	a5,80001448 <_Z8sem_openPP3Semj+0x50>
    80001430:	00000513          	li	a0,0
    return ret;
}
    80001434:	01813083          	ld	ra,24(sp)
    80001438:	01013403          	ld	s0,16(sp)
    8000143c:	00813483          	ld	s1,8(sp)
    80001440:	02010113          	addi	sp,sp,32
    80001444:	00008067          	ret
    int ret = *handle ? 0 : -1;
    80001448:	fff00513          	li	a0,-1
    8000144c:	fe9ff06f          	j	80001434 <_Z8sem_openPP3Semj+0x3c>

0000000080001450 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00113423          	sd	ra,8(sp)
    80001458:	00813023          	sd	s0,0(sp)
    8000145c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001460:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SCLOSE_CODE));
    80001464:	02200793          	li	a5,34
    80001468:	00078513          	mv	a0,a5

    syscall();
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	de8080e7          	jalr	-536(ra) # 80001254 <_Z7syscallv>

    return 0;
}
    80001474:	00000513          	li	a0,0
    80001478:	00813083          	ld	ra,8(sp)
    8000147c:	00013403          	ld	s0,0(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00113423          	sd	ra,8(sp)
    80001490:	00813023          	sd	s0,0(sp)
    80001494:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001498:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SWAIT_CODE));
    8000149c:	02300793          	li	a5,35
    800014a0:	00078513          	mv	a0,a5

    syscall();
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	db0080e7          	jalr	-592(ra) # 80001254 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014ac:	00050513          	mv	a0,a0
    return ret;
}
    800014b0:	0005051b          	sext.w	a0,a0
    800014b4:	00813083          	ld	ra,8(sp)
    800014b8:	00013403          	ld	s0,0(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00113423          	sd	ra,8(sp)
    800014cc:	00813023          	sd	s0,0(sp)
    800014d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    800014d4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SSIGNAL_CODE));
    800014d8:	02400793          	li	a5,36
    800014dc:	00078513          	mv	a0,a5

    syscall();
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	d74080e7          	jalr	-652(ra) # 80001254 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014e8:	00050513          	mv	a0,a0
    return ret;
}
    800014ec:	0005051b          	sext.w	a0,a0
    800014f0:	00813083          	ld	ra,8(sp)
    800014f4:	00013403          	ld	s0,0(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <_Z4getcv>:

char getc() {
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00113423          	sd	ra,8(sp)
    80001508:	00813023          	sd	s0,0(sp)
    8000150c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (CGETC_CODE));
    80001510:	04100793          	li	a5,65
    80001514:	00078513          	mv	a0,a5

    syscall();
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	d3c080e7          	jalr	-708(ra) # 80001254 <_Z7syscallv>

    char c;
    __asm__ volatile("mv %0, a0" : "=r" (c));
    80001520:	00050513          	mv	a0,a0
    return c;
}
    80001524:	0ff57513          	andi	a0,a0,255
    80001528:	00813083          	ld	ra,8(sp)
    8000152c:	00013403          	ld	s0,0(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z4putcc>:

void putc(char c) {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00113423          	sd	ra,8(sp)
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    80001548:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (CPUTC_CODE));
    8000154c:	04200793          	li	a5,66
    80001550:	00078513          	mv	a0,a5

    syscall();
    80001554:	00000097          	auipc	ra,0x0
    80001558:	d00080e7          	jalr	-768(ra) # 80001254 <_Z7syscallv>
}
    8000155c:	00813083          	ld	ra,8(sp)
    80001560:	00013403          	ld	s0,0(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_Z12thread_allocPP3PCBPFvPvES2_>:

void thread_alloc(thread_t* handle, void(*start_routine)(void*), void* arg) {
    8000156c:	fd010113          	addi	sp,sp,-48
    80001570:	02113423          	sd	ra,40(sp)
    80001574:	02813023          	sd	s0,32(sp)
    80001578:	00913c23          	sd	s1,24(sp)
    8000157c:	01213823          	sd	s2,16(sp)
    80001580:	01313423          	sd	s3,8(sp)
    80001584:	03010413          	addi	s0,sp,48
    80001588:	00050913          	mv	s2,a0
    8000158c:	00058493          	mv	s1,a1
    80001590:	00060993          	mv	s3,a2
    thread_t *tempHandle = handle; void(*tempRoutine)(void*) = start_routine; void* tempArg = arg;

    uint64* stack_space;
    if (start_routine != nullptr) {
    80001594:	04058a63          	beqz	a1,800015e8 <_Z12thread_allocPP3PCBPFvPvES2_+0x7c>
        stack_space = new uint64[DEFAULT_STACK_SIZE];
    80001598:	00008537          	lui	a0,0x8
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	9b4080e7          	jalr	-1612(ra) # 80001f50 <_Znam>
        stack_space = &stack_space[DEFAULT_STACK_SIZE];
    800015a4:	000087b7          	lui	a5,0x8
    800015a8:	00f50533          	add	a0,a0,a5
    } else stack_space = nullptr;

    __asm__ volatile("mv a7, %0" : : "r" (stack_space));
    800015ac:	00050893          	mv	a7,a0
    __asm__ volatile("mv a3, %0" : : "r" (tempArg));
    800015b0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" (tempRoutine));
    800015b4:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0" : : "r" (tempHandle));
    800015b8:	00090593          	mv	a1,s2
    __asm__ volatile("mv a0, %0" : : "r" (TALLOC_CODE));
    800015bc:	01400793          	li	a5,20
    800015c0:	00078513          	mv	a0,a5

    syscall();
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	c90080e7          	jalr	-880(ra) # 80001254 <_Z7syscallv>
}
    800015cc:	02813083          	ld	ra,40(sp)
    800015d0:	02013403          	ld	s0,32(sp)
    800015d4:	01813483          	ld	s1,24(sp)
    800015d8:	01013903          	ld	s2,16(sp)
    800015dc:	00813983          	ld	s3,8(sp)
    800015e0:	03010113          	addi	sp,sp,48
    800015e4:	00008067          	ret
    } else stack_space = nullptr;
    800015e8:	00000513          	li	a0,0
    800015ec:	fc1ff06f          	j	800015ac <_Z12thread_allocPP3PCBPFvPvES2_+0x40>

00000000800015f0 <_Z16thread_schedulerP3PCB>:

void thread_scheduler(thread_t handle) {
    800015f0:	ff010113          	addi	sp,sp,-16
    800015f4:	00113423          	sd	ra,8(sp)
    800015f8:	00813023          	sd	s0,0(sp)
    800015fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001600:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (TSCHEDULER_CODE));
    80001604:	01500793          	li	a5,21
    80001608:	00078513          	mv	a0,a5

    syscall();
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	c48080e7          	jalr	-952(ra) # 80001254 <_Z7syscallv>
    80001614:	00813083          	ld	ra,8(sp)
    80001618:	00013403          	ld	s0,0(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret

0000000080001624 <_ZN3PCB11bodyWrapperEPv>:
    running = Scheduler::get();

    PCB::contextSwitch(&old->context, &running->context);
}

void PCB::bodyWrapper(void* dummy) {
    80001624:	ff010113          	addi	sp,sp,-16
    80001628:	00113423          	sd	ra,8(sp)
    8000162c:	00813023          	sd	s0,0(sp)
    80001630:	01010413          	addi	s0,sp,16
    running->body(running->arg);
    80001634:	00006797          	auipc	a5,0x6
    80001638:	f5c7b783          	ld	a5,-164(a5) # 80007590 <_ZN3PCB7runningE>
    8000163c:	0087b703          	ld	a4,8(a5)
    80001640:	0107b503          	ld	a0,16(a5)
    80001644:	000700e7          	jalr	a4
    thread_exit();
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	d7c080e7          	jalr	-644(ra) # 800013c4 <_Z11thread_exitv>
}
    80001650:	00813083          	ld	ra,8(sp)
    80001654:	00013403          	ld	s0,0(sp)
    80001658:	01010113          	addi	sp,sp,16
    8000165c:	00008067          	ret

0000000080001660 <_ZN3PCB13createProcessEPFvPvEPmS0_b>:
PCB *PCB::createProcess(Body body, uint64* stack, void* arg, bool put) {
    80001660:	fc010113          	addi	sp,sp,-64
    80001664:	02113c23          	sd	ra,56(sp)
    80001668:	02813823          	sd	s0,48(sp)
    8000166c:	02913423          	sd	s1,40(sp)
    80001670:	03213023          	sd	s2,32(sp)
    80001674:	01313c23          	sd	s3,24(sp)
    80001678:	01413823          	sd	s4,16(sp)
    8000167c:	01513423          	sd	s5,8(sp)
    80001680:	04010413          	addi	s0,sp,64
    80001684:	00050993          	mv	s3,a0
    80001688:	00058913          	mv	s2,a1
    8000168c:	00060a13          	mv	s4,a2
    80001690:	00068a93          	mv	s5,a3
    return new PCB(body, stack, arg, put);
    80001694:	03800513          	li	a0,56
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	878080e7          	jalr	-1928(ra) # 80001f10 <_Znwm>
    800016a0:	00050493          	mv	s1,a0
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
                     stack != nullptr ? (uint64) stck : 0
                    }),
            finished(false),
            blocked(false)
    800016a4:	00200793          	li	a5,2
    800016a8:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    800016ac:	01353423          	sd	s3,8(a0)
    800016b0:	01453823          	sd	s4,16(a0)
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
    800016b4:	06098463          	beqz	s3,8000171c <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xbc>
    800016b8:	06090663          	beqz	s2,80001724 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xc4>
    800016bc:	fffc07b7          	lui	a5,0xfffc0
    800016c0:	00878793          	addi	a5,a5,8 # fffffffffffc0008 <end+0xffffffff7ffb77b8>
    800016c4:	00f907b3          	add	a5,s2,a5
            blocked(false)
    800016c8:	00f4bc23          	sd	a5,24(s1)
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
    800016cc:	06098063          	beqz	s3,8000172c <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xcc>
    800016d0:	00000717          	auipc	a4,0x0
    800016d4:	f5470713          	addi	a4,a4,-172 # 80001624 <_ZN3PCB11bodyWrapperEPv>
            blocked(false)
    800016d8:	02e4b023          	sd	a4,32(s1)
                     stack != nullptr ? (uint64) stck : 0
    800016dc:	04078c63          	beqz	a5,80001734 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xd4>
            blocked(false)
    800016e0:	0324b423          	sd	s2,40(s1)
    800016e4:	02048823          	sb	zero,48(s1)
    800016e8:	020488a3          	sb	zero,49(s1)
            { if (body != nullptr && put) { Scheduler::put(this); }
    800016ec:	00098463          	beqz	s3,800016f4 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x94>
    800016f0:	040a9663          	bnez	s5,8000173c <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xdc>
}
    800016f4:	00048513          	mv	a0,s1
    800016f8:	03813083          	ld	ra,56(sp)
    800016fc:	03013403          	ld	s0,48(sp)
    80001700:	02813483          	ld	s1,40(sp)
    80001704:	02013903          	ld	s2,32(sp)
    80001708:	01813983          	ld	s3,24(sp)
    8000170c:	01013a03          	ld	s4,16(sp)
    80001710:	00813a83          	ld	s5,8(sp)
    80001714:	04010113          	addi	sp,sp,64
    80001718:	00008067          	ret
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
    8000171c:	00000793          	li	a5,0
    80001720:	fa9ff06f          	j	800016c8 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x68>
    80001724:	00090793          	mv	a5,s2
    80001728:	fa1ff06f          	j	800016c8 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x68>
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
    8000172c:	00000713          	li	a4,0
    80001730:	fa9ff06f          	j	800016d8 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x78>
                     stack != nullptr ? (uint64) stck : 0
    80001734:	00000913          	li	s2,0
    80001738:	fa9ff06f          	j	800016e0 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x80>
            { if (body != nullptr && put) { Scheduler::put(this); }
    8000173c:	00048513          	mv	a0,s1
    80001740:	00001097          	auipc	ra,0x1
    80001744:	e24080e7          	jalr	-476(ra) # 80002564 <_ZN9Scheduler3putEP3PCB>
    80001748:	fadff06f          	j	800016f4 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x94>
    8000174c:	00050913          	mv	s2,a0
    return new PCB(body, stack, arg, put);
    80001750:	00048513          	mv	a0,s1
    80001754:	00001097          	auipc	ra,0x1
    80001758:	83c080e7          	jalr	-1988(ra) # 80001f90 <_ZdlPv>
    8000175c:	00090513          	mv	a0,s2
    80001760:	00007097          	auipc	ra,0x7
    80001764:	f58080e7          	jalr	-168(ra) # 800086b8 <_Unwind_Resume>

0000000080001768 <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    80001768:	fe010113          	addi	sp,sp,-32
    8000176c:	00113c23          	sd	ra,24(sp)
    80001770:	00813823          	sd	s0,16(sp)
    80001774:	00913423          	sd	s1,8(sp)
    80001778:	02010413          	addi	s0,sp,32
    PCB *old = running;
    8000177c:	00006497          	auipc	s1,0x6
    80001780:	e144b483          	ld	s1,-492(s1) # 80007590 <_ZN3PCB7runningE>
    bool isFinished() const { return finished; }
    80001784:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001788:	00079663          	bnez	a5,80001794 <_ZN3PCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    8000178c:	0314c783          	lbu	a5,49(s1)
    80001790:	02078c63          	beqz	a5,800017c8 <_ZN3PCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001794:	00001097          	auipc	ra,0x1
    80001798:	d54080e7          	jalr	-684(ra) # 800024e8 <_ZN9Scheduler3getEv>
    8000179c:	00006797          	auipc	a5,0x6
    800017a0:	dea7ba23          	sd	a0,-524(a5) # 80007590 <_ZN3PCB7runningE>
    PCB::contextSwitch(&old->context, &running->context);
    800017a4:	02050593          	addi	a1,a0,32
    800017a8:	02048513          	addi	a0,s1,32
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	a74080e7          	jalr	-1420(ra) # 80001220 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800017b4:	01813083          	ld	ra,24(sp)
    800017b8:	01013403          	ld	s0,16(sp)
    800017bc:	00813483          	ld	s1,8(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	d98080e7          	jalr	-616(ra) # 80002564 <_ZN9Scheduler3putEP3PCB>
    800017d4:	fc1ff06f          	j	80001794 <_ZN3PCB8dispatchEv+0x2c>

00000000800017d8 <_ZN3PCB5yieldEv>:
void PCB::yield() {
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00113423          	sd	ra,8(sp)
    800017e0:	00813023          	sd	s0,0(sp)
    800017e4:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	818080e7          	jalr	-2024(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    PCB::dispatch();
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	f78080e7          	jalr	-136(ra) # 80001768 <_ZN3PCB8dispatchEv>
    Riscv::popRegisters();
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	884080e7          	jalr	-1916(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001800:	00813083          	ld	ra,8(sp)
    80001804:	00013403          	ld	s0,0(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret

0000000080001810 <handleSupervisorTrap>:
#include "../h/sem.h"
#include "../lib/console.h"
#include "../h/riscv.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap() {
    80001810:	fb010113          	addi	sp,sp,-80
    80001814:	04113423          	sd	ra,72(sp)
    80001818:	04813023          	sd	s0,64(sp)
    8000181c:	02913c23          	sd	s1,56(sp)
    80001820:	03213823          	sd	s2,48(sp)
    80001824:	03313423          	sd	s3,40(sp)
    80001828:	05010413          	addi	s0,sp,80
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000182c:	142027f3          	csrr	a5,scause
    80001830:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001834:	fc843483          	ld	s1,-56(s0)
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001838:	141027f3          	csrr	a5,sepc
    8000183c:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001840:	fc043903          	ld	s2,-64(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001844:	100027f3          	csrr	a5,sstatus
    80001848:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    8000184c:	fb843983          	ld	s3,-72(s0)
    uint64 scause = Riscv::r_scause();
    uint64 sepc = Riscv::r_sepc();

    uint64 sstatus = Riscv::r_sstatus();

    if(scause == 9 || scause == 8) {
    80001850:	ff848713          	addi	a4,s1,-8
    80001854:	00100793          	li	a5,1
    80001858:	04e7fc63          	bgeu	a5,a4,800018b0 <handleSupervisorTrap+0xa0>
        }

        Riscv::w_sepc(sepc+4);
    }

    else if(scause == (1UL << 63 | 9)) { //spoljasnji hardverski prekid
    8000185c:	fff00793          	li	a5,-1
    80001860:	03f79793          	slli	a5,a5,0x3f
    80001864:	00978793          	addi	a5,a5,9
    80001868:	20f48663          	beq	s1,a5,80001a74 <handleSupervisorTrap+0x264>
        console_handler();
    }

    else if(scause == (1UL << 63 | 1)) { //prekid od tajmera
    8000186c:	fff00793          	li	a5,-1
    80001870:	03f79793          	slli	a5,a5,0x3f
    80001874:	00178793          	addi	a5,a5,1
    80001878:	22f49463          	bne	s1,a5,80001aa0 <handleSupervisorTrap+0x290>
        PCB::timeSliceCnt++;
    8000187c:	00006717          	auipc	a4,0x6
    80001880:	cb473703          	ld	a4,-844(a4) # 80007530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001884:	00073783          	ld	a5,0(a4)
    80001888:	00178793          	addi	a5,a5,1
    8000188c:	00f73023          	sd	a5,0(a4)

        if(PCB::timeSliceCnt >= PCB::running->timeSlice) {
    80001890:	00006717          	auipc	a4,0x6
    80001894:	ca873703          	ld	a4,-856(a4) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001898:	00073703          	ld	a4,0(a4)
    8000189c:	00073703          	ld	a4,0(a4)
    800018a0:	1ee7f063          	bgeu	a5,a4,80001a80 <handleSupervisorTrap+0x270>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800018a4:	00200793          	li	a5,2
    800018a8:	1447b073          	csrc	sip,a5
}
    800018ac:	0400006f          	j	800018ec <handleSupervisorTrap+0xdc>
        __asm__ volatile("mv %0, a0" : "=r" (code));
    800018b0:	00050793          	mv	a5,a0
        switch (code) {
    800018b4:	04200713          	li	a4,66
    800018b8:	02f76663          	bltu	a4,a5,800018e4 <handleSupervisorTrap+0xd4>
    800018bc:	00279793          	slli	a5,a5,0x2
    800018c0:	00004717          	auipc	a4,0x4
    800018c4:	77470713          	addi	a4,a4,1908 # 80006034 <CONSOLE_STATUS+0x24>
    800018c8:	00e787b3          	add	a5,a5,a4
    800018cc:	0007a783          	lw	a5,0(a5)
    800018d0:	00e787b3          	add	a5,a5,a4
    800018d4:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1" : "=r" (size));
    800018d8:	00058513          	mv	a0,a1
                MemoryAllocator::mem_alloc(size);
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	364080e7          	jalr	868(ra) # 80001c40 <_ZN15MemoryAllocator9mem_allocEm>
        Riscv::w_sepc(sepc+4);
    800018e4:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800018e8:	14191073          	csrw	sepc,s2
        printInt(sepc);
        __putc('\n');
        printString("SCAUSE: ");
        printInt(scause);
    }
}
    800018ec:	04813083          	ld	ra,72(sp)
    800018f0:	04013403          	ld	s0,64(sp)
    800018f4:	03813483          	ld	s1,56(sp)
    800018f8:	03013903          	ld	s2,48(sp)
    800018fc:	02813983          	ld	s3,40(sp)
    80001900:	05010113          	addi	sp,sp,80
    80001904:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    80001908:	00058513          	mv	a0,a1
                MemoryAllocator::mem_free(ptr);
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	4dc080e7          	jalr	1244(ra) # 80001de8 <_ZN15MemoryAllocator8mem_freeEPv>
            }break;
    80001914:	fd1ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001918:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
    8000191c:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a3" : "=r" (arg));
    80001920:	00068613          	mv	a2,a3
                __asm__ volatile("mv %0, a7" : "=r" (stack));
    80001924:	00088593          	mv	a1,a7
                *handle = PCB::createProcess(start_routine, stack, arg, true);
    80001928:	00100693          	li	a3,1
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	d34080e7          	jalr	-716(ra) # 80001660 <_ZN3PCB13createProcessEPFvPvEPmS0_b>
    80001934:	00a4b023          	sd	a0,0(s1)
            }break;
    80001938:	fadff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                PCB::yield(); //mozda treba dispatch
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	e9c080e7          	jalr	-356(ra) # 800017d8 <_ZN3PCB5yieldEv>
            }break;
    80001944:	fa1ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                PCB::running->setFinished(true);
    80001948:	00006797          	auipc	a5,0x6
    8000194c:	bf07b783          	ld	a5,-1040(a5) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001950:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001954:	00100713          	li	a4,1
    80001958:	02e78823          	sb	a4,48(a5)
                PCB::yield();
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	e7c080e7          	jalr	-388(ra) # 800017d8 <_ZN3PCB5yieldEv>
            } break;
    80001964:	f81ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001968:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (init));
    8000196c:	00060513          	mv	a0,a2
                *handle = Sem::createSemaphore(init);
    80001970:	0005051b          	sext.w	a0,a0
    80001974:	00001097          	auipc	ra,0x1
    80001978:	a2c080e7          	jalr	-1492(ra) # 800023a0 <_ZN3Sem15createSemaphoreEj>
    8000197c:	00a4b023          	sd	a0,0(s1)
            } break;
    80001980:	f65ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001984:	00058513          	mv	a0,a1
                Sem::deleteSemaphore(handle);
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	a68080e7          	jalr	-1432(ra) # 800023f0 <_ZN3Sem15deleteSemaphoreEPS_>
            } break;
    80001990:	f55ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001994:	00058513          	mv	a0,a1

    static Sem* createSemaphore(uint32 init);

    static void deleteSemaphore(sem_t handle);

    bool isActive() { return active; }
    80001998:	00454783          	lbu	a5,4(a0)
                if(handle->isActive()) {
    8000199c:	02078863          	beqz	a5,800019cc <handleSupervisorTrap+0x1bc>
    void wait() { if(--val < 0) block(); }
    800019a0:	00052783          	lw	a5,0(a0)
    800019a4:	fff7879b          	addiw	a5,a5,-1
    800019a8:	00f52023          	sw	a5,0(a0)
    800019ac:	02079713          	slli	a4,a5,0x20
    800019b0:	00074663          	bltz	a4,800019bc <handleSupervisorTrap+0x1ac>
                    ret = 0;
    800019b4:	00000793          	li	a5,0
    800019b8:	0180006f          	j	800019d0 <handleSupervisorTrap+0x1c0>
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	8bc080e7          	jalr	-1860(ra) # 80002278 <_ZN3Sem5blockEv>
    800019c4:	00000793          	li	a5,0
    800019c8:	0080006f          	j	800019d0 <handleSupervisorTrap+0x1c0>
                sem_t handle; int ret = -1;
    800019cc:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    800019d0:	00078513          	mv	a0,a5
            } break;
    800019d4:	f11ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    800019d8:	00058513          	mv	a0,a1
    bool isActive() { return active; }
    800019dc:	00454783          	lbu	a5,4(a0)
                if(handle->isActive()) {
    800019e0:	02078863          	beqz	a5,80001a10 <handleSupervisorTrap+0x200>
    void signal() { if(++val <= 0) unblock(); }
    800019e4:	00052783          	lw	a5,0(a0)
    800019e8:	0017879b          	addiw	a5,a5,1
    800019ec:	0007871b          	sext.w	a4,a5
    800019f0:	00f52023          	sw	a5,0(a0)
    800019f4:	00e05663          	blez	a4,80001a00 <handleSupervisorTrap+0x1f0>
                    ret = 0;
    800019f8:	00000793          	li	a5,0
    800019fc:	0180006f          	j	80001a14 <handleSupervisorTrap+0x204>
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	91c080e7          	jalr	-1764(ra) # 8000231c <_ZN3Sem7unblockEv>
    80001a08:	00000793          	li	a5,0
    80001a0c:	0080006f          	j	80001a14 <handleSupervisorTrap+0x204>
                sem_t handle; int ret = -1;
    80001a10:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001a14:	00078513          	mv	a0,a5
            } break;
    80001a18:	ecdff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                char c = __getc();
    80001a1c:	00004097          	auipc	ra,0x4
    80001a20:	ebc080e7          	jalr	-324(ra) # 800058d8 <__getc>
                __asm__ volatile("mv a0, %0" : : "r" (c));
    80001a24:	00050513          	mv	a0,a0
            } break;
    80001a28:	ebdff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (c));
    80001a2c:	00058513          	mv	a0,a1
                __putc(c);
    80001a30:	0ff57513          	andi	a0,a0,255
    80001a34:	00004097          	auipc	ra,0x4
    80001a38:	e68080e7          	jalr	-408(ra) # 8000589c <__putc>
            } break;
    80001a3c:	ea9ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001a40:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
    80001a44:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a3" : "=r" (arg));
    80001a48:	00068613          	mv	a2,a3
                __asm__ volatile("mv %0, a7" : "=r" (stack));
    80001a4c:	00088593          	mv	a1,a7
                *handle = PCB::createProcess(start_routine, stack, arg, false);
    80001a50:	00000693          	li	a3,0
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	c0c080e7          	jalr	-1012(ra) # 80001660 <_ZN3PCB13createProcessEPFvPvEPmS0_b>
    80001a5c:	00a4b023          	sd	a0,0(s1)
            } break;
    80001a60:	e85ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001a64:	00058513          	mv	a0,a1
                Scheduler::put(handle); /* mozda treba proveriti da li je body null*/
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	afc080e7          	jalr	-1284(ra) # 80002564 <_ZN9Scheduler3putEP3PCB>
            } break;
    80001a70:	e75ff06f          	j	800018e4 <handleSupervisorTrap+0xd4>
        console_handler();
    80001a74:	00004097          	auipc	ra,0x4
    80001a78:	e9c080e7          	jalr	-356(ra) # 80005910 <console_handler>
    80001a7c:	e71ff06f          	j	800018ec <handleSupervisorTrap+0xdc>
            PCB::yield();
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	d58080e7          	jalr	-680(ra) # 800017d8 <_ZN3PCB5yieldEv>
            PCB::timeSliceCnt = 0;
    80001a88:	00006797          	auipc	a5,0x6
    80001a8c:	aa87b783          	ld	a5,-1368(a5) # 80007530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a90:	0007b023          	sd	zero,0(a5)
    80001a94:	14191073          	csrw	sepc,s2
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a98:	10099073          	csrw	sstatus,s3
}
    80001a9c:	e09ff06f          	j	800018a4 <handleSupervisorTrap+0x94>
        __putc('\n');
    80001aa0:	00a00513          	li	a0,10
    80001aa4:	00004097          	auipc	ra,0x4
    80001aa8:	df8080e7          	jalr	-520(ra) # 8000589c <__putc>
        printString("SEPC: ");
    80001aac:	00004517          	auipc	a0,0x4
    80001ab0:	57450513          	addi	a0,a0,1396 # 80006020 <CONSOLE_STATUS+0x10>
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	b64080e7          	jalr	-1180(ra) # 80002618 <_Z11printStringPKc>
        printInt(sepc);
    80001abc:	00000613          	li	a2,0
    80001ac0:	00a00593          	li	a1,10
    80001ac4:	0009051b          	sext.w	a0,s2
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	ce8080e7          	jalr	-792(ra) # 800027b0 <_Z8printIntiii>
        __putc('\n');
    80001ad0:	00a00513          	li	a0,10
    80001ad4:	00004097          	auipc	ra,0x4
    80001ad8:	dc8080e7          	jalr	-568(ra) # 8000589c <__putc>
        printString("SCAUSE: ");
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	54c50513          	addi	a0,a0,1356 # 80006028 <CONSOLE_STATUS+0x18>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	b34080e7          	jalr	-1228(ra) # 80002618 <_Z11printStringPKc>
        printInt(scause);
    80001aec:	00000613          	li	a2,0
    80001af0:	00a00593          	li	a1,10
    80001af4:	0004851b          	sext.w	a0,s1
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	cb8080e7          	jalr	-840(ra) # 800027b0 <_Z8printIntiii>
}
    80001b00:	dedff06f          	j	800018ec <handleSupervisorTrap+0xdc>

0000000080001b04 <_Z4idlePv>:

extern void userMain();
extern "C" void supervisorTrap();


void idle(void* arg) {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    while(true) {
        thread_dispatch();
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	880080e7          	jalr	-1920(ra) # 80001394 <_Z15thread_dispatchv>
    while(true) {
    80001b1c:	ff9ff06f          	j	80001b14 <_Z4idlePv+0x10>

0000000080001b20 <_Z15userMainWrapperPv>:
    }
}

void userMainWrapper(void* arg) {
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	00813023          	sd	s0,0(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    userMain();
    80001b30:	00002097          	auipc	ra,0x2
    80001b34:	81c080e7          	jalr	-2020(ra) # 8000334c <_Z8userMainv>
}
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret

0000000080001b48 <main>:

void main() {
    80001b48:	fd010113          	addi	sp,sp,-48
    80001b4c:	02113423          	sd	ra,40(sp)
    80001b50:	02813023          	sd	s0,32(sp)
    80001b54:	03010413          	addi	s0,sp,48
    __asm__ volatile("csrw stvec, %0" : : "r" (&supervisorTrap));
    80001b58:	00006797          	auipc	a5,0x6
    80001b5c:	9c87b783          	ld	a5,-1592(a5) # 80007520 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001b60:	10579073          	csrw	stvec,a5

    thread_t kernelThread, idleThread;
    thread_t userThread;

    thread_create(&kernelThread, nullptr, nullptr);
    80001b64:	00000613          	li	a2,0
    80001b68:	00000593          	li	a1,0
    80001b6c:	fe840513          	addi	a0,s0,-24
    80001b70:	fffff097          	auipc	ra,0xfffff
    80001b74:	78c080e7          	jalr	1932(ra) # 800012fc <_Z13thread_createPP3PCBPFvPvES2_>
    PCB::running = kernelThread;
    80001b78:	00006797          	auipc	a5,0x6
    80001b7c:	9c07b783          	ld	a5,-1600(a5) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b80:	fe843703          	ld	a4,-24(s0)
    80001b84:	00e7b023          	sd	a4,0(a5)

    thread_create(&idleThread, idle, nullptr);
    80001b88:	00000613          	li	a2,0
    80001b8c:	00000597          	auipc	a1,0x0
    80001b90:	f7858593          	addi	a1,a1,-136 # 80001b04 <_Z4idlePv>
    80001b94:	fe040513          	addi	a0,s0,-32
    80001b98:	fffff097          	auipc	ra,0xfffff
    80001b9c:	764080e7          	jalr	1892(ra) # 800012fc <_Z13thread_createPP3PCBPFvPvES2_>

    thread_create(&userThread, userMainWrapper, nullptr);
    80001ba0:	00000613          	li	a2,0
    80001ba4:	00000597          	auipc	a1,0x0
    80001ba8:	f7c58593          	addi	a1,a1,-132 # 80001b20 <_Z15userMainWrapperPv>
    80001bac:	fd840513          	addi	a0,s0,-40
    80001bb0:	fffff097          	auipc	ra,0xfffff
    80001bb4:	74c080e7          	jalr	1868(ra) # 800012fc <_Z13thread_createPP3PCBPFvPvES2_>

    while(!userThread->isFinished()) {
    80001bb8:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80001bbc:	0307c783          	lbu	a5,48(a5)
    80001bc0:	00079863          	bnez	a5,80001bd0 <main+0x88>
        thread_dispatch();
    80001bc4:	fffff097          	auipc	ra,0xfffff
    80001bc8:	7d0080e7          	jalr	2000(ra) # 80001394 <_Z15thread_dispatchv>
    80001bcc:	fedff06f          	j	80001bb8 <main+0x70>
    }
}
    80001bd0:	02813083          	ld	ra,40(sp)
    80001bd4:	02013403          	ld	s0,32(sp)
    80001bd8:	03010113          	addi	sp,sp,48
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN15MemoryAllocator8mem_initEv>:
    return (char*)curr + MEM_BLOCK_SIZE; //vraca se adresa nakon zaglavlja
}



void MemoryAllocator::mem_init() {
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813423          	sd	s0,8(sp)
    80001be8:	01010413          	addi	s0,sp,16
    freeSegmentHead = (FreeSegment*)HEAP_START_ADDR; //pocetak heap-a
    80001bec:	00006797          	auipc	a5,0x6
    80001bf0:	92c7b783          	ld	a5,-1748(a5) # 80007518 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bf4:	0007b683          	ld	a3,0(a5)
    80001bf8:	00006717          	auipc	a4,0x6
    80001bfc:	9a870713          	addi	a4,a4,-1624 # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001c00:	00d73023          	sd	a3,0(a4)

    freeSegmentHead->size = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE - 1) * MEM_BLOCK_SIZE;
    80001c04:	00006797          	auipc	a5,0x6
    80001c08:	93c7b783          	ld	a5,-1732(a5) # 80007540 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c0c:	0007b783          	ld	a5,0(a5)
    80001c10:	40d787b3          	sub	a5,a5,a3
    80001c14:	0067d793          	srli	a5,a5,0x6
    80001c18:	fff78793          	addi	a5,a5,-1
    80001c1c:	00679793          	slli	a5,a5,0x6
    80001c20:	00f6b023          	sd	a5,0(a3)

    freeSegmentHead->next = nullptr; freeSegmentHead->prev = nullptr;
    80001c24:	00073783          	ld	a5,0(a4)
    80001c28:	0007b423          	sd	zero,8(a5)
    80001c2c:	0007b823          	sd	zero,16(a5)

    usedSegmentHead = nullptr;
    80001c30:	00073423          	sd	zero,8(a4)
}
    80001c34:	00813403          	ld	s0,8(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret

0000000080001c40 <_ZN15MemoryAllocator9mem_allocEm>:
    if(size <= 0) return nullptr;
    80001c40:	14050463          	beqz	a0,80001d88 <_ZN15MemoryAllocator9mem_allocEm+0x148>
void *MemoryAllocator::mem_alloc(size_t size) {
    80001c44:	fe010113          	addi	sp,sp,-32
    80001c48:	00113c23          	sd	ra,24(sp)
    80001c4c:	00813823          	sd	s0,16(sp)
    80001c50:	00913423          	sd	s1,8(sp)
    80001c54:	02010413          	addi	s0,sp,32
    size = size * MEM_BLOCK_SIZE;
    80001c58:	00651493          	slli	s1,a0,0x6
    if(!initialized) {
    80001c5c:	00006797          	auipc	a5,0x6
    80001c60:	9547c783          	lbu	a5,-1708(a5) # 800075b0 <_ZN15MemoryAllocator11initializedE>
    80001c64:	02078063          	beqz	a5,80001c84 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    FreeSegment *curr = freeSegmentHead;
    80001c68:	00006517          	auipc	a0,0x6
    80001c6c:	93853503          	ld	a0,-1736(a0) # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
    for(; curr && curr->size < size; curr = curr->next);
    80001c70:	02050663          	beqz	a0,80001c9c <_ZN15MemoryAllocator9mem_allocEm+0x5c>
    80001c74:	00053783          	ld	a5,0(a0)
    80001c78:	0297f263          	bgeu	a5,s1,80001c9c <_ZN15MemoryAllocator9mem_allocEm+0x5c>
    80001c7c:	00853503          	ld	a0,8(a0)
    80001c80:	ff1ff06f          	j	80001c70 <_ZN15MemoryAllocator9mem_allocEm+0x30>
        mem_init();
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	f5c080e7          	jalr	-164(ra) # 80001be0 <_ZN15MemoryAllocator8mem_initEv>
        initialized = true;
    80001c8c:	00100793          	li	a5,1
    80001c90:	00006717          	auipc	a4,0x6
    80001c94:	92f70023          	sb	a5,-1760(a4) # 800075b0 <_ZN15MemoryAllocator11initializedE>
    80001c98:	fd1ff06f          	j	80001c68 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    if(!curr) return nullptr;
    80001c9c:	0a050c63          	beqz	a0,80001d54 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t remainingSize = curr->size - size;
    80001ca0:	00053783          	ld	a5,0(a0)
    80001ca4:	409787b3          	sub	a5,a5,s1
    curr->size = size;
    80001ca8:	00953023          	sd	s1,0(a0)
    if(remainingSize < 2 * MEM_BLOCK_SIZE) { //ako je preostali prostor manji od jednog bloka(drugi je za zaglavlja)
    80001cac:	07f00713          	li	a4,127
    80001cb0:	04f76263          	bltu	a4,a5,80001cf4 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        if(freeSegmentHead == curr) freeSegmentHead = curr->next;
    80001cb4:	00006797          	auipc	a5,0x6
    80001cb8:	8ec7b783          	ld	a5,-1812(a5) # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001cbc:	02a78463          	beq	a5,a0,80001ce4 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if(curr->next) curr->next->prev = curr->prev;
    80001cc0:	00853783          	ld	a5,8(a0)
    80001cc4:	00078663          	beqz	a5,80001cd0 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    80001cc8:	01053703          	ld	a4,16(a0)
    80001ccc:	00e7b823          	sd	a4,16(a5)
        if(curr->prev) curr->prev->next = curr->next;
    80001cd0:	01053783          	ld	a5,16(a0)
    80001cd4:	04078c63          	beqz	a5,80001d2c <_ZN15MemoryAllocator9mem_allocEm+0xec>
    80001cd8:	00853703          	ld	a4,8(a0)
    80001cdc:	00e7b423          	sd	a4,8(a5)
    80001ce0:	04c0006f          	j	80001d2c <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if(freeSegmentHead == curr) freeSegmentHead = curr->next;
    80001ce4:	00853783          	ld	a5,8(a0)
    80001ce8:	00006717          	auipc	a4,0x6
    80001cec:	8af73c23          	sd	a5,-1864(a4) # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001cf0:	fd1ff06f          	j	80001cc0 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        size_t offset = MEM_BLOCK_SIZE + size;
    80001cf4:	04048713          	addi	a4,s1,64
        FreeSegment* newSegm = (FreeSegment*)((char*)curr + offset);
    80001cf8:	00e50733          	add	a4,a0,a4
        if (curr->prev) {
    80001cfc:	01053683          	ld	a3,16(a0)
    80001d00:	06068463          	beqz	a3,80001d68 <_ZN15MemoryAllocator9mem_allocEm+0x128>
            curr->prev->next = newSegm;
    80001d04:	00e6b423          	sd	a4,8(a3)
            newSegm->prev = curr->prev;
    80001d08:	01053683          	ld	a3,16(a0)
    80001d0c:	00d73823          	sd	a3,16(a4)
        if(curr->next)
    80001d10:	00853683          	ld	a3,8(a0)
    80001d14:	00068463          	beqz	a3,80001d1c <_ZN15MemoryAllocator9mem_allocEm+0xdc>
            curr->next->prev = newSegm;
    80001d18:	00e6b823          	sd	a4,16(a3)
        newSegm->next = curr->next;
    80001d1c:	00853683          	ld	a3,8(a0)
    80001d20:	00d73423          	sd	a3,8(a4)
        newSegm->size = remainingSize - MEM_BLOCK_SIZE; //zbog njegovog zaglavlja
    80001d24:	fc078793          	addi	a5,a5,-64
    80001d28:	00f73023          	sd	a5,0(a4)
    curr->next = nullptr; //potpuno se odvezuje cvor
    80001d2c:	00053423          	sd	zero,8(a0)
    UsedSegment* used = (UsedSegment*)((char*)curr + sizeof(FreeSegment));
    80001d30:	01850713          	addi	a4,a0,24
    used->size = size;
    80001d34:	00953c23          	sd	s1,24(a0)
    if(!usedSegmentHead) {
    80001d38:	00006797          	auipc	a5,0x6
    80001d3c:	8707b783          	ld	a5,-1936(a5) # 800075a8 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001d40:	02078c63          	beqz	a5,80001d78 <_ZN15MemoryAllocator9mem_allocEm+0x138>
        used->next = usedSegmentHead;
    80001d44:	02f53023          	sd	a5,32(a0)
        usedSegmentHead = used;
    80001d48:	00006797          	auipc	a5,0x6
    80001d4c:	86e7b023          	sd	a4,-1952(a5) # 800075a8 <_ZN15MemoryAllocator15usedSegmentHeadE>
    return (char*)curr + MEM_BLOCK_SIZE; //vraca se adresa nakon zaglavlja
    80001d50:	04050513          	addi	a0,a0,64
}
    80001d54:	01813083          	ld	ra,24(sp)
    80001d58:	01013403          	ld	s0,16(sp)
    80001d5c:	00813483          	ld	s1,8(sp)
    80001d60:	02010113          	addi	sp,sp,32
    80001d64:	00008067          	ret
            freeSegmentHead = newSegm;
    80001d68:	00006697          	auipc	a3,0x6
    80001d6c:	82e6bc23          	sd	a4,-1992(a3) # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
            freeSegmentHead->prev = nullptr;
    80001d70:	00073823          	sd	zero,16(a4)
    80001d74:	f9dff06f          	j	80001d10 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        usedSegmentHead = used;
    80001d78:	00006797          	auipc	a5,0x6
    80001d7c:	82e7b823          	sd	a4,-2000(a5) # 800075a8 <_ZN15MemoryAllocator15usedSegmentHeadE>
        usedSegmentHead->next = nullptr;
    80001d80:	00073423          	sd	zero,8(a4)
    80001d84:	fcdff06f          	j	80001d50 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    if(size <= 0) return nullptr;
    80001d88:	00000513          	li	a0,0
}
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment>:
    tryToJoin(fcurr);

    return 0;
}

void MemoryAllocator::tryToJoin(FreeSegment *curr) {
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00813423          	sd	s0,8(sp)
    80001d98:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001d9c:	00050e63          	beqz	a0,80001db8 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>

    //da li je kraj jednog bloka jednak pocetku drugog
    if (curr->next && (char*)curr + curr->size == (char*)(curr->next) - MEM_BLOCK_SIZE) {
    80001da0:	00853783          	ld	a5,8(a0)
    80001da4:	00078a63          	beqz	a5,80001db8 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>
    80001da8:	00053703          	ld	a4,0(a0)
    80001dac:	00e50633          	add	a2,a0,a4
    80001db0:	fc078693          	addi	a3,a5,-64
    80001db4:	00d60863          	beq	a2,a3,80001dc4 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x34>
        curr->size += curr->next->size + MEM_BLOCK_SIZE;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
    }
}
    80001db8:	00813403          	ld	s0,8(sp)
    80001dbc:	01010113          	addi	sp,sp,16
    80001dc0:	00008067          	ret
        curr->size += curr->next->size + MEM_BLOCK_SIZE;
    80001dc4:	0007b683          	ld	a3,0(a5)
    80001dc8:	00d70733          	add	a4,a4,a3
    80001dcc:	04070713          	addi	a4,a4,64
    80001dd0:	00e53023          	sd	a4,0(a0)
        curr->next = curr->next->next;
    80001dd4:	0087b783          	ld	a5,8(a5)
    80001dd8:	00f53423          	sd	a5,8(a0)
        if (curr->next) curr->next->prev = curr;
    80001ddc:	fc078ee3          	beqz	a5,80001db8 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>
    80001de0:	00a7b823          	sd	a0,16(a5)
    80001de4:	fd5ff06f          	j	80001db8 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>

0000000080001de8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    80001de8:	10050c63          	beqz	a0,80001f00 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    80001dec:	00050613          	mv	a2,a0
    UsedSegment* curr = usedSegmentHead, *prev = nullptr;
    80001df0:	00005697          	auipc	a3,0x5
    80001df4:	7b86b683          	ld	a3,1976(a3) # 800075a8 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001df8:	00000593          	li	a1,0
    for(; (curr != nullptr) & ((char*)curr - sizeof(FreeSegment) + MEM_BLOCK_SIZE != (char*)addr);
    80001dfc:	02868713          	addi	a4,a3,40
    80001e00:	00d037b3          	snez	a5,a3
    80001e04:	40c70733          	sub	a4,a4,a2
    80001e08:	00e03733          	snez	a4,a4
    80001e0c:	00e7f7b3          	and	a5,a5,a4
    80001e10:	0ff7f793          	andi	a5,a5,255
    80001e14:	00078863          	beqz	a5,80001e24 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
    prev = curr, curr = curr->next);
    80001e18:	00068593          	mv	a1,a3
    80001e1c:	0086b683          	ld	a3,8(a3)
    for(; (curr != nullptr) & ((char*)curr - sizeof(FreeSegment) + MEM_BLOCK_SIZE != (char*)addr);
    80001e20:	fddff06f          	j	80001dfc <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if(!curr) return -1;
    80001e24:	0e068263          	beqz	a3,80001f08 <_ZN15MemoryAllocator8mem_freeEPv+0x120>
int MemoryAllocator::mem_free(void *addr) {
    80001e28:	fe010113          	addi	sp,sp,-32
    80001e2c:	00113c23          	sd	ra,24(sp)
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	02010413          	addi	s0,sp,32
    if(prev) {
    80001e3c:	02058863          	beqz	a1,80001e6c <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        prev->next = curr->next;
    80001e40:	0086b783          	ld	a5,8(a3)
    80001e44:	00f5b423          	sd	a5,8(a1)
    if(freeSegmentHead && (char*)freeSegmentHead < (char*)addr) //ako uslov nije ispunjen segment postaje glava liste
    80001e48:	00005797          	auipc	a5,0x5
    80001e4c:	7587b783          	ld	a5,1880(a5) # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001e50:	02078663          	beqz	a5,80001e7c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80001e54:	02c7f863          	bgeu	a5,a2,80001e84 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
        for(fcurr = freeSegmentHead; fcurr->next && (char*)addr > (char*)(fcurr->next); fcurr = fcurr->next);
    80001e58:	00078493          	mv	s1,a5
    80001e5c:	0087b783          	ld	a5,8(a5)
    80001e60:	02078463          	beqz	a5,80001e88 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001e64:	fec7eae3          	bltu	a5,a2,80001e58 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80001e68:	0200006f          	j	80001e88 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    else usedSegmentHead = curr->next;
    80001e6c:	0086b783          	ld	a5,8(a3)
    80001e70:	00005717          	auipc	a4,0x5
    80001e74:	72f73c23          	sd	a5,1848(a4) # 800075a8 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001e78:	fd1ff06f          	j	80001e48 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    FreeSegment* fcurr = nullptr;
    80001e7c:	00078493          	mv	s1,a5
    80001e80:	0080006f          	j	80001e88 <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001e84:	00000493          	li	s1,0
    FreeSegment* newSeg = (FreeSegment*)((char*)addr - MEM_BLOCK_SIZE);
    80001e88:	fc060513          	addi	a0,a2,-64
    newSeg->size = curr->size;
    80001e8c:	0006b783          	ld	a5,0(a3)
    80001e90:	fcf63023          	sd	a5,-64(a2)
    newSeg->prev = fcurr;
    80001e94:	fc963823          	sd	s1,-48(a2)
    if (fcurr) newSeg->next = fcurr->next;
    80001e98:	04048663          	beqz	s1,80001ee4 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    80001e9c:	0084b783          	ld	a5,8(s1)
    80001ea0:	fcf63423          	sd	a5,-56(a2)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001ea4:	fc863783          	ld	a5,-56(a2)
    80001ea8:	00078463          	beqz	a5,80001eb0 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    80001eac:	00a7b823          	sd	a0,16(a5)
    if (fcurr) fcurr->next = newSeg;
    80001eb0:	04048263          	beqz	s1,80001ef4 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    80001eb4:	00a4b423          	sd	a0,8(s1)
    tryToJoin(newSeg);
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	ed8080e7          	jalr	-296(ra) # 80001d90 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment>
    tryToJoin(fcurr);
    80001ec0:	00048513          	mv	a0,s1
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	ecc080e7          	jalr	-308(ra) # 80001d90 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment>
    return 0;
    80001ecc:	00000513          	li	a0,0
}
    80001ed0:	01813083          	ld	ra,24(sp)
    80001ed4:	01013403          	ld	s0,16(sp)
    80001ed8:	00813483          	ld	s1,8(sp)
    80001edc:	02010113          	addi	sp,sp,32
    80001ee0:	00008067          	ret
    else newSeg->next = freeSegmentHead;
    80001ee4:	00005797          	auipc	a5,0x5
    80001ee8:	6bc7b783          	ld	a5,1724(a5) # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001eec:	fcf63423          	sd	a5,-56(a2)
    80001ef0:	fb5ff06f          	j	80001ea4 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    else freeSegmentHead = newSeg;
    80001ef4:	00005797          	auipc	a5,0x5
    80001ef8:	6aa7b623          	sd	a0,1708(a5) # 800075a0 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001efc:	fbdff06f          	j	80001eb8 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    if(!addr) return -1;
    80001f00:	fff00513          	li	a0,-1
    80001f04:	00008067          	ret
    if(!curr) return -1;
    80001f08:	fff00513          	li	a0,-1
}
    80001f0c:	00008067          	ret

0000000080001f10 <_Znwm>:
#include "../h/memoryAllocator.h"


void *operator new(size_t size) {
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00113423          	sd	ra,8(sp)
    80001f18:	00813023          	sd	s0,0(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80001f20:	03f57793          	andi	a5,a0,63
    80001f24:	02079063          	bnez	a5,80001f44 <_Znwm+0x34>
    80001f28:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	d14080e7          	jalr	-748(ra) # 80001c40 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80001f44:	00655513          	srli	a0,a0,0x6
    80001f48:	00150513          	addi	a0,a0,1
    80001f4c:	fe1ff06f          	j	80001f2c <_Znwm+0x1c>

0000000080001f50 <_Znam>:

void *operator new[](size_t size) {
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00113423          	sd	ra,8(sp)
    80001f58:	00813023          	sd	s0,0(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80001f60:	03f57793          	andi	a5,a0,63
    80001f64:	02079063          	bnez	a5,80001f84 <_Znam+0x34>
    80001f68:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	cd4080e7          	jalr	-812(ra) # 80001c40 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80001f84:	00655513          	srli	a0,a0,0x6
    80001f88:	00150513          	addi	a0,a0,1
    80001f8c:	fe1ff06f          	j	80001f6c <_Znam+0x1c>

0000000080001f90 <_ZdlPv>:

void operator delete(void *p) noexcept { MemoryAllocator::mem_free(p); }
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00113423          	sd	ra,8(sp)
    80001f98:	00813023          	sd	s0,0(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	e48080e7          	jalr	-440(ra) # 80001de8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001fa8:	00813083          	ld	ra,8(sp)
    80001fac:	00013403          	ld	s0,0(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZdaPv>:

void operator delete[](void *p) noexcept { MemoryAllocator::mem_free(p); }
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00113423          	sd	ra,8(sp)
    80001fc0:	00813023          	sd	s0,0(sp)
    80001fc4:	01010413          	addi	s0,sp,16
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	e20080e7          	jalr	-480(ra) # 80001de8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001fd0:	00813083          	ld	ra,8(sp)
    80001fd4:	00013403          	ld	s0,0(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_ZN6Thread10runWrapperEPv>:

Thread::Thread() {
    thread_alloc(&myHandle, runWrapper, this); //samo alocira nit
}

void Thread::runWrapper(void *arg) {
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80001ff0:	00053783          	ld	a5,0(a0)
    80001ff4:	0107b783          	ld	a5,16(a5)
    80001ff8:	000780e7          	jalr	a5
}
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00113423          	sd	ra,8(sp)
    80002014:	00813023          	sd	s0,0(sp)
    80002018:	01010413          	addi	s0,sp,16
    8000201c:	00005797          	auipc	a5,0x5
    80002020:	42c78793          	addi	a5,a5,1068 # 80007448 <_ZTV6Thread+0x10>
    80002024:	00f53023          	sd	a5,0(a0)
    thread_alloc(&myHandle, body, arg);
    80002028:	00850513          	addi	a0,a0,8
    8000202c:	fffff097          	auipc	ra,0xfffff
    80002030:	540080e7          	jalr	1344(ra) # 8000156c <_Z12thread_allocPP3PCBPFvPvES2_>
}
    80002034:	00813083          	ld	ra,8(sp)
    80002038:	00013403          	ld	s0,0(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <_ZN6Thread5startEv>:
int Thread::start() {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00113423          	sd	ra,8(sp)
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	01010413          	addi	s0,sp,16
    thread_scheduler(myHandle); //stavlja nit u scheduler
    80002054:	00853503          	ld	a0,8(a0)
    80002058:	fffff097          	auipc	ra,0xfffff
    8000205c:	598080e7          	jalr	1432(ra) # 800015f0 <_Z16thread_schedulerP3PCB>
}
    80002060:	00000513          	li	a0,0
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00113423          	sd	ra,8(sp)
    8000207c:	00813023          	sd	s0,0(sp)
    80002080:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002084:	fffff097          	auipc	ra,0xfffff
    80002088:	310080e7          	jalr	784(ra) # 80001394 <_Z15thread_dispatchv>
}
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00113423          	sd	ra,8(sp)
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	00005797          	auipc	a5,0x5
    800020b0:	39c78793          	addi	a5,a5,924 # 80007448 <_ZTV6Thread+0x10>
    800020b4:	00f53023          	sd	a5,0(a0)
    thread_alloc(&myHandle, runWrapper, this); //samo alocira nit
    800020b8:	00050613          	mv	a2,a0
    800020bc:	00000597          	auipc	a1,0x0
    800020c0:	f2458593          	addi	a1,a1,-220 # 80001fe0 <_ZN6Thread10runWrapperEPv>
    800020c4:	00850513          	addi	a0,a0,8
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	4a4080e7          	jalr	1188(ra) # 8000156c <_Z12thread_allocPP3PCBPFvPvES2_>
}
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00013403          	ld	s0,0(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00113423          	sd	ra,8(sp)
    800020e8:	00813023          	sd	s0,0(sp)
    800020ec:	01010413          	addi	s0,sp,16
    800020f0:	00005797          	auipc	a5,0x5
    800020f4:	38078793          	addi	a5,a5,896 # 80007470 <_ZTV9Semaphore+0x10>
    800020f8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800020fc:	00850513          	addi	a0,a0,8
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	2f8080e7          	jalr	760(ra) # 800013f8 <_Z8sem_openPP3Semj>
}
    80002108:	00813083          	ld	ra,8(sp)
    8000210c:	00013403          	ld	s0,0(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN9Semaphore4waitEv>:
/*
Semaphore::~Semaphore() {
    sem_close(myHandle);
}*/

int Semaphore::wait() {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	00813023          	sd	s0,0(sp)
    80002124:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002128:	00853503          	ld	a0,8(a0)
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	35c080e7          	jalr	860(ra) # 80001488 <_Z8sem_waitP3Sem>
}
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00113423          	sd	ra,8(sp)
    8000214c:	00813023          	sd	s0,0(sp)
    80002150:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002154:	00853503          	ld	a0,8(a0)
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	36c080e7          	jalr	876(ra) # 800014c4 <_Z10sem_signalP3Sem>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZN7Console4getcEv>:

char Console::getc() {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	380080e7          	jalr	896(ra) # 80001500 <_Z4getcv>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	390080e7          	jalr	912(ra) # 80001538 <_Z4putcc>
}
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZN6ThreadD1Ev>:

class Thread {
public:
    Thread (void (*body)(void*), void* arg);

    virtual ~Thread () {};
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00813423          	sd	s0,8(sp)
    800021c8:	01010413          	addi	s0,sp,16
    800021cc:	00813403          	ld	s0,8(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret

00000000800021d8 <_ZN6Thread3runEv>:
    //static int sleep (time_t);

protected:
    Thread ();

    virtual void run () {};
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00813423          	sd	s0,8(sp)
    800021e0:	01010413          	addi	s0,sp,16
    800021e4:	00813403          	ld	s0,8(sp)
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00008067          	ret

00000000800021f0 <_ZN9SemaphoreD1Ev>:

class Semaphore {
public:
    Semaphore (unsigned init = 1);

    virtual ~Semaphore () {};
    800021f0:	ff010113          	addi	sp,sp,-16
    800021f4:	00813423          	sd	s0,8(sp)
    800021f8:	01010413          	addi	s0,sp,16
    800021fc:	00813403          	ld	s0,8(sp)
    80002200:	01010113          	addi	sp,sp,16
    80002204:	00008067          	ret

0000000080002208 <_ZN6ThreadD0Ev>:
    virtual ~Thread () {};
    80002208:	ff010113          	addi	sp,sp,-16
    8000220c:	00113423          	sd	ra,8(sp)
    80002210:	00813023          	sd	s0,0(sp)
    80002214:	01010413          	addi	s0,sp,16
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	d78080e7          	jalr	-648(ra) # 80001f90 <_ZdlPv>
    80002220:	00813083          	ld	ra,8(sp)
    80002224:	00013403          	ld	s0,0(sp)
    80002228:	01010113          	addi	sp,sp,16
    8000222c:	00008067          	ret

0000000080002230 <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore () {};
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00113423          	sd	ra,8(sp)
    80002238:	00813023          	sd	s0,0(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	00000097          	auipc	ra,0x0
    80002244:	d50080e7          	jalr	-688(ra) # 80001f90 <_ZdlPv>
    80002248:	00813083          	ld	ra,8(sp)
    8000224c:	00013403          	ld	s0,0(sp)
    80002250:	01010113          	addi	sp,sp,16
    80002254:	00008067          	ret

0000000080002258 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.h"

void Riscv::popSppSpie()
{
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00813423          	sd	s0,8(sp)
    80002260:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002264:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002268:	10200073          	sret
    8000226c:	00813403          	ld	s0,8(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <_ZN3Sem5blockEv>:
#include "../h/sem.h"

#include "../h/riscv.h"
#include "../lib/console.h"

void Sem::block() {
    80002278:	fd010113          	addi	sp,sp,-48
    8000227c:	02113423          	sd	ra,40(sp)
    80002280:	02813023          	sd	s0,32(sp)
    80002284:	00913c23          	sd	s1,24(sp)
    80002288:	01213823          	sd	s2,16(sp)
    8000228c:	01313423          	sd	s3,8(sp)
    80002290:	03010413          	addi	s0,sp,48
    80002294:	00050913          	mv	s2,a0
    blocked.addLast(PCB::running);
    80002298:	00850493          	addi	s1,a0,8
    8000229c:	00005797          	auipc	a5,0x5
    800022a0:	29c7b783          	ld	a5,668(a5) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022a4:	0007b983          	ld	s3,0(a5)
        if (!tail) { tail = head; }
        cnt++;
    }

    void addLast(T *data) {
        Elem *elem = new Elem(data, 0);
    800022a8:	01000513          	li	a0,16
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	c64080e7          	jalr	-924(ra) # 80001f10 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800022b4:	01353023          	sd	s3,0(a0)
    800022b8:	00053423          	sd	zero,8(a0)
        if (tail) {
    800022bc:	0084b783          	ld	a5,8(s1)
    800022c0:	04078863          	beqz	a5,80002310 <_ZN3Sem5blockEv+0x98>
            tail->next = elem;
    800022c4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800022c8:	00a4b423          	sd	a0,8(s1)
        } else {
            head = tail = elem;
        }
        cnt++;
    800022cc:	0104b783          	ld	a5,16(s1)
    800022d0:	00178793          	addi	a5,a5,1
    800022d4:	00f4b823          	sd	a5,16(s1)
    PCB::running->setBlocked(true);
    800022d8:	00005797          	auipc	a5,0x5
    800022dc:	2607b783          	ld	a5,608(a5) # 80007538 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022e0:	0007b783          	ld	a5,0(a5)
    void setBlocked(bool value) { blocked = value; }
    800022e4:	00100713          	li	a4,1
    800022e8:	02e788a3          	sb	a4,49(a5)
    PCB::yield();
    800022ec:	fffff097          	auipc	ra,0xfffff
    800022f0:	4ec080e7          	jalr	1260(ra) # 800017d8 <_ZN3PCB5yieldEv>
}
    800022f4:	02813083          	ld	ra,40(sp)
    800022f8:	02013403          	ld	s0,32(sp)
    800022fc:	01813483          	ld	s1,24(sp)
    80002300:	01013903          	ld	s2,16(sp)
    80002304:	00813983          	ld	s3,8(sp)
    80002308:	03010113          	addi	sp,sp,48
    8000230c:	00008067          	ret
            head = tail = elem;
    80002310:	00a4b423          	sd	a0,8(s1)
    80002314:	00a93423          	sd	a0,8(s2)
    80002318:	fb5ff06f          	j	800022cc <_ZN3Sem5blockEv+0x54>

000000008000231c <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    8000231c:	fe010113          	addi	sp,sp,-32
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	00813823          	sd	s0,16(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	01213023          	sd	s2,0(sp)
    80002330:	02010413          	addi	s0,sp,32
    80002334:	00050793          	mv	a5,a0
    thread_t p = blocked.removeFirst();
    80002338:	00850493          	addi	s1,a0,8
    }

    T *removeFirst() {
        if (!head) { return 0; }
    8000233c:	00853503          	ld	a0,8(a0)
    80002340:	04050c63          	beqz	a0,80002398 <_ZN3Sem7unblockEv+0x7c>

        Elem *elem = head;
        head = head->next;
    80002344:	00853703          	ld	a4,8(a0)
    80002348:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    8000234c:	04070263          	beqz	a4,80002390 <_ZN3Sem7unblockEv+0x74>

        T *ret = elem->data;
    80002350:	00053903          	ld	s2,0(a0)
        delete elem;
    80002354:	00000097          	auipc	ra,0x0
    80002358:	c3c080e7          	jalr	-964(ra) # 80001f90 <_ZdlPv>
        cnt--;
    8000235c:	0104b783          	ld	a5,16(s1)
    80002360:	fff78793          	addi	a5,a5,-1
    80002364:	00f4b823          	sd	a5,16(s1)
    80002368:	020908a3          	sb	zero,49(s2)
    p->setBlocked(false);
    Scheduler::put(p);
    8000236c:	00090513          	mv	a0,s2
    80002370:	00000097          	auipc	ra,0x0
    80002374:	1f4080e7          	jalr	500(ra) # 80002564 <_ZN9Scheduler3putEP3PCB>
}
    80002378:	01813083          	ld	ra,24(sp)
    8000237c:	01013403          	ld	s0,16(sp)
    80002380:	00813483          	ld	s1,8(sp)
    80002384:	00013903          	ld	s2,0(sp)
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00008067          	ret
        if (!head) { tail = 0; }
    80002390:	0004b423          	sd	zero,8(s1)
    80002394:	fbdff06f          	j	80002350 <_ZN3Sem7unblockEv+0x34>
        if (!head) { return 0; }
    80002398:	00050913          	mv	s2,a0
    8000239c:	fcdff06f          	j	80002368 <_ZN3Sem7unblockEv+0x4c>

00000000800023a0 <_ZN3Sem15createSemaphoreEj>:

Sem *Sem::createSemaphore(uint32 init) {
    800023a0:	fe010113          	addi	sp,sp,-32
    800023a4:	00113c23          	sd	ra,24(sp)
    800023a8:	00813823          	sd	s0,16(sp)
    800023ac:	00913423          	sd	s1,8(sp)
    800023b0:	02010413          	addi	s0,sp,32
    800023b4:	00050493          	mv	s1,a0
    return new Sem(init);
    800023b8:	02000513          	li	a0,32
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	b54080e7          	jalr	-1196(ra) # 80001f10 <_Znwm>
    Sem(uint32 init = 1) : val(init), active(true) {}
    800023c4:	00952023          	sw	s1,0(a0)
    800023c8:	00100713          	li	a4,1
    800023cc:	00e50223          	sb	a4,4(a0)
    List() : head(0), tail(0) {}
    800023d0:	00053423          	sd	zero,8(a0)
    800023d4:	00053823          	sd	zero,16(a0)
    800023d8:	00053c23          	sd	zero,24(a0)
}
    800023dc:	01813083          	ld	ra,24(sp)
    800023e0:	01013403          	ld	s0,16(sp)
    800023e4:	00813483          	ld	s1,8(sp)
    800023e8:	02010113          	addi	sp,sp,32
    800023ec:	00008067          	ret

00000000800023f0 <_ZN3Sem15deleteSemaphoreEPS_>:

void Sem::deleteSemaphore(sem_t handle) {
    800023f0:	fc010113          	addi	sp,sp,-64
    800023f4:	02113c23          	sd	ra,56(sp)
    800023f8:	02813823          	sd	s0,48(sp)
    800023fc:	02913423          	sd	s1,40(sp)
    80002400:	03213023          	sd	s2,32(sp)
    80002404:	01313c23          	sd	s3,24(sp)
    80002408:	01413823          	sd	s4,16(sp)
    8000240c:	01513423          	sd	s5,8(sp)
    80002410:	04010413          	addi	s0,sp,64
    80002414:	00050493          	mv	s1,a0
    void setActive(bool val) { active = val; }
    80002418:	00050223          	sb	zero,4(a0)
    uint64 getCnt() { return cnt; }
    8000241c:	01853a83          	ld	s5,24(a0)
    handle->setActive(false);

    uint64 queueSize = handle->blocked.getCnt();

    for(uint64 i = 0; i < queueSize; i++) {
    80002420:	00000913          	li	s2,0
    80002424:	0340006f          	j	80002458 <_ZN3Sem15deleteSemaphoreEPS_+0x68>
        if (!head) { tail = 0; }
    80002428:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    8000242c:	00053a03          	ld	s4,0(a0)
        delete elem;
    80002430:	00000097          	auipc	ra,0x0
    80002434:	b60080e7          	jalr	-1184(ra) # 80001f90 <_ZdlPv>
        cnt--;
    80002438:	0109b783          	ld	a5,16(s3)
    8000243c:	fff78793          	addi	a5,a5,-1
    80002440:	00f9b823          	sd	a5,16(s3)
    80002444:	020a08a3          	sb	zero,49(s4)
        thread_t th = handle->blocked.removeFirst();
        th->setBlocked(false);
        Scheduler::put(th);
    80002448:	000a0513          	mv	a0,s4
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	118080e7          	jalr	280(ra) # 80002564 <_ZN9Scheduler3putEP3PCB>
    for(uint64 i = 0; i < queueSize; i++) {
    80002454:	00190913          	addi	s2,s2,1
    80002458:	03597463          	bgeu	s2,s5,80002480 <_ZN3Sem15deleteSemaphoreEPS_+0x90>
        thread_t th = handle->blocked.removeFirst();
    8000245c:	00848993          	addi	s3,s1,8
        if (!head) { return 0; }
    80002460:	0084b503          	ld	a0,8(s1)
    80002464:	00050a63          	beqz	a0,80002478 <_ZN3Sem15deleteSemaphoreEPS_+0x88>
        head = head->next;
    80002468:	00853783          	ld	a5,8(a0)
    8000246c:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80002470:	fa079ee3          	bnez	a5,8000242c <_ZN3Sem15deleteSemaphoreEPS_+0x3c>
    80002474:	fb5ff06f          	j	80002428 <_ZN3Sem15deleteSemaphoreEPS_+0x38>
        if (!head) { return 0; }
    80002478:	00050a13          	mv	s4,a0
    8000247c:	fc9ff06f          	j	80002444 <_ZN3Sem15deleteSemaphoreEPS_+0x54>
    }
}
    80002480:	03813083          	ld	ra,56(sp)
    80002484:	03013403          	ld	s0,48(sp)
    80002488:	02813483          	ld	s1,40(sp)
    8000248c:	02013903          	ld	s2,32(sp)
    80002490:	01813983          	ld	s3,24(sp)
    80002494:	01013a03          	ld	s4,16(sp)
    80002498:	00813a83          	ld	s5,8(sp)
    8000249c:	04010113          	addi	sp,sp,64
    800024a0:	00008067          	ret

00000000800024a4 <_Z41__static_initialization_and_destruction_0ii>:
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(PCB *pcb) {
    readyCoroutineQueue.addLast(pcb);
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00813423          	sd	s0,8(sp)
    800024ac:	01010413          	addi	s0,sp,16
    800024b0:	00100793          	li	a5,1
    800024b4:	00f50863          	beq	a0,a5,800024c4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800024b8:	00813403          	ld	s0,8(sp)
    800024bc:	01010113          	addi	sp,sp,16
    800024c0:	00008067          	ret
    800024c4:	000107b7          	lui	a5,0x10
    800024c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800024cc:	fef596e3          	bne	a1,a5,800024b8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    800024d0:	00005797          	auipc	a5,0x5
    800024d4:	0e878793          	addi	a5,a5,232 # 800075b8 <_ZN9Scheduler19readyCoroutineQueueE>
    800024d8:	0007b023          	sd	zero,0(a5)
    800024dc:	0007b423          	sd	zero,8(a5)
    800024e0:	0007b823          	sd	zero,16(a5)
    800024e4:	fd5ff06f          	j	800024b8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800024e8 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800024e8:	fe010113          	addi	sp,sp,-32
    800024ec:	00113c23          	sd	ra,24(sp)
    800024f0:	00813823          	sd	s0,16(sp)
    800024f4:	00913423          	sd	s1,8(sp)
    800024f8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800024fc:	00005517          	auipc	a0,0x5
    80002500:	0bc53503          	ld	a0,188(a0) # 800075b8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002504:	04050c63          	beqz	a0,8000255c <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80002508:	00853783          	ld	a5,8(a0)
    8000250c:	00005717          	auipc	a4,0x5
    80002510:	0af73623          	sd	a5,172(a4) # 800075b8 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002514:	02078e63          	beqz	a5,80002550 <_ZN9Scheduler3getEv+0x68>
        T *ret = elem->data;
    80002518:	00053483          	ld	s1,0(a0)
        delete elem;
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	a74080e7          	jalr	-1420(ra) # 80001f90 <_ZdlPv>
        cnt--;
    80002524:	00005717          	auipc	a4,0x5
    80002528:	09470713          	addi	a4,a4,148 # 800075b8 <_ZN9Scheduler19readyCoroutineQueueE>
    8000252c:	01073783          	ld	a5,16(a4)
    80002530:	fff78793          	addi	a5,a5,-1
    80002534:	00f73823          	sd	a5,16(a4)
}
    80002538:	00048513          	mv	a0,s1
    8000253c:	01813083          	ld	ra,24(sp)
    80002540:	01013403          	ld	s0,16(sp)
    80002544:	00813483          	ld	s1,8(sp)
    80002548:	02010113          	addi	sp,sp,32
    8000254c:	00008067          	ret
        if (!head) { tail = 0; }
    80002550:	00005797          	auipc	a5,0x5
    80002554:	0607b823          	sd	zero,112(a5) # 800075c0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002558:	fc1ff06f          	j	80002518 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000255c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002560:	fd9ff06f          	j	80002538 <_ZN9Scheduler3getEv+0x50>

0000000080002564 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    80002564:	fe010113          	addi	sp,sp,-32
    80002568:	00113c23          	sd	ra,24(sp)
    8000256c:	00813823          	sd	s0,16(sp)
    80002570:	00913423          	sd	s1,8(sp)
    80002574:	02010413          	addi	s0,sp,32
    80002578:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000257c:	01000513          	li	a0,16
    80002580:	00000097          	auipc	ra,0x0
    80002584:	990080e7          	jalr	-1648(ra) # 80001f10 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002588:	00953023          	sd	s1,0(a0)
    8000258c:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002590:	00005797          	auipc	a5,0x5
    80002594:	0307b783          	ld	a5,48(a5) # 800075c0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002598:	02078c63          	beqz	a5,800025d0 <_ZN9Scheduler3putEP3PCB+0x6c>
            tail->next = elem;
    8000259c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800025a0:	00005797          	auipc	a5,0x5
    800025a4:	02a7b023          	sd	a0,32(a5) # 800075c0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        cnt++;
    800025a8:	00005717          	auipc	a4,0x5
    800025ac:	01070713          	addi	a4,a4,16 # 800075b8 <_ZN9Scheduler19readyCoroutineQueueE>
    800025b0:	01073783          	ld	a5,16(a4)
    800025b4:	00178793          	addi	a5,a5,1
    800025b8:	00f73823          	sd	a5,16(a4)
    800025bc:	01813083          	ld	ra,24(sp)
    800025c0:	01013403          	ld	s0,16(sp)
    800025c4:	00813483          	ld	s1,8(sp)
    800025c8:	02010113          	addi	sp,sp,32
    800025cc:	00008067          	ret
            head = tail = elem;
    800025d0:	00005797          	auipc	a5,0x5
    800025d4:	fe878793          	addi	a5,a5,-24 # 800075b8 <_ZN9Scheduler19readyCoroutineQueueE>
    800025d8:	00a7b423          	sd	a0,8(a5)
    800025dc:	00a7b023          	sd	a0,0(a5)
    800025e0:	fc9ff06f          	j	800025a8 <_ZN9Scheduler3putEP3PCB+0x44>

00000000800025e4 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00113423          	sd	ra,8(sp)
    800025ec:	00813023          	sd	s0,0(sp)
    800025f0:	01010413          	addi	s0,sp,16
    800025f4:	000105b7          	lui	a1,0x10
    800025f8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800025fc:	00100513          	li	a0,1
    80002600:	00000097          	auipc	ra,0x0
    80002604:	ea4080e7          	jalr	-348(ra) # 800024a4 <_Z41__static_initialization_and_destruction_0ii>
    80002608:	00813083          	ld	ra,8(sp)
    8000260c:	00013403          	ld	s0,0(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret

0000000080002618 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002618:	fe010113          	addi	sp,sp,-32
    8000261c:	00113c23          	sd	ra,24(sp)
    80002620:	00813823          	sd	s0,16(sp)
    80002624:	00913423          	sd	s1,8(sp)
    80002628:	02010413          	addi	s0,sp,32
    8000262c:	00050493          	mv	s1,a0
    LOCK();
    80002630:	00100613          	li	a2,1
    80002634:	00000593          	li	a1,0
    80002638:	00005517          	auipc	a0,0x5
    8000263c:	f9850513          	addi	a0,a0,-104 # 800075d0 <lockPrint>
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	bf4080e7          	jalr	-1036(ra) # 80001234 <copy_and_swap>
    80002648:	fe0514e3          	bnez	a0,80002630 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000264c:	0004c503          	lbu	a0,0(s1)
    80002650:	00050a63          	beqz	a0,80002664 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	ee4080e7          	jalr	-284(ra) # 80001538 <_Z4putcc>
        string++;
    8000265c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002660:	fedff06f          	j	8000264c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002664:	00000613          	li	a2,0
    80002668:	00100593          	li	a1,1
    8000266c:	00005517          	auipc	a0,0x5
    80002670:	f6450513          	addi	a0,a0,-156 # 800075d0 <lockPrint>
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	bc0080e7          	jalr	-1088(ra) # 80001234 <copy_and_swap>
    8000267c:	fe0514e3          	bnez	a0,80002664 <_Z11printStringPKc+0x4c>
}
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	01013403          	ld	s0,16(sp)
    80002688:	00813483          	ld	s1,8(sp)
    8000268c:	02010113          	addi	sp,sp,32
    80002690:	00008067          	ret

0000000080002694 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002694:	fd010113          	addi	sp,sp,-48
    80002698:	02113423          	sd	ra,40(sp)
    8000269c:	02813023          	sd	s0,32(sp)
    800026a0:	00913c23          	sd	s1,24(sp)
    800026a4:	01213823          	sd	s2,16(sp)
    800026a8:	01313423          	sd	s3,8(sp)
    800026ac:	01413023          	sd	s4,0(sp)
    800026b0:	03010413          	addi	s0,sp,48
    800026b4:	00050993          	mv	s3,a0
    800026b8:	00058a13          	mv	s4,a1
    LOCK();
    800026bc:	00100613          	li	a2,1
    800026c0:	00000593          	li	a1,0
    800026c4:	00005517          	auipc	a0,0x5
    800026c8:	f0c50513          	addi	a0,a0,-244 # 800075d0 <lockPrint>
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	b68080e7          	jalr	-1176(ra) # 80001234 <copy_and_swap>
    800026d4:	fe0514e3          	bnez	a0,800026bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800026d8:	00000913          	li	s2,0
    800026dc:	00090493          	mv	s1,s2
    800026e0:	0019091b          	addiw	s2,s2,1
    800026e4:	03495a63          	bge	s2,s4,80002718 <_Z9getStringPci+0x84>
        cc = getc();
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	e18080e7          	jalr	-488(ra) # 80001500 <_Z4getcv>
        if(cc < 1)
    800026f0:	02050463          	beqz	a0,80002718 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800026f4:	009984b3          	add	s1,s3,s1
    800026f8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800026fc:	00a00793          	li	a5,10
    80002700:	00f50a63          	beq	a0,a5,80002714 <_Z9getStringPci+0x80>
    80002704:	00d00793          	li	a5,13
    80002708:	fcf51ae3          	bne	a0,a5,800026dc <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000270c:	00090493          	mv	s1,s2
    80002710:	0080006f          	j	80002718 <_Z9getStringPci+0x84>
    80002714:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002718:	009984b3          	add	s1,s3,s1
    8000271c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002720:	00000613          	li	a2,0
    80002724:	00100593          	li	a1,1
    80002728:	00005517          	auipc	a0,0x5
    8000272c:	ea850513          	addi	a0,a0,-344 # 800075d0 <lockPrint>
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	b04080e7          	jalr	-1276(ra) # 80001234 <copy_and_swap>
    80002738:	fe0514e3          	bnez	a0,80002720 <_Z9getStringPci+0x8c>
    return buf;
}
    8000273c:	00098513          	mv	a0,s3
    80002740:	02813083          	ld	ra,40(sp)
    80002744:	02013403          	ld	s0,32(sp)
    80002748:	01813483          	ld	s1,24(sp)
    8000274c:	01013903          	ld	s2,16(sp)
    80002750:	00813983          	ld	s3,8(sp)
    80002754:	00013a03          	ld	s4,0(sp)
    80002758:	03010113          	addi	sp,sp,48
    8000275c:	00008067          	ret

0000000080002760 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00813423          	sd	s0,8(sp)
    80002768:	01010413          	addi	s0,sp,16
    8000276c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002770:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002774:	0006c603          	lbu	a2,0(a3)
    80002778:	fd06071b          	addiw	a4,a2,-48
    8000277c:	0ff77713          	andi	a4,a4,255
    80002780:	00900793          	li	a5,9
    80002784:	02e7e063          	bltu	a5,a4,800027a4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002788:	0025179b          	slliw	a5,a0,0x2
    8000278c:	00a787bb          	addw	a5,a5,a0
    80002790:	0017979b          	slliw	a5,a5,0x1
    80002794:	00168693          	addi	a3,a3,1
    80002798:	00c787bb          	addw	a5,a5,a2
    8000279c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800027a0:	fd5ff06f          	j	80002774 <_Z11stringToIntPKc+0x14>
    return n;
}
    800027a4:	00813403          	ld	s0,8(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret

00000000800027b0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800027b0:	fc010113          	addi	sp,sp,-64
    800027b4:	02113c23          	sd	ra,56(sp)
    800027b8:	02813823          	sd	s0,48(sp)
    800027bc:	02913423          	sd	s1,40(sp)
    800027c0:	03213023          	sd	s2,32(sp)
    800027c4:	01313c23          	sd	s3,24(sp)
    800027c8:	04010413          	addi	s0,sp,64
    800027cc:	00050493          	mv	s1,a0
    800027d0:	00058913          	mv	s2,a1
    800027d4:	00060993          	mv	s3,a2
    LOCK();
    800027d8:	00100613          	li	a2,1
    800027dc:	00000593          	li	a1,0
    800027e0:	00005517          	auipc	a0,0x5
    800027e4:	df050513          	addi	a0,a0,-528 # 800075d0 <lockPrint>
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	a4c080e7          	jalr	-1460(ra) # 80001234 <copy_and_swap>
    800027f0:	fe0514e3          	bnez	a0,800027d8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800027f4:	00098463          	beqz	s3,800027fc <_Z8printIntiii+0x4c>
    800027f8:	0804c463          	bltz	s1,80002880 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800027fc:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002800:	00000593          	li	a1,0
    }

    i = 0;
    80002804:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002808:	0009079b          	sext.w	a5,s2
    8000280c:	0325773b          	remuw	a4,a0,s2
    80002810:	00048613          	mv	a2,s1
    80002814:	0014849b          	addiw	s1,s1,1
    80002818:	02071693          	slli	a3,a4,0x20
    8000281c:	0206d693          	srli	a3,a3,0x20
    80002820:	00005717          	auipc	a4,0x5
    80002824:	c6070713          	addi	a4,a4,-928 # 80007480 <digits>
    80002828:	00d70733          	add	a4,a4,a3
    8000282c:	00074683          	lbu	a3,0(a4)
    80002830:	fd040713          	addi	a4,s0,-48
    80002834:	00c70733          	add	a4,a4,a2
    80002838:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000283c:	0005071b          	sext.w	a4,a0
    80002840:	0325553b          	divuw	a0,a0,s2
    80002844:	fcf772e3          	bgeu	a4,a5,80002808 <_Z8printIntiii+0x58>
    if(neg)
    80002848:	00058c63          	beqz	a1,80002860 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000284c:	fd040793          	addi	a5,s0,-48
    80002850:	009784b3          	add	s1,a5,s1
    80002854:	02d00793          	li	a5,45
    80002858:	fef48823          	sb	a5,-16(s1)
    8000285c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002860:	fff4849b          	addiw	s1,s1,-1
    80002864:	0204c463          	bltz	s1,8000288c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002868:	fd040793          	addi	a5,s0,-48
    8000286c:	009787b3          	add	a5,a5,s1
    80002870:	ff07c503          	lbu	a0,-16(a5)
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	cc4080e7          	jalr	-828(ra) # 80001538 <_Z4putcc>
    8000287c:	fe5ff06f          	j	80002860 <_Z8printIntiii+0xb0>
        x = -xx;
    80002880:	4090053b          	negw	a0,s1
        neg = 1;
    80002884:	00100593          	li	a1,1
        x = -xx;
    80002888:	f7dff06f          	j	80002804 <_Z8printIntiii+0x54>

    UNLOCK();
    8000288c:	00000613          	li	a2,0
    80002890:	00100593          	li	a1,1
    80002894:	00005517          	auipc	a0,0x5
    80002898:	d3c50513          	addi	a0,a0,-708 # 800075d0 <lockPrint>
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	998080e7          	jalr	-1640(ra) # 80001234 <copy_and_swap>
    800028a4:	fe0514e3          	bnez	a0,8000288c <_Z8printIntiii+0xdc>
    800028a8:	03813083          	ld	ra,56(sp)
    800028ac:	03013403          	ld	s0,48(sp)
    800028b0:	02813483          	ld	s1,40(sp)
    800028b4:	02013903          	ld	s2,32(sp)
    800028b8:	01813983          	ld	s3,24(sp)
    800028bc:	04010113          	addi	sp,sp,64
    800028c0:	00008067          	ret

00000000800028c4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800028c4:	fd010113          	addi	sp,sp,-48
    800028c8:	02113423          	sd	ra,40(sp)
    800028cc:	02813023          	sd	s0,32(sp)
    800028d0:	00913c23          	sd	s1,24(sp)
    800028d4:	01213823          	sd	s2,16(sp)
    800028d8:	01313423          	sd	s3,8(sp)
    800028dc:	03010413          	addi	s0,sp,48
    800028e0:	00050493          	mv	s1,a0
    800028e4:	00058913          	mv	s2,a1
    800028e8:	0015879b          	addiw	a5,a1,1
    800028ec:	0007851b          	sext.w	a0,a5
    800028f0:	00f4a023          	sw	a5,0(s1)
    800028f4:	0004a823          	sw	zero,16(s1)
    800028f8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800028fc:	00251513          	slli	a0,a0,0x2
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	970080e7          	jalr	-1680(ra) # 80001270 <_Z9mem_allocm>
    80002908:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000290c:	01000513          	li	a0,16
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	600080e7          	jalr	1536(ra) # 80001f10 <_Znwm>
    80002918:	00050993          	mv	s3,a0
    8000291c:	00000593          	li	a1,0
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	7c0080e7          	jalr	1984(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80002928:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000292c:	01000513          	li	a0,16
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	5e0080e7          	jalr	1504(ra) # 80001f10 <_Znwm>
    80002938:	00050993          	mv	s3,a0
    8000293c:	00090593          	mv	a1,s2
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	7a0080e7          	jalr	1952(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80002948:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000294c:	01000513          	li	a0,16
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	5c0080e7          	jalr	1472(ra) # 80001f10 <_Znwm>
    80002958:	00050913          	mv	s2,a0
    8000295c:	00100593          	li	a1,1
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	780080e7          	jalr	1920(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80002968:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000296c:	01000513          	li	a0,16
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	5a0080e7          	jalr	1440(ra) # 80001f10 <_Znwm>
    80002978:	00050913          	mv	s2,a0
    8000297c:	00100593          	li	a1,1
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	760080e7          	jalr	1888(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80002988:	0324b823          	sd	s2,48(s1)
}
    8000298c:	02813083          	ld	ra,40(sp)
    80002990:	02013403          	ld	s0,32(sp)
    80002994:	01813483          	ld	s1,24(sp)
    80002998:	01013903          	ld	s2,16(sp)
    8000299c:	00813983          	ld	s3,8(sp)
    800029a0:	03010113          	addi	sp,sp,48
    800029a4:	00008067          	ret
    800029a8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800029ac:	00098513          	mv	a0,s3
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	5e0080e7          	jalr	1504(ra) # 80001f90 <_ZdlPv>
    800029b8:	00048513          	mv	a0,s1
    800029bc:	00006097          	auipc	ra,0x6
    800029c0:	cfc080e7          	jalr	-772(ra) # 800086b8 <_Unwind_Resume>
    800029c4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800029c8:	00098513          	mv	a0,s3
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	5c4080e7          	jalr	1476(ra) # 80001f90 <_ZdlPv>
    800029d4:	00048513          	mv	a0,s1
    800029d8:	00006097          	auipc	ra,0x6
    800029dc:	ce0080e7          	jalr	-800(ra) # 800086b8 <_Unwind_Resume>
    800029e0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800029e4:	00090513          	mv	a0,s2
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	5a8080e7          	jalr	1448(ra) # 80001f90 <_ZdlPv>
    800029f0:	00048513          	mv	a0,s1
    800029f4:	00006097          	auipc	ra,0x6
    800029f8:	cc4080e7          	jalr	-828(ra) # 800086b8 <_Unwind_Resume>
    800029fc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002a00:	00090513          	mv	a0,s2
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	58c080e7          	jalr	1420(ra) # 80001f90 <_ZdlPv>
    80002a0c:	00048513          	mv	a0,s1
    80002a10:	00006097          	auipc	ra,0x6
    80002a14:	ca8080e7          	jalr	-856(ra) # 800086b8 <_Unwind_Resume>

0000000080002a18 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002a18:	fe010113          	addi	sp,sp,-32
    80002a1c:	00113c23          	sd	ra,24(sp)
    80002a20:	00813823          	sd	s0,16(sp)
    80002a24:	00913423          	sd	s1,8(sp)
    80002a28:	01213023          	sd	s2,0(sp)
    80002a2c:	02010413          	addi	s0,sp,32
    80002a30:	00050493          	mv	s1,a0
    80002a34:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002a38:	01853503          	ld	a0,24(a0)
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	6dc080e7          	jalr	1756(ra) # 80002118 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002a44:	0304b503          	ld	a0,48(s1)
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	6d0080e7          	jalr	1744(ra) # 80002118 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002a50:	0084b783          	ld	a5,8(s1)
    80002a54:	0144a703          	lw	a4,20(s1)
    80002a58:	00271713          	slli	a4,a4,0x2
    80002a5c:	00e787b3          	add	a5,a5,a4
    80002a60:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002a64:	0144a783          	lw	a5,20(s1)
    80002a68:	0017879b          	addiw	a5,a5,1
    80002a6c:	0004a703          	lw	a4,0(s1)
    80002a70:	02e7e7bb          	remw	a5,a5,a4
    80002a74:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002a78:	0304b503          	ld	a0,48(s1)
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	6c8080e7          	jalr	1736(ra) # 80002144 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002a84:	0204b503          	ld	a0,32(s1)
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	6bc080e7          	jalr	1724(ra) # 80002144 <_ZN9Semaphore6signalEv>

}
    80002a90:	01813083          	ld	ra,24(sp)
    80002a94:	01013403          	ld	s0,16(sp)
    80002a98:	00813483          	ld	s1,8(sp)
    80002a9c:	00013903          	ld	s2,0(sp)
    80002aa0:	02010113          	addi	sp,sp,32
    80002aa4:	00008067          	ret

0000000080002aa8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002aa8:	fe010113          	addi	sp,sp,-32
    80002aac:	00113c23          	sd	ra,24(sp)
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	01213023          	sd	s2,0(sp)
    80002abc:	02010413          	addi	s0,sp,32
    80002ac0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002ac4:	02053503          	ld	a0,32(a0)
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	650080e7          	jalr	1616(ra) # 80002118 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002ad0:	0284b503          	ld	a0,40(s1)
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	644080e7          	jalr	1604(ra) # 80002118 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002adc:	0084b703          	ld	a4,8(s1)
    80002ae0:	0104a783          	lw	a5,16(s1)
    80002ae4:	00279693          	slli	a3,a5,0x2
    80002ae8:	00d70733          	add	a4,a4,a3
    80002aec:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002af0:	0017879b          	addiw	a5,a5,1
    80002af4:	0004a703          	lw	a4,0(s1)
    80002af8:	02e7e7bb          	remw	a5,a5,a4
    80002afc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002b00:	0284b503          	ld	a0,40(s1)
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	640080e7          	jalr	1600(ra) # 80002144 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002b0c:	0184b503          	ld	a0,24(s1)
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	634080e7          	jalr	1588(ra) # 80002144 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002b18:	00090513          	mv	a0,s2
    80002b1c:	01813083          	ld	ra,24(sp)
    80002b20:	01013403          	ld	s0,16(sp)
    80002b24:	00813483          	ld	s1,8(sp)
    80002b28:	00013903          	ld	s2,0(sp)
    80002b2c:	02010113          	addi	sp,sp,32
    80002b30:	00008067          	ret

0000000080002b34 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002b34:	fe010113          	addi	sp,sp,-32
    80002b38:	00113c23          	sd	ra,24(sp)
    80002b3c:	00813823          	sd	s0,16(sp)
    80002b40:	00913423          	sd	s1,8(sp)
    80002b44:	01213023          	sd	s2,0(sp)
    80002b48:	02010413          	addi	s0,sp,32
    80002b4c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002b50:	02853503          	ld	a0,40(a0)
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	5c4080e7          	jalr	1476(ra) # 80002118 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002b5c:	0304b503          	ld	a0,48(s1)
    80002b60:	fffff097          	auipc	ra,0xfffff
    80002b64:	5b8080e7          	jalr	1464(ra) # 80002118 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002b68:	0144a783          	lw	a5,20(s1)
    80002b6c:	0104a903          	lw	s2,16(s1)
    80002b70:	0327ce63          	blt	a5,s2,80002bac <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002b74:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002b78:	0304b503          	ld	a0,48(s1)
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	5c8080e7          	jalr	1480(ra) # 80002144 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002b84:	0284b503          	ld	a0,40(s1)
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	5bc080e7          	jalr	1468(ra) # 80002144 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002b90:	00090513          	mv	a0,s2
    80002b94:	01813083          	ld	ra,24(sp)
    80002b98:	01013403          	ld	s0,16(sp)
    80002b9c:	00813483          	ld	s1,8(sp)
    80002ba0:	00013903          	ld	s2,0(sp)
    80002ba4:	02010113          	addi	sp,sp,32
    80002ba8:	00008067          	ret
        ret = cap - head + tail;
    80002bac:	0004a703          	lw	a4,0(s1)
    80002bb0:	4127093b          	subw	s2,a4,s2
    80002bb4:	00f9093b          	addw	s2,s2,a5
    80002bb8:	fc1ff06f          	j	80002b78 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002bbc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002bbc:	fe010113          	addi	sp,sp,-32
    80002bc0:	00113c23          	sd	ra,24(sp)
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	02010413          	addi	s0,sp,32
    80002bd0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002bd4:	00a00513          	li	a0,10
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	5c0080e7          	jalr	1472(ra) # 80002198 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002be0:	00003517          	auipc	a0,0x3
    80002be4:	56050513          	addi	a0,a0,1376 # 80006140 <CONSOLE_STATUS+0x130>
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	a30080e7          	jalr	-1488(ra) # 80002618 <_Z11printStringPKc>
    while (getCnt()) {
    80002bf0:	00048513          	mv	a0,s1
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	f40080e7          	jalr	-192(ra) # 80002b34 <_ZN9BufferCPP6getCntEv>
    80002bfc:	02050c63          	beqz	a0,80002c34 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002c00:	0084b783          	ld	a5,8(s1)
    80002c04:	0104a703          	lw	a4,16(s1)
    80002c08:	00271713          	slli	a4,a4,0x2
    80002c0c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002c10:	0007c503          	lbu	a0,0(a5)
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	584080e7          	jalr	1412(ra) # 80002198 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002c1c:	0104a783          	lw	a5,16(s1)
    80002c20:	0017879b          	addiw	a5,a5,1
    80002c24:	0004a703          	lw	a4,0(s1)
    80002c28:	02e7e7bb          	remw	a5,a5,a4
    80002c2c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002c30:	fc1ff06f          	j	80002bf0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002c34:	02100513          	li	a0,33
    80002c38:	fffff097          	auipc	ra,0xfffff
    80002c3c:	560080e7          	jalr	1376(ra) # 80002198 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002c40:	00a00513          	li	a0,10
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	554080e7          	jalr	1364(ra) # 80002198 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002c4c:	0084b503          	ld	a0,8(s1)
    80002c50:	ffffe097          	auipc	ra,0xffffe
    80002c54:	670080e7          	jalr	1648(ra) # 800012c0 <_Z8mem_freePv>
    delete itemAvailable;
    80002c58:	0204b503          	ld	a0,32(s1)
    80002c5c:	00050863          	beqz	a0,80002c6c <_ZN9BufferCPPD1Ev+0xb0>
    80002c60:	00053783          	ld	a5,0(a0)
    80002c64:	0087b783          	ld	a5,8(a5)
    80002c68:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002c6c:	0184b503          	ld	a0,24(s1)
    80002c70:	00050863          	beqz	a0,80002c80 <_ZN9BufferCPPD1Ev+0xc4>
    80002c74:	00053783          	ld	a5,0(a0)
    80002c78:	0087b783          	ld	a5,8(a5)
    80002c7c:	000780e7          	jalr	a5
    delete mutexTail;
    80002c80:	0304b503          	ld	a0,48(s1)
    80002c84:	00050863          	beqz	a0,80002c94 <_ZN9BufferCPPD1Ev+0xd8>
    80002c88:	00053783          	ld	a5,0(a0)
    80002c8c:	0087b783          	ld	a5,8(a5)
    80002c90:	000780e7          	jalr	a5
    delete mutexHead;
    80002c94:	0284b503          	ld	a0,40(s1)
    80002c98:	00050863          	beqz	a0,80002ca8 <_ZN9BufferCPPD1Ev+0xec>
    80002c9c:	00053783          	ld	a5,0(a0)
    80002ca0:	0087b783          	ld	a5,8(a5)
    80002ca4:	000780e7          	jalr	a5
}
    80002ca8:	01813083          	ld	ra,24(sp)
    80002cac:	01013403          	ld	s0,16(sp)
    80002cb0:	00813483          	ld	s1,8(sp)
    80002cb4:	02010113          	addi	sp,sp,32
    80002cb8:	00008067          	ret

0000000080002cbc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80002cbc:	fd010113          	addi	sp,sp,-48
    80002cc0:	02113423          	sd	ra,40(sp)
    80002cc4:	02813023          	sd	s0,32(sp)
    80002cc8:	00913c23          	sd	s1,24(sp)
    80002ccc:	01213823          	sd	s2,16(sp)
    80002cd0:	01313423          	sd	s3,8(sp)
    80002cd4:	03010413          	addi	s0,sp,48
    80002cd8:	00050993          	mv	s3,a0
    80002cdc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ce0:	00000913          	li	s2,0
    80002ce4:	00c0006f          	j	80002cf0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	38c080e7          	jalr	908(ra) # 80002074 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	810080e7          	jalr	-2032(ra) # 80001500 <_Z4getcv>
    80002cf8:	0005059b          	sext.w	a1,a0
    80002cfc:	01b00793          	li	a5,27
    80002d00:	02f58a63          	beq	a1,a5,80002d34 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80002d04:	0084b503          	ld	a0,8(s1)
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	d10080e7          	jalr	-752(ra) # 80002a18 <_ZN9BufferCPP3putEi>
        i++;
    80002d10:	0019071b          	addiw	a4,s2,1
    80002d14:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d18:	0004a683          	lw	a3,0(s1)
    80002d1c:	0026979b          	slliw	a5,a3,0x2
    80002d20:	00d787bb          	addw	a5,a5,a3
    80002d24:	0017979b          	slliw	a5,a5,0x1
    80002d28:	02f767bb          	remw	a5,a4,a5
    80002d2c:	fc0792e3          	bnez	a5,80002cf0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80002d30:	fb9ff06f          	j	80002ce8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80002d34:	00100793          	li	a5,1
    80002d38:	00005717          	auipc	a4,0x5
    80002d3c:	8af72023          	sw	a5,-1888(a4) # 800075d8 <threadEnd>
    td->buffer->put('!');
    80002d40:	0109b783          	ld	a5,16(s3)
    80002d44:	02100593          	li	a1,33
    80002d48:	0087b503          	ld	a0,8(a5)
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	ccc080e7          	jalr	-820(ra) # 80002a18 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80002d54:	0104b503          	ld	a0,16(s1)
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	3ec080e7          	jalr	1004(ra) # 80002144 <_ZN9Semaphore6signalEv>
}
    80002d60:	02813083          	ld	ra,40(sp)
    80002d64:	02013403          	ld	s0,32(sp)
    80002d68:	01813483          	ld	s1,24(sp)
    80002d6c:	01013903          	ld	s2,16(sp)
    80002d70:	00813983          	ld	s3,8(sp)
    80002d74:	03010113          	addi	sp,sp,48
    80002d78:	00008067          	ret

0000000080002d7c <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80002d7c:	fe010113          	addi	sp,sp,-32
    80002d80:	00113c23          	sd	ra,24(sp)
    80002d84:	00813823          	sd	s0,16(sp)
    80002d88:	00913423          	sd	s1,8(sp)
    80002d8c:	01213023          	sd	s2,0(sp)
    80002d90:	02010413          	addi	s0,sp,32
    80002d94:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002d98:	00000913          	li	s2,0
    80002d9c:	00c0006f          	j	80002da8 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	2d4080e7          	jalr	724(ra) # 80002074 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80002da8:	00005797          	auipc	a5,0x5
    80002dac:	8307a783          	lw	a5,-2000(a5) # 800075d8 <threadEnd>
    80002db0:	02079e63          	bnez	a5,80002dec <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80002db4:	0004a583          	lw	a1,0(s1)
    80002db8:	0305859b          	addiw	a1,a1,48
    80002dbc:	0084b503          	ld	a0,8(s1)
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	c58080e7          	jalr	-936(ra) # 80002a18 <_ZN9BufferCPP3putEi>
        i++;
    80002dc8:	0019071b          	addiw	a4,s2,1
    80002dcc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002dd0:	0004a683          	lw	a3,0(s1)
    80002dd4:	0026979b          	slliw	a5,a3,0x2
    80002dd8:	00d787bb          	addw	a5,a5,a3
    80002ddc:	0017979b          	slliw	a5,a5,0x1
    80002de0:	02f767bb          	remw	a5,a4,a5
    80002de4:	fc0792e3          	bnez	a5,80002da8 <_ZN8Producer8producerEPv+0x2c>
    80002de8:	fb9ff06f          	j	80002da0 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80002dec:	0104b503          	ld	a0,16(s1)
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	354080e7          	jalr	852(ra) # 80002144 <_ZN9Semaphore6signalEv>
}
    80002df8:	01813083          	ld	ra,24(sp)
    80002dfc:	01013403          	ld	s0,16(sp)
    80002e00:	00813483          	ld	s1,8(sp)
    80002e04:	00013903          	ld	s2,0(sp)
    80002e08:	02010113          	addi	sp,sp,32
    80002e0c:	00008067          	ret

0000000080002e10 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    80002e10:	fd010113          	addi	sp,sp,-48
    80002e14:	02113423          	sd	ra,40(sp)
    80002e18:	02813023          	sd	s0,32(sp)
    80002e1c:	00913c23          	sd	s1,24(sp)
    80002e20:	01213823          	sd	s2,16(sp)
    80002e24:	01313423          	sd	s3,8(sp)
    80002e28:	01413023          	sd	s4,0(sp)
    80002e2c:	03010413          	addi	s0,sp,48
    80002e30:	00050993          	mv	s3,a0
    80002e34:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e38:	00000a13          	li	s4,0
    80002e3c:	01c0006f          	j	80002e58 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	234080e7          	jalr	564(ra) # 80002074 <_ZN6Thread8dispatchEv>
    80002e48:	0500006f          	j	80002e98 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002e4c:	00a00513          	li	a0,10
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	6e8080e7          	jalr	1768(ra) # 80001538 <_Z4putcc>
    while (!threadEnd) {
    80002e58:	00004797          	auipc	a5,0x4
    80002e5c:	7807a783          	lw	a5,1920(a5) # 800075d8 <threadEnd>
    80002e60:	06079263          	bnez	a5,80002ec4 <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    80002e64:	00893503          	ld	a0,8(s2)
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	c40080e7          	jalr	-960(ra) # 80002aa8 <_ZN9BufferCPP3getEv>
        i++;
    80002e70:	001a049b          	addiw	s1,s4,1
    80002e74:	00048a1b          	sext.w	s4,s1
        putc(key);
    80002e78:	0ff57513          	andi	a0,a0,255
    80002e7c:	ffffe097          	auipc	ra,0xffffe
    80002e80:	6bc080e7          	jalr	1724(ra) # 80001538 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002e84:	00092703          	lw	a4,0(s2)
    80002e88:	0027179b          	slliw	a5,a4,0x2
    80002e8c:	00e787bb          	addw	a5,a5,a4
    80002e90:	02f4e7bb          	remw	a5,s1,a5
    80002e94:	fa0786e3          	beqz	a5,80002e40 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80002e98:	05000793          	li	a5,80
    80002e9c:	02f4e4bb          	remw	s1,s1,a5
    80002ea0:	fa049ce3          	bnez	s1,80002e58 <_ZN8Consumer8consumerEPv+0x48>
    80002ea4:	fa9ff06f          	j	80002e4c <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80002ea8:	0109b783          	ld	a5,16(s3)
    80002eac:	0087b503          	ld	a0,8(a5)
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	bf8080e7          	jalr	-1032(ra) # 80002aa8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80002eb8:	0ff57513          	andi	a0,a0,255
    80002ebc:	fffff097          	auipc	ra,0xfffff
    80002ec0:	2dc080e7          	jalr	732(ra) # 80002198 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80002ec4:	0109b783          	ld	a5,16(s3)
    80002ec8:	0087b503          	ld	a0,8(a5)
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	c68080e7          	jalr	-920(ra) # 80002b34 <_ZN9BufferCPP6getCntEv>
    80002ed4:	fca04ae3          	bgtz	a0,80002ea8 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    80002ed8:	01093503          	ld	a0,16(s2)
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	268080e7          	jalr	616(ra) # 80002144 <_ZN9Semaphore6signalEv>
}
    80002ee4:	02813083          	ld	ra,40(sp)
    80002ee8:	02013403          	ld	s0,32(sp)
    80002eec:	01813483          	ld	s1,24(sp)
    80002ef0:	01013903          	ld	s2,16(sp)
    80002ef4:	00813983          	ld	s3,8(sp)
    80002ef8:	00013a03          	ld	s4,0(sp)
    80002efc:	03010113          	addi	sp,sp,48
    80002f00:	00008067          	ret

0000000080002f04 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80002f04:	f8010113          	addi	sp,sp,-128
    80002f08:	06113c23          	sd	ra,120(sp)
    80002f0c:	06813823          	sd	s0,112(sp)
    80002f10:	06913423          	sd	s1,104(sp)
    80002f14:	07213023          	sd	s2,96(sp)
    80002f18:	05313c23          	sd	s3,88(sp)
    80002f1c:	05413823          	sd	s4,80(sp)
    80002f20:	05513423          	sd	s5,72(sp)
    80002f24:	05613023          	sd	s6,64(sp)
    80002f28:	03713c23          	sd	s7,56(sp)
    80002f2c:	03813823          	sd	s8,48(sp)
    80002f30:	03913423          	sd	s9,40(sp)
    80002f34:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80002f38:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80002f3c:	00003517          	auipc	a0,0x3
    80002f40:	21c50513          	addi	a0,a0,540 # 80006158 <CONSOLE_STATUS+0x148>
    80002f44:	fffff097          	auipc	ra,0xfffff
    80002f48:	6d4080e7          	jalr	1748(ra) # 80002618 <_Z11printStringPKc>
    getString(input, 30);
    80002f4c:	01e00593          	li	a1,30
    80002f50:	f8040493          	addi	s1,s0,-128
    80002f54:	00048513          	mv	a0,s1
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	73c080e7          	jalr	1852(ra) # 80002694 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002f60:	00048513          	mv	a0,s1
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	7fc080e7          	jalr	2044(ra) # 80002760 <_Z11stringToIntPKc>
    80002f6c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002f70:	00003517          	auipc	a0,0x3
    80002f74:	20850513          	addi	a0,a0,520 # 80006178 <CONSOLE_STATUS+0x168>
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	6a0080e7          	jalr	1696(ra) # 80002618 <_Z11printStringPKc>
    getString(input, 30);
    80002f80:	01e00593          	li	a1,30
    80002f84:	00048513          	mv	a0,s1
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	70c080e7          	jalr	1804(ra) # 80002694 <_Z9getStringPci>
    n = stringToInt(input);
    80002f90:	00048513          	mv	a0,s1
    80002f94:	fffff097          	auipc	ra,0xfffff
    80002f98:	7cc080e7          	jalr	1996(ra) # 80002760 <_Z11stringToIntPKc>
    80002f9c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002fa0:	00003517          	auipc	a0,0x3
    80002fa4:	1f850513          	addi	a0,a0,504 # 80006198 <CONSOLE_STATUS+0x188>
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	670080e7          	jalr	1648(ra) # 80002618 <_Z11printStringPKc>
    80002fb0:	00000613          	li	a2,0
    80002fb4:	00a00593          	li	a1,10
    80002fb8:	00090513          	mv	a0,s2
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	7f4080e7          	jalr	2036(ra) # 800027b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002fc4:	00003517          	auipc	a0,0x3
    80002fc8:	1ec50513          	addi	a0,a0,492 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80002fcc:	fffff097          	auipc	ra,0xfffff
    80002fd0:	64c080e7          	jalr	1612(ra) # 80002618 <_Z11printStringPKc>
    80002fd4:	00000613          	li	a2,0
    80002fd8:	00a00593          	li	a1,10
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	fffff097          	auipc	ra,0xfffff
    80002fe4:	7d0080e7          	jalr	2000(ra) # 800027b0 <_Z8printIntiii>
    printString(".\n");
    80002fe8:	00003517          	auipc	a0,0x3
    80002fec:	1e050513          	addi	a0,a0,480 # 800061c8 <CONSOLE_STATUS+0x1b8>
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	628080e7          	jalr	1576(ra) # 80002618 <_Z11printStringPKc>
    if(threadNum > n) {
    80002ff8:	0324c463          	blt	s1,s2,80003020 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80002ffc:	03205c63          	blez	s2,80003034 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003000:	03800513          	li	a0,56
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	f0c080e7          	jalr	-244(ra) # 80001f10 <_Znwm>
    8000300c:	00050a93          	mv	s5,a0
    80003010:	00048593          	mv	a1,s1
    80003014:	00000097          	auipc	ra,0x0
    80003018:	8b0080e7          	jalr	-1872(ra) # 800028c4 <_ZN9BufferCPPC1Ei>
    8000301c:	0300006f          	j	8000304c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003020:	00003517          	auipc	a0,0x3
    80003024:	1b050513          	addi	a0,a0,432 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	5f0080e7          	jalr	1520(ra) # 80002618 <_Z11printStringPKc>
        return;
    80003030:	0140006f          	j	80003044 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003034:	00003517          	auipc	a0,0x3
    80003038:	1dc50513          	addi	a0,a0,476 # 80006210 <CONSOLE_STATUS+0x200>
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	5dc080e7          	jalr	1500(ra) # 80002618 <_Z11printStringPKc>
        return;
    80003044:	000b8113          	mv	sp,s7
    80003048:	2400006f          	j	80003288 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    8000304c:	01000513          	li	a0,16
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	ec0080e7          	jalr	-320(ra) # 80001f10 <_Znwm>
    80003058:	00050493          	mv	s1,a0
    8000305c:	00000593          	li	a1,0
    80003060:	fffff097          	auipc	ra,0xfffff
    80003064:	080080e7          	jalr	128(ra) # 800020e0 <_ZN9SemaphoreC1Ej>
    80003068:	00004717          	auipc	a4,0x4
    8000306c:	57070713          	addi	a4,a4,1392 # 800075d8 <threadEnd>
    80003070:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    80003074:	00391793          	slli	a5,s2,0x3
    80003078:	00f78793          	addi	a5,a5,15
    8000307c:	ff07f793          	andi	a5,a5,-16
    80003080:	40f10133          	sub	sp,sp,a5
    80003084:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003088:	0019069b          	addiw	a3,s2,1
    8000308c:	00169793          	slli	a5,a3,0x1
    80003090:	00d787b3          	add	a5,a5,a3
    80003094:	00379793          	slli	a5,a5,0x3
    80003098:	00f78793          	addi	a5,a5,15
    8000309c:	ff07f793          	andi	a5,a5,-16
    800030a0:	40f10133          	sub	sp,sp,a5
    800030a4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800030a8:	00191493          	slli	s1,s2,0x1
    800030ac:	012487b3          	add	a5,s1,s2
    800030b0:	00379793          	slli	a5,a5,0x3
    800030b4:	00fa07b3          	add	a5,s4,a5
    800030b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800030bc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800030c0:	00873703          	ld	a4,8(a4)
    800030c4:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    800030c8:	01800513          	li	a0,24
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	e44080e7          	jalr	-444(ra) # 80001f10 <_Znwm>
    800030d4:	00050b13          	mv	s6,a0
    800030d8:	012484b3          	add	s1,s1,s2
    800030dc:	00349493          	slli	s1,s1,0x3
    800030e0:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    800030e4:	fffff097          	auipc	ra,0xfffff
    800030e8:	fb8080e7          	jalr	-72(ra) # 8000209c <_ZN6ThreadC1Ev>
    800030ec:	00004797          	auipc	a5,0x4
    800030f0:	40c78793          	addi	a5,a5,1036 # 800074f8 <_ZTV8Consumer+0x10>
    800030f4:	00fb3023          	sd	a5,0(s6)
    800030f8:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    800030fc:	000b0513          	mv	a0,s6
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	f44080e7          	jalr	-188(ra) # 80002044 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003108:	00000493          	li	s1,0
    8000310c:	0380006f          	j	80003144 <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80003110:	00004797          	auipc	a5,0x4
    80003114:	3c078793          	addi	a5,a5,960 # 800074d0 <_ZTV8Producer+0x10>
    80003118:	00fcb023          	sd	a5,0(s9)
    8000311c:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80003120:	00349793          	slli	a5,s1,0x3
    80003124:	00f987b3          	add	a5,s3,a5
    80003128:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000312c:	00349793          	slli	a5,s1,0x3
    80003130:	00f987b3          	add	a5,s3,a5
    80003134:	0007b503          	ld	a0,0(a5)
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	f0c080e7          	jalr	-244(ra) # 80002044 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003140:	0014849b          	addiw	s1,s1,1
    80003144:	0b24d063          	bge	s1,s2,800031e4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    80003148:	00149793          	slli	a5,s1,0x1
    8000314c:	009787b3          	add	a5,a5,s1
    80003150:	00379793          	slli	a5,a5,0x3
    80003154:	00fa07b3          	add	a5,s4,a5
    80003158:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000315c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80003160:	00004717          	auipc	a4,0x4
    80003164:	48073703          	ld	a4,1152(a4) # 800075e0 <waitForAll>
    80003168:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000316c:	02905863          	blez	s1,8000319c <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    80003170:	01800513          	li	a0,24
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	d9c080e7          	jalr	-612(ra) # 80001f10 <_Znwm>
    8000317c:	00050c93          	mv	s9,a0
    80003180:	00149c13          	slli	s8,s1,0x1
    80003184:	009c0c33          	add	s8,s8,s1
    80003188:	003c1c13          	slli	s8,s8,0x3
    8000318c:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	f0c080e7          	jalr	-244(ra) # 8000209c <_ZN6ThreadC1Ev>
    80003198:	f79ff06f          	j	80003110 <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    8000319c:	01800513          	li	a0,24
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	d70080e7          	jalr	-656(ra) # 80001f10 <_Znwm>
    800031a8:	00050c93          	mv	s9,a0
    800031ac:	00149c13          	slli	s8,s1,0x1
    800031b0:	009c0c33          	add	s8,s8,s1
    800031b4:	003c1c13          	slli	s8,s8,0x3
    800031b8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	ee0080e7          	jalr	-288(ra) # 8000209c <_ZN6ThreadC1Ev>
    800031c4:	00004797          	auipc	a5,0x4
    800031c8:	2e478793          	addi	a5,a5,740 # 800074a8 <_ZTV16ProducerKeyboard+0x10>
    800031cc:	00fcb023          	sd	a5,0(s9)
    800031d0:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800031d4:	00349793          	slli	a5,s1,0x3
    800031d8:	00f987b3          	add	a5,s3,a5
    800031dc:	0197b023          	sd	s9,0(a5)
    800031e0:	f4dff06f          	j	8000312c <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	e90080e7          	jalr	-368(ra) # 80002074 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800031ec:	00000493          	li	s1,0
    800031f0:	00994e63          	blt	s2,s1,8000320c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    800031f4:	00004517          	auipc	a0,0x4
    800031f8:	3ec53503          	ld	a0,1004(a0) # 800075e0 <waitForAll>
    800031fc:	fffff097          	auipc	ra,0xfffff
    80003200:	f1c080e7          	jalr	-228(ra) # 80002118 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003204:	0014849b          	addiw	s1,s1,1
    80003208:	fe9ff06f          	j	800031f0 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    8000320c:	00000493          	li	s1,0
    80003210:	0080006f          	j	80003218 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    80003214:	0014849b          	addiw	s1,s1,1
    80003218:	0324d263          	bge	s1,s2,8000323c <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    8000321c:	00349793          	slli	a5,s1,0x3
    80003220:	00f987b3          	add	a5,s3,a5
    80003224:	0007b503          	ld	a0,0(a5)
    80003228:	fe0506e3          	beqz	a0,80003214 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    8000322c:	00053783          	ld	a5,0(a0)
    80003230:	0087b783          	ld	a5,8(a5)
    80003234:	000780e7          	jalr	a5
    80003238:	fddff06f          	j	80003214 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    8000323c:	000b0a63          	beqz	s6,80003250 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80003240:	000b3783          	ld	a5,0(s6)
    80003244:	0087b783          	ld	a5,8(a5)
    80003248:	000b0513          	mv	a0,s6
    8000324c:	000780e7          	jalr	a5
    delete waitForAll;
    80003250:	00004517          	auipc	a0,0x4
    80003254:	39053503          	ld	a0,912(a0) # 800075e0 <waitForAll>
    80003258:	00050863          	beqz	a0,80003268 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    8000325c:	00053783          	ld	a5,0(a0)
    80003260:	0087b783          	ld	a5,8(a5)
    80003264:	000780e7          	jalr	a5
    delete buffer;
    80003268:	000a8e63          	beqz	s5,80003284 <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    8000326c:	000a8513          	mv	a0,s5
    80003270:	00000097          	auipc	ra,0x0
    80003274:	94c080e7          	jalr	-1716(ra) # 80002bbc <_ZN9BufferCPPD1Ev>
    80003278:	000a8513          	mv	a0,s5
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	d14080e7          	jalr	-748(ra) # 80001f90 <_ZdlPv>
    80003284:	000b8113          	mv	sp,s7

}
    80003288:	f8040113          	addi	sp,s0,-128
    8000328c:	07813083          	ld	ra,120(sp)
    80003290:	07013403          	ld	s0,112(sp)
    80003294:	06813483          	ld	s1,104(sp)
    80003298:	06013903          	ld	s2,96(sp)
    8000329c:	05813983          	ld	s3,88(sp)
    800032a0:	05013a03          	ld	s4,80(sp)
    800032a4:	04813a83          	ld	s5,72(sp)
    800032a8:	04013b03          	ld	s6,64(sp)
    800032ac:	03813b83          	ld	s7,56(sp)
    800032b0:	03013c03          	ld	s8,48(sp)
    800032b4:	02813c83          	ld	s9,40(sp)
    800032b8:	08010113          	addi	sp,sp,128
    800032bc:	00008067          	ret
    800032c0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800032c4:	000a8513          	mv	a0,s5
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	cc8080e7          	jalr	-824(ra) # 80001f90 <_ZdlPv>
    800032d0:	00048513          	mv	a0,s1
    800032d4:	00005097          	auipc	ra,0x5
    800032d8:	3e4080e7          	jalr	996(ra) # 800086b8 <_Unwind_Resume>
    800032dc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800032e0:	00048513          	mv	a0,s1
    800032e4:	fffff097          	auipc	ra,0xfffff
    800032e8:	cac080e7          	jalr	-852(ra) # 80001f90 <_ZdlPv>
    800032ec:	00090513          	mv	a0,s2
    800032f0:	00005097          	auipc	ra,0x5
    800032f4:	3c8080e7          	jalr	968(ra) # 800086b8 <_Unwind_Resume>
    800032f8:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    800032fc:	000b0513          	mv	a0,s6
    80003300:	fffff097          	auipc	ra,0xfffff
    80003304:	c90080e7          	jalr	-880(ra) # 80001f90 <_ZdlPv>
    80003308:	00048513          	mv	a0,s1
    8000330c:	00005097          	auipc	ra,0x5
    80003310:	3ac080e7          	jalr	940(ra) # 800086b8 <_Unwind_Resume>
    80003314:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80003318:	000c8513          	mv	a0,s9
    8000331c:	fffff097          	auipc	ra,0xfffff
    80003320:	c74080e7          	jalr	-908(ra) # 80001f90 <_ZdlPv>
    80003324:	00048513          	mv	a0,s1
    80003328:	00005097          	auipc	ra,0x5
    8000332c:	390080e7          	jalr	912(ra) # 800086b8 <_Unwind_Resume>
    80003330:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80003334:	000c8513          	mv	a0,s9
    80003338:	fffff097          	auipc	ra,0xfffff
    8000333c:	c58080e7          	jalr	-936(ra) # 80001f90 <_ZdlPv>
    80003340:	00048513          	mv	a0,s1
    80003344:	00005097          	auipc	ra,0x5
    80003348:	374080e7          	jalr	884(ra) # 800086b8 <_Unwind_Resume>

000000008000334c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    8000334c:	ff010113          	addi	sp,sp,-16
    80003350:	00113423          	sd	ra,8(sp)
    80003354:	00813023          	sd	s0,0(sp)
    80003358:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	ba8080e7          	jalr	-1112(ra) # 80002f04 <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80003364:	00813083          	ld	ra,8(sp)
    80003368:	00013403          	ld	s0,0(sp)
    8000336c:	01010113          	addi	sp,sp,16
    80003370:	00008067          	ret

0000000080003374 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    80003374:	ff010113          	addi	sp,sp,-16
    80003378:	00813423          	sd	s0,8(sp)
    8000337c:	01010413          	addi	s0,sp,16
    80003380:	00813403          	ld	s0,8(sp)
    80003384:	01010113          	addi	sp,sp,16
    80003388:	00008067          	ret

000000008000338c <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    8000338c:	ff010113          	addi	sp,sp,-16
    80003390:	00813423          	sd	s0,8(sp)
    80003394:	01010413          	addi	s0,sp,16
    80003398:	00813403          	ld	s0,8(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret

00000000800033a4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	00813403          	ld	s0,8(sp)
    800033b4:	01010113          	addi	sp,sp,16
    800033b8:	00008067          	ret

00000000800033bc <_ZN8ConsumerD0Ev>:
class Consumer:public Thread {
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00113423          	sd	ra,8(sp)
    800033c4:	00813023          	sd	s0,0(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	fffff097          	auipc	ra,0xfffff
    800033d0:	bc4080e7          	jalr	-1084(ra) # 80001f90 <_ZdlPv>
    800033d4:	00813083          	ld	ra,8(sp)
    800033d8:	00013403          	ld	s0,0(sp)
    800033dc:	01010113          	addi	sp,sp,16
    800033e0:	00008067          	ret

00000000800033e4 <_ZN8ProducerD0Ev>:
class Producer:public Thread {
    800033e4:	ff010113          	addi	sp,sp,-16
    800033e8:	00113423          	sd	ra,8(sp)
    800033ec:	00813023          	sd	s0,0(sp)
    800033f0:	01010413          	addi	s0,sp,16
    800033f4:	fffff097          	auipc	ra,0xfffff
    800033f8:	b9c080e7          	jalr	-1124(ra) # 80001f90 <_ZdlPv>
    800033fc:	00813083          	ld	ra,8(sp)
    80003400:	00013403          	ld	s0,0(sp)
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00008067          	ret

000000008000340c <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    8000340c:	ff010113          	addi	sp,sp,-16
    80003410:	00113423          	sd	ra,8(sp)
    80003414:	00813023          	sd	s0,0(sp)
    80003418:	01010413          	addi	s0,sp,16
    8000341c:	fffff097          	auipc	ra,0xfffff
    80003420:	b74080e7          	jalr	-1164(ra) # 80001f90 <_ZdlPv>
    80003424:	00813083          	ld	ra,8(sp)
    80003428:	00013403          	ld	s0,0(sp)
    8000342c:	01010113          	addi	sp,sp,16
    80003430:	00008067          	ret

0000000080003434 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80003434:	ff010113          	addi	sp,sp,-16
    80003438:	00113423          	sd	ra,8(sp)
    8000343c:	00813023          	sd	s0,0(sp)
    80003440:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80003444:	01053583          	ld	a1,16(a0)
    80003448:	00000097          	auipc	ra,0x0
    8000344c:	874080e7          	jalr	-1932(ra) # 80002cbc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00013403          	ld	s0,0(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN8Producer3runEv>:
    void run() override {
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
        producer(td);
    80003470:	01053583          	ld	a1,16(a0)
    80003474:	00000097          	auipc	ra,0x0
    80003478:	908080e7          	jalr	-1784(ra) # 80002d7c <_ZN8Producer8producerEPv>
    }
    8000347c:	00813083          	ld	ra,8(sp)
    80003480:	00013403          	ld	s0,0(sp)
    80003484:	01010113          	addi	sp,sp,16
    80003488:	00008067          	ret

000000008000348c <_ZN8Consumer3runEv>:
    void run() override {
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00113423          	sd	ra,8(sp)
    80003494:	00813023          	sd	s0,0(sp)
    80003498:	01010413          	addi	s0,sp,16
        consumer(td);
    8000349c:	01053583          	ld	a1,16(a0)
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	970080e7          	jalr	-1680(ra) # 80002e10 <_ZN8Consumer8consumerEPv>
    }
    800034a8:	00813083          	ld	ra,8(sp)
    800034ac:	00013403          	ld	s0,0(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret

00000000800034b8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800034b8:	fe010113          	addi	sp,sp,-32
    800034bc:	00113c23          	sd	ra,24(sp)
    800034c0:	00813823          	sd	s0,16(sp)
    800034c4:	00913423          	sd	s1,8(sp)
    800034c8:	01213023          	sd	s2,0(sp)
    800034cc:	02010413          	addi	s0,sp,32
    800034d0:	00050493          	mv	s1,a0
    800034d4:	00058913          	mv	s2,a1
    800034d8:	0015879b          	addiw	a5,a1,1
    800034dc:	0007851b          	sext.w	a0,a5
    800034e0:	00f4a023          	sw	a5,0(s1)
    800034e4:	0004a823          	sw	zero,16(s1)
    800034e8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800034ec:	00251513          	slli	a0,a0,0x2
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	d80080e7          	jalr	-640(ra) # 80001270 <_Z9mem_allocm>
    800034f8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800034fc:	00000593          	li	a1,0
    80003500:	02048513          	addi	a0,s1,32
    80003504:	ffffe097          	auipc	ra,0xffffe
    80003508:	ef4080e7          	jalr	-268(ra) # 800013f8 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    8000350c:	00090593          	mv	a1,s2
    80003510:	01848513          	addi	a0,s1,24
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	ee4080e7          	jalr	-284(ra) # 800013f8 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    8000351c:	00100593          	li	a1,1
    80003520:	02848513          	addi	a0,s1,40
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	ed4080e7          	jalr	-300(ra) # 800013f8 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    8000352c:	00100593          	li	a1,1
    80003530:	03048513          	addi	a0,s1,48
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	ec4080e7          	jalr	-316(ra) # 800013f8 <_Z8sem_openPP3Semj>
}
    8000353c:	01813083          	ld	ra,24(sp)
    80003540:	01013403          	ld	s0,16(sp)
    80003544:	00813483          	ld	s1,8(sp)
    80003548:	00013903          	ld	s2,0(sp)
    8000354c:	02010113          	addi	sp,sp,32
    80003550:	00008067          	ret

0000000080003554 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003554:	fe010113          	addi	sp,sp,-32
    80003558:	00113c23          	sd	ra,24(sp)
    8000355c:	00813823          	sd	s0,16(sp)
    80003560:	00913423          	sd	s1,8(sp)
    80003564:	01213023          	sd	s2,0(sp)
    80003568:	02010413          	addi	s0,sp,32
    8000356c:	00050493          	mv	s1,a0
    80003570:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003574:	01853503          	ld	a0,24(a0)
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	f10080e7          	jalr	-240(ra) # 80001488 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80003580:	0304b503          	ld	a0,48(s1)
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	f04080e7          	jalr	-252(ra) # 80001488 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    8000358c:	0084b783          	ld	a5,8(s1)
    80003590:	0144a703          	lw	a4,20(s1)
    80003594:	00271713          	slli	a4,a4,0x2
    80003598:	00e787b3          	add	a5,a5,a4
    8000359c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800035a0:	0144a783          	lw	a5,20(s1)
    800035a4:	0017879b          	addiw	a5,a5,1
    800035a8:	0004a703          	lw	a4,0(s1)
    800035ac:	02e7e7bb          	remw	a5,a5,a4
    800035b0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800035b4:	0304b503          	ld	a0,48(s1)
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	f0c080e7          	jalr	-244(ra) # 800014c4 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800035c0:	0204b503          	ld	a0,32(s1)
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	f00080e7          	jalr	-256(ra) # 800014c4 <_Z10sem_signalP3Sem>

}
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	00013903          	ld	s2,0(sp)
    800035dc:	02010113          	addi	sp,sp,32
    800035e0:	00008067          	ret

00000000800035e4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800035e4:	fe010113          	addi	sp,sp,-32
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	00813823          	sd	s0,16(sp)
    800035f0:	00913423          	sd	s1,8(sp)
    800035f4:	01213023          	sd	s2,0(sp)
    800035f8:	02010413          	addi	s0,sp,32
    800035fc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003600:	02053503          	ld	a0,32(a0)
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	e84080e7          	jalr	-380(ra) # 80001488 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    8000360c:	0284b503          	ld	a0,40(s1)
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	e78080e7          	jalr	-392(ra) # 80001488 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80003618:	0084b703          	ld	a4,8(s1)
    8000361c:	0104a783          	lw	a5,16(s1)
    80003620:	00279693          	slli	a3,a5,0x2
    80003624:	00d70733          	add	a4,a4,a3
    80003628:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000362c:	0017879b          	addiw	a5,a5,1
    80003630:	0004a703          	lw	a4,0(s1)
    80003634:	02e7e7bb          	remw	a5,a5,a4
    80003638:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000363c:	0284b503          	ld	a0,40(s1)
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	e84080e7          	jalr	-380(ra) # 800014c4 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80003648:	0184b503          	ld	a0,24(s1)
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	e78080e7          	jalr	-392(ra) # 800014c4 <_Z10sem_signalP3Sem>

    return ret;
}
    80003654:	00090513          	mv	a0,s2
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	00013903          	ld	s2,0(sp)
    80003668:	02010113          	addi	sp,sp,32
    8000366c:	00008067          	ret

0000000080003670 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00113c23          	sd	ra,24(sp)
    80003678:	00813823          	sd	s0,16(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	01213023          	sd	s2,0(sp)
    80003684:	02010413          	addi	s0,sp,32
    80003688:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000368c:	02853503          	ld	a0,40(a0)
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	df8080e7          	jalr	-520(ra) # 80001488 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80003698:	0304b503          	ld	a0,48(s1)
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	dec080e7          	jalr	-532(ra) # 80001488 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800036a4:	0144a783          	lw	a5,20(s1)
    800036a8:	0104a903          	lw	s2,16(s1)
    800036ac:	0327ce63          	blt	a5,s2,800036e8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800036b0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800036b4:	0304b503          	ld	a0,48(s1)
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	e0c080e7          	jalr	-500(ra) # 800014c4 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800036c0:	0284b503          	ld	a0,40(s1)
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	e00080e7          	jalr	-512(ra) # 800014c4 <_Z10sem_signalP3Sem>

    return ret;
}
    800036cc:	00090513          	mv	a0,s2
    800036d0:	01813083          	ld	ra,24(sp)
    800036d4:	01013403          	ld	s0,16(sp)
    800036d8:	00813483          	ld	s1,8(sp)
    800036dc:	00013903          	ld	s2,0(sp)
    800036e0:	02010113          	addi	sp,sp,32
    800036e4:	00008067          	ret
        ret = cap - head + tail;
    800036e8:	0004a703          	lw	a4,0(s1)
    800036ec:	4127093b          	subw	s2,a4,s2
    800036f0:	00f9093b          	addw	s2,s2,a5
    800036f4:	fc1ff06f          	j	800036b4 <_ZN6Buffer6getCntEv+0x44>

00000000800036f8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	02010413          	addi	s0,sp,32
    8000370c:	00050493          	mv	s1,a0
    putc('\n');
    80003710:	00a00513          	li	a0,10
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	e24080e7          	jalr	-476(ra) # 80001538 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000371c:	00003517          	auipc	a0,0x3
    80003720:	a2450513          	addi	a0,a0,-1500 # 80006140 <CONSOLE_STATUS+0x130>
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	ef4080e7          	jalr	-268(ra) # 80002618 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000372c:	00048513          	mv	a0,s1
    80003730:	00000097          	auipc	ra,0x0
    80003734:	f40080e7          	jalr	-192(ra) # 80003670 <_ZN6Buffer6getCntEv>
    80003738:	02a05c63          	blez	a0,80003770 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000373c:	0084b783          	ld	a5,8(s1)
    80003740:	0104a703          	lw	a4,16(s1)
    80003744:	00271713          	slli	a4,a4,0x2
    80003748:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000374c:	0007c503          	lbu	a0,0(a5)
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	de8080e7          	jalr	-536(ra) # 80001538 <_Z4putcc>
        head = (head + 1) % cap;
    80003758:	0104a783          	lw	a5,16(s1)
    8000375c:	0017879b          	addiw	a5,a5,1
    80003760:	0004a703          	lw	a4,0(s1)
    80003764:	02e7e7bb          	remw	a5,a5,a4
    80003768:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000376c:	fc1ff06f          	j	8000372c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003770:	02100513          	li	a0,33
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	dc4080e7          	jalr	-572(ra) # 80001538 <_Z4putcc>
    putc('\n');
    8000377c:	00a00513          	li	a0,10
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	db8080e7          	jalr	-584(ra) # 80001538 <_Z4putcc>
    mem_free(buffer);
    80003788:	0084b503          	ld	a0,8(s1)
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	b34080e7          	jalr	-1228(ra) # 800012c0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003794:	0204b503          	ld	a0,32(s1)
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	cb8080e7          	jalr	-840(ra) # 80001450 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800037a0:	0184b503          	ld	a0,24(s1)
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	cac080e7          	jalr	-852(ra) # 80001450 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800037ac:	0304b503          	ld	a0,48(s1)
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	ca0080e7          	jalr	-864(ra) # 80001450 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800037b8:	0284b503          	ld	a0,40(s1)
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	c94080e7          	jalr	-876(ra) # 80001450 <_Z9sem_closeP3Sem>
}
    800037c4:	01813083          	ld	ra,24(sp)
    800037c8:	01013403          	ld	s0,16(sp)
    800037cc:	00813483          	ld	s1,8(sp)
    800037d0:	02010113          	addi	sp,sp,32
    800037d4:	00008067          	ret

00000000800037d8 <start>:
    800037d8:	ff010113          	addi	sp,sp,-16
    800037dc:	00813423          	sd	s0,8(sp)
    800037e0:	01010413          	addi	s0,sp,16
    800037e4:	300027f3          	csrr	a5,mstatus
    800037e8:	ffffe737          	lui	a4,0xffffe
    800037ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5faf>
    800037f0:	00e7f7b3          	and	a5,a5,a4
    800037f4:	00001737          	lui	a4,0x1
    800037f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800037fc:	00e7e7b3          	or	a5,a5,a4
    80003800:	30079073          	csrw	mstatus,a5
    80003804:	00000797          	auipc	a5,0x0
    80003808:	16078793          	addi	a5,a5,352 # 80003964 <system_main>
    8000380c:	34179073          	csrw	mepc,a5
    80003810:	00000793          	li	a5,0
    80003814:	18079073          	csrw	satp,a5
    80003818:	000107b7          	lui	a5,0x10
    8000381c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003820:	30279073          	csrw	medeleg,a5
    80003824:	30379073          	csrw	mideleg,a5
    80003828:	104027f3          	csrr	a5,sie
    8000382c:	2227e793          	ori	a5,a5,546
    80003830:	10479073          	csrw	sie,a5
    80003834:	fff00793          	li	a5,-1
    80003838:	00a7d793          	srli	a5,a5,0xa
    8000383c:	3b079073          	csrw	pmpaddr0,a5
    80003840:	00f00793          	li	a5,15
    80003844:	3a079073          	csrw	pmpcfg0,a5
    80003848:	f14027f3          	csrr	a5,mhartid
    8000384c:	0200c737          	lui	a4,0x200c
    80003850:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003854:	0007869b          	sext.w	a3,a5
    80003858:	00269713          	slli	a4,a3,0x2
    8000385c:	000f4637          	lui	a2,0xf4
    80003860:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003864:	00d70733          	add	a4,a4,a3
    80003868:	0037979b          	slliw	a5,a5,0x3
    8000386c:	020046b7          	lui	a3,0x2004
    80003870:	00d787b3          	add	a5,a5,a3
    80003874:	00c585b3          	add	a1,a1,a2
    80003878:	00371693          	slli	a3,a4,0x3
    8000387c:	00004717          	auipc	a4,0x4
    80003880:	d7470713          	addi	a4,a4,-652 # 800075f0 <timer_scratch>
    80003884:	00b7b023          	sd	a1,0(a5)
    80003888:	00d70733          	add	a4,a4,a3
    8000388c:	00f73c23          	sd	a5,24(a4)
    80003890:	02c73023          	sd	a2,32(a4)
    80003894:	34071073          	csrw	mscratch,a4
    80003898:	00000797          	auipc	a5,0x0
    8000389c:	6e878793          	addi	a5,a5,1768 # 80003f80 <timervec>
    800038a0:	30579073          	csrw	mtvec,a5
    800038a4:	300027f3          	csrr	a5,mstatus
    800038a8:	0087e793          	ori	a5,a5,8
    800038ac:	30079073          	csrw	mstatus,a5
    800038b0:	304027f3          	csrr	a5,mie
    800038b4:	0807e793          	ori	a5,a5,128
    800038b8:	30479073          	csrw	mie,a5
    800038bc:	f14027f3          	csrr	a5,mhartid
    800038c0:	0007879b          	sext.w	a5,a5
    800038c4:	00078213          	mv	tp,a5
    800038c8:	30200073          	mret
    800038cc:	00813403          	ld	s0,8(sp)
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	00008067          	ret

00000000800038d8 <timerinit>:
    800038d8:	ff010113          	addi	sp,sp,-16
    800038dc:	00813423          	sd	s0,8(sp)
    800038e0:	01010413          	addi	s0,sp,16
    800038e4:	f14027f3          	csrr	a5,mhartid
    800038e8:	0200c737          	lui	a4,0x200c
    800038ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800038f0:	0007869b          	sext.w	a3,a5
    800038f4:	00269713          	slli	a4,a3,0x2
    800038f8:	000f4637          	lui	a2,0xf4
    800038fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003900:	00d70733          	add	a4,a4,a3
    80003904:	0037979b          	slliw	a5,a5,0x3
    80003908:	020046b7          	lui	a3,0x2004
    8000390c:	00d787b3          	add	a5,a5,a3
    80003910:	00c585b3          	add	a1,a1,a2
    80003914:	00371693          	slli	a3,a4,0x3
    80003918:	00004717          	auipc	a4,0x4
    8000391c:	cd870713          	addi	a4,a4,-808 # 800075f0 <timer_scratch>
    80003920:	00b7b023          	sd	a1,0(a5)
    80003924:	00d70733          	add	a4,a4,a3
    80003928:	00f73c23          	sd	a5,24(a4)
    8000392c:	02c73023          	sd	a2,32(a4)
    80003930:	34071073          	csrw	mscratch,a4
    80003934:	00000797          	auipc	a5,0x0
    80003938:	64c78793          	addi	a5,a5,1612 # 80003f80 <timervec>
    8000393c:	30579073          	csrw	mtvec,a5
    80003940:	300027f3          	csrr	a5,mstatus
    80003944:	0087e793          	ori	a5,a5,8
    80003948:	30079073          	csrw	mstatus,a5
    8000394c:	304027f3          	csrr	a5,mie
    80003950:	0807e793          	ori	a5,a5,128
    80003954:	30479073          	csrw	mie,a5
    80003958:	00813403          	ld	s0,8(sp)
    8000395c:	01010113          	addi	sp,sp,16
    80003960:	00008067          	ret

0000000080003964 <system_main>:
    80003964:	fe010113          	addi	sp,sp,-32
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00913423          	sd	s1,8(sp)
    80003970:	00113c23          	sd	ra,24(sp)
    80003974:	02010413          	addi	s0,sp,32
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	0c4080e7          	jalr	196(ra) # 80003a3c <cpuid>
    80003980:	00004497          	auipc	s1,0x4
    80003984:	be048493          	addi	s1,s1,-1056 # 80007560 <started>
    80003988:	02050263          	beqz	a0,800039ac <system_main+0x48>
    8000398c:	0004a783          	lw	a5,0(s1)
    80003990:	0007879b          	sext.w	a5,a5
    80003994:	fe078ce3          	beqz	a5,8000398c <system_main+0x28>
    80003998:	0ff0000f          	fence
    8000399c:	00003517          	auipc	a0,0x3
    800039a0:	8d450513          	addi	a0,a0,-1836 # 80006270 <CONSOLE_STATUS+0x260>
    800039a4:	00001097          	auipc	ra,0x1
    800039a8:	a78080e7          	jalr	-1416(ra) # 8000441c <panic>
    800039ac:	00001097          	auipc	ra,0x1
    800039b0:	9cc080e7          	jalr	-1588(ra) # 80004378 <consoleinit>
    800039b4:	00001097          	auipc	ra,0x1
    800039b8:	158080e7          	jalr	344(ra) # 80004b0c <printfinit>
    800039bc:	00002517          	auipc	a0,0x2
    800039c0:	7d450513          	addi	a0,a0,2004 # 80006190 <CONSOLE_STATUS+0x180>
    800039c4:	00001097          	auipc	ra,0x1
    800039c8:	ab4080e7          	jalr	-1356(ra) # 80004478 <__printf>
    800039cc:	00003517          	auipc	a0,0x3
    800039d0:	87450513          	addi	a0,a0,-1932 # 80006240 <CONSOLE_STATUS+0x230>
    800039d4:	00001097          	auipc	ra,0x1
    800039d8:	aa4080e7          	jalr	-1372(ra) # 80004478 <__printf>
    800039dc:	00002517          	auipc	a0,0x2
    800039e0:	7b450513          	addi	a0,a0,1972 # 80006190 <CONSOLE_STATUS+0x180>
    800039e4:	00001097          	auipc	ra,0x1
    800039e8:	a94080e7          	jalr	-1388(ra) # 80004478 <__printf>
    800039ec:	00001097          	auipc	ra,0x1
    800039f0:	4ac080e7          	jalr	1196(ra) # 80004e98 <kinit>
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	148080e7          	jalr	328(ra) # 80003b3c <trapinit>
    800039fc:	00000097          	auipc	ra,0x0
    80003a00:	16c080e7          	jalr	364(ra) # 80003b68 <trapinithart>
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	5bc080e7          	jalr	1468(ra) # 80003fc0 <plicinit>
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	5dc080e7          	jalr	1500(ra) # 80003fe8 <plicinithart>
    80003a14:	00000097          	auipc	ra,0x0
    80003a18:	078080e7          	jalr	120(ra) # 80003a8c <userinit>
    80003a1c:	0ff0000f          	fence
    80003a20:	00100793          	li	a5,1
    80003a24:	00003517          	auipc	a0,0x3
    80003a28:	83450513          	addi	a0,a0,-1996 # 80006258 <CONSOLE_STATUS+0x248>
    80003a2c:	00f4a023          	sw	a5,0(s1)
    80003a30:	00001097          	auipc	ra,0x1
    80003a34:	a48080e7          	jalr	-1464(ra) # 80004478 <__printf>
    80003a38:	0000006f          	j	80003a38 <system_main+0xd4>

0000000080003a3c <cpuid>:
    80003a3c:	ff010113          	addi	sp,sp,-16
    80003a40:	00813423          	sd	s0,8(sp)
    80003a44:	01010413          	addi	s0,sp,16
    80003a48:	00020513          	mv	a0,tp
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	0005051b          	sext.w	a0,a0
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret

0000000080003a5c <mycpu>:
    80003a5c:	ff010113          	addi	sp,sp,-16
    80003a60:	00813423          	sd	s0,8(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00020793          	mv	a5,tp
    80003a6c:	00813403          	ld	s0,8(sp)
    80003a70:	0007879b          	sext.w	a5,a5
    80003a74:	00779793          	slli	a5,a5,0x7
    80003a78:	00005517          	auipc	a0,0x5
    80003a7c:	ba850513          	addi	a0,a0,-1112 # 80008620 <cpus>
    80003a80:	00f50533          	add	a0,a0,a5
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <userinit>:
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00813423          	sd	s0,8(sp)
    80003a94:	01010413          	addi	s0,sp,16
    80003a98:	00813403          	ld	s0,8(sp)
    80003a9c:	01010113          	addi	sp,sp,16
    80003aa0:	ffffe317          	auipc	t1,0xffffe
    80003aa4:	0a830067          	jr	168(t1) # 80001b48 <main>

0000000080003aa8 <either_copyout>:
    80003aa8:	ff010113          	addi	sp,sp,-16
    80003aac:	00813023          	sd	s0,0(sp)
    80003ab0:	00113423          	sd	ra,8(sp)
    80003ab4:	01010413          	addi	s0,sp,16
    80003ab8:	02051663          	bnez	a0,80003ae4 <either_copyout+0x3c>
    80003abc:	00058513          	mv	a0,a1
    80003ac0:	00060593          	mv	a1,a2
    80003ac4:	0006861b          	sext.w	a2,a3
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	c5c080e7          	jalr	-932(ra) # 80005724 <__memmove>
    80003ad0:	00813083          	ld	ra,8(sp)
    80003ad4:	00013403          	ld	s0,0(sp)
    80003ad8:	00000513          	li	a0,0
    80003adc:	01010113          	addi	sp,sp,16
    80003ae0:	00008067          	ret
    80003ae4:	00002517          	auipc	a0,0x2
    80003ae8:	7b450513          	addi	a0,a0,1972 # 80006298 <CONSOLE_STATUS+0x288>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	930080e7          	jalr	-1744(ra) # 8000441c <panic>

0000000080003af4 <either_copyin>:
    80003af4:	ff010113          	addi	sp,sp,-16
    80003af8:	00813023          	sd	s0,0(sp)
    80003afc:	00113423          	sd	ra,8(sp)
    80003b00:	01010413          	addi	s0,sp,16
    80003b04:	02059463          	bnez	a1,80003b2c <either_copyin+0x38>
    80003b08:	00060593          	mv	a1,a2
    80003b0c:	0006861b          	sext.w	a2,a3
    80003b10:	00002097          	auipc	ra,0x2
    80003b14:	c14080e7          	jalr	-1004(ra) # 80005724 <__memmove>
    80003b18:	00813083          	ld	ra,8(sp)
    80003b1c:	00013403          	ld	s0,0(sp)
    80003b20:	00000513          	li	a0,0
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret
    80003b2c:	00002517          	auipc	a0,0x2
    80003b30:	79450513          	addi	a0,a0,1940 # 800062c0 <CONSOLE_STATUS+0x2b0>
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	8e8080e7          	jalr	-1816(ra) # 8000441c <panic>

0000000080003b3c <trapinit>:
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00813423          	sd	s0,8(sp)
    80003b44:	01010413          	addi	s0,sp,16
    80003b48:	00813403          	ld	s0,8(sp)
    80003b4c:	00002597          	auipc	a1,0x2
    80003b50:	79c58593          	addi	a1,a1,1948 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003b54:	00005517          	auipc	a0,0x5
    80003b58:	b4c50513          	addi	a0,a0,-1204 # 800086a0 <tickslock>
    80003b5c:	01010113          	addi	sp,sp,16
    80003b60:	00001317          	auipc	t1,0x1
    80003b64:	5c830067          	jr	1480(t1) # 80005128 <initlock>

0000000080003b68 <trapinithart>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    80003b74:	00000797          	auipc	a5,0x0
    80003b78:	2fc78793          	addi	a5,a5,764 # 80003e70 <kernelvec>
    80003b7c:	10579073          	csrw	stvec,a5
    80003b80:	00813403          	ld	s0,8(sp)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <usertrap>:
    80003b8c:	ff010113          	addi	sp,sp,-16
    80003b90:	00813423          	sd	s0,8(sp)
    80003b94:	01010413          	addi	s0,sp,16
    80003b98:	00813403          	ld	s0,8(sp)
    80003b9c:	01010113          	addi	sp,sp,16
    80003ba0:	00008067          	ret

0000000080003ba4 <usertrapret>:
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00813423          	sd	s0,8(sp)
    80003bac:	01010413          	addi	s0,sp,16
    80003bb0:	00813403          	ld	s0,8(sp)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret

0000000080003bbc <kerneltrap>:
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	142025f3          	csrr	a1,scause
    80003bd4:	100027f3          	csrr	a5,sstatus
    80003bd8:	0027f793          	andi	a5,a5,2
    80003bdc:	10079c63          	bnez	a5,80003cf4 <kerneltrap+0x138>
    80003be0:	142027f3          	csrr	a5,scause
    80003be4:	0207ce63          	bltz	a5,80003c20 <kerneltrap+0x64>
    80003be8:	00002517          	auipc	a0,0x2
    80003bec:	74850513          	addi	a0,a0,1864 # 80006330 <CONSOLE_STATUS+0x320>
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	888080e7          	jalr	-1912(ra) # 80004478 <__printf>
    80003bf8:	141025f3          	csrr	a1,sepc
    80003bfc:	14302673          	csrr	a2,stval
    80003c00:	00002517          	auipc	a0,0x2
    80003c04:	74050513          	addi	a0,a0,1856 # 80006340 <CONSOLE_STATUS+0x330>
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	870080e7          	jalr	-1936(ra) # 80004478 <__printf>
    80003c10:	00002517          	auipc	a0,0x2
    80003c14:	74850513          	addi	a0,a0,1864 # 80006358 <CONSOLE_STATUS+0x348>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	804080e7          	jalr	-2044(ra) # 8000441c <panic>
    80003c20:	0ff7f713          	andi	a4,a5,255
    80003c24:	00900693          	li	a3,9
    80003c28:	04d70063          	beq	a4,a3,80003c68 <kerneltrap+0xac>
    80003c2c:	fff00713          	li	a4,-1
    80003c30:	03f71713          	slli	a4,a4,0x3f
    80003c34:	00170713          	addi	a4,a4,1
    80003c38:	fae798e3          	bne	a5,a4,80003be8 <kerneltrap+0x2c>
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	e00080e7          	jalr	-512(ra) # 80003a3c <cpuid>
    80003c44:	06050663          	beqz	a0,80003cb0 <kerneltrap+0xf4>
    80003c48:	144027f3          	csrr	a5,sip
    80003c4c:	ffd7f793          	andi	a5,a5,-3
    80003c50:	14479073          	csrw	sip,a5
    80003c54:	01813083          	ld	ra,24(sp)
    80003c58:	01013403          	ld	s0,16(sp)
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	02010113          	addi	sp,sp,32
    80003c64:	00008067          	ret
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	3cc080e7          	jalr	972(ra) # 80004034 <plic_claim>
    80003c70:	00a00793          	li	a5,10
    80003c74:	00050493          	mv	s1,a0
    80003c78:	06f50863          	beq	a0,a5,80003ce8 <kerneltrap+0x12c>
    80003c7c:	fc050ce3          	beqz	a0,80003c54 <kerneltrap+0x98>
    80003c80:	00050593          	mv	a1,a0
    80003c84:	00002517          	auipc	a0,0x2
    80003c88:	68c50513          	addi	a0,a0,1676 # 80006310 <CONSOLE_STATUS+0x300>
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	7ec080e7          	jalr	2028(ra) # 80004478 <__printf>
    80003c94:	01013403          	ld	s0,16(sp)
    80003c98:	01813083          	ld	ra,24(sp)
    80003c9c:	00048513          	mv	a0,s1
    80003ca0:	00813483          	ld	s1,8(sp)
    80003ca4:	02010113          	addi	sp,sp,32
    80003ca8:	00000317          	auipc	t1,0x0
    80003cac:	3c430067          	jr	964(t1) # 8000406c <plic_complete>
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	9f050513          	addi	a0,a0,-1552 # 800086a0 <tickslock>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	494080e7          	jalr	1172(ra) # 8000514c <acquire>
    80003cc0:	00004717          	auipc	a4,0x4
    80003cc4:	8a470713          	addi	a4,a4,-1884 # 80007564 <ticks>
    80003cc8:	00072783          	lw	a5,0(a4)
    80003ccc:	00005517          	auipc	a0,0x5
    80003cd0:	9d450513          	addi	a0,a0,-1580 # 800086a0 <tickslock>
    80003cd4:	0017879b          	addiw	a5,a5,1
    80003cd8:	00f72023          	sw	a5,0(a4)
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	53c080e7          	jalr	1340(ra) # 80005218 <release>
    80003ce4:	f65ff06f          	j	80003c48 <kerneltrap+0x8c>
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	098080e7          	jalr	152(ra) # 80004d80 <uartintr>
    80003cf0:	fa5ff06f          	j	80003c94 <kerneltrap+0xd8>
    80003cf4:	00002517          	auipc	a0,0x2
    80003cf8:	5fc50513          	addi	a0,a0,1532 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	720080e7          	jalr	1824(ra) # 8000441c <panic>

0000000080003d04 <clockintr>:
    80003d04:	fe010113          	addi	sp,sp,-32
    80003d08:	00813823          	sd	s0,16(sp)
    80003d0c:	00913423          	sd	s1,8(sp)
    80003d10:	00113c23          	sd	ra,24(sp)
    80003d14:	02010413          	addi	s0,sp,32
    80003d18:	00005497          	auipc	s1,0x5
    80003d1c:	98848493          	addi	s1,s1,-1656 # 800086a0 <tickslock>
    80003d20:	00048513          	mv	a0,s1
    80003d24:	00001097          	auipc	ra,0x1
    80003d28:	428080e7          	jalr	1064(ra) # 8000514c <acquire>
    80003d2c:	00004717          	auipc	a4,0x4
    80003d30:	83870713          	addi	a4,a4,-1992 # 80007564 <ticks>
    80003d34:	00072783          	lw	a5,0(a4)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	01813083          	ld	ra,24(sp)
    80003d40:	00048513          	mv	a0,s1
    80003d44:	0017879b          	addiw	a5,a5,1
    80003d48:	00813483          	ld	s1,8(sp)
    80003d4c:	00f72023          	sw	a5,0(a4)
    80003d50:	02010113          	addi	sp,sp,32
    80003d54:	00001317          	auipc	t1,0x1
    80003d58:	4c430067          	jr	1220(t1) # 80005218 <release>

0000000080003d5c <devintr>:
    80003d5c:	142027f3          	csrr	a5,scause
    80003d60:	00000513          	li	a0,0
    80003d64:	0007c463          	bltz	a5,80003d6c <devintr+0x10>
    80003d68:	00008067          	ret
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00113c23          	sd	ra,24(sp)
    80003d78:	00913423          	sd	s1,8(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    80003d80:	0ff7f713          	andi	a4,a5,255
    80003d84:	00900693          	li	a3,9
    80003d88:	04d70c63          	beq	a4,a3,80003de0 <devintr+0x84>
    80003d8c:	fff00713          	li	a4,-1
    80003d90:	03f71713          	slli	a4,a4,0x3f
    80003d94:	00170713          	addi	a4,a4,1
    80003d98:	00e78c63          	beq	a5,a4,80003db0 <devintr+0x54>
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	c8c080e7          	jalr	-884(ra) # 80003a3c <cpuid>
    80003db8:	06050663          	beqz	a0,80003e24 <devintr+0xc8>
    80003dbc:	144027f3          	csrr	a5,sip
    80003dc0:	ffd7f793          	andi	a5,a5,-3
    80003dc4:	14479073          	csrw	sip,a5
    80003dc8:	01813083          	ld	ra,24(sp)
    80003dcc:	01013403          	ld	s0,16(sp)
    80003dd0:	00813483          	ld	s1,8(sp)
    80003dd4:	00200513          	li	a0,2
    80003dd8:	02010113          	addi	sp,sp,32
    80003ddc:	00008067          	ret
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	254080e7          	jalr	596(ra) # 80004034 <plic_claim>
    80003de8:	00a00793          	li	a5,10
    80003dec:	00050493          	mv	s1,a0
    80003df0:	06f50663          	beq	a0,a5,80003e5c <devintr+0x100>
    80003df4:	00100513          	li	a0,1
    80003df8:	fa0482e3          	beqz	s1,80003d9c <devintr+0x40>
    80003dfc:	00048593          	mv	a1,s1
    80003e00:	00002517          	auipc	a0,0x2
    80003e04:	51050513          	addi	a0,a0,1296 # 80006310 <CONSOLE_STATUS+0x300>
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	670080e7          	jalr	1648(ra) # 80004478 <__printf>
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	258080e7          	jalr	600(ra) # 8000406c <plic_complete>
    80003e1c:	00100513          	li	a0,1
    80003e20:	f7dff06f          	j	80003d9c <devintr+0x40>
    80003e24:	00005517          	auipc	a0,0x5
    80003e28:	87c50513          	addi	a0,a0,-1924 # 800086a0 <tickslock>
    80003e2c:	00001097          	auipc	ra,0x1
    80003e30:	320080e7          	jalr	800(ra) # 8000514c <acquire>
    80003e34:	00003717          	auipc	a4,0x3
    80003e38:	73070713          	addi	a4,a4,1840 # 80007564 <ticks>
    80003e3c:	00072783          	lw	a5,0(a4)
    80003e40:	00005517          	auipc	a0,0x5
    80003e44:	86050513          	addi	a0,a0,-1952 # 800086a0 <tickslock>
    80003e48:	0017879b          	addiw	a5,a5,1
    80003e4c:	00f72023          	sw	a5,0(a4)
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	3c8080e7          	jalr	968(ra) # 80005218 <release>
    80003e58:	f65ff06f          	j	80003dbc <devintr+0x60>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	f24080e7          	jalr	-220(ra) # 80004d80 <uartintr>
    80003e64:	fadff06f          	j	80003e10 <devintr+0xb4>
	...

0000000080003e70 <kernelvec>:
    80003e70:	f0010113          	addi	sp,sp,-256
    80003e74:	00113023          	sd	ra,0(sp)
    80003e78:	00213423          	sd	sp,8(sp)
    80003e7c:	00313823          	sd	gp,16(sp)
    80003e80:	00413c23          	sd	tp,24(sp)
    80003e84:	02513023          	sd	t0,32(sp)
    80003e88:	02613423          	sd	t1,40(sp)
    80003e8c:	02713823          	sd	t2,48(sp)
    80003e90:	02813c23          	sd	s0,56(sp)
    80003e94:	04913023          	sd	s1,64(sp)
    80003e98:	04a13423          	sd	a0,72(sp)
    80003e9c:	04b13823          	sd	a1,80(sp)
    80003ea0:	04c13c23          	sd	a2,88(sp)
    80003ea4:	06d13023          	sd	a3,96(sp)
    80003ea8:	06e13423          	sd	a4,104(sp)
    80003eac:	06f13823          	sd	a5,112(sp)
    80003eb0:	07013c23          	sd	a6,120(sp)
    80003eb4:	09113023          	sd	a7,128(sp)
    80003eb8:	09213423          	sd	s2,136(sp)
    80003ebc:	09313823          	sd	s3,144(sp)
    80003ec0:	09413c23          	sd	s4,152(sp)
    80003ec4:	0b513023          	sd	s5,160(sp)
    80003ec8:	0b613423          	sd	s6,168(sp)
    80003ecc:	0b713823          	sd	s7,176(sp)
    80003ed0:	0b813c23          	sd	s8,184(sp)
    80003ed4:	0d913023          	sd	s9,192(sp)
    80003ed8:	0da13423          	sd	s10,200(sp)
    80003edc:	0db13823          	sd	s11,208(sp)
    80003ee0:	0dc13c23          	sd	t3,216(sp)
    80003ee4:	0fd13023          	sd	t4,224(sp)
    80003ee8:	0fe13423          	sd	t5,232(sp)
    80003eec:	0ff13823          	sd	t6,240(sp)
    80003ef0:	ccdff0ef          	jal	ra,80003bbc <kerneltrap>
    80003ef4:	00013083          	ld	ra,0(sp)
    80003ef8:	00813103          	ld	sp,8(sp)
    80003efc:	01013183          	ld	gp,16(sp)
    80003f00:	02013283          	ld	t0,32(sp)
    80003f04:	02813303          	ld	t1,40(sp)
    80003f08:	03013383          	ld	t2,48(sp)
    80003f0c:	03813403          	ld	s0,56(sp)
    80003f10:	04013483          	ld	s1,64(sp)
    80003f14:	04813503          	ld	a0,72(sp)
    80003f18:	05013583          	ld	a1,80(sp)
    80003f1c:	05813603          	ld	a2,88(sp)
    80003f20:	06013683          	ld	a3,96(sp)
    80003f24:	06813703          	ld	a4,104(sp)
    80003f28:	07013783          	ld	a5,112(sp)
    80003f2c:	07813803          	ld	a6,120(sp)
    80003f30:	08013883          	ld	a7,128(sp)
    80003f34:	08813903          	ld	s2,136(sp)
    80003f38:	09013983          	ld	s3,144(sp)
    80003f3c:	09813a03          	ld	s4,152(sp)
    80003f40:	0a013a83          	ld	s5,160(sp)
    80003f44:	0a813b03          	ld	s6,168(sp)
    80003f48:	0b013b83          	ld	s7,176(sp)
    80003f4c:	0b813c03          	ld	s8,184(sp)
    80003f50:	0c013c83          	ld	s9,192(sp)
    80003f54:	0c813d03          	ld	s10,200(sp)
    80003f58:	0d013d83          	ld	s11,208(sp)
    80003f5c:	0d813e03          	ld	t3,216(sp)
    80003f60:	0e013e83          	ld	t4,224(sp)
    80003f64:	0e813f03          	ld	t5,232(sp)
    80003f68:	0f013f83          	ld	t6,240(sp)
    80003f6c:	10010113          	addi	sp,sp,256
    80003f70:	10200073          	sret
    80003f74:	00000013          	nop
    80003f78:	00000013          	nop
    80003f7c:	00000013          	nop

0000000080003f80 <timervec>:
    80003f80:	34051573          	csrrw	a0,mscratch,a0
    80003f84:	00b53023          	sd	a1,0(a0)
    80003f88:	00c53423          	sd	a2,8(a0)
    80003f8c:	00d53823          	sd	a3,16(a0)
    80003f90:	01853583          	ld	a1,24(a0)
    80003f94:	02053603          	ld	a2,32(a0)
    80003f98:	0005b683          	ld	a3,0(a1)
    80003f9c:	00c686b3          	add	a3,a3,a2
    80003fa0:	00d5b023          	sd	a3,0(a1)
    80003fa4:	00200593          	li	a1,2
    80003fa8:	14459073          	csrw	sip,a1
    80003fac:	01053683          	ld	a3,16(a0)
    80003fb0:	00853603          	ld	a2,8(a0)
    80003fb4:	00053583          	ld	a1,0(a0)
    80003fb8:	34051573          	csrrw	a0,mscratch,a0
    80003fbc:	30200073          	mret

0000000080003fc0 <plicinit>:
    80003fc0:	ff010113          	addi	sp,sp,-16
    80003fc4:	00813423          	sd	s0,8(sp)
    80003fc8:	01010413          	addi	s0,sp,16
    80003fcc:	00813403          	ld	s0,8(sp)
    80003fd0:	0c0007b7          	lui	a5,0xc000
    80003fd4:	00100713          	li	a4,1
    80003fd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003fdc:	00e7a223          	sw	a4,4(a5)
    80003fe0:	01010113          	addi	sp,sp,16
    80003fe4:	00008067          	ret

0000000080003fe8 <plicinithart>:
    80003fe8:	ff010113          	addi	sp,sp,-16
    80003fec:	00813023          	sd	s0,0(sp)
    80003ff0:	00113423          	sd	ra,8(sp)
    80003ff4:	01010413          	addi	s0,sp,16
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	a44080e7          	jalr	-1468(ra) # 80003a3c <cpuid>
    80004000:	0085171b          	slliw	a4,a0,0x8
    80004004:	0c0027b7          	lui	a5,0xc002
    80004008:	00e787b3          	add	a5,a5,a4
    8000400c:	40200713          	li	a4,1026
    80004010:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004014:	00813083          	ld	ra,8(sp)
    80004018:	00013403          	ld	s0,0(sp)
    8000401c:	00d5151b          	slliw	a0,a0,0xd
    80004020:	0c2017b7          	lui	a5,0xc201
    80004024:	00a78533          	add	a0,a5,a0
    80004028:	00052023          	sw	zero,0(a0)
    8000402c:	01010113          	addi	sp,sp,16
    80004030:	00008067          	ret

0000000080004034 <plic_claim>:
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00813023          	sd	s0,0(sp)
    8000403c:	00113423          	sd	ra,8(sp)
    80004040:	01010413          	addi	s0,sp,16
    80004044:	00000097          	auipc	ra,0x0
    80004048:	9f8080e7          	jalr	-1544(ra) # 80003a3c <cpuid>
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	00d5151b          	slliw	a0,a0,0xd
    80004058:	0c2017b7          	lui	a5,0xc201
    8000405c:	00a78533          	add	a0,a5,a0
    80004060:	00452503          	lw	a0,4(a0)
    80004064:	01010113          	addi	sp,sp,16
    80004068:	00008067          	ret

000000008000406c <plic_complete>:
    8000406c:	fe010113          	addi	sp,sp,-32
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	00113c23          	sd	ra,24(sp)
    8000407c:	02010413          	addi	s0,sp,32
    80004080:	00050493          	mv	s1,a0
    80004084:	00000097          	auipc	ra,0x0
    80004088:	9b8080e7          	jalr	-1608(ra) # 80003a3c <cpuid>
    8000408c:	01813083          	ld	ra,24(sp)
    80004090:	01013403          	ld	s0,16(sp)
    80004094:	00d5179b          	slliw	a5,a0,0xd
    80004098:	0c201737          	lui	a4,0xc201
    8000409c:	00f707b3          	add	a5,a4,a5
    800040a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800040a4:	00813483          	ld	s1,8(sp)
    800040a8:	02010113          	addi	sp,sp,32
    800040ac:	00008067          	ret

00000000800040b0 <consolewrite>:
    800040b0:	fb010113          	addi	sp,sp,-80
    800040b4:	04813023          	sd	s0,64(sp)
    800040b8:	04113423          	sd	ra,72(sp)
    800040bc:	02913c23          	sd	s1,56(sp)
    800040c0:	03213823          	sd	s2,48(sp)
    800040c4:	03313423          	sd	s3,40(sp)
    800040c8:	03413023          	sd	s4,32(sp)
    800040cc:	01513c23          	sd	s5,24(sp)
    800040d0:	05010413          	addi	s0,sp,80
    800040d4:	06c05c63          	blez	a2,8000414c <consolewrite+0x9c>
    800040d8:	00060993          	mv	s3,a2
    800040dc:	00050a13          	mv	s4,a0
    800040e0:	00058493          	mv	s1,a1
    800040e4:	00000913          	li	s2,0
    800040e8:	fff00a93          	li	s5,-1
    800040ec:	01c0006f          	j	80004108 <consolewrite+0x58>
    800040f0:	fbf44503          	lbu	a0,-65(s0)
    800040f4:	0019091b          	addiw	s2,s2,1
    800040f8:	00148493          	addi	s1,s1,1
    800040fc:	00001097          	auipc	ra,0x1
    80004100:	a9c080e7          	jalr	-1380(ra) # 80004b98 <uartputc>
    80004104:	03298063          	beq	s3,s2,80004124 <consolewrite+0x74>
    80004108:	00048613          	mv	a2,s1
    8000410c:	00100693          	li	a3,1
    80004110:	000a0593          	mv	a1,s4
    80004114:	fbf40513          	addi	a0,s0,-65
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	9dc080e7          	jalr	-1572(ra) # 80003af4 <either_copyin>
    80004120:	fd5518e3          	bne	a0,s5,800040f0 <consolewrite+0x40>
    80004124:	04813083          	ld	ra,72(sp)
    80004128:	04013403          	ld	s0,64(sp)
    8000412c:	03813483          	ld	s1,56(sp)
    80004130:	02813983          	ld	s3,40(sp)
    80004134:	02013a03          	ld	s4,32(sp)
    80004138:	01813a83          	ld	s5,24(sp)
    8000413c:	00090513          	mv	a0,s2
    80004140:	03013903          	ld	s2,48(sp)
    80004144:	05010113          	addi	sp,sp,80
    80004148:	00008067          	ret
    8000414c:	00000913          	li	s2,0
    80004150:	fd5ff06f          	j	80004124 <consolewrite+0x74>

0000000080004154 <consoleread>:
    80004154:	f9010113          	addi	sp,sp,-112
    80004158:	06813023          	sd	s0,96(sp)
    8000415c:	04913c23          	sd	s1,88(sp)
    80004160:	05213823          	sd	s2,80(sp)
    80004164:	05313423          	sd	s3,72(sp)
    80004168:	05413023          	sd	s4,64(sp)
    8000416c:	03513c23          	sd	s5,56(sp)
    80004170:	03613823          	sd	s6,48(sp)
    80004174:	03713423          	sd	s7,40(sp)
    80004178:	03813023          	sd	s8,32(sp)
    8000417c:	06113423          	sd	ra,104(sp)
    80004180:	01913c23          	sd	s9,24(sp)
    80004184:	07010413          	addi	s0,sp,112
    80004188:	00060b93          	mv	s7,a2
    8000418c:	00050913          	mv	s2,a0
    80004190:	00058c13          	mv	s8,a1
    80004194:	00060b1b          	sext.w	s6,a2
    80004198:	00004497          	auipc	s1,0x4
    8000419c:	53048493          	addi	s1,s1,1328 # 800086c8 <cons>
    800041a0:	00400993          	li	s3,4
    800041a4:	fff00a13          	li	s4,-1
    800041a8:	00a00a93          	li	s5,10
    800041ac:	05705e63          	blez	s7,80004208 <consoleread+0xb4>
    800041b0:	09c4a703          	lw	a4,156(s1)
    800041b4:	0984a783          	lw	a5,152(s1)
    800041b8:	0007071b          	sext.w	a4,a4
    800041bc:	08e78463          	beq	a5,a4,80004244 <consoleread+0xf0>
    800041c0:	07f7f713          	andi	a4,a5,127
    800041c4:	00e48733          	add	a4,s1,a4
    800041c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800041cc:	0017869b          	addiw	a3,a5,1
    800041d0:	08d4ac23          	sw	a3,152(s1)
    800041d4:	00070c9b          	sext.w	s9,a4
    800041d8:	0b370663          	beq	a4,s3,80004284 <consoleread+0x130>
    800041dc:	00100693          	li	a3,1
    800041e0:	f9f40613          	addi	a2,s0,-97
    800041e4:	000c0593          	mv	a1,s8
    800041e8:	00090513          	mv	a0,s2
    800041ec:	f8e40fa3          	sb	a4,-97(s0)
    800041f0:	00000097          	auipc	ra,0x0
    800041f4:	8b8080e7          	jalr	-1864(ra) # 80003aa8 <either_copyout>
    800041f8:	01450863          	beq	a0,s4,80004208 <consoleread+0xb4>
    800041fc:	001c0c13          	addi	s8,s8,1
    80004200:	fffb8b9b          	addiw	s7,s7,-1
    80004204:	fb5c94e3          	bne	s9,s5,800041ac <consoleread+0x58>
    80004208:	000b851b          	sext.w	a0,s7
    8000420c:	06813083          	ld	ra,104(sp)
    80004210:	06013403          	ld	s0,96(sp)
    80004214:	05813483          	ld	s1,88(sp)
    80004218:	05013903          	ld	s2,80(sp)
    8000421c:	04813983          	ld	s3,72(sp)
    80004220:	04013a03          	ld	s4,64(sp)
    80004224:	03813a83          	ld	s5,56(sp)
    80004228:	02813b83          	ld	s7,40(sp)
    8000422c:	02013c03          	ld	s8,32(sp)
    80004230:	01813c83          	ld	s9,24(sp)
    80004234:	40ab053b          	subw	a0,s6,a0
    80004238:	03013b03          	ld	s6,48(sp)
    8000423c:	07010113          	addi	sp,sp,112
    80004240:	00008067          	ret
    80004244:	00001097          	auipc	ra,0x1
    80004248:	1d8080e7          	jalr	472(ra) # 8000541c <push_on>
    8000424c:	0984a703          	lw	a4,152(s1)
    80004250:	09c4a783          	lw	a5,156(s1)
    80004254:	0007879b          	sext.w	a5,a5
    80004258:	fef70ce3          	beq	a4,a5,80004250 <consoleread+0xfc>
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	234080e7          	jalr	564(ra) # 80005490 <pop_on>
    80004264:	0984a783          	lw	a5,152(s1)
    80004268:	07f7f713          	andi	a4,a5,127
    8000426c:	00e48733          	add	a4,s1,a4
    80004270:	01874703          	lbu	a4,24(a4)
    80004274:	0017869b          	addiw	a3,a5,1
    80004278:	08d4ac23          	sw	a3,152(s1)
    8000427c:	00070c9b          	sext.w	s9,a4
    80004280:	f5371ee3          	bne	a4,s3,800041dc <consoleread+0x88>
    80004284:	000b851b          	sext.w	a0,s7
    80004288:	f96bf2e3          	bgeu	s7,s6,8000420c <consoleread+0xb8>
    8000428c:	08f4ac23          	sw	a5,152(s1)
    80004290:	f7dff06f          	j	8000420c <consoleread+0xb8>

0000000080004294 <consputc>:
    80004294:	10000793          	li	a5,256
    80004298:	00f50663          	beq	a0,a5,800042a4 <consputc+0x10>
    8000429c:	00001317          	auipc	t1,0x1
    800042a0:	9f430067          	jr	-1548(t1) # 80004c90 <uartputc_sync>
    800042a4:	ff010113          	addi	sp,sp,-16
    800042a8:	00113423          	sd	ra,8(sp)
    800042ac:	00813023          	sd	s0,0(sp)
    800042b0:	01010413          	addi	s0,sp,16
    800042b4:	00800513          	li	a0,8
    800042b8:	00001097          	auipc	ra,0x1
    800042bc:	9d8080e7          	jalr	-1576(ra) # 80004c90 <uartputc_sync>
    800042c0:	02000513          	li	a0,32
    800042c4:	00001097          	auipc	ra,0x1
    800042c8:	9cc080e7          	jalr	-1588(ra) # 80004c90 <uartputc_sync>
    800042cc:	00013403          	ld	s0,0(sp)
    800042d0:	00813083          	ld	ra,8(sp)
    800042d4:	00800513          	li	a0,8
    800042d8:	01010113          	addi	sp,sp,16
    800042dc:	00001317          	auipc	t1,0x1
    800042e0:	9b430067          	jr	-1612(t1) # 80004c90 <uartputc_sync>

00000000800042e4 <consoleintr>:
    800042e4:	fe010113          	addi	sp,sp,-32
    800042e8:	00813823          	sd	s0,16(sp)
    800042ec:	00913423          	sd	s1,8(sp)
    800042f0:	01213023          	sd	s2,0(sp)
    800042f4:	00113c23          	sd	ra,24(sp)
    800042f8:	02010413          	addi	s0,sp,32
    800042fc:	00004917          	auipc	s2,0x4
    80004300:	3cc90913          	addi	s2,s2,972 # 800086c8 <cons>
    80004304:	00050493          	mv	s1,a0
    80004308:	00090513          	mv	a0,s2
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	e40080e7          	jalr	-448(ra) # 8000514c <acquire>
    80004314:	02048c63          	beqz	s1,8000434c <consoleintr+0x68>
    80004318:	0a092783          	lw	a5,160(s2)
    8000431c:	09892703          	lw	a4,152(s2)
    80004320:	07f00693          	li	a3,127
    80004324:	40e7873b          	subw	a4,a5,a4
    80004328:	02e6e263          	bltu	a3,a4,8000434c <consoleintr+0x68>
    8000432c:	00d00713          	li	a4,13
    80004330:	04e48063          	beq	s1,a4,80004370 <consoleintr+0x8c>
    80004334:	07f7f713          	andi	a4,a5,127
    80004338:	00e90733          	add	a4,s2,a4
    8000433c:	0017879b          	addiw	a5,a5,1
    80004340:	0af92023          	sw	a5,160(s2)
    80004344:	00970c23          	sb	s1,24(a4)
    80004348:	08f92e23          	sw	a5,156(s2)
    8000434c:	01013403          	ld	s0,16(sp)
    80004350:	01813083          	ld	ra,24(sp)
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	00013903          	ld	s2,0(sp)
    8000435c:	00004517          	auipc	a0,0x4
    80004360:	36c50513          	addi	a0,a0,876 # 800086c8 <cons>
    80004364:	02010113          	addi	sp,sp,32
    80004368:	00001317          	auipc	t1,0x1
    8000436c:	eb030067          	jr	-336(t1) # 80005218 <release>
    80004370:	00a00493          	li	s1,10
    80004374:	fc1ff06f          	j	80004334 <consoleintr+0x50>

0000000080004378 <consoleinit>:
    80004378:	fe010113          	addi	sp,sp,-32
    8000437c:	00113c23          	sd	ra,24(sp)
    80004380:	00813823          	sd	s0,16(sp)
    80004384:	00913423          	sd	s1,8(sp)
    80004388:	02010413          	addi	s0,sp,32
    8000438c:	00004497          	auipc	s1,0x4
    80004390:	33c48493          	addi	s1,s1,828 # 800086c8 <cons>
    80004394:	00048513          	mv	a0,s1
    80004398:	00002597          	auipc	a1,0x2
    8000439c:	fd058593          	addi	a1,a1,-48 # 80006368 <CONSOLE_STATUS+0x358>
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	d88080e7          	jalr	-632(ra) # 80005128 <initlock>
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	7ac080e7          	jalr	1964(ra) # 80004b54 <uartinit>
    800043b0:	01813083          	ld	ra,24(sp)
    800043b4:	01013403          	ld	s0,16(sp)
    800043b8:	00000797          	auipc	a5,0x0
    800043bc:	d9c78793          	addi	a5,a5,-612 # 80004154 <consoleread>
    800043c0:	0af4bc23          	sd	a5,184(s1)
    800043c4:	00000797          	auipc	a5,0x0
    800043c8:	cec78793          	addi	a5,a5,-788 # 800040b0 <consolewrite>
    800043cc:	0cf4b023          	sd	a5,192(s1)
    800043d0:	00813483          	ld	s1,8(sp)
    800043d4:	02010113          	addi	sp,sp,32
    800043d8:	00008067          	ret

00000000800043dc <console_read>:
    800043dc:	ff010113          	addi	sp,sp,-16
    800043e0:	00813423          	sd	s0,8(sp)
    800043e4:	01010413          	addi	s0,sp,16
    800043e8:	00813403          	ld	s0,8(sp)
    800043ec:	00004317          	auipc	t1,0x4
    800043f0:	39433303          	ld	t1,916(t1) # 80008780 <devsw+0x10>
    800043f4:	01010113          	addi	sp,sp,16
    800043f8:	00030067          	jr	t1

00000000800043fc <console_write>:
    800043fc:	ff010113          	addi	sp,sp,-16
    80004400:	00813423          	sd	s0,8(sp)
    80004404:	01010413          	addi	s0,sp,16
    80004408:	00813403          	ld	s0,8(sp)
    8000440c:	00004317          	auipc	t1,0x4
    80004410:	37c33303          	ld	t1,892(t1) # 80008788 <devsw+0x18>
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00030067          	jr	t1

000000008000441c <panic>:
    8000441c:	fe010113          	addi	sp,sp,-32
    80004420:	00113c23          	sd	ra,24(sp)
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	02010413          	addi	s0,sp,32
    80004430:	00050493          	mv	s1,a0
    80004434:	00002517          	auipc	a0,0x2
    80004438:	f3c50513          	addi	a0,a0,-196 # 80006370 <CONSOLE_STATUS+0x360>
    8000443c:	00004797          	auipc	a5,0x4
    80004440:	3e07a623          	sw	zero,1004(a5) # 80008828 <pr+0x18>
    80004444:	00000097          	auipc	ra,0x0
    80004448:	034080e7          	jalr	52(ra) # 80004478 <__printf>
    8000444c:	00048513          	mv	a0,s1
    80004450:	00000097          	auipc	ra,0x0
    80004454:	028080e7          	jalr	40(ra) # 80004478 <__printf>
    80004458:	00002517          	auipc	a0,0x2
    8000445c:	d3850513          	addi	a0,a0,-712 # 80006190 <CONSOLE_STATUS+0x180>
    80004460:	00000097          	auipc	ra,0x0
    80004464:	018080e7          	jalr	24(ra) # 80004478 <__printf>
    80004468:	00100793          	li	a5,1
    8000446c:	00003717          	auipc	a4,0x3
    80004470:	0ef72e23          	sw	a5,252(a4) # 80007568 <panicked>
    80004474:	0000006f          	j	80004474 <panic+0x58>

0000000080004478 <__printf>:
    80004478:	f3010113          	addi	sp,sp,-208
    8000447c:	08813023          	sd	s0,128(sp)
    80004480:	07313423          	sd	s3,104(sp)
    80004484:	09010413          	addi	s0,sp,144
    80004488:	05813023          	sd	s8,64(sp)
    8000448c:	08113423          	sd	ra,136(sp)
    80004490:	06913c23          	sd	s1,120(sp)
    80004494:	07213823          	sd	s2,112(sp)
    80004498:	07413023          	sd	s4,96(sp)
    8000449c:	05513c23          	sd	s5,88(sp)
    800044a0:	05613823          	sd	s6,80(sp)
    800044a4:	05713423          	sd	s7,72(sp)
    800044a8:	03913c23          	sd	s9,56(sp)
    800044ac:	03a13823          	sd	s10,48(sp)
    800044b0:	03b13423          	sd	s11,40(sp)
    800044b4:	00004317          	auipc	t1,0x4
    800044b8:	35c30313          	addi	t1,t1,860 # 80008810 <pr>
    800044bc:	01832c03          	lw	s8,24(t1)
    800044c0:	00b43423          	sd	a1,8(s0)
    800044c4:	00c43823          	sd	a2,16(s0)
    800044c8:	00d43c23          	sd	a3,24(s0)
    800044cc:	02e43023          	sd	a4,32(s0)
    800044d0:	02f43423          	sd	a5,40(s0)
    800044d4:	03043823          	sd	a6,48(s0)
    800044d8:	03143c23          	sd	a7,56(s0)
    800044dc:	00050993          	mv	s3,a0
    800044e0:	4a0c1663          	bnez	s8,8000498c <__printf+0x514>
    800044e4:	60098c63          	beqz	s3,80004afc <__printf+0x684>
    800044e8:	0009c503          	lbu	a0,0(s3)
    800044ec:	00840793          	addi	a5,s0,8
    800044f0:	f6f43c23          	sd	a5,-136(s0)
    800044f4:	00000493          	li	s1,0
    800044f8:	22050063          	beqz	a0,80004718 <__printf+0x2a0>
    800044fc:	00002a37          	lui	s4,0x2
    80004500:	00018ab7          	lui	s5,0x18
    80004504:	000f4b37          	lui	s6,0xf4
    80004508:	00989bb7          	lui	s7,0x989
    8000450c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004510:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004514:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004518:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000451c:	00148c9b          	addiw	s9,s1,1
    80004520:	02500793          	li	a5,37
    80004524:	01998933          	add	s2,s3,s9
    80004528:	38f51263          	bne	a0,a5,800048ac <__printf+0x434>
    8000452c:	00094783          	lbu	a5,0(s2)
    80004530:	00078c9b          	sext.w	s9,a5
    80004534:	1e078263          	beqz	a5,80004718 <__printf+0x2a0>
    80004538:	0024849b          	addiw	s1,s1,2
    8000453c:	07000713          	li	a4,112
    80004540:	00998933          	add	s2,s3,s1
    80004544:	38e78a63          	beq	a5,a4,800048d8 <__printf+0x460>
    80004548:	20f76863          	bltu	a4,a5,80004758 <__printf+0x2e0>
    8000454c:	42a78863          	beq	a5,a0,8000497c <__printf+0x504>
    80004550:	06400713          	li	a4,100
    80004554:	40e79663          	bne	a5,a4,80004960 <__printf+0x4e8>
    80004558:	f7843783          	ld	a5,-136(s0)
    8000455c:	0007a603          	lw	a2,0(a5)
    80004560:	00878793          	addi	a5,a5,8
    80004564:	f6f43c23          	sd	a5,-136(s0)
    80004568:	42064a63          	bltz	a2,8000499c <__printf+0x524>
    8000456c:	00a00713          	li	a4,10
    80004570:	02e677bb          	remuw	a5,a2,a4
    80004574:	00002d97          	auipc	s11,0x2
    80004578:	e24d8d93          	addi	s11,s11,-476 # 80006398 <digits>
    8000457c:	00900593          	li	a1,9
    80004580:	0006051b          	sext.w	a0,a2
    80004584:	00000c93          	li	s9,0
    80004588:	02079793          	slli	a5,a5,0x20
    8000458c:	0207d793          	srli	a5,a5,0x20
    80004590:	00fd87b3          	add	a5,s11,a5
    80004594:	0007c783          	lbu	a5,0(a5)
    80004598:	02e656bb          	divuw	a3,a2,a4
    8000459c:	f8f40023          	sb	a5,-128(s0)
    800045a0:	14c5d863          	bge	a1,a2,800046f0 <__printf+0x278>
    800045a4:	06300593          	li	a1,99
    800045a8:	00100c93          	li	s9,1
    800045ac:	02e6f7bb          	remuw	a5,a3,a4
    800045b0:	02079793          	slli	a5,a5,0x20
    800045b4:	0207d793          	srli	a5,a5,0x20
    800045b8:	00fd87b3          	add	a5,s11,a5
    800045bc:	0007c783          	lbu	a5,0(a5)
    800045c0:	02e6d73b          	divuw	a4,a3,a4
    800045c4:	f8f400a3          	sb	a5,-127(s0)
    800045c8:	12a5f463          	bgeu	a1,a0,800046f0 <__printf+0x278>
    800045cc:	00a00693          	li	a3,10
    800045d0:	00900593          	li	a1,9
    800045d4:	02d777bb          	remuw	a5,a4,a3
    800045d8:	02079793          	slli	a5,a5,0x20
    800045dc:	0207d793          	srli	a5,a5,0x20
    800045e0:	00fd87b3          	add	a5,s11,a5
    800045e4:	0007c503          	lbu	a0,0(a5)
    800045e8:	02d757bb          	divuw	a5,a4,a3
    800045ec:	f8a40123          	sb	a0,-126(s0)
    800045f0:	48e5f263          	bgeu	a1,a4,80004a74 <__printf+0x5fc>
    800045f4:	06300513          	li	a0,99
    800045f8:	02d7f5bb          	remuw	a1,a5,a3
    800045fc:	02059593          	slli	a1,a1,0x20
    80004600:	0205d593          	srli	a1,a1,0x20
    80004604:	00bd85b3          	add	a1,s11,a1
    80004608:	0005c583          	lbu	a1,0(a1)
    8000460c:	02d7d7bb          	divuw	a5,a5,a3
    80004610:	f8b401a3          	sb	a1,-125(s0)
    80004614:	48e57263          	bgeu	a0,a4,80004a98 <__printf+0x620>
    80004618:	3e700513          	li	a0,999
    8000461c:	02d7f5bb          	remuw	a1,a5,a3
    80004620:	02059593          	slli	a1,a1,0x20
    80004624:	0205d593          	srli	a1,a1,0x20
    80004628:	00bd85b3          	add	a1,s11,a1
    8000462c:	0005c583          	lbu	a1,0(a1)
    80004630:	02d7d7bb          	divuw	a5,a5,a3
    80004634:	f8b40223          	sb	a1,-124(s0)
    80004638:	46e57663          	bgeu	a0,a4,80004aa4 <__printf+0x62c>
    8000463c:	02d7f5bb          	remuw	a1,a5,a3
    80004640:	02059593          	slli	a1,a1,0x20
    80004644:	0205d593          	srli	a1,a1,0x20
    80004648:	00bd85b3          	add	a1,s11,a1
    8000464c:	0005c583          	lbu	a1,0(a1)
    80004650:	02d7d7bb          	divuw	a5,a5,a3
    80004654:	f8b402a3          	sb	a1,-123(s0)
    80004658:	46ea7863          	bgeu	s4,a4,80004ac8 <__printf+0x650>
    8000465c:	02d7f5bb          	remuw	a1,a5,a3
    80004660:	02059593          	slli	a1,a1,0x20
    80004664:	0205d593          	srli	a1,a1,0x20
    80004668:	00bd85b3          	add	a1,s11,a1
    8000466c:	0005c583          	lbu	a1,0(a1)
    80004670:	02d7d7bb          	divuw	a5,a5,a3
    80004674:	f8b40323          	sb	a1,-122(s0)
    80004678:	3eeaf863          	bgeu	s5,a4,80004a68 <__printf+0x5f0>
    8000467c:	02d7f5bb          	remuw	a1,a5,a3
    80004680:	02059593          	slli	a1,a1,0x20
    80004684:	0205d593          	srli	a1,a1,0x20
    80004688:	00bd85b3          	add	a1,s11,a1
    8000468c:	0005c583          	lbu	a1,0(a1)
    80004690:	02d7d7bb          	divuw	a5,a5,a3
    80004694:	f8b403a3          	sb	a1,-121(s0)
    80004698:	42eb7e63          	bgeu	s6,a4,80004ad4 <__printf+0x65c>
    8000469c:	02d7f5bb          	remuw	a1,a5,a3
    800046a0:	02059593          	slli	a1,a1,0x20
    800046a4:	0205d593          	srli	a1,a1,0x20
    800046a8:	00bd85b3          	add	a1,s11,a1
    800046ac:	0005c583          	lbu	a1,0(a1)
    800046b0:	02d7d7bb          	divuw	a5,a5,a3
    800046b4:	f8b40423          	sb	a1,-120(s0)
    800046b8:	42ebfc63          	bgeu	s7,a4,80004af0 <__printf+0x678>
    800046bc:	02079793          	slli	a5,a5,0x20
    800046c0:	0207d793          	srli	a5,a5,0x20
    800046c4:	00fd8db3          	add	s11,s11,a5
    800046c8:	000dc703          	lbu	a4,0(s11)
    800046cc:	00a00793          	li	a5,10
    800046d0:	00900c93          	li	s9,9
    800046d4:	f8e404a3          	sb	a4,-119(s0)
    800046d8:	00065c63          	bgez	a2,800046f0 <__printf+0x278>
    800046dc:	f9040713          	addi	a4,s0,-112
    800046e0:	00f70733          	add	a4,a4,a5
    800046e4:	02d00693          	li	a3,45
    800046e8:	fed70823          	sb	a3,-16(a4)
    800046ec:	00078c93          	mv	s9,a5
    800046f0:	f8040793          	addi	a5,s0,-128
    800046f4:	01978cb3          	add	s9,a5,s9
    800046f8:	f7f40d13          	addi	s10,s0,-129
    800046fc:	000cc503          	lbu	a0,0(s9)
    80004700:	fffc8c93          	addi	s9,s9,-1
    80004704:	00000097          	auipc	ra,0x0
    80004708:	b90080e7          	jalr	-1136(ra) # 80004294 <consputc>
    8000470c:	ffac98e3          	bne	s9,s10,800046fc <__printf+0x284>
    80004710:	00094503          	lbu	a0,0(s2)
    80004714:	e00514e3          	bnez	a0,8000451c <__printf+0xa4>
    80004718:	1a0c1663          	bnez	s8,800048c4 <__printf+0x44c>
    8000471c:	08813083          	ld	ra,136(sp)
    80004720:	08013403          	ld	s0,128(sp)
    80004724:	07813483          	ld	s1,120(sp)
    80004728:	07013903          	ld	s2,112(sp)
    8000472c:	06813983          	ld	s3,104(sp)
    80004730:	06013a03          	ld	s4,96(sp)
    80004734:	05813a83          	ld	s5,88(sp)
    80004738:	05013b03          	ld	s6,80(sp)
    8000473c:	04813b83          	ld	s7,72(sp)
    80004740:	04013c03          	ld	s8,64(sp)
    80004744:	03813c83          	ld	s9,56(sp)
    80004748:	03013d03          	ld	s10,48(sp)
    8000474c:	02813d83          	ld	s11,40(sp)
    80004750:	0d010113          	addi	sp,sp,208
    80004754:	00008067          	ret
    80004758:	07300713          	li	a4,115
    8000475c:	1ce78a63          	beq	a5,a4,80004930 <__printf+0x4b8>
    80004760:	07800713          	li	a4,120
    80004764:	1ee79e63          	bne	a5,a4,80004960 <__printf+0x4e8>
    80004768:	f7843783          	ld	a5,-136(s0)
    8000476c:	0007a703          	lw	a4,0(a5)
    80004770:	00878793          	addi	a5,a5,8
    80004774:	f6f43c23          	sd	a5,-136(s0)
    80004778:	28074263          	bltz	a4,800049fc <__printf+0x584>
    8000477c:	00002d97          	auipc	s11,0x2
    80004780:	c1cd8d93          	addi	s11,s11,-996 # 80006398 <digits>
    80004784:	00f77793          	andi	a5,a4,15
    80004788:	00fd87b3          	add	a5,s11,a5
    8000478c:	0007c683          	lbu	a3,0(a5)
    80004790:	00f00613          	li	a2,15
    80004794:	0007079b          	sext.w	a5,a4
    80004798:	f8d40023          	sb	a3,-128(s0)
    8000479c:	0047559b          	srliw	a1,a4,0x4
    800047a0:	0047569b          	srliw	a3,a4,0x4
    800047a4:	00000c93          	li	s9,0
    800047a8:	0ee65063          	bge	a2,a4,80004888 <__printf+0x410>
    800047ac:	00f6f693          	andi	a3,a3,15
    800047b0:	00dd86b3          	add	a3,s11,a3
    800047b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800047b8:	0087d79b          	srliw	a5,a5,0x8
    800047bc:	00100c93          	li	s9,1
    800047c0:	f8d400a3          	sb	a3,-127(s0)
    800047c4:	0cb67263          	bgeu	a2,a1,80004888 <__printf+0x410>
    800047c8:	00f7f693          	andi	a3,a5,15
    800047cc:	00dd86b3          	add	a3,s11,a3
    800047d0:	0006c583          	lbu	a1,0(a3)
    800047d4:	00f00613          	li	a2,15
    800047d8:	0047d69b          	srliw	a3,a5,0x4
    800047dc:	f8b40123          	sb	a1,-126(s0)
    800047e0:	0047d593          	srli	a1,a5,0x4
    800047e4:	28f67e63          	bgeu	a2,a5,80004a80 <__printf+0x608>
    800047e8:	00f6f693          	andi	a3,a3,15
    800047ec:	00dd86b3          	add	a3,s11,a3
    800047f0:	0006c503          	lbu	a0,0(a3)
    800047f4:	0087d813          	srli	a6,a5,0x8
    800047f8:	0087d69b          	srliw	a3,a5,0x8
    800047fc:	f8a401a3          	sb	a0,-125(s0)
    80004800:	28b67663          	bgeu	a2,a1,80004a8c <__printf+0x614>
    80004804:	00f6f693          	andi	a3,a3,15
    80004808:	00dd86b3          	add	a3,s11,a3
    8000480c:	0006c583          	lbu	a1,0(a3)
    80004810:	00c7d513          	srli	a0,a5,0xc
    80004814:	00c7d69b          	srliw	a3,a5,0xc
    80004818:	f8b40223          	sb	a1,-124(s0)
    8000481c:	29067a63          	bgeu	a2,a6,80004ab0 <__printf+0x638>
    80004820:	00f6f693          	andi	a3,a3,15
    80004824:	00dd86b3          	add	a3,s11,a3
    80004828:	0006c583          	lbu	a1,0(a3)
    8000482c:	0107d813          	srli	a6,a5,0x10
    80004830:	0107d69b          	srliw	a3,a5,0x10
    80004834:	f8b402a3          	sb	a1,-123(s0)
    80004838:	28a67263          	bgeu	a2,a0,80004abc <__printf+0x644>
    8000483c:	00f6f693          	andi	a3,a3,15
    80004840:	00dd86b3          	add	a3,s11,a3
    80004844:	0006c683          	lbu	a3,0(a3)
    80004848:	0147d79b          	srliw	a5,a5,0x14
    8000484c:	f8d40323          	sb	a3,-122(s0)
    80004850:	21067663          	bgeu	a2,a6,80004a5c <__printf+0x5e4>
    80004854:	02079793          	slli	a5,a5,0x20
    80004858:	0207d793          	srli	a5,a5,0x20
    8000485c:	00fd8db3          	add	s11,s11,a5
    80004860:	000dc683          	lbu	a3,0(s11)
    80004864:	00800793          	li	a5,8
    80004868:	00700c93          	li	s9,7
    8000486c:	f8d403a3          	sb	a3,-121(s0)
    80004870:	00075c63          	bgez	a4,80004888 <__printf+0x410>
    80004874:	f9040713          	addi	a4,s0,-112
    80004878:	00f70733          	add	a4,a4,a5
    8000487c:	02d00693          	li	a3,45
    80004880:	fed70823          	sb	a3,-16(a4)
    80004884:	00078c93          	mv	s9,a5
    80004888:	f8040793          	addi	a5,s0,-128
    8000488c:	01978cb3          	add	s9,a5,s9
    80004890:	f7f40d13          	addi	s10,s0,-129
    80004894:	000cc503          	lbu	a0,0(s9)
    80004898:	fffc8c93          	addi	s9,s9,-1
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	9f8080e7          	jalr	-1544(ra) # 80004294 <consputc>
    800048a4:	ff9d18e3          	bne	s10,s9,80004894 <__printf+0x41c>
    800048a8:	0100006f          	j	800048b8 <__printf+0x440>
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	9e8080e7          	jalr	-1560(ra) # 80004294 <consputc>
    800048b4:	000c8493          	mv	s1,s9
    800048b8:	00094503          	lbu	a0,0(s2)
    800048bc:	c60510e3          	bnez	a0,8000451c <__printf+0xa4>
    800048c0:	e40c0ee3          	beqz	s8,8000471c <__printf+0x2a4>
    800048c4:	00004517          	auipc	a0,0x4
    800048c8:	f4c50513          	addi	a0,a0,-180 # 80008810 <pr>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	94c080e7          	jalr	-1716(ra) # 80005218 <release>
    800048d4:	e49ff06f          	j	8000471c <__printf+0x2a4>
    800048d8:	f7843783          	ld	a5,-136(s0)
    800048dc:	03000513          	li	a0,48
    800048e0:	01000d13          	li	s10,16
    800048e4:	00878713          	addi	a4,a5,8
    800048e8:	0007bc83          	ld	s9,0(a5)
    800048ec:	f6e43c23          	sd	a4,-136(s0)
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	9a4080e7          	jalr	-1628(ra) # 80004294 <consputc>
    800048f8:	07800513          	li	a0,120
    800048fc:	00000097          	auipc	ra,0x0
    80004900:	998080e7          	jalr	-1640(ra) # 80004294 <consputc>
    80004904:	00002d97          	auipc	s11,0x2
    80004908:	a94d8d93          	addi	s11,s11,-1388 # 80006398 <digits>
    8000490c:	03ccd793          	srli	a5,s9,0x3c
    80004910:	00fd87b3          	add	a5,s11,a5
    80004914:	0007c503          	lbu	a0,0(a5)
    80004918:	fffd0d1b          	addiw	s10,s10,-1
    8000491c:	004c9c93          	slli	s9,s9,0x4
    80004920:	00000097          	auipc	ra,0x0
    80004924:	974080e7          	jalr	-1676(ra) # 80004294 <consputc>
    80004928:	fe0d12e3          	bnez	s10,8000490c <__printf+0x494>
    8000492c:	f8dff06f          	j	800048b8 <__printf+0x440>
    80004930:	f7843783          	ld	a5,-136(s0)
    80004934:	0007bc83          	ld	s9,0(a5)
    80004938:	00878793          	addi	a5,a5,8
    8000493c:	f6f43c23          	sd	a5,-136(s0)
    80004940:	000c9a63          	bnez	s9,80004954 <__printf+0x4dc>
    80004944:	1080006f          	j	80004a4c <__printf+0x5d4>
    80004948:	001c8c93          	addi	s9,s9,1
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	948080e7          	jalr	-1720(ra) # 80004294 <consputc>
    80004954:	000cc503          	lbu	a0,0(s9)
    80004958:	fe0518e3          	bnez	a0,80004948 <__printf+0x4d0>
    8000495c:	f5dff06f          	j	800048b8 <__printf+0x440>
    80004960:	02500513          	li	a0,37
    80004964:	00000097          	auipc	ra,0x0
    80004968:	930080e7          	jalr	-1744(ra) # 80004294 <consputc>
    8000496c:	000c8513          	mv	a0,s9
    80004970:	00000097          	auipc	ra,0x0
    80004974:	924080e7          	jalr	-1756(ra) # 80004294 <consputc>
    80004978:	f41ff06f          	j	800048b8 <__printf+0x440>
    8000497c:	02500513          	li	a0,37
    80004980:	00000097          	auipc	ra,0x0
    80004984:	914080e7          	jalr	-1772(ra) # 80004294 <consputc>
    80004988:	f31ff06f          	j	800048b8 <__printf+0x440>
    8000498c:	00030513          	mv	a0,t1
    80004990:	00000097          	auipc	ra,0x0
    80004994:	7bc080e7          	jalr	1980(ra) # 8000514c <acquire>
    80004998:	b4dff06f          	j	800044e4 <__printf+0x6c>
    8000499c:	40c0053b          	negw	a0,a2
    800049a0:	00a00713          	li	a4,10
    800049a4:	02e576bb          	remuw	a3,a0,a4
    800049a8:	00002d97          	auipc	s11,0x2
    800049ac:	9f0d8d93          	addi	s11,s11,-1552 # 80006398 <digits>
    800049b0:	ff700593          	li	a1,-9
    800049b4:	02069693          	slli	a3,a3,0x20
    800049b8:	0206d693          	srli	a3,a3,0x20
    800049bc:	00dd86b3          	add	a3,s11,a3
    800049c0:	0006c683          	lbu	a3,0(a3)
    800049c4:	02e557bb          	divuw	a5,a0,a4
    800049c8:	f8d40023          	sb	a3,-128(s0)
    800049cc:	10b65e63          	bge	a2,a1,80004ae8 <__printf+0x670>
    800049d0:	06300593          	li	a1,99
    800049d4:	02e7f6bb          	remuw	a3,a5,a4
    800049d8:	02069693          	slli	a3,a3,0x20
    800049dc:	0206d693          	srli	a3,a3,0x20
    800049e0:	00dd86b3          	add	a3,s11,a3
    800049e4:	0006c683          	lbu	a3,0(a3)
    800049e8:	02e7d73b          	divuw	a4,a5,a4
    800049ec:	00200793          	li	a5,2
    800049f0:	f8d400a3          	sb	a3,-127(s0)
    800049f4:	bca5ece3          	bltu	a1,a0,800045cc <__printf+0x154>
    800049f8:	ce5ff06f          	j	800046dc <__printf+0x264>
    800049fc:	40e007bb          	negw	a5,a4
    80004a00:	00002d97          	auipc	s11,0x2
    80004a04:	998d8d93          	addi	s11,s11,-1640 # 80006398 <digits>
    80004a08:	00f7f693          	andi	a3,a5,15
    80004a0c:	00dd86b3          	add	a3,s11,a3
    80004a10:	0006c583          	lbu	a1,0(a3)
    80004a14:	ff100613          	li	a2,-15
    80004a18:	0047d69b          	srliw	a3,a5,0x4
    80004a1c:	f8b40023          	sb	a1,-128(s0)
    80004a20:	0047d59b          	srliw	a1,a5,0x4
    80004a24:	0ac75e63          	bge	a4,a2,80004ae0 <__printf+0x668>
    80004a28:	00f6f693          	andi	a3,a3,15
    80004a2c:	00dd86b3          	add	a3,s11,a3
    80004a30:	0006c603          	lbu	a2,0(a3)
    80004a34:	00f00693          	li	a3,15
    80004a38:	0087d79b          	srliw	a5,a5,0x8
    80004a3c:	f8c400a3          	sb	a2,-127(s0)
    80004a40:	d8b6e4e3          	bltu	a3,a1,800047c8 <__printf+0x350>
    80004a44:	00200793          	li	a5,2
    80004a48:	e2dff06f          	j	80004874 <__printf+0x3fc>
    80004a4c:	00002c97          	auipc	s9,0x2
    80004a50:	92cc8c93          	addi	s9,s9,-1748 # 80006378 <CONSOLE_STATUS+0x368>
    80004a54:	02800513          	li	a0,40
    80004a58:	ef1ff06f          	j	80004948 <__printf+0x4d0>
    80004a5c:	00700793          	li	a5,7
    80004a60:	00600c93          	li	s9,6
    80004a64:	e0dff06f          	j	80004870 <__printf+0x3f8>
    80004a68:	00700793          	li	a5,7
    80004a6c:	00600c93          	li	s9,6
    80004a70:	c69ff06f          	j	800046d8 <__printf+0x260>
    80004a74:	00300793          	li	a5,3
    80004a78:	00200c93          	li	s9,2
    80004a7c:	c5dff06f          	j	800046d8 <__printf+0x260>
    80004a80:	00300793          	li	a5,3
    80004a84:	00200c93          	li	s9,2
    80004a88:	de9ff06f          	j	80004870 <__printf+0x3f8>
    80004a8c:	00400793          	li	a5,4
    80004a90:	00300c93          	li	s9,3
    80004a94:	dddff06f          	j	80004870 <__printf+0x3f8>
    80004a98:	00400793          	li	a5,4
    80004a9c:	00300c93          	li	s9,3
    80004aa0:	c39ff06f          	j	800046d8 <__printf+0x260>
    80004aa4:	00500793          	li	a5,5
    80004aa8:	00400c93          	li	s9,4
    80004aac:	c2dff06f          	j	800046d8 <__printf+0x260>
    80004ab0:	00500793          	li	a5,5
    80004ab4:	00400c93          	li	s9,4
    80004ab8:	db9ff06f          	j	80004870 <__printf+0x3f8>
    80004abc:	00600793          	li	a5,6
    80004ac0:	00500c93          	li	s9,5
    80004ac4:	dadff06f          	j	80004870 <__printf+0x3f8>
    80004ac8:	00600793          	li	a5,6
    80004acc:	00500c93          	li	s9,5
    80004ad0:	c09ff06f          	j	800046d8 <__printf+0x260>
    80004ad4:	00800793          	li	a5,8
    80004ad8:	00700c93          	li	s9,7
    80004adc:	bfdff06f          	j	800046d8 <__printf+0x260>
    80004ae0:	00100793          	li	a5,1
    80004ae4:	d91ff06f          	j	80004874 <__printf+0x3fc>
    80004ae8:	00100793          	li	a5,1
    80004aec:	bf1ff06f          	j	800046dc <__printf+0x264>
    80004af0:	00900793          	li	a5,9
    80004af4:	00800c93          	li	s9,8
    80004af8:	be1ff06f          	j	800046d8 <__printf+0x260>
    80004afc:	00002517          	auipc	a0,0x2
    80004b00:	88450513          	addi	a0,a0,-1916 # 80006380 <CONSOLE_STATUS+0x370>
    80004b04:	00000097          	auipc	ra,0x0
    80004b08:	918080e7          	jalr	-1768(ra) # 8000441c <panic>

0000000080004b0c <printfinit>:
    80004b0c:	fe010113          	addi	sp,sp,-32
    80004b10:	00813823          	sd	s0,16(sp)
    80004b14:	00913423          	sd	s1,8(sp)
    80004b18:	00113c23          	sd	ra,24(sp)
    80004b1c:	02010413          	addi	s0,sp,32
    80004b20:	00004497          	auipc	s1,0x4
    80004b24:	cf048493          	addi	s1,s1,-784 # 80008810 <pr>
    80004b28:	00048513          	mv	a0,s1
    80004b2c:	00002597          	auipc	a1,0x2
    80004b30:	86458593          	addi	a1,a1,-1948 # 80006390 <CONSOLE_STATUS+0x380>
    80004b34:	00000097          	auipc	ra,0x0
    80004b38:	5f4080e7          	jalr	1524(ra) # 80005128 <initlock>
    80004b3c:	01813083          	ld	ra,24(sp)
    80004b40:	01013403          	ld	s0,16(sp)
    80004b44:	0004ac23          	sw	zero,24(s1)
    80004b48:	00813483          	ld	s1,8(sp)
    80004b4c:	02010113          	addi	sp,sp,32
    80004b50:	00008067          	ret

0000000080004b54 <uartinit>:
    80004b54:	ff010113          	addi	sp,sp,-16
    80004b58:	00813423          	sd	s0,8(sp)
    80004b5c:	01010413          	addi	s0,sp,16
    80004b60:	100007b7          	lui	a5,0x10000
    80004b64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004b68:	f8000713          	li	a4,-128
    80004b6c:	00e781a3          	sb	a4,3(a5)
    80004b70:	00300713          	li	a4,3
    80004b74:	00e78023          	sb	a4,0(a5)
    80004b78:	000780a3          	sb	zero,1(a5)
    80004b7c:	00e781a3          	sb	a4,3(a5)
    80004b80:	00700693          	li	a3,7
    80004b84:	00d78123          	sb	a3,2(a5)
    80004b88:	00e780a3          	sb	a4,1(a5)
    80004b8c:	00813403          	ld	s0,8(sp)
    80004b90:	01010113          	addi	sp,sp,16
    80004b94:	00008067          	ret

0000000080004b98 <uartputc>:
    80004b98:	00003797          	auipc	a5,0x3
    80004b9c:	9d07a783          	lw	a5,-1584(a5) # 80007568 <panicked>
    80004ba0:	00078463          	beqz	a5,80004ba8 <uartputc+0x10>
    80004ba4:	0000006f          	j	80004ba4 <uartputc+0xc>
    80004ba8:	fd010113          	addi	sp,sp,-48
    80004bac:	02813023          	sd	s0,32(sp)
    80004bb0:	00913c23          	sd	s1,24(sp)
    80004bb4:	01213823          	sd	s2,16(sp)
    80004bb8:	01313423          	sd	s3,8(sp)
    80004bbc:	02113423          	sd	ra,40(sp)
    80004bc0:	03010413          	addi	s0,sp,48
    80004bc4:	00003917          	auipc	s2,0x3
    80004bc8:	9ac90913          	addi	s2,s2,-1620 # 80007570 <uart_tx_r>
    80004bcc:	00093783          	ld	a5,0(s2)
    80004bd0:	00003497          	auipc	s1,0x3
    80004bd4:	9a848493          	addi	s1,s1,-1624 # 80007578 <uart_tx_w>
    80004bd8:	0004b703          	ld	a4,0(s1)
    80004bdc:	02078693          	addi	a3,a5,32
    80004be0:	00050993          	mv	s3,a0
    80004be4:	02e69c63          	bne	a3,a4,80004c1c <uartputc+0x84>
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	834080e7          	jalr	-1996(ra) # 8000541c <push_on>
    80004bf0:	00093783          	ld	a5,0(s2)
    80004bf4:	0004b703          	ld	a4,0(s1)
    80004bf8:	02078793          	addi	a5,a5,32
    80004bfc:	00e79463          	bne	a5,a4,80004c04 <uartputc+0x6c>
    80004c00:	0000006f          	j	80004c00 <uartputc+0x68>
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	88c080e7          	jalr	-1908(ra) # 80005490 <pop_on>
    80004c0c:	00093783          	ld	a5,0(s2)
    80004c10:	0004b703          	ld	a4,0(s1)
    80004c14:	02078693          	addi	a3,a5,32
    80004c18:	fce688e3          	beq	a3,a4,80004be8 <uartputc+0x50>
    80004c1c:	01f77693          	andi	a3,a4,31
    80004c20:	00004597          	auipc	a1,0x4
    80004c24:	c1058593          	addi	a1,a1,-1008 # 80008830 <uart_tx_buf>
    80004c28:	00d586b3          	add	a3,a1,a3
    80004c2c:	00170713          	addi	a4,a4,1
    80004c30:	01368023          	sb	s3,0(a3)
    80004c34:	00e4b023          	sd	a4,0(s1)
    80004c38:	10000637          	lui	a2,0x10000
    80004c3c:	02f71063          	bne	a4,a5,80004c5c <uartputc+0xc4>
    80004c40:	0340006f          	j	80004c74 <uartputc+0xdc>
    80004c44:	00074703          	lbu	a4,0(a4)
    80004c48:	00f93023          	sd	a5,0(s2)
    80004c4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004c50:	00093783          	ld	a5,0(s2)
    80004c54:	0004b703          	ld	a4,0(s1)
    80004c58:	00f70e63          	beq	a4,a5,80004c74 <uartputc+0xdc>
    80004c5c:	00564683          	lbu	a3,5(a2)
    80004c60:	01f7f713          	andi	a4,a5,31
    80004c64:	00e58733          	add	a4,a1,a4
    80004c68:	0206f693          	andi	a3,a3,32
    80004c6c:	00178793          	addi	a5,a5,1
    80004c70:	fc069ae3          	bnez	a3,80004c44 <uartputc+0xac>
    80004c74:	02813083          	ld	ra,40(sp)
    80004c78:	02013403          	ld	s0,32(sp)
    80004c7c:	01813483          	ld	s1,24(sp)
    80004c80:	01013903          	ld	s2,16(sp)
    80004c84:	00813983          	ld	s3,8(sp)
    80004c88:	03010113          	addi	sp,sp,48
    80004c8c:	00008067          	ret

0000000080004c90 <uartputc_sync>:
    80004c90:	ff010113          	addi	sp,sp,-16
    80004c94:	00813423          	sd	s0,8(sp)
    80004c98:	01010413          	addi	s0,sp,16
    80004c9c:	00003717          	auipc	a4,0x3
    80004ca0:	8cc72703          	lw	a4,-1844(a4) # 80007568 <panicked>
    80004ca4:	02071663          	bnez	a4,80004cd0 <uartputc_sync+0x40>
    80004ca8:	00050793          	mv	a5,a0
    80004cac:	100006b7          	lui	a3,0x10000
    80004cb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004cb4:	02077713          	andi	a4,a4,32
    80004cb8:	fe070ce3          	beqz	a4,80004cb0 <uartputc_sync+0x20>
    80004cbc:	0ff7f793          	andi	a5,a5,255
    80004cc0:	00f68023          	sb	a5,0(a3)
    80004cc4:	00813403          	ld	s0,8(sp)
    80004cc8:	01010113          	addi	sp,sp,16
    80004ccc:	00008067          	ret
    80004cd0:	0000006f          	j	80004cd0 <uartputc_sync+0x40>

0000000080004cd4 <uartstart>:
    80004cd4:	ff010113          	addi	sp,sp,-16
    80004cd8:	00813423          	sd	s0,8(sp)
    80004cdc:	01010413          	addi	s0,sp,16
    80004ce0:	00003617          	auipc	a2,0x3
    80004ce4:	89060613          	addi	a2,a2,-1904 # 80007570 <uart_tx_r>
    80004ce8:	00003517          	auipc	a0,0x3
    80004cec:	89050513          	addi	a0,a0,-1904 # 80007578 <uart_tx_w>
    80004cf0:	00063783          	ld	a5,0(a2)
    80004cf4:	00053703          	ld	a4,0(a0)
    80004cf8:	04f70263          	beq	a4,a5,80004d3c <uartstart+0x68>
    80004cfc:	100005b7          	lui	a1,0x10000
    80004d00:	00004817          	auipc	a6,0x4
    80004d04:	b3080813          	addi	a6,a6,-1232 # 80008830 <uart_tx_buf>
    80004d08:	01c0006f          	j	80004d24 <uartstart+0x50>
    80004d0c:	0006c703          	lbu	a4,0(a3)
    80004d10:	00f63023          	sd	a5,0(a2)
    80004d14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d18:	00063783          	ld	a5,0(a2)
    80004d1c:	00053703          	ld	a4,0(a0)
    80004d20:	00f70e63          	beq	a4,a5,80004d3c <uartstart+0x68>
    80004d24:	01f7f713          	andi	a4,a5,31
    80004d28:	00e806b3          	add	a3,a6,a4
    80004d2c:	0055c703          	lbu	a4,5(a1)
    80004d30:	00178793          	addi	a5,a5,1
    80004d34:	02077713          	andi	a4,a4,32
    80004d38:	fc071ae3          	bnez	a4,80004d0c <uartstart+0x38>
    80004d3c:	00813403          	ld	s0,8(sp)
    80004d40:	01010113          	addi	sp,sp,16
    80004d44:	00008067          	ret

0000000080004d48 <uartgetc>:
    80004d48:	ff010113          	addi	sp,sp,-16
    80004d4c:	00813423          	sd	s0,8(sp)
    80004d50:	01010413          	addi	s0,sp,16
    80004d54:	10000737          	lui	a4,0x10000
    80004d58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004d5c:	0017f793          	andi	a5,a5,1
    80004d60:	00078c63          	beqz	a5,80004d78 <uartgetc+0x30>
    80004d64:	00074503          	lbu	a0,0(a4)
    80004d68:	0ff57513          	andi	a0,a0,255
    80004d6c:	00813403          	ld	s0,8(sp)
    80004d70:	01010113          	addi	sp,sp,16
    80004d74:	00008067          	ret
    80004d78:	fff00513          	li	a0,-1
    80004d7c:	ff1ff06f          	j	80004d6c <uartgetc+0x24>

0000000080004d80 <uartintr>:
    80004d80:	100007b7          	lui	a5,0x10000
    80004d84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004d88:	0017f793          	andi	a5,a5,1
    80004d8c:	0a078463          	beqz	a5,80004e34 <uartintr+0xb4>
    80004d90:	fe010113          	addi	sp,sp,-32
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	00113c23          	sd	ra,24(sp)
    80004da0:	02010413          	addi	s0,sp,32
    80004da4:	100004b7          	lui	s1,0x10000
    80004da8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004dac:	0ff57513          	andi	a0,a0,255
    80004db0:	fffff097          	auipc	ra,0xfffff
    80004db4:	534080e7          	jalr	1332(ra) # 800042e4 <consoleintr>
    80004db8:	0054c783          	lbu	a5,5(s1)
    80004dbc:	0017f793          	andi	a5,a5,1
    80004dc0:	fe0794e3          	bnez	a5,80004da8 <uartintr+0x28>
    80004dc4:	00002617          	auipc	a2,0x2
    80004dc8:	7ac60613          	addi	a2,a2,1964 # 80007570 <uart_tx_r>
    80004dcc:	00002517          	auipc	a0,0x2
    80004dd0:	7ac50513          	addi	a0,a0,1964 # 80007578 <uart_tx_w>
    80004dd4:	00063783          	ld	a5,0(a2)
    80004dd8:	00053703          	ld	a4,0(a0)
    80004ddc:	04f70263          	beq	a4,a5,80004e20 <uartintr+0xa0>
    80004de0:	100005b7          	lui	a1,0x10000
    80004de4:	00004817          	auipc	a6,0x4
    80004de8:	a4c80813          	addi	a6,a6,-1460 # 80008830 <uart_tx_buf>
    80004dec:	01c0006f          	j	80004e08 <uartintr+0x88>
    80004df0:	0006c703          	lbu	a4,0(a3)
    80004df4:	00f63023          	sd	a5,0(a2)
    80004df8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dfc:	00063783          	ld	a5,0(a2)
    80004e00:	00053703          	ld	a4,0(a0)
    80004e04:	00f70e63          	beq	a4,a5,80004e20 <uartintr+0xa0>
    80004e08:	01f7f713          	andi	a4,a5,31
    80004e0c:	00e806b3          	add	a3,a6,a4
    80004e10:	0055c703          	lbu	a4,5(a1)
    80004e14:	00178793          	addi	a5,a5,1
    80004e18:	02077713          	andi	a4,a4,32
    80004e1c:	fc071ae3          	bnez	a4,80004df0 <uartintr+0x70>
    80004e20:	01813083          	ld	ra,24(sp)
    80004e24:	01013403          	ld	s0,16(sp)
    80004e28:	00813483          	ld	s1,8(sp)
    80004e2c:	02010113          	addi	sp,sp,32
    80004e30:	00008067          	ret
    80004e34:	00002617          	auipc	a2,0x2
    80004e38:	73c60613          	addi	a2,a2,1852 # 80007570 <uart_tx_r>
    80004e3c:	00002517          	auipc	a0,0x2
    80004e40:	73c50513          	addi	a0,a0,1852 # 80007578 <uart_tx_w>
    80004e44:	00063783          	ld	a5,0(a2)
    80004e48:	00053703          	ld	a4,0(a0)
    80004e4c:	04f70263          	beq	a4,a5,80004e90 <uartintr+0x110>
    80004e50:	100005b7          	lui	a1,0x10000
    80004e54:	00004817          	auipc	a6,0x4
    80004e58:	9dc80813          	addi	a6,a6,-1572 # 80008830 <uart_tx_buf>
    80004e5c:	01c0006f          	j	80004e78 <uartintr+0xf8>
    80004e60:	0006c703          	lbu	a4,0(a3)
    80004e64:	00f63023          	sd	a5,0(a2)
    80004e68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e6c:	00063783          	ld	a5,0(a2)
    80004e70:	00053703          	ld	a4,0(a0)
    80004e74:	02f70063          	beq	a4,a5,80004e94 <uartintr+0x114>
    80004e78:	01f7f713          	andi	a4,a5,31
    80004e7c:	00e806b3          	add	a3,a6,a4
    80004e80:	0055c703          	lbu	a4,5(a1)
    80004e84:	00178793          	addi	a5,a5,1
    80004e88:	02077713          	andi	a4,a4,32
    80004e8c:	fc071ae3          	bnez	a4,80004e60 <uartintr+0xe0>
    80004e90:	00008067          	ret
    80004e94:	00008067          	ret

0000000080004e98 <kinit>:
    80004e98:	fc010113          	addi	sp,sp,-64
    80004e9c:	02913423          	sd	s1,40(sp)
    80004ea0:	fffff7b7          	lui	a5,0xfffff
    80004ea4:	00005497          	auipc	s1,0x5
    80004ea8:	9ab48493          	addi	s1,s1,-1621 # 8000984f <end+0xfff>
    80004eac:	02813823          	sd	s0,48(sp)
    80004eb0:	01313c23          	sd	s3,24(sp)
    80004eb4:	00f4f4b3          	and	s1,s1,a5
    80004eb8:	02113c23          	sd	ra,56(sp)
    80004ebc:	03213023          	sd	s2,32(sp)
    80004ec0:	01413823          	sd	s4,16(sp)
    80004ec4:	01513423          	sd	s5,8(sp)
    80004ec8:	04010413          	addi	s0,sp,64
    80004ecc:	000017b7          	lui	a5,0x1
    80004ed0:	01100993          	li	s3,17
    80004ed4:	00f487b3          	add	a5,s1,a5
    80004ed8:	01b99993          	slli	s3,s3,0x1b
    80004edc:	06f9e063          	bltu	s3,a5,80004f3c <kinit+0xa4>
    80004ee0:	00004a97          	auipc	s5,0x4
    80004ee4:	970a8a93          	addi	s5,s5,-1680 # 80008850 <end>
    80004ee8:	0754ec63          	bltu	s1,s5,80004f60 <kinit+0xc8>
    80004eec:	0734fa63          	bgeu	s1,s3,80004f60 <kinit+0xc8>
    80004ef0:	00088a37          	lui	s4,0x88
    80004ef4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004ef8:	00002917          	auipc	s2,0x2
    80004efc:	68890913          	addi	s2,s2,1672 # 80007580 <kmem>
    80004f00:	00ca1a13          	slli	s4,s4,0xc
    80004f04:	0140006f          	j	80004f18 <kinit+0x80>
    80004f08:	000017b7          	lui	a5,0x1
    80004f0c:	00f484b3          	add	s1,s1,a5
    80004f10:	0554e863          	bltu	s1,s5,80004f60 <kinit+0xc8>
    80004f14:	0534f663          	bgeu	s1,s3,80004f60 <kinit+0xc8>
    80004f18:	00001637          	lui	a2,0x1
    80004f1c:	00100593          	li	a1,1
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	5e4080e7          	jalr	1508(ra) # 80005508 <__memset>
    80004f2c:	00093783          	ld	a5,0(s2)
    80004f30:	00f4b023          	sd	a5,0(s1)
    80004f34:	00993023          	sd	s1,0(s2)
    80004f38:	fd4498e3          	bne	s1,s4,80004f08 <kinit+0x70>
    80004f3c:	03813083          	ld	ra,56(sp)
    80004f40:	03013403          	ld	s0,48(sp)
    80004f44:	02813483          	ld	s1,40(sp)
    80004f48:	02013903          	ld	s2,32(sp)
    80004f4c:	01813983          	ld	s3,24(sp)
    80004f50:	01013a03          	ld	s4,16(sp)
    80004f54:	00813a83          	ld	s5,8(sp)
    80004f58:	04010113          	addi	sp,sp,64
    80004f5c:	00008067          	ret
    80004f60:	00001517          	auipc	a0,0x1
    80004f64:	45050513          	addi	a0,a0,1104 # 800063b0 <digits+0x18>
    80004f68:	fffff097          	auipc	ra,0xfffff
    80004f6c:	4b4080e7          	jalr	1204(ra) # 8000441c <panic>

0000000080004f70 <freerange>:
    80004f70:	fc010113          	addi	sp,sp,-64
    80004f74:	000017b7          	lui	a5,0x1
    80004f78:	02913423          	sd	s1,40(sp)
    80004f7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004f80:	009504b3          	add	s1,a0,s1
    80004f84:	fffff537          	lui	a0,0xfffff
    80004f88:	02813823          	sd	s0,48(sp)
    80004f8c:	02113c23          	sd	ra,56(sp)
    80004f90:	03213023          	sd	s2,32(sp)
    80004f94:	01313c23          	sd	s3,24(sp)
    80004f98:	01413823          	sd	s4,16(sp)
    80004f9c:	01513423          	sd	s5,8(sp)
    80004fa0:	01613023          	sd	s6,0(sp)
    80004fa4:	04010413          	addi	s0,sp,64
    80004fa8:	00a4f4b3          	and	s1,s1,a0
    80004fac:	00f487b3          	add	a5,s1,a5
    80004fb0:	06f5e463          	bltu	a1,a5,80005018 <freerange+0xa8>
    80004fb4:	00004a97          	auipc	s5,0x4
    80004fb8:	89ca8a93          	addi	s5,s5,-1892 # 80008850 <end>
    80004fbc:	0954e263          	bltu	s1,s5,80005040 <freerange+0xd0>
    80004fc0:	01100993          	li	s3,17
    80004fc4:	01b99993          	slli	s3,s3,0x1b
    80004fc8:	0734fc63          	bgeu	s1,s3,80005040 <freerange+0xd0>
    80004fcc:	00058a13          	mv	s4,a1
    80004fd0:	00002917          	auipc	s2,0x2
    80004fd4:	5b090913          	addi	s2,s2,1456 # 80007580 <kmem>
    80004fd8:	00002b37          	lui	s6,0x2
    80004fdc:	0140006f          	j	80004ff0 <freerange+0x80>
    80004fe0:	000017b7          	lui	a5,0x1
    80004fe4:	00f484b3          	add	s1,s1,a5
    80004fe8:	0554ec63          	bltu	s1,s5,80005040 <freerange+0xd0>
    80004fec:	0534fa63          	bgeu	s1,s3,80005040 <freerange+0xd0>
    80004ff0:	00001637          	lui	a2,0x1
    80004ff4:	00100593          	li	a1,1
    80004ff8:	00048513          	mv	a0,s1
    80004ffc:	00000097          	auipc	ra,0x0
    80005000:	50c080e7          	jalr	1292(ra) # 80005508 <__memset>
    80005004:	00093703          	ld	a4,0(s2)
    80005008:	016487b3          	add	a5,s1,s6
    8000500c:	00e4b023          	sd	a4,0(s1)
    80005010:	00993023          	sd	s1,0(s2)
    80005014:	fcfa76e3          	bgeu	s4,a5,80004fe0 <freerange+0x70>
    80005018:	03813083          	ld	ra,56(sp)
    8000501c:	03013403          	ld	s0,48(sp)
    80005020:	02813483          	ld	s1,40(sp)
    80005024:	02013903          	ld	s2,32(sp)
    80005028:	01813983          	ld	s3,24(sp)
    8000502c:	01013a03          	ld	s4,16(sp)
    80005030:	00813a83          	ld	s5,8(sp)
    80005034:	00013b03          	ld	s6,0(sp)
    80005038:	04010113          	addi	sp,sp,64
    8000503c:	00008067          	ret
    80005040:	00001517          	auipc	a0,0x1
    80005044:	37050513          	addi	a0,a0,880 # 800063b0 <digits+0x18>
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	3d4080e7          	jalr	980(ra) # 8000441c <panic>

0000000080005050 <kfree>:
    80005050:	fe010113          	addi	sp,sp,-32
    80005054:	00813823          	sd	s0,16(sp)
    80005058:	00113c23          	sd	ra,24(sp)
    8000505c:	00913423          	sd	s1,8(sp)
    80005060:	02010413          	addi	s0,sp,32
    80005064:	03451793          	slli	a5,a0,0x34
    80005068:	04079c63          	bnez	a5,800050c0 <kfree+0x70>
    8000506c:	00003797          	auipc	a5,0x3
    80005070:	7e478793          	addi	a5,a5,2020 # 80008850 <end>
    80005074:	00050493          	mv	s1,a0
    80005078:	04f56463          	bltu	a0,a5,800050c0 <kfree+0x70>
    8000507c:	01100793          	li	a5,17
    80005080:	01b79793          	slli	a5,a5,0x1b
    80005084:	02f57e63          	bgeu	a0,a5,800050c0 <kfree+0x70>
    80005088:	00001637          	lui	a2,0x1
    8000508c:	00100593          	li	a1,1
    80005090:	00000097          	auipc	ra,0x0
    80005094:	478080e7          	jalr	1144(ra) # 80005508 <__memset>
    80005098:	00002797          	auipc	a5,0x2
    8000509c:	4e878793          	addi	a5,a5,1256 # 80007580 <kmem>
    800050a0:	0007b703          	ld	a4,0(a5)
    800050a4:	01813083          	ld	ra,24(sp)
    800050a8:	01013403          	ld	s0,16(sp)
    800050ac:	00e4b023          	sd	a4,0(s1)
    800050b0:	0097b023          	sd	s1,0(a5)
    800050b4:	00813483          	ld	s1,8(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret
    800050c0:	00001517          	auipc	a0,0x1
    800050c4:	2f050513          	addi	a0,a0,752 # 800063b0 <digits+0x18>
    800050c8:	fffff097          	auipc	ra,0xfffff
    800050cc:	354080e7          	jalr	852(ra) # 8000441c <panic>

00000000800050d0 <kalloc>:
    800050d0:	fe010113          	addi	sp,sp,-32
    800050d4:	00813823          	sd	s0,16(sp)
    800050d8:	00913423          	sd	s1,8(sp)
    800050dc:	00113c23          	sd	ra,24(sp)
    800050e0:	02010413          	addi	s0,sp,32
    800050e4:	00002797          	auipc	a5,0x2
    800050e8:	49c78793          	addi	a5,a5,1180 # 80007580 <kmem>
    800050ec:	0007b483          	ld	s1,0(a5)
    800050f0:	02048063          	beqz	s1,80005110 <kalloc+0x40>
    800050f4:	0004b703          	ld	a4,0(s1)
    800050f8:	00001637          	lui	a2,0x1
    800050fc:	00500593          	li	a1,5
    80005100:	00048513          	mv	a0,s1
    80005104:	00e7b023          	sd	a4,0(a5)
    80005108:	00000097          	auipc	ra,0x0
    8000510c:	400080e7          	jalr	1024(ra) # 80005508 <__memset>
    80005110:	01813083          	ld	ra,24(sp)
    80005114:	01013403          	ld	s0,16(sp)
    80005118:	00048513          	mv	a0,s1
    8000511c:	00813483          	ld	s1,8(sp)
    80005120:	02010113          	addi	sp,sp,32
    80005124:	00008067          	ret

0000000080005128 <initlock>:
    80005128:	ff010113          	addi	sp,sp,-16
    8000512c:	00813423          	sd	s0,8(sp)
    80005130:	01010413          	addi	s0,sp,16
    80005134:	00813403          	ld	s0,8(sp)
    80005138:	00b53423          	sd	a1,8(a0)
    8000513c:	00052023          	sw	zero,0(a0)
    80005140:	00053823          	sd	zero,16(a0)
    80005144:	01010113          	addi	sp,sp,16
    80005148:	00008067          	ret

000000008000514c <acquire>:
    8000514c:	fe010113          	addi	sp,sp,-32
    80005150:	00813823          	sd	s0,16(sp)
    80005154:	00913423          	sd	s1,8(sp)
    80005158:	00113c23          	sd	ra,24(sp)
    8000515c:	01213023          	sd	s2,0(sp)
    80005160:	02010413          	addi	s0,sp,32
    80005164:	00050493          	mv	s1,a0
    80005168:	10002973          	csrr	s2,sstatus
    8000516c:	100027f3          	csrr	a5,sstatus
    80005170:	ffd7f793          	andi	a5,a5,-3
    80005174:	10079073          	csrw	sstatus,a5
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	8e4080e7          	jalr	-1820(ra) # 80003a5c <mycpu>
    80005180:	07852783          	lw	a5,120(a0)
    80005184:	06078e63          	beqz	a5,80005200 <acquire+0xb4>
    80005188:	fffff097          	auipc	ra,0xfffff
    8000518c:	8d4080e7          	jalr	-1836(ra) # 80003a5c <mycpu>
    80005190:	07852783          	lw	a5,120(a0)
    80005194:	0004a703          	lw	a4,0(s1)
    80005198:	0017879b          	addiw	a5,a5,1
    8000519c:	06f52c23          	sw	a5,120(a0)
    800051a0:	04071063          	bnez	a4,800051e0 <acquire+0x94>
    800051a4:	00100713          	li	a4,1
    800051a8:	00070793          	mv	a5,a4
    800051ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800051b0:	0007879b          	sext.w	a5,a5
    800051b4:	fe079ae3          	bnez	a5,800051a8 <acquire+0x5c>
    800051b8:	0ff0000f          	fence
    800051bc:	fffff097          	auipc	ra,0xfffff
    800051c0:	8a0080e7          	jalr	-1888(ra) # 80003a5c <mycpu>
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00a4b823          	sd	a0,16(s1)
    800051d0:	00013903          	ld	s2,0(sp)
    800051d4:	00813483          	ld	s1,8(sp)
    800051d8:	02010113          	addi	sp,sp,32
    800051dc:	00008067          	ret
    800051e0:	0104b903          	ld	s2,16(s1)
    800051e4:	fffff097          	auipc	ra,0xfffff
    800051e8:	878080e7          	jalr	-1928(ra) # 80003a5c <mycpu>
    800051ec:	faa91ce3          	bne	s2,a0,800051a4 <acquire+0x58>
    800051f0:	00001517          	auipc	a0,0x1
    800051f4:	1c850513          	addi	a0,a0,456 # 800063b8 <digits+0x20>
    800051f8:	fffff097          	auipc	ra,0xfffff
    800051fc:	224080e7          	jalr	548(ra) # 8000441c <panic>
    80005200:	00195913          	srli	s2,s2,0x1
    80005204:	fffff097          	auipc	ra,0xfffff
    80005208:	858080e7          	jalr	-1960(ra) # 80003a5c <mycpu>
    8000520c:	00197913          	andi	s2,s2,1
    80005210:	07252e23          	sw	s2,124(a0)
    80005214:	f75ff06f          	j	80005188 <acquire+0x3c>

0000000080005218 <release>:
    80005218:	fe010113          	addi	sp,sp,-32
    8000521c:	00813823          	sd	s0,16(sp)
    80005220:	00113c23          	sd	ra,24(sp)
    80005224:	00913423          	sd	s1,8(sp)
    80005228:	01213023          	sd	s2,0(sp)
    8000522c:	02010413          	addi	s0,sp,32
    80005230:	00052783          	lw	a5,0(a0)
    80005234:	00079a63          	bnez	a5,80005248 <release+0x30>
    80005238:	00001517          	auipc	a0,0x1
    8000523c:	18850513          	addi	a0,a0,392 # 800063c0 <digits+0x28>
    80005240:	fffff097          	auipc	ra,0xfffff
    80005244:	1dc080e7          	jalr	476(ra) # 8000441c <panic>
    80005248:	01053903          	ld	s2,16(a0)
    8000524c:	00050493          	mv	s1,a0
    80005250:	fffff097          	auipc	ra,0xfffff
    80005254:	80c080e7          	jalr	-2036(ra) # 80003a5c <mycpu>
    80005258:	fea910e3          	bne	s2,a0,80005238 <release+0x20>
    8000525c:	0004b823          	sd	zero,16(s1)
    80005260:	0ff0000f          	fence
    80005264:	0f50000f          	fence	iorw,ow
    80005268:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	7f0080e7          	jalr	2032(ra) # 80003a5c <mycpu>
    80005274:	100027f3          	csrr	a5,sstatus
    80005278:	0027f793          	andi	a5,a5,2
    8000527c:	04079a63          	bnez	a5,800052d0 <release+0xb8>
    80005280:	07852783          	lw	a5,120(a0)
    80005284:	02f05e63          	blez	a5,800052c0 <release+0xa8>
    80005288:	fff7871b          	addiw	a4,a5,-1
    8000528c:	06e52c23          	sw	a4,120(a0)
    80005290:	00071c63          	bnez	a4,800052a8 <release+0x90>
    80005294:	07c52783          	lw	a5,124(a0)
    80005298:	00078863          	beqz	a5,800052a8 <release+0x90>
    8000529c:	100027f3          	csrr	a5,sstatus
    800052a0:	0027e793          	ori	a5,a5,2
    800052a4:	10079073          	csrw	sstatus,a5
    800052a8:	01813083          	ld	ra,24(sp)
    800052ac:	01013403          	ld	s0,16(sp)
    800052b0:	00813483          	ld	s1,8(sp)
    800052b4:	00013903          	ld	s2,0(sp)
    800052b8:	02010113          	addi	sp,sp,32
    800052bc:	00008067          	ret
    800052c0:	00001517          	auipc	a0,0x1
    800052c4:	12050513          	addi	a0,a0,288 # 800063e0 <digits+0x48>
    800052c8:	fffff097          	auipc	ra,0xfffff
    800052cc:	154080e7          	jalr	340(ra) # 8000441c <panic>
    800052d0:	00001517          	auipc	a0,0x1
    800052d4:	0f850513          	addi	a0,a0,248 # 800063c8 <digits+0x30>
    800052d8:	fffff097          	auipc	ra,0xfffff
    800052dc:	144080e7          	jalr	324(ra) # 8000441c <panic>

00000000800052e0 <holding>:
    800052e0:	00052783          	lw	a5,0(a0)
    800052e4:	00079663          	bnez	a5,800052f0 <holding+0x10>
    800052e8:	00000513          	li	a0,0
    800052ec:	00008067          	ret
    800052f0:	fe010113          	addi	sp,sp,-32
    800052f4:	00813823          	sd	s0,16(sp)
    800052f8:	00913423          	sd	s1,8(sp)
    800052fc:	00113c23          	sd	ra,24(sp)
    80005300:	02010413          	addi	s0,sp,32
    80005304:	01053483          	ld	s1,16(a0)
    80005308:	ffffe097          	auipc	ra,0xffffe
    8000530c:	754080e7          	jalr	1876(ra) # 80003a5c <mycpu>
    80005310:	01813083          	ld	ra,24(sp)
    80005314:	01013403          	ld	s0,16(sp)
    80005318:	40a48533          	sub	a0,s1,a0
    8000531c:	00153513          	seqz	a0,a0
    80005320:	00813483          	ld	s1,8(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret

000000008000532c <push_off>:
    8000532c:	fe010113          	addi	sp,sp,-32
    80005330:	00813823          	sd	s0,16(sp)
    80005334:	00113c23          	sd	ra,24(sp)
    80005338:	00913423          	sd	s1,8(sp)
    8000533c:	02010413          	addi	s0,sp,32
    80005340:	100024f3          	csrr	s1,sstatus
    80005344:	100027f3          	csrr	a5,sstatus
    80005348:	ffd7f793          	andi	a5,a5,-3
    8000534c:	10079073          	csrw	sstatus,a5
    80005350:	ffffe097          	auipc	ra,0xffffe
    80005354:	70c080e7          	jalr	1804(ra) # 80003a5c <mycpu>
    80005358:	07852783          	lw	a5,120(a0)
    8000535c:	02078663          	beqz	a5,80005388 <push_off+0x5c>
    80005360:	ffffe097          	auipc	ra,0xffffe
    80005364:	6fc080e7          	jalr	1788(ra) # 80003a5c <mycpu>
    80005368:	07852783          	lw	a5,120(a0)
    8000536c:	01813083          	ld	ra,24(sp)
    80005370:	01013403          	ld	s0,16(sp)
    80005374:	0017879b          	addiw	a5,a5,1
    80005378:	06f52c23          	sw	a5,120(a0)
    8000537c:	00813483          	ld	s1,8(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret
    80005388:	0014d493          	srli	s1,s1,0x1
    8000538c:	ffffe097          	auipc	ra,0xffffe
    80005390:	6d0080e7          	jalr	1744(ra) # 80003a5c <mycpu>
    80005394:	0014f493          	andi	s1,s1,1
    80005398:	06952e23          	sw	s1,124(a0)
    8000539c:	fc5ff06f          	j	80005360 <push_off+0x34>

00000000800053a0 <pop_off>:
    800053a0:	ff010113          	addi	sp,sp,-16
    800053a4:	00813023          	sd	s0,0(sp)
    800053a8:	00113423          	sd	ra,8(sp)
    800053ac:	01010413          	addi	s0,sp,16
    800053b0:	ffffe097          	auipc	ra,0xffffe
    800053b4:	6ac080e7          	jalr	1708(ra) # 80003a5c <mycpu>
    800053b8:	100027f3          	csrr	a5,sstatus
    800053bc:	0027f793          	andi	a5,a5,2
    800053c0:	04079663          	bnez	a5,8000540c <pop_off+0x6c>
    800053c4:	07852783          	lw	a5,120(a0)
    800053c8:	02f05a63          	blez	a5,800053fc <pop_off+0x5c>
    800053cc:	fff7871b          	addiw	a4,a5,-1
    800053d0:	06e52c23          	sw	a4,120(a0)
    800053d4:	00071c63          	bnez	a4,800053ec <pop_off+0x4c>
    800053d8:	07c52783          	lw	a5,124(a0)
    800053dc:	00078863          	beqz	a5,800053ec <pop_off+0x4c>
    800053e0:	100027f3          	csrr	a5,sstatus
    800053e4:	0027e793          	ori	a5,a5,2
    800053e8:	10079073          	csrw	sstatus,a5
    800053ec:	00813083          	ld	ra,8(sp)
    800053f0:	00013403          	ld	s0,0(sp)
    800053f4:	01010113          	addi	sp,sp,16
    800053f8:	00008067          	ret
    800053fc:	00001517          	auipc	a0,0x1
    80005400:	fe450513          	addi	a0,a0,-28 # 800063e0 <digits+0x48>
    80005404:	fffff097          	auipc	ra,0xfffff
    80005408:	018080e7          	jalr	24(ra) # 8000441c <panic>
    8000540c:	00001517          	auipc	a0,0x1
    80005410:	fbc50513          	addi	a0,a0,-68 # 800063c8 <digits+0x30>
    80005414:	fffff097          	auipc	ra,0xfffff
    80005418:	008080e7          	jalr	8(ra) # 8000441c <panic>

000000008000541c <push_on>:
    8000541c:	fe010113          	addi	sp,sp,-32
    80005420:	00813823          	sd	s0,16(sp)
    80005424:	00113c23          	sd	ra,24(sp)
    80005428:	00913423          	sd	s1,8(sp)
    8000542c:	02010413          	addi	s0,sp,32
    80005430:	100024f3          	csrr	s1,sstatus
    80005434:	100027f3          	csrr	a5,sstatus
    80005438:	0027e793          	ori	a5,a5,2
    8000543c:	10079073          	csrw	sstatus,a5
    80005440:	ffffe097          	auipc	ra,0xffffe
    80005444:	61c080e7          	jalr	1564(ra) # 80003a5c <mycpu>
    80005448:	07852783          	lw	a5,120(a0)
    8000544c:	02078663          	beqz	a5,80005478 <push_on+0x5c>
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	60c080e7          	jalr	1548(ra) # 80003a5c <mycpu>
    80005458:	07852783          	lw	a5,120(a0)
    8000545c:	01813083          	ld	ra,24(sp)
    80005460:	01013403          	ld	s0,16(sp)
    80005464:	0017879b          	addiw	a5,a5,1
    80005468:	06f52c23          	sw	a5,120(a0)
    8000546c:	00813483          	ld	s1,8(sp)
    80005470:	02010113          	addi	sp,sp,32
    80005474:	00008067          	ret
    80005478:	0014d493          	srli	s1,s1,0x1
    8000547c:	ffffe097          	auipc	ra,0xffffe
    80005480:	5e0080e7          	jalr	1504(ra) # 80003a5c <mycpu>
    80005484:	0014f493          	andi	s1,s1,1
    80005488:	06952e23          	sw	s1,124(a0)
    8000548c:	fc5ff06f          	j	80005450 <push_on+0x34>

0000000080005490 <pop_on>:
    80005490:	ff010113          	addi	sp,sp,-16
    80005494:	00813023          	sd	s0,0(sp)
    80005498:	00113423          	sd	ra,8(sp)
    8000549c:	01010413          	addi	s0,sp,16
    800054a0:	ffffe097          	auipc	ra,0xffffe
    800054a4:	5bc080e7          	jalr	1468(ra) # 80003a5c <mycpu>
    800054a8:	100027f3          	csrr	a5,sstatus
    800054ac:	0027f793          	andi	a5,a5,2
    800054b0:	04078463          	beqz	a5,800054f8 <pop_on+0x68>
    800054b4:	07852783          	lw	a5,120(a0)
    800054b8:	02f05863          	blez	a5,800054e8 <pop_on+0x58>
    800054bc:	fff7879b          	addiw	a5,a5,-1
    800054c0:	06f52c23          	sw	a5,120(a0)
    800054c4:	07853783          	ld	a5,120(a0)
    800054c8:	00079863          	bnez	a5,800054d8 <pop_on+0x48>
    800054cc:	100027f3          	csrr	a5,sstatus
    800054d0:	ffd7f793          	andi	a5,a5,-3
    800054d4:	10079073          	csrw	sstatus,a5
    800054d8:	00813083          	ld	ra,8(sp)
    800054dc:	00013403          	ld	s0,0(sp)
    800054e0:	01010113          	addi	sp,sp,16
    800054e4:	00008067          	ret
    800054e8:	00001517          	auipc	a0,0x1
    800054ec:	f2050513          	addi	a0,a0,-224 # 80006408 <digits+0x70>
    800054f0:	fffff097          	auipc	ra,0xfffff
    800054f4:	f2c080e7          	jalr	-212(ra) # 8000441c <panic>
    800054f8:	00001517          	auipc	a0,0x1
    800054fc:	ef050513          	addi	a0,a0,-272 # 800063e8 <digits+0x50>
    80005500:	fffff097          	auipc	ra,0xfffff
    80005504:	f1c080e7          	jalr	-228(ra) # 8000441c <panic>

0000000080005508 <__memset>:
    80005508:	ff010113          	addi	sp,sp,-16
    8000550c:	00813423          	sd	s0,8(sp)
    80005510:	01010413          	addi	s0,sp,16
    80005514:	1a060e63          	beqz	a2,800056d0 <__memset+0x1c8>
    80005518:	40a007b3          	neg	a5,a0
    8000551c:	0077f793          	andi	a5,a5,7
    80005520:	00778693          	addi	a3,a5,7
    80005524:	00b00813          	li	a6,11
    80005528:	0ff5f593          	andi	a1,a1,255
    8000552c:	fff6071b          	addiw	a4,a2,-1
    80005530:	1b06e663          	bltu	a3,a6,800056dc <__memset+0x1d4>
    80005534:	1cd76463          	bltu	a4,a3,800056fc <__memset+0x1f4>
    80005538:	1a078e63          	beqz	a5,800056f4 <__memset+0x1ec>
    8000553c:	00b50023          	sb	a1,0(a0)
    80005540:	00100713          	li	a4,1
    80005544:	1ae78463          	beq	a5,a4,800056ec <__memset+0x1e4>
    80005548:	00b500a3          	sb	a1,1(a0)
    8000554c:	00200713          	li	a4,2
    80005550:	1ae78a63          	beq	a5,a4,80005704 <__memset+0x1fc>
    80005554:	00b50123          	sb	a1,2(a0)
    80005558:	00300713          	li	a4,3
    8000555c:	18e78463          	beq	a5,a4,800056e4 <__memset+0x1dc>
    80005560:	00b501a3          	sb	a1,3(a0)
    80005564:	00400713          	li	a4,4
    80005568:	1ae78263          	beq	a5,a4,8000570c <__memset+0x204>
    8000556c:	00b50223          	sb	a1,4(a0)
    80005570:	00500713          	li	a4,5
    80005574:	1ae78063          	beq	a5,a4,80005714 <__memset+0x20c>
    80005578:	00b502a3          	sb	a1,5(a0)
    8000557c:	00700713          	li	a4,7
    80005580:	18e79e63          	bne	a5,a4,8000571c <__memset+0x214>
    80005584:	00b50323          	sb	a1,6(a0)
    80005588:	00700e93          	li	t4,7
    8000558c:	00859713          	slli	a4,a1,0x8
    80005590:	00e5e733          	or	a4,a1,a4
    80005594:	01059e13          	slli	t3,a1,0x10
    80005598:	01c76e33          	or	t3,a4,t3
    8000559c:	01859313          	slli	t1,a1,0x18
    800055a0:	006e6333          	or	t1,t3,t1
    800055a4:	02059893          	slli	a7,a1,0x20
    800055a8:	40f60e3b          	subw	t3,a2,a5
    800055ac:	011368b3          	or	a7,t1,a7
    800055b0:	02859813          	slli	a6,a1,0x28
    800055b4:	0108e833          	or	a6,a7,a6
    800055b8:	03059693          	slli	a3,a1,0x30
    800055bc:	003e589b          	srliw	a7,t3,0x3
    800055c0:	00d866b3          	or	a3,a6,a3
    800055c4:	03859713          	slli	a4,a1,0x38
    800055c8:	00389813          	slli	a6,a7,0x3
    800055cc:	00f507b3          	add	a5,a0,a5
    800055d0:	00e6e733          	or	a4,a3,a4
    800055d4:	000e089b          	sext.w	a7,t3
    800055d8:	00f806b3          	add	a3,a6,a5
    800055dc:	00e7b023          	sd	a4,0(a5)
    800055e0:	00878793          	addi	a5,a5,8
    800055e4:	fed79ce3          	bne	a5,a3,800055dc <__memset+0xd4>
    800055e8:	ff8e7793          	andi	a5,t3,-8
    800055ec:	0007871b          	sext.w	a4,a5
    800055f0:	01d787bb          	addw	a5,a5,t4
    800055f4:	0ce88e63          	beq	a7,a4,800056d0 <__memset+0x1c8>
    800055f8:	00f50733          	add	a4,a0,a5
    800055fc:	00b70023          	sb	a1,0(a4)
    80005600:	0017871b          	addiw	a4,a5,1
    80005604:	0cc77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005608:	00e50733          	add	a4,a0,a4
    8000560c:	00b70023          	sb	a1,0(a4)
    80005610:	0027871b          	addiw	a4,a5,2
    80005614:	0ac77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005618:	00e50733          	add	a4,a0,a4
    8000561c:	00b70023          	sb	a1,0(a4)
    80005620:	0037871b          	addiw	a4,a5,3
    80005624:	0ac77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005628:	00e50733          	add	a4,a0,a4
    8000562c:	00b70023          	sb	a1,0(a4)
    80005630:	0047871b          	addiw	a4,a5,4
    80005634:	08c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00b70023          	sb	a1,0(a4)
    80005640:	0057871b          	addiw	a4,a5,5
    80005644:	08c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005648:	00e50733          	add	a4,a0,a4
    8000564c:	00b70023          	sb	a1,0(a4)
    80005650:	0067871b          	addiw	a4,a5,6
    80005654:	06c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005658:	00e50733          	add	a4,a0,a4
    8000565c:	00b70023          	sb	a1,0(a4)
    80005660:	0077871b          	addiw	a4,a5,7
    80005664:	06c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005668:	00e50733          	add	a4,a0,a4
    8000566c:	00b70023          	sb	a1,0(a4)
    80005670:	0087871b          	addiw	a4,a5,8
    80005674:	04c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005678:	00e50733          	add	a4,a0,a4
    8000567c:	00b70023          	sb	a1,0(a4)
    80005680:	0097871b          	addiw	a4,a5,9
    80005684:	04c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005688:	00e50733          	add	a4,a0,a4
    8000568c:	00b70023          	sb	a1,0(a4)
    80005690:	00a7871b          	addiw	a4,a5,10
    80005694:	02c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005698:	00e50733          	add	a4,a0,a4
    8000569c:	00b70023          	sb	a1,0(a4)
    800056a0:	00b7871b          	addiw	a4,a5,11
    800056a4:	02c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    800056a8:	00e50733          	add	a4,a0,a4
    800056ac:	00b70023          	sb	a1,0(a4)
    800056b0:	00c7871b          	addiw	a4,a5,12
    800056b4:	00c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    800056b8:	00e50733          	add	a4,a0,a4
    800056bc:	00b70023          	sb	a1,0(a4)
    800056c0:	00d7879b          	addiw	a5,a5,13
    800056c4:	00c7f663          	bgeu	a5,a2,800056d0 <__memset+0x1c8>
    800056c8:	00f507b3          	add	a5,a0,a5
    800056cc:	00b78023          	sb	a1,0(a5)
    800056d0:	00813403          	ld	s0,8(sp)
    800056d4:	01010113          	addi	sp,sp,16
    800056d8:	00008067          	ret
    800056dc:	00b00693          	li	a3,11
    800056e0:	e55ff06f          	j	80005534 <__memset+0x2c>
    800056e4:	00300e93          	li	t4,3
    800056e8:	ea5ff06f          	j	8000558c <__memset+0x84>
    800056ec:	00100e93          	li	t4,1
    800056f0:	e9dff06f          	j	8000558c <__memset+0x84>
    800056f4:	00000e93          	li	t4,0
    800056f8:	e95ff06f          	j	8000558c <__memset+0x84>
    800056fc:	00000793          	li	a5,0
    80005700:	ef9ff06f          	j	800055f8 <__memset+0xf0>
    80005704:	00200e93          	li	t4,2
    80005708:	e85ff06f          	j	8000558c <__memset+0x84>
    8000570c:	00400e93          	li	t4,4
    80005710:	e7dff06f          	j	8000558c <__memset+0x84>
    80005714:	00500e93          	li	t4,5
    80005718:	e75ff06f          	j	8000558c <__memset+0x84>
    8000571c:	00600e93          	li	t4,6
    80005720:	e6dff06f          	j	8000558c <__memset+0x84>

0000000080005724 <__memmove>:
    80005724:	ff010113          	addi	sp,sp,-16
    80005728:	00813423          	sd	s0,8(sp)
    8000572c:	01010413          	addi	s0,sp,16
    80005730:	0e060863          	beqz	a2,80005820 <__memmove+0xfc>
    80005734:	fff6069b          	addiw	a3,a2,-1
    80005738:	0006881b          	sext.w	a6,a3
    8000573c:	0ea5e863          	bltu	a1,a0,8000582c <__memmove+0x108>
    80005740:	00758713          	addi	a4,a1,7
    80005744:	00a5e7b3          	or	a5,a1,a0
    80005748:	40a70733          	sub	a4,a4,a0
    8000574c:	0077f793          	andi	a5,a5,7
    80005750:	00f73713          	sltiu	a4,a4,15
    80005754:	00174713          	xori	a4,a4,1
    80005758:	0017b793          	seqz	a5,a5
    8000575c:	00e7f7b3          	and	a5,a5,a4
    80005760:	10078863          	beqz	a5,80005870 <__memmove+0x14c>
    80005764:	00900793          	li	a5,9
    80005768:	1107f463          	bgeu	a5,a6,80005870 <__memmove+0x14c>
    8000576c:	0036581b          	srliw	a6,a2,0x3
    80005770:	fff8081b          	addiw	a6,a6,-1
    80005774:	02081813          	slli	a6,a6,0x20
    80005778:	01d85893          	srli	a7,a6,0x1d
    8000577c:	00858813          	addi	a6,a1,8
    80005780:	00058793          	mv	a5,a1
    80005784:	00050713          	mv	a4,a0
    80005788:	01088833          	add	a6,a7,a6
    8000578c:	0007b883          	ld	a7,0(a5)
    80005790:	00878793          	addi	a5,a5,8
    80005794:	00870713          	addi	a4,a4,8
    80005798:	ff173c23          	sd	a7,-8(a4)
    8000579c:	ff0798e3          	bne	a5,a6,8000578c <__memmove+0x68>
    800057a0:	ff867713          	andi	a4,a2,-8
    800057a4:	02071793          	slli	a5,a4,0x20
    800057a8:	0207d793          	srli	a5,a5,0x20
    800057ac:	00f585b3          	add	a1,a1,a5
    800057b0:	40e686bb          	subw	a3,a3,a4
    800057b4:	00f507b3          	add	a5,a0,a5
    800057b8:	06e60463          	beq	a2,a4,80005820 <__memmove+0xfc>
    800057bc:	0005c703          	lbu	a4,0(a1)
    800057c0:	00e78023          	sb	a4,0(a5)
    800057c4:	04068e63          	beqz	a3,80005820 <__memmove+0xfc>
    800057c8:	0015c603          	lbu	a2,1(a1)
    800057cc:	00100713          	li	a4,1
    800057d0:	00c780a3          	sb	a2,1(a5)
    800057d4:	04e68663          	beq	a3,a4,80005820 <__memmove+0xfc>
    800057d8:	0025c603          	lbu	a2,2(a1)
    800057dc:	00200713          	li	a4,2
    800057e0:	00c78123          	sb	a2,2(a5)
    800057e4:	02e68e63          	beq	a3,a4,80005820 <__memmove+0xfc>
    800057e8:	0035c603          	lbu	a2,3(a1)
    800057ec:	00300713          	li	a4,3
    800057f0:	00c781a3          	sb	a2,3(a5)
    800057f4:	02e68663          	beq	a3,a4,80005820 <__memmove+0xfc>
    800057f8:	0045c603          	lbu	a2,4(a1)
    800057fc:	00400713          	li	a4,4
    80005800:	00c78223          	sb	a2,4(a5)
    80005804:	00e68e63          	beq	a3,a4,80005820 <__memmove+0xfc>
    80005808:	0055c603          	lbu	a2,5(a1)
    8000580c:	00500713          	li	a4,5
    80005810:	00c782a3          	sb	a2,5(a5)
    80005814:	00e68663          	beq	a3,a4,80005820 <__memmove+0xfc>
    80005818:	0065c703          	lbu	a4,6(a1)
    8000581c:	00e78323          	sb	a4,6(a5)
    80005820:	00813403          	ld	s0,8(sp)
    80005824:	01010113          	addi	sp,sp,16
    80005828:	00008067          	ret
    8000582c:	02061713          	slli	a4,a2,0x20
    80005830:	02075713          	srli	a4,a4,0x20
    80005834:	00e587b3          	add	a5,a1,a4
    80005838:	f0f574e3          	bgeu	a0,a5,80005740 <__memmove+0x1c>
    8000583c:	02069613          	slli	a2,a3,0x20
    80005840:	02065613          	srli	a2,a2,0x20
    80005844:	fff64613          	not	a2,a2
    80005848:	00e50733          	add	a4,a0,a4
    8000584c:	00c78633          	add	a2,a5,a2
    80005850:	fff7c683          	lbu	a3,-1(a5)
    80005854:	fff78793          	addi	a5,a5,-1
    80005858:	fff70713          	addi	a4,a4,-1
    8000585c:	00d70023          	sb	a3,0(a4)
    80005860:	fec798e3          	bne	a5,a2,80005850 <__memmove+0x12c>
    80005864:	00813403          	ld	s0,8(sp)
    80005868:	01010113          	addi	sp,sp,16
    8000586c:	00008067          	ret
    80005870:	02069713          	slli	a4,a3,0x20
    80005874:	02075713          	srli	a4,a4,0x20
    80005878:	00170713          	addi	a4,a4,1
    8000587c:	00e50733          	add	a4,a0,a4
    80005880:	00050793          	mv	a5,a0
    80005884:	0005c683          	lbu	a3,0(a1)
    80005888:	00178793          	addi	a5,a5,1
    8000588c:	00158593          	addi	a1,a1,1
    80005890:	fed78fa3          	sb	a3,-1(a5)
    80005894:	fee798e3          	bne	a5,a4,80005884 <__memmove+0x160>
    80005898:	f89ff06f          	j	80005820 <__memmove+0xfc>

000000008000589c <__putc>:
    8000589c:	fe010113          	addi	sp,sp,-32
    800058a0:	00813823          	sd	s0,16(sp)
    800058a4:	00113c23          	sd	ra,24(sp)
    800058a8:	02010413          	addi	s0,sp,32
    800058ac:	00050793          	mv	a5,a0
    800058b0:	fef40593          	addi	a1,s0,-17
    800058b4:	00100613          	li	a2,1
    800058b8:	00000513          	li	a0,0
    800058bc:	fef407a3          	sb	a5,-17(s0)
    800058c0:	fffff097          	auipc	ra,0xfffff
    800058c4:	b3c080e7          	jalr	-1220(ra) # 800043fc <console_write>
    800058c8:	01813083          	ld	ra,24(sp)
    800058cc:	01013403          	ld	s0,16(sp)
    800058d0:	02010113          	addi	sp,sp,32
    800058d4:	00008067          	ret

00000000800058d8 <__getc>:
    800058d8:	fe010113          	addi	sp,sp,-32
    800058dc:	00813823          	sd	s0,16(sp)
    800058e0:	00113c23          	sd	ra,24(sp)
    800058e4:	02010413          	addi	s0,sp,32
    800058e8:	fe840593          	addi	a1,s0,-24
    800058ec:	00100613          	li	a2,1
    800058f0:	00000513          	li	a0,0
    800058f4:	fffff097          	auipc	ra,0xfffff
    800058f8:	ae8080e7          	jalr	-1304(ra) # 800043dc <console_read>
    800058fc:	fe844503          	lbu	a0,-24(s0)
    80005900:	01813083          	ld	ra,24(sp)
    80005904:	01013403          	ld	s0,16(sp)
    80005908:	02010113          	addi	sp,sp,32
    8000590c:	00008067          	ret

0000000080005910 <console_handler>:
    80005910:	fe010113          	addi	sp,sp,-32
    80005914:	00813823          	sd	s0,16(sp)
    80005918:	00113c23          	sd	ra,24(sp)
    8000591c:	00913423          	sd	s1,8(sp)
    80005920:	02010413          	addi	s0,sp,32
    80005924:	14202773          	csrr	a4,scause
    80005928:	100027f3          	csrr	a5,sstatus
    8000592c:	0027f793          	andi	a5,a5,2
    80005930:	06079e63          	bnez	a5,800059ac <console_handler+0x9c>
    80005934:	00074c63          	bltz	a4,8000594c <console_handler+0x3c>
    80005938:	01813083          	ld	ra,24(sp)
    8000593c:	01013403          	ld	s0,16(sp)
    80005940:	00813483          	ld	s1,8(sp)
    80005944:	02010113          	addi	sp,sp,32
    80005948:	00008067          	ret
    8000594c:	0ff77713          	andi	a4,a4,255
    80005950:	00900793          	li	a5,9
    80005954:	fef712e3          	bne	a4,a5,80005938 <console_handler+0x28>
    80005958:	ffffe097          	auipc	ra,0xffffe
    8000595c:	6dc080e7          	jalr	1756(ra) # 80004034 <plic_claim>
    80005960:	00a00793          	li	a5,10
    80005964:	00050493          	mv	s1,a0
    80005968:	02f50c63          	beq	a0,a5,800059a0 <console_handler+0x90>
    8000596c:	fc0506e3          	beqz	a0,80005938 <console_handler+0x28>
    80005970:	00050593          	mv	a1,a0
    80005974:	00001517          	auipc	a0,0x1
    80005978:	99c50513          	addi	a0,a0,-1636 # 80006310 <CONSOLE_STATUS+0x300>
    8000597c:	fffff097          	auipc	ra,0xfffff
    80005980:	afc080e7          	jalr	-1284(ra) # 80004478 <__printf>
    80005984:	01013403          	ld	s0,16(sp)
    80005988:	01813083          	ld	ra,24(sp)
    8000598c:	00048513          	mv	a0,s1
    80005990:	00813483          	ld	s1,8(sp)
    80005994:	02010113          	addi	sp,sp,32
    80005998:	ffffe317          	auipc	t1,0xffffe
    8000599c:	6d430067          	jr	1748(t1) # 8000406c <plic_complete>
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	3e0080e7          	jalr	992(ra) # 80004d80 <uartintr>
    800059a8:	fddff06f          	j	80005984 <console_handler+0x74>
    800059ac:	00001517          	auipc	a0,0x1
    800059b0:	a6450513          	addi	a0,a0,-1436 # 80006410 <digits+0x78>
    800059b4:	fffff097          	auipc	ra,0xfffff
    800059b8:	a68080e7          	jalr	-1432(ra) # 8000441c <panic>
	...
