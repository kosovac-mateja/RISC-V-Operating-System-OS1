
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	03013103          	ld	sp,48(sp) # 80007030 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	651020ef          	jal	ra,80002e6c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
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
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
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
    csrr x5, sepc
    80001104:	141022f3          	csrr	t0,sepc
    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001108:	00013023          	sd	zero,0(sp)
    8000110c:	00113423          	sd	ra,8(sp)
    80001110:	00213823          	sd	sp,16(sp)
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    addi x8, sp, 0 #frame pointer
    80001188:	00010413          	mv	s0,sp

    call handleSupervisorTrap
    8000118c:	698000ef          	jal	ra,80001824 <handleSupervisorTrap>

    sd x10, 10 * 8(x8) #da se ne pregazi a0
    80001190:	04a43823          	sd	a0,80(s0)

    #pop svih registara
    sd x5, 6 * 8(x8)
    80001194:	02543823          	sd	t0,48(s0)

    addi x5, x5, 4 #da bi presao na narednu instrukciju
    80001198:	00428293          	addi	t0,t0,4
    csrw sepc, x5
    8000119c:	14129073          	csrw	sepc,t0

    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011a0:	00013003          	ld	zero,0(sp)
    800011a4:	00813083          	ld	ra,8(sp)
    800011a8:	01013103          	ld	sp,16(sp)
    800011ac:	01813183          	ld	gp,24(sp)
    800011b0:	02013203          	ld	tp,32(sp)
    800011b4:	02813283          	ld	t0,40(sp)
    800011b8:	03013303          	ld	t1,48(sp)
    800011bc:	03813383          	ld	t2,56(sp)
    800011c0:	04013403          	ld	s0,64(sp)
    800011c4:	04813483          	ld	s1,72(sp)
    800011c8:	05013503          	ld	a0,80(sp)
    800011cc:	05813583          	ld	a1,88(sp)
    800011d0:	06013603          	ld	a2,96(sp)
    800011d4:	06813683          	ld	a3,104(sp)
    800011d8:	07013703          	ld	a4,112(sp)
    800011dc:	07813783          	ld	a5,120(sp)
    800011e0:	08013803          	ld	a6,128(sp)
    800011e4:	08813883          	ld	a7,136(sp)
    800011e8:	09013903          	ld	s2,144(sp)
    800011ec:	09813983          	ld	s3,152(sp)
    800011f0:	0a013a03          	ld	s4,160(sp)
    800011f4:	0a813a83          	ld	s5,168(sp)
    800011f8:	0b013b03          	ld	s6,176(sp)
    800011fc:	0b813b83          	ld	s7,184(sp)
    80001200:	0c013c03          	ld	s8,192(sp)
    80001204:	0c813c83          	ld	s9,200(sp)
    80001208:	0d013d03          	ld	s10,208(sp)
    8000120c:	0d813d83          	ld	s11,216(sp)
    80001210:	0e013e03          	ld	t3,224(sp)
    80001214:	0e813e83          	ld	t4,232(sp)
    80001218:	0f013f03          	ld	t5,240(sp)
    8000121c:	0f813f83          	ld	t6,248(sp)
     addi sp, sp, 256
    80001220:	10010113          	addi	sp,sp,256

    80001224:	10200073          	sret
	...

0000000080001230 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001244:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001248:	00b29a63          	bne	t0,a1,8000125c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000124c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001250:	fe029ae3          	bnez	t0,80001244 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001254:	00000513          	li	a0,0
    jr ra                  # Return.
    80001258:	00008067          	ret

000000008000125c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000125c:	00100513          	li	a0,1
    80001260:	00008067          	ret

0000000080001264 <_Z7syscallv>:
#include "../lib/mem.h"
#include "../h/memoryAllocator.h"

extern "C" void supervisorTrap();

void syscall() {
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00813423          	sd	s0,8(sp)
    8000126c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw stvec, %0" : : "r" (&supervisorTrap));
    80001270:	00006797          	auipc	a5,0x6
    80001274:	db87b783          	ld	a5,-584(a5) # 80007028 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001278:	10579073          	csrw	stvec,a5
    __asm__ volatile("ecall");
    8000127c:	00000073          	ecall
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00113423          	sd	ra,8(sp)
    80001294:	00813023          	sd	s0,0(sp)
    80001298:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 );
    8000129c:	03f57793          	andi	a5,a0,63
    800012a0:	02079863          	bnez	a5,800012d0 <_Z9mem_allocm+0x44>
    800012a4:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv x11, %0" : : "r" (size));
    800012a8:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (MALLOC_CODE));
    800012ac:	00100793          	li	a5,1
    800012b0:	00078513          	mv	a0,a5

    syscall();
    800012b4:	00000097          	auipc	ra,0x0
    800012b8:	fb0080e7          	jalr	-80(ra) # 80001264 <_Z7syscallv>

    void* ret;
    __asm__ volatile("mv %0, x10" : "=r" (ret));
    800012bc:	00050513          	mv	a0,a0

    return ret;
}
    800012c0:	00813083          	ld	ra,8(sp)
    800012c4:	00013403          	ld	s0,0(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 );
    800012d0:	00655513          	srli	a0,a0,0x6
    800012d4:	00150513          	addi	a0,a0,1
    800012d8:	fd1ff06f          	j	800012a8 <_Z9mem_allocm+0x1c>

00000000800012dc <_Z8mem_freePv>:

int mem_free(void *addr) {
    800012dc:	ff010113          	addi	sp,sp,-16
    800012e0:	00113423          	sd	ra,8(sp)
    800012e4:	00813023          	sd	s0,0(sp)
    800012e8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x11, %0" : : "r" (addr));
    800012ec:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (MFREE_CODE));
    800012f0:	00200793          	li	a5,2
    800012f4:	00078513          	mv	a0,a5

    syscall();
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	f6c080e7          	jalr	-148(ra) # 80001264 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, x10" : "=r" (ret));
    80001300:	00050513          	mv	a0,a0

    return ret;
}
    80001304:	0005051b          	sext.w	a0,a0
    80001308:	00813083          	ld	ra,8(sp)
    8000130c:	00013403          	ld	s0,0(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_Z13thread_createPP3PCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001318:	fd010113          	addi	sp,sp,-48
    8000131c:	02113423          	sd	ra,40(sp)
    80001320:	02813023          	sd	s0,32(sp)
    80001324:	00913c23          	sd	s1,24(sp)
    80001328:	01213823          	sd	s2,16(sp)
    8000132c:	01313423          	sd	s3,8(sp)
    80001330:	03010413          	addi	s0,sp,48
    80001334:	00050493          	mv	s1,a0
    80001338:	00058913          	mv	s2,a1
    8000133c:	00060993          	mv	s3,a2
    thread_t *tempHandle = handle; void(*tempRoutine)(void*) = start_routine; void* tempArg = arg;

    uint64* stack_space;
    if (start_routine != nullptr) {
    80001340:	06058063          	beqz	a1,800013a0 <_Z13thread_createPP3PCBPFvPvES2_+0x88>
        stack_space = (uint64*)MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE*sizeof(uint64)/MEM_BLOCK_SIZE);
    80001344:	20000513          	li	a0,512
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	780080e7          	jalr	1920(ra) # 80001ac8 <_ZN15MemoryAllocator9mem_allocEm>
        stack_space = &stack_space[DEFAULT_STACK_SIZE];
    80001350:	000087b7          	lui	a5,0x8
    80001354:	00f50533          	add	a0,a0,a5
    } else stack_space = nullptr;

    __asm__ volatile("mv x17, %0" : : "r" (stack_space));
    80001358:	00050893          	mv	a7,a0
    __asm__ volatile("mv x13, %0" : : "r" (tempArg));
    8000135c:	00098693          	mv	a3,s3
    __asm__ volatile("mv x12, %0" : : "r" (tempRoutine));
    80001360:	00090613          	mv	a2,s2
    __asm__ volatile("mv x11, %0" : : "r" (tempHandle));
    80001364:	00048593          	mv	a1,s1
    __asm__ volatile("mv x10, %0" : : "r" (TCREATE_CODE));
    80001368:	01100793          	li	a5,17
    8000136c:	00078513          	mv	a0,a5

    syscall();
    80001370:	00000097          	auipc	ra,0x0
    80001374:	ef4080e7          	jalr	-268(ra) # 80001264 <_Z7syscallv>

    int ret = *handle ? 0 : -1;
    80001378:	0004b783          	ld	a5,0(s1)
    8000137c:	02078663          	beqz	a5,800013a8 <_Z13thread_createPP3PCBPFvPvES2_+0x90>
    80001380:	00000513          	li	a0,0
    return ret;
}
    80001384:	02813083          	ld	ra,40(sp)
    80001388:	02013403          	ld	s0,32(sp)
    8000138c:	01813483          	ld	s1,24(sp)
    80001390:	01013903          	ld	s2,16(sp)
    80001394:	00813983          	ld	s3,8(sp)
    80001398:	03010113          	addi	sp,sp,48
    8000139c:	00008067          	ret
    } else stack_space = nullptr;
    800013a0:	00000513          	li	a0,0
    800013a4:	fb5ff06f          	j	80001358 <_Z13thread_createPP3PCBPFvPvES2_+0x40>
    int ret = *handle ? 0 : -1;
    800013a8:	fff00513          	li	a0,-1
    800013ac:	fd9ff06f          	j	80001384 <_Z13thread_createPP3PCBPFvPvES2_+0x6c>

00000000800013b0 <_Z15thread_dispatchv>:

void thread_dispatch () {
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00113423          	sd	ra,8(sp)
    800013b8:	00813023          	sd	s0,0(sp)
    800013bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x10, %0" : : "r" (TDISPATCH_CODE));
    800013c0:	01300793          	li	a5,19
    800013c4:	00078513          	mv	a0,a5

    syscall();
    800013c8:	00000097          	auipc	ra,0x0
    800013cc:	e9c080e7          	jalr	-356(ra) # 80001264 <_Z7syscallv>
}
    800013d0:	00813083          	ld	ra,8(sp)
    800013d4:	00013403          	ld	s0,0(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_Z11thread_exitv>:


int thread_exit() {
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00113423          	sd	ra,8(sp)
    800013e8:	00813023          	sd	s0,0(sp)
    800013ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x10, %0" : : "r" (TEXIT_CODE));
    800013f0:	01200793          	li	a5,18
    800013f4:	00078513          	mv	a0,a5

    syscall();
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	e6c080e7          	jalr	-404(ra) # 80001264 <_Z7syscallv>

    return 0; //ne znam kad moze da dodje do greske
}
    80001400:	00000513          	li	a0,0
    80001404:	00813083          	ld	ra,8(sp)
    80001408:	00013403          	ld	s0,0(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, uint32 init) {
    80001414:	fe010113          	addi	sp,sp,-32
    80001418:	00113c23          	sd	ra,24(sp)
    8000141c:	00813823          	sd	s0,16(sp)
    80001420:	00913423          	sd	s1,8(sp)
    80001424:	02010413          	addi	s0,sp,32
    80001428:	00050493          	mv	s1,a0
    __asm__ volatile("mv x12, %0" : : "r" (init));
    8000142c:	00058613          	mv	a2,a1
    __asm__ volatile("mv x11, %0" : : "r" (handle));
    80001430:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (SOPEN_CODE));
    80001434:	02100793          	li	a5,33
    80001438:	00078513          	mv	a0,a5

    syscall();
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	e28080e7          	jalr	-472(ra) # 80001264 <_Z7syscallv>

    int ret = *handle ? 0 : -1;
    80001444:	0004b783          	ld	a5,0(s1)
    80001448:	00078e63          	beqz	a5,80001464 <_Z8sem_openPP3Semj+0x50>
    8000144c:	00000513          	li	a0,0
    return ret;
}
    80001450:	01813083          	ld	ra,24(sp)
    80001454:	01013403          	ld	s0,16(sp)
    80001458:	00813483          	ld	s1,8(sp)
    8000145c:	02010113          	addi	sp,sp,32
    80001460:	00008067          	ret
    int ret = *handle ? 0 : -1;
    80001464:	fff00513          	li	a0,-1
    80001468:	fe9ff06f          	j	80001450 <_Z8sem_openPP3Semj+0x3c>

000000008000146c <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    8000146c:	ff010113          	addi	sp,sp,-16
    80001470:	00113423          	sd	ra,8(sp)
    80001474:	00813023          	sd	s0,0(sp)
    80001478:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x11, %0" : : "r" (handle));
    8000147c:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (SCLOSE_CODE));
    80001480:	02200793          	li	a5,34
    80001484:	00078513          	mv	a0,a5

    syscall();
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	ddc080e7          	jalr	-548(ra) # 80001264 <_Z7syscallv>

    return 0;
}
    80001490:	00000513          	li	a0,0
    80001494:	00813083          	ld	ra,8(sp)
    80001498:	00013403          	ld	s0,0(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00113423          	sd	ra,8(sp)
    800014ac:	00813023          	sd	s0,0(sp)
    800014b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x11, %0" : : "r" (id));
    800014b4:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (SWAIT_CODE));
    800014b8:	02300793          	li	a5,35
    800014bc:	00078513          	mv	a0,a5

    syscall();
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	da4080e7          	jalr	-604(ra) # 80001264 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, x10" : "=r" (ret));
    800014c8:	00050513          	mv	a0,a0

    return ret;
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	00813083          	ld	ra,8(sp)
    800014d4:	00013403          	ld	s0,0(sp)
    800014d8:	01010113          	addi	sp,sp,16
    800014dc:	00008067          	ret

00000000800014e0 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00113423          	sd	ra,8(sp)
    800014e8:	00813023          	sd	s0,0(sp)
    800014ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x11, %0" : : "r" (id));
    800014f0:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (SSIGNAL_CODE));
    800014f4:	02400793          	li	a5,36
    800014f8:	00078513          	mv	a0,a5

    syscall();
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	d68080e7          	jalr	-664(ra) # 80001264 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, x10" : "=r" (ret));
    80001504:	00050513          	mv	a0,a0

    return ret;
}
    80001508:	0005051b          	sext.w	a0,a0
    8000150c:	00813083          	ld	ra,8(sp)
    80001510:	00013403          	ld	s0,0(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_Z4getcv>:

char getc() {
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00113423          	sd	ra,8(sp)
    80001524:	00813023          	sd	s0,0(sp)
    80001528:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x10, %0" : : "r" (CGETC_CODE));
    8000152c:	04100793          	li	a5,65
    80001530:	00078513          	mv	a0,a5

    syscall();
    80001534:	00000097          	auipc	ra,0x0
    80001538:	d30080e7          	jalr	-720(ra) # 80001264 <_Z7syscallv>

    char c;
    __asm__ volatile("mv %0, x10" : "=r" (c));
    8000153c:	00050513          	mv	a0,a0

    return c;
}
    80001540:	0ff57513          	andi	a0,a0,255
    80001544:	00813083          	ld	ra,8(sp)
    80001548:	00013403          	ld	s0,0(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret

0000000080001554 <_Z4putcc>:

void putc(char c) {
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00113423          	sd	ra,8(sp)
    8000155c:	00813023          	sd	s0,0(sp)
    80001560:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x11, %0" : : "r" (c));
    80001564:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (CPUTC_CODE));
    80001568:	04200793          	li	a5,66
    8000156c:	00078513          	mv	a0,a5

    syscall();
    80001570:	00000097          	auipc	ra,0x0
    80001574:	cf4080e7          	jalr	-780(ra) # 80001264 <_Z7syscallv>
}
    80001578:	00813083          	ld	ra,8(sp)
    8000157c:	00013403          	ld	s0,0(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z12thread_allocPP3PCBPFvPvES2_>:

void thread_alloc(thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001588:	fd010113          	addi	sp,sp,-48
    8000158c:	02113423          	sd	ra,40(sp)
    80001590:	02813023          	sd	s0,32(sp)
    80001594:	00913c23          	sd	s1,24(sp)
    80001598:	01213823          	sd	s2,16(sp)
    8000159c:	01313423          	sd	s3,8(sp)
    800015a0:	03010413          	addi	s0,sp,48
    800015a4:	00050913          	mv	s2,a0
    800015a8:	00058493          	mv	s1,a1
    800015ac:	00060993          	mv	s3,a2
    thread_t *tempHandle = handle; void(*tempRoutine)(void*) = start_routine; void* tempArg = arg;

    uint64* stack_space;
    if (start_routine != nullptr) {
    800015b0:	04058a63          	beqz	a1,80001604 <_Z12thread_allocPP3PCBPFvPvES2_+0x7c>
        stack_space = (uint64*)MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE*sizeof(uint64)/MEM_BLOCK_SIZE);
    800015b4:	20000513          	li	a0,512
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	510080e7          	jalr	1296(ra) # 80001ac8 <_ZN15MemoryAllocator9mem_allocEm>
        stack_space = &stack_space[DEFAULT_STACK_SIZE];
    800015c0:	000087b7          	lui	a5,0x8
    800015c4:	00f50533          	add	a0,a0,a5
    } else stack_space = nullptr;

    __asm__ volatile("mv x17, %0" : : "r" (stack_space));
    800015c8:	00050893          	mv	a7,a0
    __asm__ volatile("mv x13, %0" : : "r" (tempArg));
    800015cc:	00098693          	mv	a3,s3
    __asm__ volatile("mv x12, %0" : : "r" (tempRoutine));
    800015d0:	00048613          	mv	a2,s1
    __asm__ volatile("mv x11, %0" : : "r" (tempHandle));
    800015d4:	00090593          	mv	a1,s2
    __asm__ volatile("mv x10, %0" : : "r" (TALLOC_CODE));
    800015d8:	01400793          	li	a5,20
    800015dc:	00078513          	mv	a0,a5

    syscall();
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	c84080e7          	jalr	-892(ra) # 80001264 <_Z7syscallv>
}
    800015e8:	02813083          	ld	ra,40(sp)
    800015ec:	02013403          	ld	s0,32(sp)
    800015f0:	01813483          	ld	s1,24(sp)
    800015f4:	01013903          	ld	s2,16(sp)
    800015f8:	00813983          	ld	s3,8(sp)
    800015fc:	03010113          	addi	sp,sp,48
    80001600:	00008067          	ret
    } else stack_space = nullptr;
    80001604:	00000513          	li	a0,0
    80001608:	fc1ff06f          	j	800015c8 <_Z12thread_allocPP3PCBPFvPvES2_+0x40>

000000008000160c <_Z16thread_schedulerP3PCB>:

void thread_scheduler(thread_t handle) {
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00113423          	sd	ra,8(sp)
    80001614:	00813023          	sd	s0,0(sp)
    80001618:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv x11, %0" : : "r" (handle));
    8000161c:	00050593          	mv	a1,a0
    __asm__ volatile("mv x10, %0" : : "r" (TSCHEDULER_CODE));
    80001620:	01500793          	li	a5,21
    80001624:	00078513          	mv	a0,a5

    syscall();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	c3c080e7          	jalr	-964(ra) # 80001264 <_Z7syscallv>
    80001630:	00813083          	ld	ra,8(sp)
    80001634:	00013403          	ld	s0,0(sp)
    80001638:	01010113          	addi	sp,sp,16
    8000163c:	00008067          	ret

0000000080001640 <_ZN3PCB11bodyWrapperEPv>:
    running = Scheduler::get();

    PCB::contextSwitch(&old->context, &running->context);
}

void PCB::bodyWrapper(void* dummy) {
    80001640:	ff010113          	addi	sp,sp,-16
    80001644:	00113423          	sd	ra,8(sp)
    80001648:	00813023          	sd	s0,0(sp)
    8000164c:	01010413          	addi	s0,sp,16
    running->body(running->arg);
    80001650:	00006797          	auipc	a5,0x6
    80001654:	a407b783          	ld	a5,-1472(a5) # 80007090 <_ZN3PCB7runningE>
    80001658:	0007b703          	ld	a4,0(a5)
    8000165c:	0087b503          	ld	a0,8(a5)
    80001660:	000700e7          	jalr	a4
    thread_exit();
    80001664:	00000097          	auipc	ra,0x0
    80001668:	d7c080e7          	jalr	-644(ra) # 800013e0 <_Z11thread_exitv>
}
    8000166c:	00813083          	ld	ra,8(sp)
    80001670:	00013403          	ld	s0,0(sp)
    80001674:	01010113          	addi	sp,sp,16
    80001678:	00008067          	ret

000000008000167c <_ZN3PCB13createProcessEPFvPvEPmS0_b>:
PCB *PCB::createProcess(Body body, uint64* stack, void* arg, bool put) {
    8000167c:	fc010113          	addi	sp,sp,-64
    80001680:	02113c23          	sd	ra,56(sp)
    80001684:	02813823          	sd	s0,48(sp)
    80001688:	02913423          	sd	s1,40(sp)
    8000168c:	03213023          	sd	s2,32(sp)
    80001690:	01313c23          	sd	s3,24(sp)
    80001694:	01413823          	sd	s4,16(sp)
    80001698:	01513423          	sd	s5,8(sp)
    8000169c:	04010413          	addi	s0,sp,64
    800016a0:	00050993          	mv	s3,a0
    800016a4:	00058913          	mv	s2,a1
    800016a8:	00060a13          	mv	s4,a2
    800016ac:	00068a93          	mv	s5,a3
    return new PCB(body, stack, arg, put);
    800016b0:	03000513          	li	a0,48
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	6b0080e7          	jalr	1712(ra) # 80001d64 <_Znwm>
    800016bc:	00050493          	mv	s1,a0
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
                     stack != nullptr ? (uint64) stck : 0
                    }),
            finished(false),
            blocked(false) {
    800016c0:	01353023          	sd	s3,0(a0)
    800016c4:	01453423          	sd	s4,8(a0)
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
    800016c8:	06098463          	beqz	s3,80001730 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xb4>
    800016cc:	06090663          	beqz	s2,80001738 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xbc>
    800016d0:	fffc07b7          	lui	a5,0xfffc0
    800016d4:	00878793          	addi	a5,a5,8 # fffffffffffc0008 <end+0xffffffff7ffb7cc8>
    800016d8:	00f907b3          	add	a5,s2,a5
            blocked(false) {
    800016dc:	00f4b823          	sd	a5,16(s1)
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
    800016e0:	06098063          	beqz	s3,80001740 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xc4>
    800016e4:	00000717          	auipc	a4,0x0
    800016e8:	f5c70713          	addi	a4,a4,-164 # 80001640 <_ZN3PCB11bodyWrapperEPv>
            blocked(false) {
    800016ec:	00e4bc23          	sd	a4,24(s1)
                     stack != nullptr ? (uint64) stck : 0
    800016f0:	04078c63          	beqz	a5,80001748 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xcc>
            blocked(false) {
    800016f4:	0324b023          	sd	s2,32(s1)
    800016f8:	02048423          	sb	zero,40(s1)
    800016fc:	020484a3          	sb	zero,41(s1)
        if (body != nullptr && put) { Scheduler::put(this); }
    80001700:	00098463          	beqz	s3,80001708 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x8c>
    80001704:	040a9663          	bnez	s5,80001750 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xd4>
}
    80001708:	00048513          	mv	a0,s1
    8000170c:	03813083          	ld	ra,56(sp)
    80001710:	03013403          	ld	s0,48(sp)
    80001714:	02813483          	ld	s1,40(sp)
    80001718:	02013903          	ld	s2,32(sp)
    8000171c:	01813983          	ld	s3,24(sp)
    80001720:	01013a03          	ld	s4,16(sp)
    80001724:	00813a83          	ld	s5,8(sp)
    80001728:	04010113          	addi	sp,sp,64
    8000172c:	00008067          	ret
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
    80001730:	00000793          	li	a5,0
    80001734:	fa9ff06f          	j	800016dc <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x60>
    80001738:	00090793          	mv	a5,s2
    8000173c:	fa1ff06f          	j	800016dc <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x60>
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
    80001740:	00000713          	li	a4,0
    80001744:	fa9ff06f          	j	800016ec <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x70>
                     stack != nullptr ? (uint64) stck : 0
    80001748:	00000913          	li	s2,0
    8000174c:	fa9ff06f          	j	800016f4 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x78>
        if (body != nullptr && put) { Scheduler::put(this); }
    80001750:	00048513          	mv	a0,s1
    80001754:	00001097          	auipc	ra,0x1
    80001758:	c70080e7          	jalr	-912(ra) # 800023c4 <_ZN9Scheduler3putEP3PCB>
    8000175c:	fadff06f          	j	80001708 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x8c>
    80001760:	00050913          	mv	s2,a0
    return new PCB(body, stack, arg, put);
    80001764:	00048513          	mv	a0,s1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	67c080e7          	jalr	1660(ra) # 80001de4 <_ZdlPv>
    80001770:	00090513          	mv	a0,s2
    80001774:	00007097          	auipc	ra,0x7
    80001778:	a34080e7          	jalr	-1484(ra) # 800081a8 <_Unwind_Resume>

000000008000177c <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    8000177c:	fe010113          	addi	sp,sp,-32
    80001780:	00113c23          	sd	ra,24(sp)
    80001784:	00813823          	sd	s0,16(sp)
    80001788:	00913423          	sd	s1,8(sp)
    8000178c:	02010413          	addi	s0,sp,32
    PCB *old = running;
    80001790:	00006497          	auipc	s1,0x6
    80001794:	9004b483          	ld	s1,-1792(s1) # 80007090 <_ZN3PCB7runningE>
    bool isFinished() const { return finished; }
    80001798:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    8000179c:	00079663          	bnez	a5,800017a8 <_ZN3PCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    800017a0:	0294c783          	lbu	a5,41(s1)
    800017a4:	02078c63          	beqz	a5,800017dc <_ZN3PCB8dispatchEv+0x60>
    running = Scheduler::get();
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	ba0080e7          	jalr	-1120(ra) # 80002348 <_ZN9Scheduler3getEv>
    800017b0:	00006797          	auipc	a5,0x6
    800017b4:	8ea7b023          	sd	a0,-1824(a5) # 80007090 <_ZN3PCB7runningE>
    PCB::contextSwitch(&old->context, &running->context);
    800017b8:	01850593          	addi	a1,a0,24
    800017bc:	01848513          	addi	a0,s1,24
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	a70080e7          	jalr	-1424(ra) # 80001230 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800017c8:	01813083          	ld	ra,24(sp)
    800017cc:	01013403          	ld	s0,16(sp)
    800017d0:	00813483          	ld	s1,8(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800017dc:	00048513          	mv	a0,s1
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	be4080e7          	jalr	-1052(ra) # 800023c4 <_ZN9Scheduler3putEP3PCB>
    800017e8:	fc1ff06f          	j	800017a8 <_ZN3PCB8dispatchEv+0x2c>

00000000800017ec <_ZN3PCB5yieldEv>:
void PCB::yield() {
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00113423          	sd	ra,8(sp)
    800017f4:	00813023          	sd	s0,0(sp)
    800017f8:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	804080e7          	jalr	-2044(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    PCB::dispatch();
    80001804:	00000097          	auipc	ra,0x0
    80001808:	f78080e7          	jalr	-136(ra) # 8000177c <_ZN3PCB8dispatchEv>
    Riscv::popRegisters();
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	870080e7          	jalr	-1936(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001814:	00813083          	ld	ra,8(sp)
    80001818:	00013403          	ld	s0,0(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret

0000000080001824 <handleSupervisorTrap>:
#include "../h/syscall_c.h"
#include "../h/sem.h"
#include "../lib/console.h"
#include "../h/riscv.h"

extern "C" void handleSupervisorTrap() {
    80001824:	fd010113          	addi	sp,sp,-48
    80001828:	02113423          	sd	ra,40(sp)
    8000182c:	02813023          	sd	s0,32(sp)
    80001830:	00913c23          	sd	s1,24(sp)
    80001834:	03010413          	addi	s0,sp,48
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001838:	142027f3          	csrr	a5,scause
    8000183c:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001840:	fd843703          	ld	a4,-40(s0)
    uint64 scause = Riscv::r_scause();

    if(scause == 9) {
    80001844:	00900793          	li	a5,9
    80001848:	02f70463          	beq	a4,a5,80001870 <handleSupervisorTrap+0x4c>
            default:
                break;
        }
    }

    else if(scause == (1UL << 63 | 9)) { //spoljasnji hardverski prekid
    8000184c:	fff00793          	li	a5,-1
    80001850:	03f79793          	slli	a5,a5,0x3f
    80001854:	00978793          	addi	a5,a5,9
    80001858:	1af70c63          	beq	a4,a5,80001a10 <handleSupervisorTrap+0x1ec>
        console_handler();
    }
}
    8000185c:	02813083          	ld	ra,40(sp)
    80001860:	02013403          	ld	s0,32(sp)
    80001864:	01813483          	ld	s1,24(sp)
    80001868:	03010113          	addi	sp,sp,48
    8000186c:	00008067          	ret
        __asm__ volatile("mv %0, x10" : "=r" (code));
    80001870:	00050793          	mv	a5,a0
        switch (code) {
    80001874:	04200713          	li	a4,66
    80001878:	fef762e3          	bltu	a4,a5,8000185c <handleSupervisorTrap+0x38>
    8000187c:	00279793          	slli	a5,a5,0x2
    80001880:	00004717          	auipc	a4,0x4
    80001884:	7a070713          	addi	a4,a4,1952 # 80006020 <CONSOLE_STATUS+0x10>
    80001888:	00e787b3          	add	a5,a5,a4
    8000188c:	0007a783          	lw	a5,0(a5)
    80001890:	00e787b3          	add	a5,a5,a4
    80001894:	00078067          	jr	a5
                __asm__ volatile("mv %0, x11" : "=r" (size));
    80001898:	00058513          	mv	a0,a1
                MemoryAllocator::mem_alloc(size);
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	22c080e7          	jalr	556(ra) # 80001ac8 <_ZN15MemoryAllocator9mem_allocEm>
            }break;
    800018a4:	fb9ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (ptr));
    800018a8:	00058513          	mv	a0,a1
                MemoryAllocator::mem_free(ptr);
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	390080e7          	jalr	912(ra) # 80001c3c <_ZN15MemoryAllocator8mem_freeEPv>
            }break;
    800018b4:	fa9ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (handle));
    800018b8:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, x12" : "=r" (start_routine));
    800018bc:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, x13" : "=r" (arg));
    800018c0:	00068613          	mv	a2,a3
                __asm__ volatile("mv %0, x17" : "=r" (stack));
    800018c4:	00088593          	mv	a1,a7
                *handle = PCB::createProcess(start_routine, stack, arg, true);
    800018c8:	00100693          	li	a3,1
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	db0080e7          	jalr	-592(ra) # 8000167c <_ZN3PCB13createProcessEPFvPvEPmS0_b>
    800018d4:	00a4b023          	sd	a0,0(s1)
            }break;
    800018d8:	f85ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                PCB::yield(); //mozda treba dispatch
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	f10080e7          	jalr	-240(ra) # 800017ec <_ZN3PCB5yieldEv>
            }break;
    800018e4:	f79ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                PCB::running->setFinished(true);
    800018e8:	00005797          	auipc	a5,0x5
    800018ec:	7507b783          	ld	a5,1872(a5) # 80007038 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018f0:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    800018f4:	00100713          	li	a4,1
    800018f8:	02e78423          	sb	a4,40(a5)
                PCB::yield();
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	ef0080e7          	jalr	-272(ra) # 800017ec <_ZN3PCB5yieldEv>
            } break;
    80001904:	f59ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (handle));
    80001908:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, x12" : "=r" (init));
    8000190c:	00060513          	mv	a0,a2
                *handle = Sem::createSemaphore(init);
    80001910:	0005051b          	sext.w	a0,a0
    80001914:	00001097          	auipc	ra,0x1
    80001918:	8ec080e7          	jalr	-1812(ra) # 80002200 <_ZN3Sem15createSemaphoreEj>
    8000191c:	00a4b023          	sd	a0,0(s1)
            } break;
    80001920:	f3dff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (handle));
    80001924:	00058513          	mv	a0,a1
                Sem::deleteSemaphore(handle);
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	928080e7          	jalr	-1752(ra) # 80002250 <_ZN3Sem15deleteSemaphoreEPS_>
            } break;
    80001930:	f2dff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (handle));
    80001934:	00058513          	mv	a0,a1

    static Sem* createSemaphore(uint32 init);

    static void deleteSemaphore(sem_t handle);

    bool isActive() { return active; }
    80001938:	00454783          	lbu	a5,4(a0)
                if(handle->isActive()) {
    8000193c:	02078863          	beqz	a5,8000196c <handleSupervisorTrap+0x148>
    void wait() { if(--val < 0) block(); }
    80001940:	00052783          	lw	a5,0(a0)
    80001944:	fff7879b          	addiw	a5,a5,-1
    80001948:	00f52023          	sw	a5,0(a0)
    8000194c:	02079713          	slli	a4,a5,0x20
    80001950:	00074663          	bltz	a4,8000195c <handleSupervisorTrap+0x138>
                    ret = 0;
    80001954:	00000793          	li	a5,0
    80001958:	0180006f          	j	80001970 <handleSupervisorTrap+0x14c>
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	770080e7          	jalr	1904(ra) # 800020cc <_ZN3Sem5blockEv>
    80001964:	00000793          	li	a5,0
    80001968:	0080006f          	j	80001970 <handleSupervisorTrap+0x14c>
                Sem* handle; int ret = -1;
    8000196c:	fff00793          	li	a5,-1
                __asm__ volatile("mv x10, %0" : : "r" (ret));
    80001970:	00078513          	mv	a0,a5
            } break;
    80001974:	ee9ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (handle));
    80001978:	00058513          	mv	a0,a1
    bool isActive() { return active; }
    8000197c:	00454783          	lbu	a5,4(a0)
                if(handle->isActive()) {
    80001980:	02078863          	beqz	a5,800019b0 <handleSupervisorTrap+0x18c>
    void signal() { if(++val <= 0) unblock(); }
    80001984:	00052783          	lw	a5,0(a0)
    80001988:	0017879b          	addiw	a5,a5,1
    8000198c:	0007871b          	sext.w	a4,a5
    80001990:	00f52023          	sw	a5,0(a0)
    80001994:	00e05663          	blez	a4,800019a0 <handleSupervisorTrap+0x17c>
                    ret = 0;
    80001998:	00000793          	li	a5,0
    8000199c:	0180006f          	j	800019b4 <handleSupervisorTrap+0x190>
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	7dc080e7          	jalr	2012(ra) # 8000217c <_ZN3Sem7unblockEv>
    800019a8:	00000793          	li	a5,0
    800019ac:	0080006f          	j	800019b4 <handleSupervisorTrap+0x190>
                Sem* handle; int ret = -1;
    800019b0:	fff00793          	li	a5,-1
                __asm__ volatile("mv x10, %0" : : "r" (ret));
    800019b4:	00078513          	mv	a0,a5
                char c = __getc();
    800019b8:	00003097          	auipc	ra,0x3
    800019bc:	5b0080e7          	jalr	1456(ra) # 80004f68 <__getc>
                __asm__ volatile("mv x10, %0" : : "r" (c));
    800019c0:	00050513          	mv	a0,a0
            } break;
    800019c4:	e99ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (c));
    800019c8:	00058513          	mv	a0,a1
                __putc(c);
    800019cc:	0ff57513          	andi	a0,a0,255
    800019d0:	00003097          	auipc	ra,0x3
    800019d4:	55c080e7          	jalr	1372(ra) # 80004f2c <__putc>
            } break;
    800019d8:	e85ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (handle));
    800019dc:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, x12" : "=r" (start_routine));
    800019e0:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, x13" : "=r" (arg));
    800019e4:	00068613          	mv	a2,a3
                __asm__ volatile("mv %0, x17" : "=r" (stack));
    800019e8:	00088593          	mv	a1,a7
                *handle = PCB::createProcess(start_routine, stack, arg, false);
    800019ec:	00000693          	li	a3,0
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	c8c080e7          	jalr	-884(ra) # 8000167c <_ZN3PCB13createProcessEPFvPvEPmS0_b>
    800019f8:	00a4b023          	sd	a0,0(s1)
            } break;
    800019fc:	e61ff06f          	j	8000185c <handleSupervisorTrap+0x38>
                __asm__ volatile("mv %0, x11" : "=r" (handle));
    80001a00:	00058513          	mv	a0,a1
                Scheduler::put(handle); /* mozda treba proveriti da li je body null*/
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	9c0080e7          	jalr	-1600(ra) # 800023c4 <_ZN9Scheduler3putEP3PCB>
            } break;
    80001a0c:	e51ff06f          	j	8000185c <handleSupervisorTrap+0x38>
        console_handler();
    80001a10:	00003097          	auipc	ra,0x3
    80001a14:	590080e7          	jalr	1424(ra) # 80004fa0 <console_handler>
}
    80001a18:	e45ff06f          	j	8000185c <handleSupervisorTrap+0x38>

0000000080001a1c <main>:
#include "../h/sem.h"
#include "../test/printing.hpp"

extern void userMain();

void main() {
    80001a1c:	fe010113          	addi	sp,sp,-32
    80001a20:	00113c23          	sd	ra,24(sp)
    80001a24:	00813823          	sd	s0,16(sp)
    80001a28:	02010413          	addi	s0,sp,32
    PCB* th;
    thread_create(&th, nullptr, nullptr);
    80001a2c:	00000613          	li	a2,0
    80001a30:	00000593          	li	a1,0
    80001a34:	fe840513          	addi	a0,s0,-24
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	8e0080e7          	jalr	-1824(ra) # 80001318 <_Z13thread_createPP3PCBPFvPvES2_>
    PCB::running = th;
    80001a40:	00005797          	auipc	a5,0x5
    80001a44:	5f87b783          	ld	a5,1528(a5) # 80007038 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a48:	fe843703          	ld	a4,-24(s0)
    80001a4c:	00e7b023          	sd	a4,0(a5)
    userMain();
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	0d4080e7          	jalr	212(ra) # 80002b24 <_Z8userMainv>
}
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	02010113          	addi	sp,sp,32
    80001a64:	00008067          	ret

0000000080001a68 <_ZN15MemoryAllocator8mem_initEv>:
    return (char*)curr + MEM_BLOCK_SIZE; //vraca se adresa nakon zaglavlja
}



void MemoryAllocator::mem_init() {
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00813423          	sd	s0,8(sp)
    80001a70:	01010413          	addi	s0,sp,16
    freeSegmentHead = (FreeSegment*)HEAP_START_ADDR;
    80001a74:	00005797          	auipc	a5,0x5
    80001a78:	5ac7b783          	ld	a5,1452(a5) # 80007020 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a7c:	0007b683          	ld	a3,0(a5)
    80001a80:	00005717          	auipc	a4,0x5
    80001a84:	61870713          	addi	a4,a4,1560 # 80007098 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001a88:	00d73023          	sd	a3,0(a4)
    freeSegmentHead->size = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE - 1) * MEM_BLOCK_SIZE;
    80001a8c:	00005797          	auipc	a5,0x5
    80001a90:	5b47b783          	ld	a5,1460(a5) # 80007040 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a94:	0007b783          	ld	a5,0(a5)
    80001a98:	40d787b3          	sub	a5,a5,a3
    80001a9c:	0067d793          	srli	a5,a5,0x6
    80001aa0:	fff78793          	addi	a5,a5,-1
    80001aa4:	00679793          	slli	a5,a5,0x6
    80001aa8:	00f6b023          	sd	a5,0(a3)
    freeSegmentHead->next = nullptr;
    80001aac:	00073783          	ld	a5,0(a4)
    80001ab0:	0007b423          	sd	zero,8(a5)
    freeSegmentHead->prev = nullptr;
    80001ab4:	0007b823          	sd	zero,16(a5)

    usedSegmentHead = nullptr;
    80001ab8:	00073423          	sd	zero,8(a4)
}
    80001abc:	00813403          	ld	s0,8(sp)
    80001ac0:	01010113          	addi	sp,sp,16
    80001ac4:	00008067          	ret

0000000080001ac8 <_ZN15MemoryAllocator9mem_allocEm>:
    if(size <= 0) return nullptr;
    80001ac8:	10050a63          	beqz	a0,80001bdc <_ZN15MemoryAllocator9mem_allocEm+0x114>
void *MemoryAllocator::mem_alloc(size_t size) {
    80001acc:	fe010113          	addi	sp,sp,-32
    80001ad0:	00113c23          	sd	ra,24(sp)
    80001ad4:	00813823          	sd	s0,16(sp)
    80001ad8:	00913423          	sd	s1,8(sp)
    80001adc:	02010413          	addi	s0,sp,32
    size = size * MEM_BLOCK_SIZE;
    80001ae0:	00651493          	slli	s1,a0,0x6
    if(!initialized) {
    80001ae4:	00005797          	auipc	a5,0x5
    80001ae8:	5c47c783          	lbu	a5,1476(a5) # 800070a8 <_ZN15MemoryAllocator11initializedE>
    80001aec:	02078063          	beqz	a5,80001b0c <_ZN15MemoryAllocator9mem_allocEm+0x44>
    FreeSegment *curr = freeSegmentHead;
    80001af0:	00005517          	auipc	a0,0x5
    80001af4:	5a853503          	ld	a0,1448(a0) # 80007098 <_ZN15MemoryAllocator15freeSegmentHeadE>
    for(; curr && curr->size < size; curr = curr->next);
    80001af8:	02050663          	beqz	a0,80001b24 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
    80001afc:	00053783          	ld	a5,0(a0)
    80001b00:	0297f263          	bgeu	a5,s1,80001b24 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
    80001b04:	00853503          	ld	a0,8(a0)
    80001b08:	ff1ff06f          	j	80001af8 <_ZN15MemoryAllocator9mem_allocEm+0x30>
        mem_init();
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	f5c080e7          	jalr	-164(ra) # 80001a68 <_ZN15MemoryAllocator8mem_initEv>
        initialized = true;
    80001b14:	00100793          	li	a5,1
    80001b18:	00005717          	auipc	a4,0x5
    80001b1c:	58f70823          	sb	a5,1424(a4) # 800070a8 <_ZN15MemoryAllocator11initializedE>
    80001b20:	fd1ff06f          	j	80001af0 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    if(!curr) return nullptr;
    80001b24:	04050463          	beqz	a0,80001b6c <_ZN15MemoryAllocator9mem_allocEm+0xa4>
    size_t remainingSize = curr->size - size;
    80001b28:	00053783          	ld	a5,0(a0)
    80001b2c:	409787b3          	sub	a5,a5,s1
    curr->size = size;
    80001b30:	00953023          	sd	s1,0(a0)
    if(remainingSize < 2 * MEM_BLOCK_SIZE) //ako je preostali prostor manji od jednog bloka(drugi je za zaglavlja)
    80001b34:	07f00713          	li	a4,127
    80001b38:	04f76463          	bltu	a4,a5,80001b80 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        freeSegmentHead = nullptr;
    80001b3c:	00005797          	auipc	a5,0x5
    80001b40:	5407be23          	sd	zero,1372(a5) # 80007098 <_ZN15MemoryAllocator15freeSegmentHeadE>
    curr->next = nullptr; //potpuno se odvezuje cvor
    80001b44:	00053423          	sd	zero,8(a0)
    UsedSegment* used = (UsedSegment*)((char*)curr + sizeof(FreeSegment));
    80001b48:	01850713          	addi	a4,a0,24
    used->size = size;
    80001b4c:	00953c23          	sd	s1,24(a0)
    if(!usedSegmentHead) {
    80001b50:	00005797          	auipc	a5,0x5
    80001b54:	5507b783          	ld	a5,1360(a5) # 800070a0 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001b58:	06078a63          	beqz	a5,80001bcc <_ZN15MemoryAllocator9mem_allocEm+0x104>
        used->next = usedSegmentHead;
    80001b5c:	02f53023          	sd	a5,32(a0)
        usedSegmentHead = used;
    80001b60:	00005797          	auipc	a5,0x5
    80001b64:	54e7b023          	sd	a4,1344(a5) # 800070a0 <_ZN15MemoryAllocator15usedSegmentHeadE>
    return (char*)curr + MEM_BLOCK_SIZE; //vraca se adresa nakon zaglavlja
    80001b68:	04050513          	addi	a0,a0,64
}
    80001b6c:	01813083          	ld	ra,24(sp)
    80001b70:	01013403          	ld	s0,16(sp)
    80001b74:	00813483          	ld	s1,8(sp)
    80001b78:	02010113          	addi	sp,sp,32
    80001b7c:	00008067          	ret
        size_t offset = MEM_BLOCK_SIZE + size;
    80001b80:	04048713          	addi	a4,s1,64
        FreeSegment* newSegm = (FreeSegment*)((char*)curr + offset);
    80001b84:	00e50733          	add	a4,a0,a4
        if (curr->prev) {
    80001b88:	01053683          	ld	a3,16(a0)
    80001b8c:	02068863          	beqz	a3,80001bbc <_ZN15MemoryAllocator9mem_allocEm+0xf4>
            curr->prev->next = newSegm;
    80001b90:	00e6b423          	sd	a4,8(a3)
            newSegm->prev = curr->prev;
    80001b94:	01053683          	ld	a3,16(a0)
    80001b98:	00d73823          	sd	a3,16(a4)
        if(curr->next)
    80001b9c:	00853683          	ld	a3,8(a0)
    80001ba0:	00068463          	beqz	a3,80001ba8 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            curr->next->prev = newSegm;
    80001ba4:	00e6b823          	sd	a4,16(a3)
        newSegm->next = curr->next;
    80001ba8:	00853683          	ld	a3,8(a0)
    80001bac:	00d73423          	sd	a3,8(a4)
        newSegm->size = remainingSize - MEM_BLOCK_SIZE; //zbog njegovog zaglavlja
    80001bb0:	fc078793          	addi	a5,a5,-64
    80001bb4:	00f73023          	sd	a5,0(a4)
    80001bb8:	f8dff06f          	j	80001b44 <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            freeSegmentHead = newSegm;
    80001bbc:	00005697          	auipc	a3,0x5
    80001bc0:	4ce6be23          	sd	a4,1244(a3) # 80007098 <_ZN15MemoryAllocator15freeSegmentHeadE>
            freeSegmentHead->prev = nullptr;
    80001bc4:	00073823          	sd	zero,16(a4)
    80001bc8:	fd5ff06f          	j	80001b9c <_ZN15MemoryAllocator9mem_allocEm+0xd4>
        usedSegmentHead = used;
    80001bcc:	00005797          	auipc	a5,0x5
    80001bd0:	4ce7ba23          	sd	a4,1236(a5) # 800070a0 <_ZN15MemoryAllocator15usedSegmentHeadE>
        usedSegmentHead->next = nullptr;
    80001bd4:	00073423          	sd	zero,8(a4)
    80001bd8:	f91ff06f          	j	80001b68 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    if(size <= 0) return nullptr;
    80001bdc:	00000513          	li	a0,0
}
    80001be0:	00008067          	ret

0000000080001be4 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment>:
    tryToJoin(fcurr);

    return 0;
}

void MemoryAllocator::tryToJoin(FreeSegment *curr) {
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00813423          	sd	s0,8(sp)
    80001bec:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001bf0:	00050e63          	beqz	a0,80001c0c <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>
    //da li je kraj jednog bloka jednak pocetku drugog
    if (curr->next && (char*)curr + curr->size == (char*)(curr->next) - MEM_BLOCK_SIZE) {
    80001bf4:	00853783          	ld	a5,8(a0)
    80001bf8:	00078a63          	beqz	a5,80001c0c <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>
    80001bfc:	00053703          	ld	a4,0(a0)
    80001c00:	00e50633          	add	a2,a0,a4
    80001c04:	fc078693          	addi	a3,a5,-64
    80001c08:	00d60863          	beq	a2,a3,80001c18 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x34>
        curr->size += curr->next->size + MEM_BLOCK_SIZE;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
    }
}
    80001c0c:	00813403          	ld	s0,8(sp)
    80001c10:	01010113          	addi	sp,sp,16
    80001c14:	00008067          	ret
        curr->size += curr->next->size + MEM_BLOCK_SIZE;
    80001c18:	0007b683          	ld	a3,0(a5)
    80001c1c:	00d70733          	add	a4,a4,a3
    80001c20:	04070713          	addi	a4,a4,64
    80001c24:	00e53023          	sd	a4,0(a0)
        curr->next = curr->next->next;
    80001c28:	0087b783          	ld	a5,8(a5)
    80001c2c:	00f53423          	sd	a5,8(a0)
        if (curr->next) curr->next->prev = curr;
    80001c30:	fc078ee3          	beqz	a5,80001c0c <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>
    80001c34:	00a7b823          	sd	a0,16(a5)
    80001c38:	fd5ff06f          	j	80001c0c <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment+0x28>

0000000080001c3c <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    80001c3c:	10050c63          	beqz	a0,80001d54 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    80001c40:	00050613          	mv	a2,a0
    UsedSegment* curr = usedSegmentHead, *prev = nullptr;
    80001c44:	00005697          	auipc	a3,0x5
    80001c48:	45c6b683          	ld	a3,1116(a3) # 800070a0 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001c4c:	00000593          	li	a1,0
    for(; (curr != nullptr) & ((char*)curr - sizeof(FreeSegment) + MEM_BLOCK_SIZE != (char*)addr);
    80001c50:	02868713          	addi	a4,a3,40
    80001c54:	00d037b3          	snez	a5,a3
    80001c58:	40c70733          	sub	a4,a4,a2
    80001c5c:	00e03733          	snez	a4,a4
    80001c60:	00e7f7b3          	and	a5,a5,a4
    80001c64:	0ff7f793          	andi	a5,a5,255
    80001c68:	00078863          	beqz	a5,80001c78 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
    prev = curr, curr = curr->next);
    80001c6c:	00068593          	mv	a1,a3
    80001c70:	0086b683          	ld	a3,8(a3)
    for(; (curr != nullptr) & ((char*)curr - sizeof(FreeSegment) + MEM_BLOCK_SIZE != (char*)addr);
    80001c74:	fddff06f          	j	80001c50 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if(!curr) return -1;
    80001c78:	0e068263          	beqz	a3,80001d5c <_ZN15MemoryAllocator8mem_freeEPv+0x120>
int MemoryAllocator::mem_free(void *addr) {
    80001c7c:	fe010113          	addi	sp,sp,-32
    80001c80:	00113c23          	sd	ra,24(sp)
    80001c84:	00813823          	sd	s0,16(sp)
    80001c88:	00913423          	sd	s1,8(sp)
    80001c8c:	02010413          	addi	s0,sp,32
    if(prev) {
    80001c90:	02058863          	beqz	a1,80001cc0 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        prev->next = curr->next;
    80001c94:	0086b783          	ld	a5,8(a3)
    80001c98:	00f5b423          	sd	a5,8(a1)
    if(freeSegmentHead && (char*)freeSegmentHead < (char*)addr) //ako uslov nije ispunjen segment postaje glava liste
    80001c9c:	00005797          	auipc	a5,0x5
    80001ca0:	3fc7b783          	ld	a5,1020(a5) # 80007098 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001ca4:	02078663          	beqz	a5,80001cd0 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80001ca8:	02c7f863          	bgeu	a5,a2,80001cd8 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
        for(fcurr = freeSegmentHead; fcurr->next && (char*)addr > (char*)(fcurr->next); fcurr = fcurr->next);
    80001cac:	00078493          	mv	s1,a5
    80001cb0:	0087b783          	ld	a5,8(a5)
    80001cb4:	02078463          	beqz	a5,80001cdc <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001cb8:	fec7eae3          	bltu	a5,a2,80001cac <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    80001cbc:	0200006f          	j	80001cdc <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    else usedSegmentHead = curr->next;
    80001cc0:	0086b783          	ld	a5,8(a3)
    80001cc4:	00005717          	auipc	a4,0x5
    80001cc8:	3cf73e23          	sd	a5,988(a4) # 800070a0 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001ccc:	fd1ff06f          	j	80001c9c <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    FreeSegment* fcurr = nullptr;
    80001cd0:	00078493          	mv	s1,a5
    80001cd4:	0080006f          	j	80001cdc <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80001cd8:	00000493          	li	s1,0
    FreeSegment* newSeg = (FreeSegment*)((char*)addr - MEM_BLOCK_SIZE);
    80001cdc:	fc060513          	addi	a0,a2,-64
    newSeg->size = curr->size;
    80001ce0:	0006b783          	ld	a5,0(a3)
    80001ce4:	fcf63023          	sd	a5,-64(a2)
    newSeg->prev = fcurr;
    80001ce8:	fc963823          	sd	s1,-48(a2)
    if (fcurr) newSeg->next = fcurr->next;
    80001cec:	04048663          	beqz	s1,80001d38 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    80001cf0:	0084b783          	ld	a5,8(s1)
    80001cf4:	fcf63423          	sd	a5,-56(a2)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80001cf8:	fc863783          	ld	a5,-56(a2)
    80001cfc:	00078463          	beqz	a5,80001d04 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    80001d00:	00a7b823          	sd	a0,16(a5)
    if (fcurr) fcurr->next = newSeg;
    80001d04:	04048263          	beqz	s1,80001d48 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    80001d08:	00a4b423          	sd	a0,8(s1)
    tryToJoin(newSeg);
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	ed8080e7          	jalr	-296(ra) # 80001be4 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment>
    tryToJoin(fcurr);
    80001d14:	00048513          	mv	a0,s1
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	ecc080e7          	jalr	-308(ra) # 80001be4 <_ZN15MemoryAllocator9tryToJoinEP11FreeSegment>
    return 0;
    80001d20:	00000513          	li	a0,0
}
    80001d24:	01813083          	ld	ra,24(sp)
    80001d28:	01013403          	ld	s0,16(sp)
    80001d2c:	00813483          	ld	s1,8(sp)
    80001d30:	02010113          	addi	sp,sp,32
    80001d34:	00008067          	ret
    else newSeg->next = freeSegmentHead;
    80001d38:	00005797          	auipc	a5,0x5
    80001d3c:	3607b783          	ld	a5,864(a5) # 80007098 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001d40:	fcf63423          	sd	a5,-56(a2)
    80001d44:	fb5ff06f          	j	80001cf8 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    else freeSegmentHead = newSeg;
    80001d48:	00005797          	auipc	a5,0x5
    80001d4c:	34a7b823          	sd	a0,848(a5) # 80007098 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001d50:	fbdff06f          	j	80001d0c <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    if(!addr) return -1;
    80001d54:	fff00513          	li	a0,-1
    80001d58:	00008067          	ret
    if(!curr) return -1;
    80001d5c:	fff00513          	li	a0,-1
}
    80001d60:	00008067          	ret

0000000080001d64 <_Znwm>:
#include "../h/syscall_c.h"
#include "../h/memoryAllocator.h"
#include "../h/syscall_cpp.h"


void *operator new(size_t size) {
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00113423          	sd	ra,8(sp)
    80001d6c:	00813023          	sd	s0,0(sp)
    80001d70:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 );
    80001d74:	03f57793          	andi	a5,a0,63
    80001d78:	02079063          	bnez	a5,80001d98 <_Znwm+0x34>
    80001d7c:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	d48080e7          	jalr	-696(ra) # 80001ac8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d88:	00813083          	ld	ra,8(sp)
    80001d8c:	00013403          	ld	s0,0(sp)
    80001d90:	01010113          	addi	sp,sp,16
    80001d94:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 );
    80001d98:	00655513          	srli	a0,a0,0x6
    80001d9c:	00150513          	addi	a0,a0,1
    80001da0:	fe1ff06f          	j	80001d80 <_Znwm+0x1c>

0000000080001da4 <_Znam>:

void *operator new[](size_t size) {
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 );
    80001db4:	03f57793          	andi	a5,a0,63
    80001db8:	02079063          	bnez	a5,80001dd8 <_Znam+0x34>
    80001dbc:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	d08080e7          	jalr	-760(ra) # 80001ac8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 );
    80001dd8:	00655513          	srli	a0,a0,0x6
    80001ddc:	00150513          	addi	a0,a0,1
    80001de0:	fe1ff06f          	j	80001dc0 <_Znam+0x1c>

0000000080001de4 <_ZdlPv>:

void operator delete(void *p) noexcept { MemoryAllocator::mem_free(p); }
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00113423          	sd	ra,8(sp)
    80001dec:	00813023          	sd	s0,0(sp)
    80001df0:	01010413          	addi	s0,sp,16
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	e48080e7          	jalr	-440(ra) # 80001c3c <_ZN15MemoryAllocator8mem_freeEPv>
    80001dfc:	00813083          	ld	ra,8(sp)
    80001e00:	00013403          	ld	s0,0(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <_ZdaPv>:

void operator delete[](void *p) noexcept { MemoryAllocator::mem_free(p); }
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00113423          	sd	ra,8(sp)
    80001e14:	00813023          	sd	s0,0(sp)
    80001e18:	01010413          	addi	s0,sp,16
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	e20080e7          	jalr	-480(ra) # 80001c3c <_ZN15MemoryAllocator8mem_freeEPv>
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZN6Thread10runWrapperEPv>:

Thread::Thread() {
    thread_alloc(&myHandle, runWrapper, this); //samo alocira nit
}

void Thread::runWrapper(void *arg) {
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80001e44:	00053783          	ld	a5,0(a0)
    80001e48:	0107b783          	ld	a5,16(a5)
    80001e4c:	000780e7          	jalr	a5
}
    80001e50:	00813083          	ld	ra,8(sp)
    80001e54:	00013403          	ld	s0,0(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001e60:	ff010113          	addi	sp,sp,-16
    80001e64:	00113423          	sd	ra,8(sp)
    80001e68:	00813023          	sd	s0,0(sp)
    80001e6c:	01010413          	addi	s0,sp,16
    80001e70:	00005797          	auipc	a5,0x5
    80001e74:	15878793          	addi	a5,a5,344 # 80006fc8 <_ZTV6Thread+0x10>
    80001e78:	00f53023          	sd	a5,0(a0)
    thread_alloc(&myHandle, body, arg);
    80001e7c:	00850513          	addi	a0,a0,8
    80001e80:	fffff097          	auipc	ra,0xfffff
    80001e84:	708080e7          	jalr	1800(ra) # 80001588 <_Z12thread_allocPP3PCBPFvPvES2_>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN6Thread5startEv>:
int Thread::start() {
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00113423          	sd	ra,8(sp)
    80001ea0:	00813023          	sd	s0,0(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    thread_scheduler(myHandle); //stavlja nit u scheduler
    80001ea8:	00853503          	ld	a0,8(a0)
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	760080e7          	jalr	1888(ra) # 8000160c <_Z16thread_schedulerP3PCB>
}
    80001eb4:	00000513          	li	a0,0
    80001eb8:	00813083          	ld	ra,8(sp)
    80001ebc:	00013403          	ld	s0,0(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00113423          	sd	ra,8(sp)
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ed8:	fffff097          	auipc	ra,0xfffff
    80001edc:	4d8080e7          	jalr	1240(ra) # 800013b0 <_Z15thread_dispatchv>
}
    80001ee0:	00813083          	ld	ra,8(sp)
    80001ee4:	00013403          	ld	s0,0(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00113423          	sd	ra,8(sp)
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	01010413          	addi	s0,sp,16
    80001f00:	00005797          	auipc	a5,0x5
    80001f04:	0c878793          	addi	a5,a5,200 # 80006fc8 <_ZTV6Thread+0x10>
    80001f08:	00f53023          	sd	a5,0(a0)
    thread_alloc(&myHandle, runWrapper, this); //samo alocira nit
    80001f0c:	00050613          	mv	a2,a0
    80001f10:	00000597          	auipc	a1,0x0
    80001f14:	f2458593          	addi	a1,a1,-220 # 80001e34 <_ZN6Thread10runWrapperEPv>
    80001f18:	00850513          	addi	a0,a0,8
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	66c080e7          	jalr	1644(ra) # 80001588 <_Z12thread_allocPP3PCBPFvPvES2_>
}
    80001f24:	00813083          	ld	ra,8(sp)
    80001f28:	00013403          	ld	s0,0(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00113423          	sd	ra,8(sp)
    80001f3c:	00813023          	sd	s0,0(sp)
    80001f40:	01010413          	addi	s0,sp,16
    80001f44:	00005797          	auipc	a5,0x5
    80001f48:	0ac78793          	addi	a5,a5,172 # 80006ff0 <_ZTV9Semaphore+0x10>
    80001f4c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001f50:	00850513          	addi	a0,a0,8
    80001f54:	fffff097          	auipc	ra,0xfffff
    80001f58:	4c0080e7          	jalr	1216(ra) # 80001414 <_Z8sem_openPP3Semj>
}
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN9Semaphore4waitEv>:
/*
Semaphore::~Semaphore() {
    sem_close(myHandle);
}*/

int Semaphore::wait() {
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00113423          	sd	ra,8(sp)
    80001f74:	00813023          	sd	s0,0(sp)
    80001f78:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001f7c:	00853503          	ld	a0,8(a0)
    80001f80:	fffff097          	auipc	ra,0xfffff
    80001f84:	524080e7          	jalr	1316(ra) # 800014a4 <_Z8sem_waitP3Sem>
}
    80001f88:	00813083          	ld	ra,8(sp)
    80001f8c:	00013403          	ld	s0,0(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00113423          	sd	ra,8(sp)
    80001fa0:	00813023          	sd	s0,0(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001fa8:	00853503          	ld	a0,8(a0)
    80001fac:	fffff097          	auipc	ra,0xfffff
    80001fb0:	534080e7          	jalr	1332(ra) # 800014e0 <_Z10sem_signalP3Sem>
}
    80001fb4:	00813083          	ld	ra,8(sp)
    80001fb8:	00013403          	ld	s0,0(sp)
    80001fbc:	01010113          	addi	sp,sp,16
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN7Console4getcEv>:

char Console::getc() {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00113423          	sd	ra,8(sp)
    80001fcc:	00813023          	sd	s0,0(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    return ::getc();
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	548080e7          	jalr	1352(ra) # 8000151c <_Z4getcv>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00113423          	sd	ra,8(sp)
    80001ff4:	00813023          	sd	s0,0(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	558080e7          	jalr	1368(ra) # 80001554 <_Z4putcc>
}
    80002004:	00813083          	ld	ra,8(sp)
    80002008:	00013403          	ld	s0,0(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret

0000000080002014 <_ZN6ThreadD1Ev>:
#include "syscall_c.h"

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread () {};
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00813423          	sd	s0,8(sp)
    8000201c:	01010413          	addi	s0,sp,16
    80002020:	00813403          	ld	s0,8(sp)
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00008067          	ret

000000008000202c <_ZN6Thread3runEv>:
    static void dispatch ();
    //static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    80002038:	00813403          	ld	s0,8(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <_ZN9SemaphoreD1Ev>:
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore () {};
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    80002050:	00813403          	ld	s0,8(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret

000000008000205c <_ZN6ThreadD0Ev>:
    virtual ~Thread () {};
    8000205c:	ff010113          	addi	sp,sp,-16
    80002060:	00113423          	sd	ra,8(sp)
    80002064:	00813023          	sd	s0,0(sp)
    80002068:	01010413          	addi	s0,sp,16
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	d78080e7          	jalr	-648(ra) # 80001de4 <_ZdlPv>
    80002074:	00813083          	ld	ra,8(sp)
    80002078:	00013403          	ld	s0,0(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore () {};
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
    80002094:	00000097          	auipc	ra,0x0
    80002098:	d50080e7          	jalr	-688(ra) # 80001de4 <_ZdlPv>
    8000209c:	00813083          	ld	ra,8(sp)
    800020a0:	00013403          	ld	s0,0(sp)
    800020a4:	01010113          	addi	sp,sp,16
    800020a8:	00008067          	ret

00000000800020ac <_ZN5Riscv10popSppSpieEv>:
//

#include "../h/riscv.h"

void Riscv::popSppSpie()
{
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00813423          	sd	s0,8(sp)
    800020b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800020b8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800020bc:	10200073          	sret
    800020c0:	00813403          	ld	s0,8(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <_ZN3Sem5blockEv>:
#include "../h/sem.h"

void Sem::block() {
    800020cc:	fd010113          	addi	sp,sp,-48
    800020d0:	02113423          	sd	ra,40(sp)
    800020d4:	02813023          	sd	s0,32(sp)
    800020d8:	00913c23          	sd	s1,24(sp)
    800020dc:	01213823          	sd	s2,16(sp)
    800020e0:	01313423          	sd	s3,8(sp)
    800020e4:	03010413          	addi	s0,sp,48
    800020e8:	00050913          	mv	s2,a0
    blocked.addLast(PCB::running);
    800020ec:	00850493          	addi	s1,a0,8
    800020f0:	00005797          	auipc	a5,0x5
    800020f4:	f487b783          	ld	a5,-184(a5) # 80007038 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020f8:	0007b983          	ld	s3,0(a5)
        if (!tail) { tail = head; }
        cnt++;
    }

    void addLast(T *data) {
        Elem *elem = new Elem(data, 0);
    800020fc:	01000513          	li	a0,16
    80002100:	00000097          	auipc	ra,0x0
    80002104:	c64080e7          	jalr	-924(ra) # 80001d64 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002108:	01353023          	sd	s3,0(a0)
    8000210c:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002110:	0084b783          	ld	a5,8(s1)
    80002114:	04078e63          	beqz	a5,80002170 <_ZN3Sem5blockEv+0xa4>
            tail->next = elem;
    80002118:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000211c:	00a4b423          	sd	a0,8(s1)
        } else {
            head = tail = elem;
        }
        cnt++;
    80002120:	0104b783          	ld	a5,16(s1)
    80002124:	00178793          	addi	a5,a5,1
    80002128:	00f4b823          	sd	a5,16(s1)
    putc('c');
    8000212c:	06300513          	li	a0,99
    80002130:	fffff097          	auipc	ra,0xfffff
    80002134:	424080e7          	jalr	1060(ra) # 80001554 <_Z4putcc>
    PCB::running->setBlocked(true);
    80002138:	00005797          	auipc	a5,0x5
    8000213c:	f007b783          	ld	a5,-256(a5) # 80007038 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002140:	0007b783          	ld	a5,0(a5)
    void setBlocked(bool value) { blocked = value; }
    80002144:	00100713          	li	a4,1
    80002148:	02e784a3          	sb	a4,41(a5)
    thread_dispatch();
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	264080e7          	jalr	612(ra) # 800013b0 <_Z15thread_dispatchv>
}
    80002154:	02813083          	ld	ra,40(sp)
    80002158:	02013403          	ld	s0,32(sp)
    8000215c:	01813483          	ld	s1,24(sp)
    80002160:	01013903          	ld	s2,16(sp)
    80002164:	00813983          	ld	s3,8(sp)
    80002168:	03010113          	addi	sp,sp,48
    8000216c:	00008067          	ret
            head = tail = elem;
    80002170:	00a4b423          	sd	a0,8(s1)
    80002174:	00a93423          	sd	a0,8(s2)
    80002178:	fa9ff06f          	j	80002120 <_ZN3Sem5blockEv+0x54>

000000008000217c <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    8000217c:	fe010113          	addi	sp,sp,-32
    80002180:	00113c23          	sd	ra,24(sp)
    80002184:	00813823          	sd	s0,16(sp)
    80002188:	00913423          	sd	s1,8(sp)
    8000218c:	01213023          	sd	s2,0(sp)
    80002190:	02010413          	addi	s0,sp,32
    80002194:	00050793          	mv	a5,a0
    thread_t p = blocked.removeFirst();
    80002198:	00850493          	addi	s1,a0,8
    }

    T *removeFirst() {
        if (!head) { return 0; }
    8000219c:	00853503          	ld	a0,8(a0)
    800021a0:	04050c63          	beqz	a0,800021f8 <_ZN3Sem7unblockEv+0x7c>

        Elem *elem = head;
        head = head->next;
    800021a4:	00853703          	ld	a4,8(a0)
    800021a8:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800021ac:	04070263          	beqz	a4,800021f0 <_ZN3Sem7unblockEv+0x74>

        T *ret = elem->data;
    800021b0:	00053903          	ld	s2,0(a0)
        delete elem;
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	c30080e7          	jalr	-976(ra) # 80001de4 <_ZdlPv>
        cnt--;
    800021bc:	0104b783          	ld	a5,16(s1)
    800021c0:	fff78793          	addi	a5,a5,-1
    800021c4:	00f4b823          	sd	a5,16(s1)
    800021c8:	020904a3          	sb	zero,41(s2)
    p->setBlocked(false);
    Scheduler::put(p);
    800021cc:	00090513          	mv	a0,s2
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	1f4080e7          	jalr	500(ra) # 800023c4 <_ZN9Scheduler3putEP3PCB>
}
    800021d8:	01813083          	ld	ra,24(sp)
    800021dc:	01013403          	ld	s0,16(sp)
    800021e0:	00813483          	ld	s1,8(sp)
    800021e4:	00013903          	ld	s2,0(sp)
    800021e8:	02010113          	addi	sp,sp,32
    800021ec:	00008067          	ret
        if (!head) { tail = 0; }
    800021f0:	0004b423          	sd	zero,8(s1)
    800021f4:	fbdff06f          	j	800021b0 <_ZN3Sem7unblockEv+0x34>
        if (!head) { return 0; }
    800021f8:	00050913          	mv	s2,a0
    800021fc:	fcdff06f          	j	800021c8 <_ZN3Sem7unblockEv+0x4c>

0000000080002200 <_ZN3Sem15createSemaphoreEj>:

Sem *Sem::createSemaphore(uint32 init) {
    80002200:	fe010113          	addi	sp,sp,-32
    80002204:	00113c23          	sd	ra,24(sp)
    80002208:	00813823          	sd	s0,16(sp)
    8000220c:	00913423          	sd	s1,8(sp)
    80002210:	02010413          	addi	s0,sp,32
    80002214:	00050493          	mv	s1,a0
    return new Sem(init);
    80002218:	02000513          	li	a0,32
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	b48080e7          	jalr	-1208(ra) # 80001d64 <_Znwm>
    Sem(uint32 init = 1) : val(init), active(true) {}
    80002224:	00952023          	sw	s1,0(a0)
    80002228:	00100713          	li	a4,1
    8000222c:	00e50223          	sb	a4,4(a0)
    List() : head(0), tail(0) {}
    80002230:	00053423          	sd	zero,8(a0)
    80002234:	00053823          	sd	zero,16(a0)
    80002238:	00053c23          	sd	zero,24(a0)
}
    8000223c:	01813083          	ld	ra,24(sp)
    80002240:	01013403          	ld	s0,16(sp)
    80002244:	00813483          	ld	s1,8(sp)
    80002248:	02010113          	addi	sp,sp,32
    8000224c:	00008067          	ret

0000000080002250 <_ZN3Sem15deleteSemaphoreEPS_>:

void Sem::deleteSemaphore(sem_t handle) {
    80002250:	fc010113          	addi	sp,sp,-64
    80002254:	02113c23          	sd	ra,56(sp)
    80002258:	02813823          	sd	s0,48(sp)
    8000225c:	02913423          	sd	s1,40(sp)
    80002260:	03213023          	sd	s2,32(sp)
    80002264:	01313c23          	sd	s3,24(sp)
    80002268:	01413823          	sd	s4,16(sp)
    8000226c:	01513423          	sd	s5,8(sp)
    80002270:	04010413          	addi	s0,sp,64
    80002274:	00050493          	mv	s1,a0
    void setActive(bool val) { active = val; }
    80002278:	00050223          	sb	zero,4(a0)
    uint64 getCnt() { return cnt; }
    8000227c:	01853a83          	ld	s5,24(a0)
    handle->setActive(false);

    uint64 queueSize = handle->blocked.getCnt();

    for(uint64 i = 0; i < queueSize; i++) {
    80002280:	00000913          	li	s2,0
    80002284:	0340006f          	j	800022b8 <_ZN3Sem15deleteSemaphoreEPS_+0x68>
        if (!head) { tail = 0; }
    80002288:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    8000228c:	00053a03          	ld	s4,0(a0)
        delete elem;
    80002290:	00000097          	auipc	ra,0x0
    80002294:	b54080e7          	jalr	-1196(ra) # 80001de4 <_ZdlPv>
        cnt--;
    80002298:	0109b783          	ld	a5,16(s3)
    8000229c:	fff78793          	addi	a5,a5,-1
    800022a0:	00f9b823          	sd	a5,16(s3)
    800022a4:	020a04a3          	sb	zero,41(s4)
        thread_t th = handle->blocked.removeFirst();
        th->setBlocked(false);
        Scheduler::put(th);
    800022a8:	000a0513          	mv	a0,s4
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	118080e7          	jalr	280(ra) # 800023c4 <_ZN9Scheduler3putEP3PCB>
    for(uint64 i = 0; i < queueSize; i++) {
    800022b4:	00190913          	addi	s2,s2,1
    800022b8:	03597463          	bgeu	s2,s5,800022e0 <_ZN3Sem15deleteSemaphoreEPS_+0x90>
        thread_t th = handle->blocked.removeFirst();
    800022bc:	00848993          	addi	s3,s1,8
        if (!head) { return 0; }
    800022c0:	0084b503          	ld	a0,8(s1)
    800022c4:	00050a63          	beqz	a0,800022d8 <_ZN3Sem15deleteSemaphoreEPS_+0x88>
        head = head->next;
    800022c8:	00853783          	ld	a5,8(a0)
    800022cc:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800022d0:	fa079ee3          	bnez	a5,8000228c <_ZN3Sem15deleteSemaphoreEPS_+0x3c>
    800022d4:	fb5ff06f          	j	80002288 <_ZN3Sem15deleteSemaphoreEPS_+0x38>
        if (!head) { return 0; }
    800022d8:	00050a13          	mv	s4,a0
    800022dc:	fc9ff06f          	j	800022a4 <_ZN3Sem15deleteSemaphoreEPS_+0x54>
    }
}
    800022e0:	03813083          	ld	ra,56(sp)
    800022e4:	03013403          	ld	s0,48(sp)
    800022e8:	02813483          	ld	s1,40(sp)
    800022ec:	02013903          	ld	s2,32(sp)
    800022f0:	01813983          	ld	s3,24(sp)
    800022f4:	01013a03          	ld	s4,16(sp)
    800022f8:	00813a83          	ld	s5,8(sp)
    800022fc:	04010113          	addi	sp,sp,64
    80002300:	00008067          	ret

0000000080002304 <_Z41__static_initialization_and_destruction_0ii>:
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(PCB *pcb) {
    readyCoroutineQueue.addLast(pcb);
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    80002310:	00100793          	li	a5,1
    80002314:	00f50863          	beq	a0,a5,80002324 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret
    80002324:	000107b7          	lui	a5,0x10
    80002328:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000232c:	fef596e3          	bne	a1,a5,80002318 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002330:	00005797          	auipc	a5,0x5
    80002334:	d8078793          	addi	a5,a5,-640 # 800070b0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002338:	0007b023          	sd	zero,0(a5)
    8000233c:	0007b423          	sd	zero,8(a5)
    80002340:	0007b823          	sd	zero,16(a5)
    80002344:	fd5ff06f          	j	80002318 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002348 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80002348:	fe010113          	addi	sp,sp,-32
    8000234c:	00113c23          	sd	ra,24(sp)
    80002350:	00813823          	sd	s0,16(sp)
    80002354:	00913423          	sd	s1,8(sp)
    80002358:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    8000235c:	00005517          	auipc	a0,0x5
    80002360:	d5453503          	ld	a0,-684(a0) # 800070b0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002364:	04050c63          	beqz	a0,800023bc <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80002368:	00853783          	ld	a5,8(a0)
    8000236c:	00005717          	auipc	a4,0x5
    80002370:	d4f73223          	sd	a5,-700(a4) # 800070b0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002374:	02078e63          	beqz	a5,800023b0 <_ZN9Scheduler3getEv+0x68>
        T *ret = elem->data;
    80002378:	00053483          	ld	s1,0(a0)
        delete elem;
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	a68080e7          	jalr	-1432(ra) # 80001de4 <_ZdlPv>
        cnt--;
    80002384:	00005717          	auipc	a4,0x5
    80002388:	d2c70713          	addi	a4,a4,-724 # 800070b0 <_ZN9Scheduler19readyCoroutineQueueE>
    8000238c:	01073783          	ld	a5,16(a4)
    80002390:	fff78793          	addi	a5,a5,-1
    80002394:	00f73823          	sd	a5,16(a4)
}
    80002398:	00048513          	mv	a0,s1
    8000239c:	01813083          	ld	ra,24(sp)
    800023a0:	01013403          	ld	s0,16(sp)
    800023a4:	00813483          	ld	s1,8(sp)
    800023a8:	02010113          	addi	sp,sp,32
    800023ac:	00008067          	ret
        if (!head) { tail = 0; }
    800023b0:	00005797          	auipc	a5,0x5
    800023b4:	d007b423          	sd	zero,-760(a5) # 800070b8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800023b8:	fc1ff06f          	j	80002378 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800023bc:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800023c0:	fd9ff06f          	j	80002398 <_ZN9Scheduler3getEv+0x50>

00000000800023c4 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    800023c4:	fe010113          	addi	sp,sp,-32
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	00813823          	sd	s0,16(sp)
    800023d0:	00913423          	sd	s1,8(sp)
    800023d4:	02010413          	addi	s0,sp,32
    800023d8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800023dc:	01000513          	li	a0,16
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	984080e7          	jalr	-1660(ra) # 80001d64 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800023e8:	00953023          	sd	s1,0(a0)
    800023ec:	00053423          	sd	zero,8(a0)
        if (tail) {
    800023f0:	00005797          	auipc	a5,0x5
    800023f4:	cc87b783          	ld	a5,-824(a5) # 800070b8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800023f8:	02078c63          	beqz	a5,80002430 <_ZN9Scheduler3putEP3PCB+0x6c>
            tail->next = elem;
    800023fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002400:	00005797          	auipc	a5,0x5
    80002404:	caa7bc23          	sd	a0,-840(a5) # 800070b8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        cnt++;
    80002408:	00005717          	auipc	a4,0x5
    8000240c:	ca870713          	addi	a4,a4,-856 # 800070b0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002410:	01073783          	ld	a5,16(a4)
    80002414:	00178793          	addi	a5,a5,1
    80002418:	00f73823          	sd	a5,16(a4)
    8000241c:	01813083          	ld	ra,24(sp)
    80002420:	01013403          	ld	s0,16(sp)
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret
            head = tail = elem;
    80002430:	00005797          	auipc	a5,0x5
    80002434:	c8078793          	addi	a5,a5,-896 # 800070b0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002438:	00a7b423          	sd	a0,8(a5)
    8000243c:	00a7b023          	sd	a0,0(a5)
    80002440:	fc9ff06f          	j	80002408 <_ZN9Scheduler3putEP3PCB+0x44>

0000000080002444 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00113423          	sd	ra,8(sp)
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	01010413          	addi	s0,sp,16
    80002454:	000105b7          	lui	a1,0x10
    80002458:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000245c:	00100513          	li	a0,1
    80002460:	00000097          	auipc	ra,0x0
    80002464:	ea4080e7          	jalr	-348(ra) # 80002304 <_Z41__static_initialization_and_destruction_0ii>
    80002468:	00813083          	ld	ra,8(sp)
    8000246c:	00013403          	ld	s0,0(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00113c23          	sd	ra,24(sp)
    80002480:	00813823          	sd	s0,16(sp)
    80002484:	00913423          	sd	s1,8(sp)
    80002488:	02010413          	addi	s0,sp,32
    8000248c:	00050493          	mv	s1,a0
    LOCK();
    80002490:	00100613          	li	a2,1
    80002494:	00000593          	li	a1,0
    80002498:	00005517          	auipc	a0,0x5
    8000249c:	c3050513          	addi	a0,a0,-976 # 800070c8 <lockPrint>
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	da4080e7          	jalr	-604(ra) # 80001244 <copy_and_swap>
    800024a8:	fe0514e3          	bnez	a0,80002490 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800024ac:	0004c503          	lbu	a0,0(s1)
    800024b0:	00050a63          	beqz	a0,800024c4 <_Z11printStringPKc+0x4c>
    {
        __putc(*string);
    800024b4:	00003097          	auipc	ra,0x3
    800024b8:	a78080e7          	jalr	-1416(ra) # 80004f2c <__putc>
        string++;
    800024bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800024c0:	fedff06f          	j	800024ac <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800024c4:	00000613          	li	a2,0
    800024c8:	00100593          	li	a1,1
    800024cc:	00005517          	auipc	a0,0x5
    800024d0:	bfc50513          	addi	a0,a0,-1028 # 800070c8 <lockPrint>
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	d70080e7          	jalr	-656(ra) # 80001244 <copy_and_swap>
    800024dc:	fe0514e3          	bnez	a0,800024c4 <_Z11printStringPKc+0x4c>
}
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret

00000000800024f4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800024f4:	fd010113          	addi	sp,sp,-48
    800024f8:	02113423          	sd	ra,40(sp)
    800024fc:	02813023          	sd	s0,32(sp)
    80002500:	00913c23          	sd	s1,24(sp)
    80002504:	01213823          	sd	s2,16(sp)
    80002508:	01313423          	sd	s3,8(sp)
    8000250c:	01413023          	sd	s4,0(sp)
    80002510:	03010413          	addi	s0,sp,48
    80002514:	00050993          	mv	s3,a0
    80002518:	00058a13          	mv	s4,a1
    LOCK();
    8000251c:	00100613          	li	a2,1
    80002520:	00000593          	li	a1,0
    80002524:	00005517          	auipc	a0,0x5
    80002528:	ba450513          	addi	a0,a0,-1116 # 800070c8 <lockPrint>
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	d18080e7          	jalr	-744(ra) # 80001244 <copy_and_swap>
    80002534:	fe0514e3          	bnez	a0,8000251c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002538:	00000913          	li	s2,0
    8000253c:	00090493          	mv	s1,s2
    80002540:	0019091b          	addiw	s2,s2,1
    80002544:	03495a63          	bge	s2,s4,80002578 <_Z9getStringPci+0x84>
        cc = __getc();
    80002548:	00003097          	auipc	ra,0x3
    8000254c:	a20080e7          	jalr	-1504(ra) # 80004f68 <__getc>
        if(cc < 1)
    80002550:	02050463          	beqz	a0,80002578 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002554:	009984b3          	add	s1,s3,s1
    80002558:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000255c:	00a00793          	li	a5,10
    80002560:	00f50a63          	beq	a0,a5,80002574 <_Z9getStringPci+0x80>
    80002564:	00d00793          	li	a5,13
    80002568:	fcf51ae3          	bne	a0,a5,8000253c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000256c:	00090493          	mv	s1,s2
    80002570:	0080006f          	j	80002578 <_Z9getStringPci+0x84>
    80002574:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002578:	009984b3          	add	s1,s3,s1
    8000257c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002580:	00000613          	li	a2,0
    80002584:	00100593          	li	a1,1
    80002588:	00005517          	auipc	a0,0x5
    8000258c:	b4050513          	addi	a0,a0,-1216 # 800070c8 <lockPrint>
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	cb4080e7          	jalr	-844(ra) # 80001244 <copy_and_swap>
    80002598:	fe0514e3          	bnez	a0,80002580 <_Z9getStringPci+0x8c>
    return buf;
}
    8000259c:	00098513          	mv	a0,s3
    800025a0:	02813083          	ld	ra,40(sp)
    800025a4:	02013403          	ld	s0,32(sp)
    800025a8:	01813483          	ld	s1,24(sp)
    800025ac:	01013903          	ld	s2,16(sp)
    800025b0:	00813983          	ld	s3,8(sp)
    800025b4:	00013a03          	ld	s4,0(sp)
    800025b8:	03010113          	addi	sp,sp,48
    800025bc:	00008067          	ret

00000000800025c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00813423          	sd	s0,8(sp)
    800025c8:	01010413          	addi	s0,sp,16
    800025cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800025d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800025d4:	0006c603          	lbu	a2,0(a3)
    800025d8:	fd06071b          	addiw	a4,a2,-48
    800025dc:	0ff77713          	andi	a4,a4,255
    800025e0:	00900793          	li	a5,9
    800025e4:	02e7e063          	bltu	a5,a4,80002604 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800025e8:	0025179b          	slliw	a5,a0,0x2
    800025ec:	00a787bb          	addw	a5,a5,a0
    800025f0:	0017979b          	slliw	a5,a5,0x1
    800025f4:	00168693          	addi	a3,a3,1
    800025f8:	00c787bb          	addw	a5,a5,a2
    800025fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002600:	fd5ff06f          	j	800025d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002604:	00813403          	ld	s0,8(sp)
    80002608:	01010113          	addi	sp,sp,16
    8000260c:	00008067          	ret

0000000080002610 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002610:	fc010113          	addi	sp,sp,-64
    80002614:	02113c23          	sd	ra,56(sp)
    80002618:	02813823          	sd	s0,48(sp)
    8000261c:	02913423          	sd	s1,40(sp)
    80002620:	03213023          	sd	s2,32(sp)
    80002624:	01313c23          	sd	s3,24(sp)
    80002628:	04010413          	addi	s0,sp,64
    8000262c:	00050493          	mv	s1,a0
    80002630:	00058913          	mv	s2,a1
    80002634:	00060993          	mv	s3,a2
    LOCK();
    80002638:	00100613          	li	a2,1
    8000263c:	00000593          	li	a1,0
    80002640:	00005517          	auipc	a0,0x5
    80002644:	a8850513          	addi	a0,a0,-1400 # 800070c8 <lockPrint>
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	bfc080e7          	jalr	-1028(ra) # 80001244 <copy_and_swap>
    80002650:	fe0514e3          	bnez	a0,80002638 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002654:	00098463          	beqz	s3,8000265c <_Z8printIntiii+0x4c>
    80002658:	0804c463          	bltz	s1,800026e0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000265c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002660:	00000593          	li	a1,0
    }

    i = 0;
    80002664:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002668:	0009079b          	sext.w	a5,s2
    8000266c:	0325773b          	remuw	a4,a0,s2
    80002670:	00048613          	mv	a2,s1
    80002674:	0014849b          	addiw	s1,s1,1
    80002678:	02071693          	slli	a3,a4,0x20
    8000267c:	0206d693          	srli	a3,a3,0x20
    80002680:	00005717          	auipc	a4,0x5
    80002684:	98070713          	addi	a4,a4,-1664 # 80007000 <digits>
    80002688:	00d70733          	add	a4,a4,a3
    8000268c:	00074683          	lbu	a3,0(a4)
    80002690:	fd040713          	addi	a4,s0,-48
    80002694:	00c70733          	add	a4,a4,a2
    80002698:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000269c:	0005071b          	sext.w	a4,a0
    800026a0:	0325553b          	divuw	a0,a0,s2
    800026a4:	fcf772e3          	bgeu	a4,a5,80002668 <_Z8printIntiii+0x58>
    if(neg)
    800026a8:	00058c63          	beqz	a1,800026c0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800026ac:	fd040793          	addi	a5,s0,-48
    800026b0:	009784b3          	add	s1,a5,s1
    800026b4:	02d00793          	li	a5,45
    800026b8:	fef48823          	sb	a5,-16(s1)
    800026bc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800026c0:	fff4849b          	addiw	s1,s1,-1
    800026c4:	0204c463          	bltz	s1,800026ec <_Z8printIntiii+0xdc>
        __putc(buf[i]);
    800026c8:	fd040793          	addi	a5,s0,-48
    800026cc:	009787b3          	add	a5,a5,s1
    800026d0:	ff07c503          	lbu	a0,-16(a5)
    800026d4:	00003097          	auipc	ra,0x3
    800026d8:	858080e7          	jalr	-1960(ra) # 80004f2c <__putc>
    800026dc:	fe5ff06f          	j	800026c0 <_Z8printIntiii+0xb0>
        x = -xx;
    800026e0:	4090053b          	negw	a0,s1
        neg = 1;
    800026e4:	00100593          	li	a1,1
        x = -xx;
    800026e8:	f7dff06f          	j	80002664 <_Z8printIntiii+0x54>

    UNLOCK();
    800026ec:	00000613          	li	a2,0
    800026f0:	00100593          	li	a1,1
    800026f4:	00005517          	auipc	a0,0x5
    800026f8:	9d450513          	addi	a0,a0,-1580 # 800070c8 <lockPrint>
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	b48080e7          	jalr	-1208(ra) # 80001244 <copy_and_swap>
    80002704:	fe0514e3          	bnez	a0,800026ec <_Z8printIntiii+0xdc>
    80002708:	03813083          	ld	ra,56(sp)
    8000270c:	03013403          	ld	s0,48(sp)
    80002710:	02813483          	ld	s1,40(sp)
    80002714:	02013903          	ld	s2,32(sp)
    80002718:	01813983          	ld	s3,24(sp)
    8000271c:	04010113          	addi	sp,sp,64
    80002720:	00008067          	ret

0000000080002724 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80002724:	fe010113          	addi	sp,sp,-32
    80002728:	00113c23          	sd	ra,24(sp)
    8000272c:	00813823          	sd	s0,16(sp)
    80002730:	00913423          	sd	s1,8(sp)
    80002734:	01213023          	sd	s2,0(sp)
    80002738:	02010413          	addi	s0,sp,32
    8000273c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002740:	00000913          	li	s2,0
    80002744:	00c0006f          	j	80002750 <_Z16producerKeyboardPv+0x2c>
    while ((key = __getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002748:	fffff097          	auipc	ra,0xfffff
    8000274c:	c68080e7          	jalr	-920(ra) # 800013b0 <_Z15thread_dispatchv>
    while ((key = __getc()) != 0x1b) {
    80002750:	00003097          	auipc	ra,0x3
    80002754:	818080e7          	jalr	-2024(ra) # 80004f68 <__getc>
    80002758:	0005059b          	sext.w	a1,a0
    8000275c:	01b00793          	li	a5,27
    80002760:	02f58a63          	beq	a1,a5,80002794 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002764:	0084b503          	ld	a0,8(s1)
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	480080e7          	jalr	1152(ra) # 80002be8 <_ZN6Buffer3putEi>
        i++;
    80002770:	0019071b          	addiw	a4,s2,1
    80002774:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002778:	0004a683          	lw	a3,0(s1)
    8000277c:	0026979b          	slliw	a5,a3,0x2
    80002780:	00d787bb          	addw	a5,a5,a3
    80002784:	0017979b          	slliw	a5,a5,0x1
    80002788:	02f767bb          	remw	a5,a4,a5
    8000278c:	fc0792e3          	bnez	a5,80002750 <_Z16producerKeyboardPv+0x2c>
    80002790:	fb9ff06f          	j	80002748 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002794:	00100793          	li	a5,1
    80002798:	00005717          	auipc	a4,0x5
    8000279c:	92f72c23          	sw	a5,-1736(a4) # 800070d0 <threadEnd>
    data->buffer->put('!');
    800027a0:	02100593          	li	a1,33
    800027a4:	0084b503          	ld	a0,8(s1)
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	440080e7          	jalr	1088(ra) # 80002be8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800027b0:	0104b503          	ld	a0,16(s1)
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	d2c080e7          	jalr	-724(ra) # 800014e0 <_Z10sem_signalP3Sem>
}
    800027bc:	01813083          	ld	ra,24(sp)
    800027c0:	01013403          	ld	s0,16(sp)
    800027c4:	00813483          	ld	s1,8(sp)
    800027c8:	00013903          	ld	s2,0(sp)
    800027cc:	02010113          	addi	sp,sp,32
    800027d0:	00008067          	ret

00000000800027d4 <_Z8producerPv>:

void producer(void *arg) {
    800027d4:	fe010113          	addi	sp,sp,-32
    800027d8:	00113c23          	sd	ra,24(sp)
    800027dc:	00813823          	sd	s0,16(sp)
    800027e0:	00913423          	sd	s1,8(sp)
    800027e4:	01213023          	sd	s2,0(sp)
    800027e8:	02010413          	addi	s0,sp,32
    800027ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800027f0:	00000913          	li	s2,0
    800027f4:	00c0006f          	j	80002800 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	bb8080e7          	jalr	-1096(ra) # 800013b0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002800:	00005797          	auipc	a5,0x5
    80002804:	8d07a783          	lw	a5,-1840(a5) # 800070d0 <threadEnd>
    80002808:	02079e63          	bnez	a5,80002844 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000280c:	0004a583          	lw	a1,0(s1)
    80002810:	0305859b          	addiw	a1,a1,48
    80002814:	0084b503          	ld	a0,8(s1)
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	3d0080e7          	jalr	976(ra) # 80002be8 <_ZN6Buffer3putEi>
        i++;
    80002820:	0019071b          	addiw	a4,s2,1
    80002824:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002828:	0004a683          	lw	a3,0(s1)
    8000282c:	0026979b          	slliw	a5,a3,0x2
    80002830:	00d787bb          	addw	a5,a5,a3
    80002834:	0017979b          	slliw	a5,a5,0x1
    80002838:	02f767bb          	remw	a5,a4,a5
    8000283c:	fc0792e3          	bnez	a5,80002800 <_Z8producerPv+0x2c>
    80002840:	fb9ff06f          	j	800027f8 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002844:	0104b503          	ld	a0,16(s1)
    80002848:	fffff097          	auipc	ra,0xfffff
    8000284c:	c98080e7          	jalr	-872(ra) # 800014e0 <_Z10sem_signalP3Sem>
}
    80002850:	01813083          	ld	ra,24(sp)
    80002854:	01013403          	ld	s0,16(sp)
    80002858:	00813483          	ld	s1,8(sp)
    8000285c:	00013903          	ld	s2,0(sp)
    80002860:	02010113          	addi	sp,sp,32
    80002864:	00008067          	ret

0000000080002868 <_Z8consumerPv>:

void consumer(void *arg) {
    80002868:	fd010113          	addi	sp,sp,-48
    8000286c:	02113423          	sd	ra,40(sp)
    80002870:	02813023          	sd	s0,32(sp)
    80002874:	00913c23          	sd	s1,24(sp)
    80002878:	01213823          	sd	s2,16(sp)
    8000287c:	01313423          	sd	s3,8(sp)
    80002880:	03010413          	addi	s0,sp,48
    80002884:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002888:	00000993          	li	s3,0
    8000288c:	01c0006f          	j	800028a8 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	b20080e7          	jalr	-1248(ra) # 800013b0 <_Z15thread_dispatchv>
    80002898:	0500006f          	j	800028e8 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            __putc('\n');
    8000289c:	00a00513          	li	a0,10
    800028a0:	00002097          	auipc	ra,0x2
    800028a4:	68c080e7          	jalr	1676(ra) # 80004f2c <__putc>
    while (!threadEnd) {
    800028a8:	00005797          	auipc	a5,0x5
    800028ac:	8287a783          	lw	a5,-2008(a5) # 800070d0 <threadEnd>
    800028b0:	06079063          	bnez	a5,80002910 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    800028b4:	00893503          	ld	a0,8(s2)
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	3c0080e7          	jalr	960(ra) # 80002c78 <_ZN6Buffer3getEv>
        i++;
    800028c0:	0019849b          	addiw	s1,s3,1
    800028c4:	0004899b          	sext.w	s3,s1
        putc(key);
    800028c8:	0ff57513          	andi	a0,a0,255
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	c88080e7          	jalr	-888(ra) # 80001554 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800028d4:	00092703          	lw	a4,0(s2)
    800028d8:	0027179b          	slliw	a5,a4,0x2
    800028dc:	00e787bb          	addw	a5,a5,a4
    800028e0:	02f4e7bb          	remw	a5,s1,a5
    800028e4:	fa0786e3          	beqz	a5,80002890 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800028e8:	05000793          	li	a5,80
    800028ec:	02f4e4bb          	remw	s1,s1,a5
    800028f0:	fa049ce3          	bnez	s1,800028a8 <_Z8consumerPv+0x40>
    800028f4:	fa9ff06f          	j	8000289c <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800028f8:	00893503          	ld	a0,8(s2)
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	37c080e7          	jalr	892(ra) # 80002c78 <_ZN6Buffer3getEv>
        putc(key);
    80002904:	0ff57513          	andi	a0,a0,255
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	c4c080e7          	jalr	-948(ra) # 80001554 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002910:	00893503          	ld	a0,8(s2)
    80002914:	00000097          	auipc	ra,0x0
    80002918:	3f0080e7          	jalr	1008(ra) # 80002d04 <_ZN6Buffer6getCntEv>
    8000291c:	fca04ee3          	bgtz	a0,800028f8 <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002920:	01093503          	ld	a0,16(s2)
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	bbc080e7          	jalr	-1092(ra) # 800014e0 <_Z10sem_signalP3Sem>
}
    8000292c:	02813083          	ld	ra,40(sp)
    80002930:	02013403          	ld	s0,32(sp)
    80002934:	01813483          	ld	s1,24(sp)
    80002938:	01013903          	ld	s2,16(sp)
    8000293c:	00813983          	ld	s3,8(sp)
    80002940:	03010113          	addi	sp,sp,48
    80002944:	00008067          	ret

0000000080002948 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002948:	f2010113          	addi	sp,sp,-224
    8000294c:	0c113c23          	sd	ra,216(sp)
    80002950:	0c813823          	sd	s0,208(sp)
    80002954:	0c913423          	sd	s1,200(sp)
    80002958:	0d213023          	sd	s2,192(sp)
    8000295c:	0e010413          	addi	s0,sp,224

    printString("Unesite velicinu bafera?\n");
    getString(input, 30);
    n = stringToInt(input);
    */
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002960:	00003517          	auipc	a0,0x3
    80002964:	7d050513          	addi	a0,a0,2000 # 80006130 <CONSOLE_STATUS+0x120>
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	b10080e7          	jalr	-1264(ra) # 80002478 <_Z11printStringPKc>
    80002970:	00000613          	li	a2,0
    80002974:	00a00593          	li	a1,10
    80002978:	00500513          	li	a0,5
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	c94080e7          	jalr	-876(ra) # 80002610 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002984:	00003517          	auipc	a0,0x3
    80002988:	7c450513          	addi	a0,a0,1988 # 80006148 <CONSOLE_STATUS+0x138>
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	aec080e7          	jalr	-1300(ra) # 80002478 <_Z11printStringPKc>
    80002994:	00000613          	li	a2,0
    80002998:	00a00593          	li	a1,10
    8000299c:	00600513          	li	a0,6
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	c70080e7          	jalr	-912(ra) # 80002610 <_Z8printIntiii>
    printString(".\n");
    800029a8:	00003517          	auipc	a0,0x3
    800029ac:	7b850513          	addi	a0,a0,1976 # 80006160 <CONSOLE_STATUS+0x150>
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	ac8080e7          	jalr	-1336(ra) # 80002478 <_Z11printStringPKc>
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);
    800029b8:	03800513          	li	a0,56
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	3a8080e7          	jalr	936(ra) # 80001d64 <_Znwm>
    800029c4:	00050913          	mv	s2,a0
    800029c8:	00600593          	li	a1,6
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	180080e7          	jalr	384(ra) # 80002b4c <_ZN6BufferC1Ei>

    sem_open(&waitForAll, 0);
    800029d4:	00000593          	li	a1,0
    800029d8:	00004517          	auipc	a0,0x4
    800029dc:	70050513          	addi	a0,a0,1792 # 800070d8 <waitForAll>
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	a34080e7          	jalr	-1484(ra) # 80001414 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    800029e8:	00500793          	li	a5,5
    800029ec:	fcf42023          	sw	a5,-64(s0)
    data[threadNum].buffer = buffer;
    800029f0:	fd243423          	sd	s2,-56(s0)
    data[threadNum].wait = waitForAll;
    800029f4:	00004797          	auipc	a5,0x4
    800029f8:	6e47b783          	ld	a5,1764(a5) # 800070d8 <waitForAll>
    800029fc:	fcf43823          	sd	a5,-48(s0)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002a00:	fc040613          	addi	a2,s0,-64
    80002a04:	00000597          	auipc	a1,0x0
    80002a08:	e6458593          	addi	a1,a1,-412 # 80002868 <_Z8consumerPv>
    80002a0c:	fd840513          	addi	a0,s0,-40
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	908080e7          	jalr	-1784(ra) # 80001318 <_Z13thread_createPP3PCBPFvPvES2_>

    for (int i = 0; i < threadNum; i++) {
    80002a18:	00000493          	li	s1,0
    80002a1c:	00400793          	li	a5,4
    80002a20:	0697cc63          	blt	a5,s1,80002a98 <_Z22producerConsumer_C_APIv+0x150>
        data[i].id = i;
    80002a24:	00149793          	slli	a5,s1,0x1
    80002a28:	009787b3          	add	a5,a5,s1
    80002a2c:	00379793          	slli	a5,a5,0x3
    80002a30:	fe040713          	addi	a4,s0,-32
    80002a34:	00f707b3          	add	a5,a4,a5
    80002a38:	f697a423          	sw	s1,-152(a5)
        data[i].buffer = buffer;
    80002a3c:	f727b823          	sd	s2,-144(a5)
        data[i].wait = waitForAll;
    80002a40:	00004717          	auipc	a4,0x4
    80002a44:	69873703          	ld	a4,1688(a4) # 800070d8 <waitForAll>
    80002a48:	f6e7bc23          	sd	a4,-136(a5)

        thread_create(threads + i,
    80002a4c:	00048613          	mv	a2,s1
    80002a50:	00349513          	slli	a0,s1,0x3
    80002a54:	f2040713          	addi	a4,s0,-224
    80002a58:	00a70533          	add	a0,a4,a0
    80002a5c:	02905863          	blez	s1,80002a8c <_Z22producerConsumer_C_APIv+0x144>
    80002a60:	00000597          	auipc	a1,0x0
    80002a64:	d7458593          	addi	a1,a1,-652 # 800027d4 <_Z8producerPv>
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    80002a68:	00161793          	slli	a5,a2,0x1
    80002a6c:	00c787b3          	add	a5,a5,a2
    80002a70:	00379793          	slli	a5,a5,0x3
        thread_create(threads + i,
    80002a74:	f4840613          	addi	a2,s0,-184
    80002a78:	00f60633          	add	a2,a2,a5
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	89c080e7          	jalr	-1892(ra) # 80001318 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002a84:	0014849b          	addiw	s1,s1,1
    80002a88:	f95ff06f          	j	80002a1c <_Z22producerConsumer_C_APIv+0xd4>
        thread_create(threads + i,
    80002a8c:	00000597          	auipc	a1,0x0
    80002a90:	c9858593          	addi	a1,a1,-872 # 80002724 <_Z16producerKeyboardPv>
    80002a94:	fd5ff06f          	j	80002a68 <_Z22producerConsumer_C_APIv+0x120>
    }

    thread_dispatch();
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	918080e7          	jalr	-1768(ra) # 800013b0 <_Z15thread_dispatchv>

    for (int i = 0; i <= threadNum; i++) {
    80002aa0:	00000493          	li	s1,0
    80002aa4:	00500793          	li	a5,5
    80002aa8:	0097ce63          	blt	a5,s1,80002ac4 <_Z22producerConsumer_C_APIv+0x17c>
        sem_wait(waitForAll);
    80002aac:	00004517          	auipc	a0,0x4
    80002ab0:	62c53503          	ld	a0,1580(a0) # 800070d8 <waitForAll>
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	9f0080e7          	jalr	-1552(ra) # 800014a4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80002abc:	0014849b          	addiw	s1,s1,1
    80002ac0:	fe5ff06f          	j	80002aa4 <_Z22producerConsumer_C_APIv+0x15c>
    }

    sem_close(waitForAll);
    80002ac4:	00004517          	auipc	a0,0x4
    80002ac8:	61453503          	ld	a0,1556(a0) # 800070d8 <waitForAll>
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	9a0080e7          	jalr	-1632(ra) # 8000146c <_Z9sem_closeP3Sem>

    delete buffer;
    80002ad4:	00090e63          	beqz	s2,80002af0 <_Z22producerConsumer_C_APIv+0x1a8>
    80002ad8:	00090513          	mv	a0,s2
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	2b0080e7          	jalr	688(ra) # 80002d8c <_ZN6BufferD1Ev>
    80002ae4:	00090513          	mv	a0,s2
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	2fc080e7          	jalr	764(ra) # 80001de4 <_ZdlPv>

}
    80002af0:	0d813083          	ld	ra,216(sp)
    80002af4:	0d013403          	ld	s0,208(sp)
    80002af8:	0c813483          	ld	s1,200(sp)
    80002afc:	0c013903          	ld	s2,192(sp)
    80002b00:	0e010113          	addi	sp,sp,224
    80002b04:	00008067          	ret
    80002b08:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002b0c:	00090513          	mv	a0,s2
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	2d4080e7          	jalr	724(ra) # 80001de4 <_ZdlPv>
    80002b18:	00048513          	mv	a0,s1
    80002b1c:	00005097          	auipc	ra,0x5
    80002b20:	68c080e7          	jalr	1676(ra) # 800081a8 <_Unwind_Resume>

0000000080002b24 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00113423          	sd	ra,8(sp)
    80002b2c:	00813023          	sd	s0,0(sp)
    80002b30:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	e14080e7          	jalr	-492(ra) # 80002948 <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002b3c:	00813083          	ld	ra,8(sp)
    80002b40:	00013403          	ld	s0,0(sp)
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret

0000000080002b4c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	01213023          	sd	s2,0(sp)
    80002b60:	02010413          	addi	s0,sp,32
    80002b64:	00050493          	mv	s1,a0
    80002b68:	00058913          	mv	s2,a1
    80002b6c:	0015879b          	addiw	a5,a1,1
    80002b70:	0007851b          	sext.w	a0,a5
    80002b74:	00f4a023          	sw	a5,0(s1)
    80002b78:	0004a823          	sw	zero,16(s1)
    80002b7c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002b80:	00251513          	slli	a0,a0,0x2
    80002b84:	ffffe097          	auipc	ra,0xffffe
    80002b88:	708080e7          	jalr	1800(ra) # 8000128c <_Z9mem_allocm>
    80002b8c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002b90:	00000593          	li	a1,0
    80002b94:	02048513          	addi	a0,s1,32
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	87c080e7          	jalr	-1924(ra) # 80001414 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80002ba0:	00090593          	mv	a1,s2
    80002ba4:	01848513          	addi	a0,s1,24
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	86c080e7          	jalr	-1940(ra) # 80001414 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80002bb0:	00100593          	li	a1,1
    80002bb4:	02848513          	addi	a0,s1,40
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	85c080e7          	jalr	-1956(ra) # 80001414 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80002bc0:	00100593          	li	a1,1
    80002bc4:	03048513          	addi	a0,s1,48
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	84c080e7          	jalr	-1972(ra) # 80001414 <_Z8sem_openPP3Semj>
}
    80002bd0:	01813083          	ld	ra,24(sp)
    80002bd4:	01013403          	ld	s0,16(sp)
    80002bd8:	00813483          	ld	s1,8(sp)
    80002bdc:	00013903          	ld	s2,0(sp)
    80002be0:	02010113          	addi	sp,sp,32
    80002be4:	00008067          	ret

0000000080002be8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002be8:	fe010113          	addi	sp,sp,-32
    80002bec:	00113c23          	sd	ra,24(sp)
    80002bf0:	00813823          	sd	s0,16(sp)
    80002bf4:	00913423          	sd	s1,8(sp)
    80002bf8:	01213023          	sd	s2,0(sp)
    80002bfc:	02010413          	addi	s0,sp,32
    80002c00:	00050493          	mv	s1,a0
    80002c04:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002c08:	01853503          	ld	a0,24(a0)
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	898080e7          	jalr	-1896(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80002c14:	0304b503          	ld	a0,48(s1)
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	88c080e7          	jalr	-1908(ra) # 800014a4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80002c20:	0084b783          	ld	a5,8(s1)
    80002c24:	0144a703          	lw	a4,20(s1)
    80002c28:	00271713          	slli	a4,a4,0x2
    80002c2c:	00e787b3          	add	a5,a5,a4
    80002c30:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002c34:	0144a783          	lw	a5,20(s1)
    80002c38:	0017879b          	addiw	a5,a5,1
    80002c3c:	0004a703          	lw	a4,0(s1)
    80002c40:	02e7e7bb          	remw	a5,a5,a4
    80002c44:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002c48:	0304b503          	ld	a0,48(s1)
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	894080e7          	jalr	-1900(ra) # 800014e0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80002c54:	0204b503          	ld	a0,32(s1)
    80002c58:	fffff097          	auipc	ra,0xfffff
    80002c5c:	888080e7          	jalr	-1912(ra) # 800014e0 <_Z10sem_signalP3Sem>

}
    80002c60:	01813083          	ld	ra,24(sp)
    80002c64:	01013403          	ld	s0,16(sp)
    80002c68:	00813483          	ld	s1,8(sp)
    80002c6c:	00013903          	ld	s2,0(sp)
    80002c70:	02010113          	addi	sp,sp,32
    80002c74:	00008067          	ret

0000000080002c78 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002c78:	fe010113          	addi	sp,sp,-32
    80002c7c:	00113c23          	sd	ra,24(sp)
    80002c80:	00813823          	sd	s0,16(sp)
    80002c84:	00913423          	sd	s1,8(sp)
    80002c88:	01213023          	sd	s2,0(sp)
    80002c8c:	02010413          	addi	s0,sp,32
    80002c90:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002c94:	02053503          	ld	a0,32(a0)
    80002c98:	fffff097          	auipc	ra,0xfffff
    80002c9c:	80c080e7          	jalr	-2036(ra) # 800014a4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80002ca0:	0284b503          	ld	a0,40(s1)
    80002ca4:	fffff097          	auipc	ra,0xfffff
    80002ca8:	800080e7          	jalr	-2048(ra) # 800014a4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80002cac:	0084b703          	ld	a4,8(s1)
    80002cb0:	0104a783          	lw	a5,16(s1)
    80002cb4:	00279693          	slli	a3,a5,0x2
    80002cb8:	00d70733          	add	a4,a4,a3
    80002cbc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002cc0:	0017879b          	addiw	a5,a5,1
    80002cc4:	0004a703          	lw	a4,0(s1)
    80002cc8:	02e7e7bb          	remw	a5,a5,a4
    80002ccc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002cd0:	0284b503          	ld	a0,40(s1)
    80002cd4:	fffff097          	auipc	ra,0xfffff
    80002cd8:	80c080e7          	jalr	-2036(ra) # 800014e0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80002cdc:	0184b503          	ld	a0,24(s1)
    80002ce0:	fffff097          	auipc	ra,0xfffff
    80002ce4:	800080e7          	jalr	-2048(ra) # 800014e0 <_Z10sem_signalP3Sem>

    return ret;
}
    80002ce8:	00090513          	mv	a0,s2
    80002cec:	01813083          	ld	ra,24(sp)
    80002cf0:	01013403          	ld	s0,16(sp)
    80002cf4:	00813483          	ld	s1,8(sp)
    80002cf8:	00013903          	ld	s2,0(sp)
    80002cfc:	02010113          	addi	sp,sp,32
    80002d00:	00008067          	ret

0000000080002d04 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002d04:	fe010113          	addi	sp,sp,-32
    80002d08:	00113c23          	sd	ra,24(sp)
    80002d0c:	00813823          	sd	s0,16(sp)
    80002d10:	00913423          	sd	s1,8(sp)
    80002d14:	01213023          	sd	s2,0(sp)
    80002d18:	02010413          	addi	s0,sp,32
    80002d1c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002d20:	02853503          	ld	a0,40(a0)
    80002d24:	ffffe097          	auipc	ra,0xffffe
    80002d28:	780080e7          	jalr	1920(ra) # 800014a4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80002d2c:	0304b503          	ld	a0,48(s1)
    80002d30:	ffffe097          	auipc	ra,0xffffe
    80002d34:	774080e7          	jalr	1908(ra) # 800014a4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80002d38:	0144a783          	lw	a5,20(s1)
    80002d3c:	0104a903          	lw	s2,16(s1)
    80002d40:	0327ce63          	blt	a5,s2,80002d7c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002d44:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002d48:	0304b503          	ld	a0,48(s1)
    80002d4c:	ffffe097          	auipc	ra,0xffffe
    80002d50:	794080e7          	jalr	1940(ra) # 800014e0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80002d54:	0284b503          	ld	a0,40(s1)
    80002d58:	ffffe097          	auipc	ra,0xffffe
    80002d5c:	788080e7          	jalr	1928(ra) # 800014e0 <_Z10sem_signalP3Sem>

    return ret;
}
    80002d60:	00090513          	mv	a0,s2
    80002d64:	01813083          	ld	ra,24(sp)
    80002d68:	01013403          	ld	s0,16(sp)
    80002d6c:	00813483          	ld	s1,8(sp)
    80002d70:	00013903          	ld	s2,0(sp)
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00008067          	ret
        ret = cap - head + tail;
    80002d7c:	0004a703          	lw	a4,0(s1)
    80002d80:	4127093b          	subw	s2,a4,s2
    80002d84:	00f9093b          	addw	s2,s2,a5
    80002d88:	fc1ff06f          	j	80002d48 <_ZN6Buffer6getCntEv+0x44>

0000000080002d8c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002d8c:	fe010113          	addi	sp,sp,-32
    80002d90:	00113c23          	sd	ra,24(sp)
    80002d94:	00813823          	sd	s0,16(sp)
    80002d98:	00913423          	sd	s1,8(sp)
    80002d9c:	02010413          	addi	s0,sp,32
    80002da0:	00050493          	mv	s1,a0
    __putc('\n');
    80002da4:	00a00513          	li	a0,10
    80002da8:	00002097          	auipc	ra,0x2
    80002dac:	184080e7          	jalr	388(ra) # 80004f2c <__putc>
    printString("Buffer deleted!\n");
    80002db0:	00003517          	auipc	a0,0x3
    80002db4:	3b850513          	addi	a0,a0,952 # 80006168 <CONSOLE_STATUS+0x158>
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	6c0080e7          	jalr	1728(ra) # 80002478 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002dc0:	00048513          	mv	a0,s1
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	f40080e7          	jalr	-192(ra) # 80002d04 <_ZN6Buffer6getCntEv>
    80002dcc:	02a05c63          	blez	a0,80002e04 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80002dd0:	0084b783          	ld	a5,8(s1)
    80002dd4:	0104a703          	lw	a4,16(s1)
    80002dd8:	00271713          	slli	a4,a4,0x2
    80002ddc:	00e787b3          	add	a5,a5,a4
        __putc(ch);
    80002de0:	0007c503          	lbu	a0,0(a5)
    80002de4:	00002097          	auipc	ra,0x2
    80002de8:	148080e7          	jalr	328(ra) # 80004f2c <__putc>
        head = (head + 1) % cap;
    80002dec:	0104a783          	lw	a5,16(s1)
    80002df0:	0017879b          	addiw	a5,a5,1
    80002df4:	0004a703          	lw	a4,0(s1)
    80002df8:	02e7e7bb          	remw	a5,a5,a4
    80002dfc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80002e00:	fc1ff06f          	j	80002dc0 <_ZN6BufferD1Ev+0x34>
    __putc('!');
    80002e04:	02100513          	li	a0,33
    80002e08:	00002097          	auipc	ra,0x2
    80002e0c:	124080e7          	jalr	292(ra) # 80004f2c <__putc>
    __putc('\n');
    80002e10:	00a00513          	li	a0,10
    80002e14:	00002097          	auipc	ra,0x2
    80002e18:	118080e7          	jalr	280(ra) # 80004f2c <__putc>
    mem_free(buffer);
    80002e1c:	0084b503          	ld	a0,8(s1)
    80002e20:	ffffe097          	auipc	ra,0xffffe
    80002e24:	4bc080e7          	jalr	1212(ra) # 800012dc <_Z8mem_freePv>
    sem_close(itemAvailable);
    80002e28:	0204b503          	ld	a0,32(s1)
    80002e2c:	ffffe097          	auipc	ra,0xffffe
    80002e30:	640080e7          	jalr	1600(ra) # 8000146c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80002e34:	0184b503          	ld	a0,24(s1)
    80002e38:	ffffe097          	auipc	ra,0xffffe
    80002e3c:	634080e7          	jalr	1588(ra) # 8000146c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80002e40:	0304b503          	ld	a0,48(s1)
    80002e44:	ffffe097          	auipc	ra,0xffffe
    80002e48:	628080e7          	jalr	1576(ra) # 8000146c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80002e4c:	0284b503          	ld	a0,40(s1)
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	61c080e7          	jalr	1564(ra) # 8000146c <_Z9sem_closeP3Sem>
}
    80002e58:	01813083          	ld	ra,24(sp)
    80002e5c:	01013403          	ld	s0,16(sp)
    80002e60:	00813483          	ld	s1,8(sp)
    80002e64:	02010113          	addi	sp,sp,32
    80002e68:	00008067          	ret

0000000080002e6c <start>:
    80002e6c:	ff010113          	addi	sp,sp,-16
    80002e70:	00813423          	sd	s0,8(sp)
    80002e74:	01010413          	addi	s0,sp,16
    80002e78:	300027f3          	csrr	a5,mstatus
    80002e7c:	ffffe737          	lui	a4,0xffffe
    80002e80:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff64bf>
    80002e84:	00e7f7b3          	and	a5,a5,a4
    80002e88:	00001737          	lui	a4,0x1
    80002e8c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002e90:	00e7e7b3          	or	a5,a5,a4
    80002e94:	30079073          	csrw	mstatus,a5
    80002e98:	00000797          	auipc	a5,0x0
    80002e9c:	16078793          	addi	a5,a5,352 # 80002ff8 <system_main>
    80002ea0:	34179073          	csrw	mepc,a5
    80002ea4:	00000793          	li	a5,0
    80002ea8:	18079073          	csrw	satp,a5
    80002eac:	000107b7          	lui	a5,0x10
    80002eb0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002eb4:	30279073          	csrw	medeleg,a5
    80002eb8:	30379073          	csrw	mideleg,a5
    80002ebc:	104027f3          	csrr	a5,sie
    80002ec0:	2227e793          	ori	a5,a5,546
    80002ec4:	10479073          	csrw	sie,a5
    80002ec8:	fff00793          	li	a5,-1
    80002ecc:	00a7d793          	srli	a5,a5,0xa
    80002ed0:	3b079073          	csrw	pmpaddr0,a5
    80002ed4:	00f00793          	li	a5,15
    80002ed8:	3a079073          	csrw	pmpcfg0,a5
    80002edc:	f14027f3          	csrr	a5,mhartid
    80002ee0:	0200c737          	lui	a4,0x200c
    80002ee4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002ee8:	0007869b          	sext.w	a3,a5
    80002eec:	00269713          	slli	a4,a3,0x2
    80002ef0:	000f4637          	lui	a2,0xf4
    80002ef4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002ef8:	00d70733          	add	a4,a4,a3
    80002efc:	0037979b          	slliw	a5,a5,0x3
    80002f00:	020046b7          	lui	a3,0x2004
    80002f04:	00d787b3          	add	a5,a5,a3
    80002f08:	00c585b3          	add	a1,a1,a2
    80002f0c:	00371693          	slli	a3,a4,0x3
    80002f10:	00004717          	auipc	a4,0x4
    80002f14:	1d070713          	addi	a4,a4,464 # 800070e0 <timer_scratch>
    80002f18:	00b7b023          	sd	a1,0(a5)
    80002f1c:	00d70733          	add	a4,a4,a3
    80002f20:	00f73c23          	sd	a5,24(a4)
    80002f24:	02c73023          	sd	a2,32(a4)
    80002f28:	34071073          	csrw	mscratch,a4
    80002f2c:	00000797          	auipc	a5,0x0
    80002f30:	6e478793          	addi	a5,a5,1764 # 80003610 <timervec>
    80002f34:	30579073          	csrw	mtvec,a5
    80002f38:	300027f3          	csrr	a5,mstatus
    80002f3c:	0087e793          	ori	a5,a5,8
    80002f40:	30079073          	csrw	mstatus,a5
    80002f44:	304027f3          	csrr	a5,mie
    80002f48:	0807e793          	ori	a5,a5,128
    80002f4c:	30479073          	csrw	mie,a5
    80002f50:	f14027f3          	csrr	a5,mhartid
    80002f54:	0007879b          	sext.w	a5,a5
    80002f58:	00078213          	mv	tp,a5
    80002f5c:	30200073          	mret
    80002f60:	00813403          	ld	s0,8(sp)
    80002f64:	01010113          	addi	sp,sp,16
    80002f68:	00008067          	ret

0000000080002f6c <timerinit>:
    80002f6c:	ff010113          	addi	sp,sp,-16
    80002f70:	00813423          	sd	s0,8(sp)
    80002f74:	01010413          	addi	s0,sp,16
    80002f78:	f14027f3          	csrr	a5,mhartid
    80002f7c:	0200c737          	lui	a4,0x200c
    80002f80:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002f84:	0007869b          	sext.w	a3,a5
    80002f88:	00269713          	slli	a4,a3,0x2
    80002f8c:	000f4637          	lui	a2,0xf4
    80002f90:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002f94:	00d70733          	add	a4,a4,a3
    80002f98:	0037979b          	slliw	a5,a5,0x3
    80002f9c:	020046b7          	lui	a3,0x2004
    80002fa0:	00d787b3          	add	a5,a5,a3
    80002fa4:	00c585b3          	add	a1,a1,a2
    80002fa8:	00371693          	slli	a3,a4,0x3
    80002fac:	00004717          	auipc	a4,0x4
    80002fb0:	13470713          	addi	a4,a4,308 # 800070e0 <timer_scratch>
    80002fb4:	00b7b023          	sd	a1,0(a5)
    80002fb8:	00d70733          	add	a4,a4,a3
    80002fbc:	00f73c23          	sd	a5,24(a4)
    80002fc0:	02c73023          	sd	a2,32(a4)
    80002fc4:	34071073          	csrw	mscratch,a4
    80002fc8:	00000797          	auipc	a5,0x0
    80002fcc:	64878793          	addi	a5,a5,1608 # 80003610 <timervec>
    80002fd0:	30579073          	csrw	mtvec,a5
    80002fd4:	300027f3          	csrr	a5,mstatus
    80002fd8:	0087e793          	ori	a5,a5,8
    80002fdc:	30079073          	csrw	mstatus,a5
    80002fe0:	304027f3          	csrr	a5,mie
    80002fe4:	0807e793          	ori	a5,a5,128
    80002fe8:	30479073          	csrw	mie,a5
    80002fec:	00813403          	ld	s0,8(sp)
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00008067          	ret

0000000080002ff8 <system_main>:
    80002ff8:	fe010113          	addi	sp,sp,-32
    80002ffc:	00813823          	sd	s0,16(sp)
    80003000:	00913423          	sd	s1,8(sp)
    80003004:	00113c23          	sd	ra,24(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00000097          	auipc	ra,0x0
    80003010:	0c4080e7          	jalr	196(ra) # 800030d0 <cpuid>
    80003014:	00004497          	auipc	s1,0x4
    80003018:	04c48493          	addi	s1,s1,76 # 80007060 <started>
    8000301c:	02050263          	beqz	a0,80003040 <system_main+0x48>
    80003020:	0004a783          	lw	a5,0(s1)
    80003024:	0007879b          	sext.w	a5,a5
    80003028:	fe078ce3          	beqz	a5,80003020 <system_main+0x28>
    8000302c:	0ff0000f          	fence
    80003030:	00003517          	auipc	a0,0x3
    80003034:	18050513          	addi	a0,a0,384 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80003038:	00001097          	auipc	ra,0x1
    8000303c:	a74080e7          	jalr	-1420(ra) # 80003aac <panic>
    80003040:	00001097          	auipc	ra,0x1
    80003044:	9c8080e7          	jalr	-1592(ra) # 80003a08 <consoleinit>
    80003048:	00001097          	auipc	ra,0x1
    8000304c:	154080e7          	jalr	340(ra) # 8000419c <printfinit>
    80003050:	00003517          	auipc	a0,0x3
    80003054:	24050513          	addi	a0,a0,576 # 80006290 <CONSOLE_STATUS+0x280>
    80003058:	00001097          	auipc	ra,0x1
    8000305c:	ab0080e7          	jalr	-1360(ra) # 80003b08 <__printf>
    80003060:	00003517          	auipc	a0,0x3
    80003064:	12050513          	addi	a0,a0,288 # 80006180 <CONSOLE_STATUS+0x170>
    80003068:	00001097          	auipc	ra,0x1
    8000306c:	aa0080e7          	jalr	-1376(ra) # 80003b08 <__printf>
    80003070:	00003517          	auipc	a0,0x3
    80003074:	22050513          	addi	a0,a0,544 # 80006290 <CONSOLE_STATUS+0x280>
    80003078:	00001097          	auipc	ra,0x1
    8000307c:	a90080e7          	jalr	-1392(ra) # 80003b08 <__printf>
    80003080:	00001097          	auipc	ra,0x1
    80003084:	4a8080e7          	jalr	1192(ra) # 80004528 <kinit>
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	148080e7          	jalr	328(ra) # 800031d0 <trapinit>
    80003090:	00000097          	auipc	ra,0x0
    80003094:	16c080e7          	jalr	364(ra) # 800031fc <trapinithart>
    80003098:	00000097          	auipc	ra,0x0
    8000309c:	5b8080e7          	jalr	1464(ra) # 80003650 <plicinit>
    800030a0:	00000097          	auipc	ra,0x0
    800030a4:	5d8080e7          	jalr	1496(ra) # 80003678 <plicinithart>
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	078080e7          	jalr	120(ra) # 80003120 <userinit>
    800030b0:	0ff0000f          	fence
    800030b4:	00100793          	li	a5,1
    800030b8:	00003517          	auipc	a0,0x3
    800030bc:	0e050513          	addi	a0,a0,224 # 80006198 <CONSOLE_STATUS+0x188>
    800030c0:	00f4a023          	sw	a5,0(s1)
    800030c4:	00001097          	auipc	ra,0x1
    800030c8:	a44080e7          	jalr	-1468(ra) # 80003b08 <__printf>
    800030cc:	0000006f          	j	800030cc <system_main+0xd4>

00000000800030d0 <cpuid>:
    800030d0:	ff010113          	addi	sp,sp,-16
    800030d4:	00813423          	sd	s0,8(sp)
    800030d8:	01010413          	addi	s0,sp,16
    800030dc:	00020513          	mv	a0,tp
    800030e0:	00813403          	ld	s0,8(sp)
    800030e4:	0005051b          	sext.w	a0,a0
    800030e8:	01010113          	addi	sp,sp,16
    800030ec:	00008067          	ret

00000000800030f0 <mycpu>:
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00813423          	sd	s0,8(sp)
    800030f8:	01010413          	addi	s0,sp,16
    800030fc:	00020793          	mv	a5,tp
    80003100:	00813403          	ld	s0,8(sp)
    80003104:	0007879b          	sext.w	a5,a5
    80003108:	00779793          	slli	a5,a5,0x7
    8000310c:	00005517          	auipc	a0,0x5
    80003110:	00450513          	addi	a0,a0,4 # 80008110 <cpus>
    80003114:	00f50533          	add	a0,a0,a5
    80003118:	01010113          	addi	sp,sp,16
    8000311c:	00008067          	ret

0000000080003120 <userinit>:
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00813423          	sd	s0,8(sp)
    80003128:	01010413          	addi	s0,sp,16
    8000312c:	00813403          	ld	s0,8(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	fffff317          	auipc	t1,0xfffff
    80003138:	8e830067          	jr	-1816(t1) # 80001a1c <main>

000000008000313c <either_copyout>:
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00813023          	sd	s0,0(sp)
    80003144:	00113423          	sd	ra,8(sp)
    80003148:	01010413          	addi	s0,sp,16
    8000314c:	02051663          	bnez	a0,80003178 <either_copyout+0x3c>
    80003150:	00058513          	mv	a0,a1
    80003154:	00060593          	mv	a1,a2
    80003158:	0006861b          	sext.w	a2,a3
    8000315c:	00002097          	auipc	ra,0x2
    80003160:	c58080e7          	jalr	-936(ra) # 80004db4 <__memmove>
    80003164:	00813083          	ld	ra,8(sp)
    80003168:	00013403          	ld	s0,0(sp)
    8000316c:	00000513          	li	a0,0
    80003170:	01010113          	addi	sp,sp,16
    80003174:	00008067          	ret
    80003178:	00003517          	auipc	a0,0x3
    8000317c:	06050513          	addi	a0,a0,96 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003180:	00001097          	auipc	ra,0x1
    80003184:	92c080e7          	jalr	-1748(ra) # 80003aac <panic>

0000000080003188 <either_copyin>:
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00813023          	sd	s0,0(sp)
    80003190:	00113423          	sd	ra,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    80003198:	02059463          	bnez	a1,800031c0 <either_copyin+0x38>
    8000319c:	00060593          	mv	a1,a2
    800031a0:	0006861b          	sext.w	a2,a3
    800031a4:	00002097          	auipc	ra,0x2
    800031a8:	c10080e7          	jalr	-1008(ra) # 80004db4 <__memmove>
    800031ac:	00813083          	ld	ra,8(sp)
    800031b0:	00013403          	ld	s0,0(sp)
    800031b4:	00000513          	li	a0,0
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret
    800031c0:	00003517          	auipc	a0,0x3
    800031c4:	04050513          	addi	a0,a0,64 # 80006200 <CONSOLE_STATUS+0x1f0>
    800031c8:	00001097          	auipc	ra,0x1
    800031cc:	8e4080e7          	jalr	-1820(ra) # 80003aac <panic>

00000000800031d0 <trapinit>:
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00813423          	sd	s0,8(sp)
    800031d8:	01010413          	addi	s0,sp,16
    800031dc:	00813403          	ld	s0,8(sp)
    800031e0:	00003597          	auipc	a1,0x3
    800031e4:	04858593          	addi	a1,a1,72 # 80006228 <CONSOLE_STATUS+0x218>
    800031e8:	00005517          	auipc	a0,0x5
    800031ec:	fa850513          	addi	a0,a0,-88 # 80008190 <tickslock>
    800031f0:	01010113          	addi	sp,sp,16
    800031f4:	00001317          	auipc	t1,0x1
    800031f8:	5c430067          	jr	1476(t1) # 800047b8 <initlock>

00000000800031fc <trapinithart>:
    800031fc:	ff010113          	addi	sp,sp,-16
    80003200:	00813423          	sd	s0,8(sp)
    80003204:	01010413          	addi	s0,sp,16
    80003208:	00000797          	auipc	a5,0x0
    8000320c:	2f878793          	addi	a5,a5,760 # 80003500 <kernelvec>
    80003210:	10579073          	csrw	stvec,a5
    80003214:	00813403          	ld	s0,8(sp)
    80003218:	01010113          	addi	sp,sp,16
    8000321c:	00008067          	ret

0000000080003220 <usertrap>:
    80003220:	ff010113          	addi	sp,sp,-16
    80003224:	00813423          	sd	s0,8(sp)
    80003228:	01010413          	addi	s0,sp,16
    8000322c:	00813403          	ld	s0,8(sp)
    80003230:	01010113          	addi	sp,sp,16
    80003234:	00008067          	ret

0000000080003238 <usertrapret>:
    80003238:	ff010113          	addi	sp,sp,-16
    8000323c:	00813423          	sd	s0,8(sp)
    80003240:	01010413          	addi	s0,sp,16
    80003244:	00813403          	ld	s0,8(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret

0000000080003250 <kerneltrap>:
    80003250:	fe010113          	addi	sp,sp,-32
    80003254:	00813823          	sd	s0,16(sp)
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	00913423          	sd	s1,8(sp)
    80003260:	02010413          	addi	s0,sp,32
    80003264:	142025f3          	csrr	a1,scause
    80003268:	100027f3          	csrr	a5,sstatus
    8000326c:	0027f793          	andi	a5,a5,2
    80003270:	10079c63          	bnez	a5,80003388 <kerneltrap+0x138>
    80003274:	142027f3          	csrr	a5,scause
    80003278:	0207ce63          	bltz	a5,800032b4 <kerneltrap+0x64>
    8000327c:	00003517          	auipc	a0,0x3
    80003280:	ff450513          	addi	a0,a0,-12 # 80006270 <CONSOLE_STATUS+0x260>
    80003284:	00001097          	auipc	ra,0x1
    80003288:	884080e7          	jalr	-1916(ra) # 80003b08 <__printf>
    8000328c:	141025f3          	csrr	a1,sepc
    80003290:	14302673          	csrr	a2,stval
    80003294:	00003517          	auipc	a0,0x3
    80003298:	fec50513          	addi	a0,a0,-20 # 80006280 <CONSOLE_STATUS+0x270>
    8000329c:	00001097          	auipc	ra,0x1
    800032a0:	86c080e7          	jalr	-1940(ra) # 80003b08 <__printf>
    800032a4:	00003517          	auipc	a0,0x3
    800032a8:	ff450513          	addi	a0,a0,-12 # 80006298 <CONSOLE_STATUS+0x288>
    800032ac:	00001097          	auipc	ra,0x1
    800032b0:	800080e7          	jalr	-2048(ra) # 80003aac <panic>
    800032b4:	0ff7f713          	andi	a4,a5,255
    800032b8:	00900693          	li	a3,9
    800032bc:	04d70063          	beq	a4,a3,800032fc <kerneltrap+0xac>
    800032c0:	fff00713          	li	a4,-1
    800032c4:	03f71713          	slli	a4,a4,0x3f
    800032c8:	00170713          	addi	a4,a4,1
    800032cc:	fae798e3          	bne	a5,a4,8000327c <kerneltrap+0x2c>
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	e00080e7          	jalr	-512(ra) # 800030d0 <cpuid>
    800032d8:	06050663          	beqz	a0,80003344 <kerneltrap+0xf4>
    800032dc:	144027f3          	csrr	a5,sip
    800032e0:	ffd7f793          	andi	a5,a5,-3
    800032e4:	14479073          	csrw	sip,a5
    800032e8:	01813083          	ld	ra,24(sp)
    800032ec:	01013403          	ld	s0,16(sp)
    800032f0:	00813483          	ld	s1,8(sp)
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00008067          	ret
    800032fc:	00000097          	auipc	ra,0x0
    80003300:	3c8080e7          	jalr	968(ra) # 800036c4 <plic_claim>
    80003304:	00a00793          	li	a5,10
    80003308:	00050493          	mv	s1,a0
    8000330c:	06f50863          	beq	a0,a5,8000337c <kerneltrap+0x12c>
    80003310:	fc050ce3          	beqz	a0,800032e8 <kerneltrap+0x98>
    80003314:	00050593          	mv	a1,a0
    80003318:	00003517          	auipc	a0,0x3
    8000331c:	f3850513          	addi	a0,a0,-200 # 80006250 <CONSOLE_STATUS+0x240>
    80003320:	00000097          	auipc	ra,0x0
    80003324:	7e8080e7          	jalr	2024(ra) # 80003b08 <__printf>
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	00048513          	mv	a0,s1
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	02010113          	addi	sp,sp,32
    8000333c:	00000317          	auipc	t1,0x0
    80003340:	3c030067          	jr	960(t1) # 800036fc <plic_complete>
    80003344:	00005517          	auipc	a0,0x5
    80003348:	e4c50513          	addi	a0,a0,-436 # 80008190 <tickslock>
    8000334c:	00001097          	auipc	ra,0x1
    80003350:	490080e7          	jalr	1168(ra) # 800047dc <acquire>
    80003354:	00004717          	auipc	a4,0x4
    80003358:	d1070713          	addi	a4,a4,-752 # 80007064 <ticks>
    8000335c:	00072783          	lw	a5,0(a4)
    80003360:	00005517          	auipc	a0,0x5
    80003364:	e3050513          	addi	a0,a0,-464 # 80008190 <tickslock>
    80003368:	0017879b          	addiw	a5,a5,1
    8000336c:	00f72023          	sw	a5,0(a4)
    80003370:	00001097          	auipc	ra,0x1
    80003374:	538080e7          	jalr	1336(ra) # 800048a8 <release>
    80003378:	f65ff06f          	j	800032dc <kerneltrap+0x8c>
    8000337c:	00001097          	auipc	ra,0x1
    80003380:	094080e7          	jalr	148(ra) # 80004410 <uartintr>
    80003384:	fa5ff06f          	j	80003328 <kerneltrap+0xd8>
    80003388:	00003517          	auipc	a0,0x3
    8000338c:	ea850513          	addi	a0,a0,-344 # 80006230 <CONSOLE_STATUS+0x220>
    80003390:	00000097          	auipc	ra,0x0
    80003394:	71c080e7          	jalr	1820(ra) # 80003aac <panic>

0000000080003398 <clockintr>:
    80003398:	fe010113          	addi	sp,sp,-32
    8000339c:	00813823          	sd	s0,16(sp)
    800033a0:	00913423          	sd	s1,8(sp)
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	02010413          	addi	s0,sp,32
    800033ac:	00005497          	auipc	s1,0x5
    800033b0:	de448493          	addi	s1,s1,-540 # 80008190 <tickslock>
    800033b4:	00048513          	mv	a0,s1
    800033b8:	00001097          	auipc	ra,0x1
    800033bc:	424080e7          	jalr	1060(ra) # 800047dc <acquire>
    800033c0:	00004717          	auipc	a4,0x4
    800033c4:	ca470713          	addi	a4,a4,-860 # 80007064 <ticks>
    800033c8:	00072783          	lw	a5,0(a4)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	00048513          	mv	a0,s1
    800033d8:	0017879b          	addiw	a5,a5,1
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	00f72023          	sw	a5,0(a4)
    800033e4:	02010113          	addi	sp,sp,32
    800033e8:	00001317          	auipc	t1,0x1
    800033ec:	4c030067          	jr	1216(t1) # 800048a8 <release>

00000000800033f0 <devintr>:
    800033f0:	142027f3          	csrr	a5,scause
    800033f4:	00000513          	li	a0,0
    800033f8:	0007c463          	bltz	a5,80003400 <devintr+0x10>
    800033fc:	00008067          	ret
    80003400:	fe010113          	addi	sp,sp,-32
    80003404:	00813823          	sd	s0,16(sp)
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	00913423          	sd	s1,8(sp)
    80003410:	02010413          	addi	s0,sp,32
    80003414:	0ff7f713          	andi	a4,a5,255
    80003418:	00900693          	li	a3,9
    8000341c:	04d70c63          	beq	a4,a3,80003474 <devintr+0x84>
    80003420:	fff00713          	li	a4,-1
    80003424:	03f71713          	slli	a4,a4,0x3f
    80003428:	00170713          	addi	a4,a4,1
    8000342c:	00e78c63          	beq	a5,a4,80003444 <devintr+0x54>
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	01013403          	ld	s0,16(sp)
    80003438:	00813483          	ld	s1,8(sp)
    8000343c:	02010113          	addi	sp,sp,32
    80003440:	00008067          	ret
    80003444:	00000097          	auipc	ra,0x0
    80003448:	c8c080e7          	jalr	-884(ra) # 800030d0 <cpuid>
    8000344c:	06050663          	beqz	a0,800034b8 <devintr+0xc8>
    80003450:	144027f3          	csrr	a5,sip
    80003454:	ffd7f793          	andi	a5,a5,-3
    80003458:	14479073          	csrw	sip,a5
    8000345c:	01813083          	ld	ra,24(sp)
    80003460:	01013403          	ld	s0,16(sp)
    80003464:	00813483          	ld	s1,8(sp)
    80003468:	00200513          	li	a0,2
    8000346c:	02010113          	addi	sp,sp,32
    80003470:	00008067          	ret
    80003474:	00000097          	auipc	ra,0x0
    80003478:	250080e7          	jalr	592(ra) # 800036c4 <plic_claim>
    8000347c:	00a00793          	li	a5,10
    80003480:	00050493          	mv	s1,a0
    80003484:	06f50663          	beq	a0,a5,800034f0 <devintr+0x100>
    80003488:	00100513          	li	a0,1
    8000348c:	fa0482e3          	beqz	s1,80003430 <devintr+0x40>
    80003490:	00048593          	mv	a1,s1
    80003494:	00003517          	auipc	a0,0x3
    80003498:	dbc50513          	addi	a0,a0,-580 # 80006250 <CONSOLE_STATUS+0x240>
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	66c080e7          	jalr	1644(ra) # 80003b08 <__printf>
    800034a4:	00048513          	mv	a0,s1
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	254080e7          	jalr	596(ra) # 800036fc <plic_complete>
    800034b0:	00100513          	li	a0,1
    800034b4:	f7dff06f          	j	80003430 <devintr+0x40>
    800034b8:	00005517          	auipc	a0,0x5
    800034bc:	cd850513          	addi	a0,a0,-808 # 80008190 <tickslock>
    800034c0:	00001097          	auipc	ra,0x1
    800034c4:	31c080e7          	jalr	796(ra) # 800047dc <acquire>
    800034c8:	00004717          	auipc	a4,0x4
    800034cc:	b9c70713          	addi	a4,a4,-1124 # 80007064 <ticks>
    800034d0:	00072783          	lw	a5,0(a4)
    800034d4:	00005517          	auipc	a0,0x5
    800034d8:	cbc50513          	addi	a0,a0,-836 # 80008190 <tickslock>
    800034dc:	0017879b          	addiw	a5,a5,1
    800034e0:	00f72023          	sw	a5,0(a4)
    800034e4:	00001097          	auipc	ra,0x1
    800034e8:	3c4080e7          	jalr	964(ra) # 800048a8 <release>
    800034ec:	f65ff06f          	j	80003450 <devintr+0x60>
    800034f0:	00001097          	auipc	ra,0x1
    800034f4:	f20080e7          	jalr	-224(ra) # 80004410 <uartintr>
    800034f8:	fadff06f          	j	800034a4 <devintr+0xb4>
    800034fc:	0000                	unimp
	...

0000000080003500 <kernelvec>:
    80003500:	f0010113          	addi	sp,sp,-256
    80003504:	00113023          	sd	ra,0(sp)
    80003508:	00213423          	sd	sp,8(sp)
    8000350c:	00313823          	sd	gp,16(sp)
    80003510:	00413c23          	sd	tp,24(sp)
    80003514:	02513023          	sd	t0,32(sp)
    80003518:	02613423          	sd	t1,40(sp)
    8000351c:	02713823          	sd	t2,48(sp)
    80003520:	02813c23          	sd	s0,56(sp)
    80003524:	04913023          	sd	s1,64(sp)
    80003528:	04a13423          	sd	a0,72(sp)
    8000352c:	04b13823          	sd	a1,80(sp)
    80003530:	04c13c23          	sd	a2,88(sp)
    80003534:	06d13023          	sd	a3,96(sp)
    80003538:	06e13423          	sd	a4,104(sp)
    8000353c:	06f13823          	sd	a5,112(sp)
    80003540:	07013c23          	sd	a6,120(sp)
    80003544:	09113023          	sd	a7,128(sp)
    80003548:	09213423          	sd	s2,136(sp)
    8000354c:	09313823          	sd	s3,144(sp)
    80003550:	09413c23          	sd	s4,152(sp)
    80003554:	0b513023          	sd	s5,160(sp)
    80003558:	0b613423          	sd	s6,168(sp)
    8000355c:	0b713823          	sd	s7,176(sp)
    80003560:	0b813c23          	sd	s8,184(sp)
    80003564:	0d913023          	sd	s9,192(sp)
    80003568:	0da13423          	sd	s10,200(sp)
    8000356c:	0db13823          	sd	s11,208(sp)
    80003570:	0dc13c23          	sd	t3,216(sp)
    80003574:	0fd13023          	sd	t4,224(sp)
    80003578:	0fe13423          	sd	t5,232(sp)
    8000357c:	0ff13823          	sd	t6,240(sp)
    80003580:	cd1ff0ef          	jal	ra,80003250 <kerneltrap>
    80003584:	00013083          	ld	ra,0(sp)
    80003588:	00813103          	ld	sp,8(sp)
    8000358c:	01013183          	ld	gp,16(sp)
    80003590:	02013283          	ld	t0,32(sp)
    80003594:	02813303          	ld	t1,40(sp)
    80003598:	03013383          	ld	t2,48(sp)
    8000359c:	03813403          	ld	s0,56(sp)
    800035a0:	04013483          	ld	s1,64(sp)
    800035a4:	04813503          	ld	a0,72(sp)
    800035a8:	05013583          	ld	a1,80(sp)
    800035ac:	05813603          	ld	a2,88(sp)
    800035b0:	06013683          	ld	a3,96(sp)
    800035b4:	06813703          	ld	a4,104(sp)
    800035b8:	07013783          	ld	a5,112(sp)
    800035bc:	07813803          	ld	a6,120(sp)
    800035c0:	08013883          	ld	a7,128(sp)
    800035c4:	08813903          	ld	s2,136(sp)
    800035c8:	09013983          	ld	s3,144(sp)
    800035cc:	09813a03          	ld	s4,152(sp)
    800035d0:	0a013a83          	ld	s5,160(sp)
    800035d4:	0a813b03          	ld	s6,168(sp)
    800035d8:	0b013b83          	ld	s7,176(sp)
    800035dc:	0b813c03          	ld	s8,184(sp)
    800035e0:	0c013c83          	ld	s9,192(sp)
    800035e4:	0c813d03          	ld	s10,200(sp)
    800035e8:	0d013d83          	ld	s11,208(sp)
    800035ec:	0d813e03          	ld	t3,216(sp)
    800035f0:	0e013e83          	ld	t4,224(sp)
    800035f4:	0e813f03          	ld	t5,232(sp)
    800035f8:	0f013f83          	ld	t6,240(sp)
    800035fc:	10010113          	addi	sp,sp,256
    80003600:	10200073          	sret
    80003604:	00000013          	nop
    80003608:	00000013          	nop
    8000360c:	00000013          	nop

0000000080003610 <timervec>:
    80003610:	34051573          	csrrw	a0,mscratch,a0
    80003614:	00b53023          	sd	a1,0(a0)
    80003618:	00c53423          	sd	a2,8(a0)
    8000361c:	00d53823          	sd	a3,16(a0)
    80003620:	01853583          	ld	a1,24(a0)
    80003624:	02053603          	ld	a2,32(a0)
    80003628:	0005b683          	ld	a3,0(a1)
    8000362c:	00c686b3          	add	a3,a3,a2
    80003630:	00d5b023          	sd	a3,0(a1)
    80003634:	00200593          	li	a1,2
    80003638:	14459073          	csrw	sip,a1
    8000363c:	01053683          	ld	a3,16(a0)
    80003640:	00853603          	ld	a2,8(a0)
    80003644:	00053583          	ld	a1,0(a0)
    80003648:	34051573          	csrrw	a0,mscratch,a0
    8000364c:	30200073          	mret

0000000080003650 <plicinit>:
    80003650:	ff010113          	addi	sp,sp,-16
    80003654:	00813423          	sd	s0,8(sp)
    80003658:	01010413          	addi	s0,sp,16
    8000365c:	00813403          	ld	s0,8(sp)
    80003660:	0c0007b7          	lui	a5,0xc000
    80003664:	00100713          	li	a4,1
    80003668:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000366c:	00e7a223          	sw	a4,4(a5)
    80003670:	01010113          	addi	sp,sp,16
    80003674:	00008067          	ret

0000000080003678 <plicinithart>:
    80003678:	ff010113          	addi	sp,sp,-16
    8000367c:	00813023          	sd	s0,0(sp)
    80003680:	00113423          	sd	ra,8(sp)
    80003684:	01010413          	addi	s0,sp,16
    80003688:	00000097          	auipc	ra,0x0
    8000368c:	a48080e7          	jalr	-1464(ra) # 800030d0 <cpuid>
    80003690:	0085171b          	slliw	a4,a0,0x8
    80003694:	0c0027b7          	lui	a5,0xc002
    80003698:	00e787b3          	add	a5,a5,a4
    8000369c:	40200713          	li	a4,1026
    800036a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800036a4:	00813083          	ld	ra,8(sp)
    800036a8:	00013403          	ld	s0,0(sp)
    800036ac:	00d5151b          	slliw	a0,a0,0xd
    800036b0:	0c2017b7          	lui	a5,0xc201
    800036b4:	00a78533          	add	a0,a5,a0
    800036b8:	00052023          	sw	zero,0(a0)
    800036bc:	01010113          	addi	sp,sp,16
    800036c0:	00008067          	ret

00000000800036c4 <plic_claim>:
    800036c4:	ff010113          	addi	sp,sp,-16
    800036c8:	00813023          	sd	s0,0(sp)
    800036cc:	00113423          	sd	ra,8(sp)
    800036d0:	01010413          	addi	s0,sp,16
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	9fc080e7          	jalr	-1540(ra) # 800030d0 <cpuid>
    800036dc:	00813083          	ld	ra,8(sp)
    800036e0:	00013403          	ld	s0,0(sp)
    800036e4:	00d5151b          	slliw	a0,a0,0xd
    800036e8:	0c2017b7          	lui	a5,0xc201
    800036ec:	00a78533          	add	a0,a5,a0
    800036f0:	00452503          	lw	a0,4(a0)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret

00000000800036fc <plic_complete>:
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	00113c23          	sd	ra,24(sp)
    8000370c:	02010413          	addi	s0,sp,32
    80003710:	00050493          	mv	s1,a0
    80003714:	00000097          	auipc	ra,0x0
    80003718:	9bc080e7          	jalr	-1604(ra) # 800030d0 <cpuid>
    8000371c:	01813083          	ld	ra,24(sp)
    80003720:	01013403          	ld	s0,16(sp)
    80003724:	00d5179b          	slliw	a5,a0,0xd
    80003728:	0c201737          	lui	a4,0xc201
    8000372c:	00f707b3          	add	a5,a4,a5
    80003730:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003734:	00813483          	ld	s1,8(sp)
    80003738:	02010113          	addi	sp,sp,32
    8000373c:	00008067          	ret

0000000080003740 <consolewrite>:
    80003740:	fb010113          	addi	sp,sp,-80
    80003744:	04813023          	sd	s0,64(sp)
    80003748:	04113423          	sd	ra,72(sp)
    8000374c:	02913c23          	sd	s1,56(sp)
    80003750:	03213823          	sd	s2,48(sp)
    80003754:	03313423          	sd	s3,40(sp)
    80003758:	03413023          	sd	s4,32(sp)
    8000375c:	01513c23          	sd	s5,24(sp)
    80003760:	05010413          	addi	s0,sp,80
    80003764:	06c05c63          	blez	a2,800037dc <consolewrite+0x9c>
    80003768:	00060993          	mv	s3,a2
    8000376c:	00050a13          	mv	s4,a0
    80003770:	00058493          	mv	s1,a1
    80003774:	00000913          	li	s2,0
    80003778:	fff00a93          	li	s5,-1
    8000377c:	01c0006f          	j	80003798 <consolewrite+0x58>
    80003780:	fbf44503          	lbu	a0,-65(s0)
    80003784:	0019091b          	addiw	s2,s2,1
    80003788:	00148493          	addi	s1,s1,1
    8000378c:	00001097          	auipc	ra,0x1
    80003790:	a9c080e7          	jalr	-1380(ra) # 80004228 <uartputc>
    80003794:	03298063          	beq	s3,s2,800037b4 <consolewrite+0x74>
    80003798:	00048613          	mv	a2,s1
    8000379c:	00100693          	li	a3,1
    800037a0:	000a0593          	mv	a1,s4
    800037a4:	fbf40513          	addi	a0,s0,-65
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	9e0080e7          	jalr	-1568(ra) # 80003188 <either_copyin>
    800037b0:	fd5518e3          	bne	a0,s5,80003780 <consolewrite+0x40>
    800037b4:	04813083          	ld	ra,72(sp)
    800037b8:	04013403          	ld	s0,64(sp)
    800037bc:	03813483          	ld	s1,56(sp)
    800037c0:	02813983          	ld	s3,40(sp)
    800037c4:	02013a03          	ld	s4,32(sp)
    800037c8:	01813a83          	ld	s5,24(sp)
    800037cc:	00090513          	mv	a0,s2
    800037d0:	03013903          	ld	s2,48(sp)
    800037d4:	05010113          	addi	sp,sp,80
    800037d8:	00008067          	ret
    800037dc:	00000913          	li	s2,0
    800037e0:	fd5ff06f          	j	800037b4 <consolewrite+0x74>

00000000800037e4 <consoleread>:
    800037e4:	f9010113          	addi	sp,sp,-112
    800037e8:	06813023          	sd	s0,96(sp)
    800037ec:	04913c23          	sd	s1,88(sp)
    800037f0:	05213823          	sd	s2,80(sp)
    800037f4:	05313423          	sd	s3,72(sp)
    800037f8:	05413023          	sd	s4,64(sp)
    800037fc:	03513c23          	sd	s5,56(sp)
    80003800:	03613823          	sd	s6,48(sp)
    80003804:	03713423          	sd	s7,40(sp)
    80003808:	03813023          	sd	s8,32(sp)
    8000380c:	06113423          	sd	ra,104(sp)
    80003810:	01913c23          	sd	s9,24(sp)
    80003814:	07010413          	addi	s0,sp,112
    80003818:	00060b93          	mv	s7,a2
    8000381c:	00050913          	mv	s2,a0
    80003820:	00058c13          	mv	s8,a1
    80003824:	00060b1b          	sext.w	s6,a2
    80003828:	00005497          	auipc	s1,0x5
    8000382c:	99048493          	addi	s1,s1,-1648 # 800081b8 <cons>
    80003830:	00400993          	li	s3,4
    80003834:	fff00a13          	li	s4,-1
    80003838:	00a00a93          	li	s5,10
    8000383c:	05705e63          	blez	s7,80003898 <consoleread+0xb4>
    80003840:	09c4a703          	lw	a4,156(s1)
    80003844:	0984a783          	lw	a5,152(s1)
    80003848:	0007071b          	sext.w	a4,a4
    8000384c:	08e78463          	beq	a5,a4,800038d4 <consoleread+0xf0>
    80003850:	07f7f713          	andi	a4,a5,127
    80003854:	00e48733          	add	a4,s1,a4
    80003858:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000385c:	0017869b          	addiw	a3,a5,1
    80003860:	08d4ac23          	sw	a3,152(s1)
    80003864:	00070c9b          	sext.w	s9,a4
    80003868:	0b370663          	beq	a4,s3,80003914 <consoleread+0x130>
    8000386c:	00100693          	li	a3,1
    80003870:	f9f40613          	addi	a2,s0,-97
    80003874:	000c0593          	mv	a1,s8
    80003878:	00090513          	mv	a0,s2
    8000387c:	f8e40fa3          	sb	a4,-97(s0)
    80003880:	00000097          	auipc	ra,0x0
    80003884:	8bc080e7          	jalr	-1860(ra) # 8000313c <either_copyout>
    80003888:	01450863          	beq	a0,s4,80003898 <consoleread+0xb4>
    8000388c:	001c0c13          	addi	s8,s8,1
    80003890:	fffb8b9b          	addiw	s7,s7,-1
    80003894:	fb5c94e3          	bne	s9,s5,8000383c <consoleread+0x58>
    80003898:	000b851b          	sext.w	a0,s7
    8000389c:	06813083          	ld	ra,104(sp)
    800038a0:	06013403          	ld	s0,96(sp)
    800038a4:	05813483          	ld	s1,88(sp)
    800038a8:	05013903          	ld	s2,80(sp)
    800038ac:	04813983          	ld	s3,72(sp)
    800038b0:	04013a03          	ld	s4,64(sp)
    800038b4:	03813a83          	ld	s5,56(sp)
    800038b8:	02813b83          	ld	s7,40(sp)
    800038bc:	02013c03          	ld	s8,32(sp)
    800038c0:	01813c83          	ld	s9,24(sp)
    800038c4:	40ab053b          	subw	a0,s6,a0
    800038c8:	03013b03          	ld	s6,48(sp)
    800038cc:	07010113          	addi	sp,sp,112
    800038d0:	00008067          	ret
    800038d4:	00001097          	auipc	ra,0x1
    800038d8:	1d8080e7          	jalr	472(ra) # 80004aac <push_on>
    800038dc:	0984a703          	lw	a4,152(s1)
    800038e0:	09c4a783          	lw	a5,156(s1)
    800038e4:	0007879b          	sext.w	a5,a5
    800038e8:	fef70ce3          	beq	a4,a5,800038e0 <consoleread+0xfc>
    800038ec:	00001097          	auipc	ra,0x1
    800038f0:	234080e7          	jalr	564(ra) # 80004b20 <pop_on>
    800038f4:	0984a783          	lw	a5,152(s1)
    800038f8:	07f7f713          	andi	a4,a5,127
    800038fc:	00e48733          	add	a4,s1,a4
    80003900:	01874703          	lbu	a4,24(a4)
    80003904:	0017869b          	addiw	a3,a5,1
    80003908:	08d4ac23          	sw	a3,152(s1)
    8000390c:	00070c9b          	sext.w	s9,a4
    80003910:	f5371ee3          	bne	a4,s3,8000386c <consoleread+0x88>
    80003914:	000b851b          	sext.w	a0,s7
    80003918:	f96bf2e3          	bgeu	s7,s6,8000389c <consoleread+0xb8>
    8000391c:	08f4ac23          	sw	a5,152(s1)
    80003920:	f7dff06f          	j	8000389c <consoleread+0xb8>

0000000080003924 <consputc>:
    80003924:	10000793          	li	a5,256
    80003928:	00f50663          	beq	a0,a5,80003934 <consputc+0x10>
    8000392c:	00001317          	auipc	t1,0x1
    80003930:	9f430067          	jr	-1548(t1) # 80004320 <uartputc_sync>
    80003934:	ff010113          	addi	sp,sp,-16
    80003938:	00113423          	sd	ra,8(sp)
    8000393c:	00813023          	sd	s0,0(sp)
    80003940:	01010413          	addi	s0,sp,16
    80003944:	00800513          	li	a0,8
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	9d8080e7          	jalr	-1576(ra) # 80004320 <uartputc_sync>
    80003950:	02000513          	li	a0,32
    80003954:	00001097          	auipc	ra,0x1
    80003958:	9cc080e7          	jalr	-1588(ra) # 80004320 <uartputc_sync>
    8000395c:	00013403          	ld	s0,0(sp)
    80003960:	00813083          	ld	ra,8(sp)
    80003964:	00800513          	li	a0,8
    80003968:	01010113          	addi	sp,sp,16
    8000396c:	00001317          	auipc	t1,0x1
    80003970:	9b430067          	jr	-1612(t1) # 80004320 <uartputc_sync>

0000000080003974 <consoleintr>:
    80003974:	fe010113          	addi	sp,sp,-32
    80003978:	00813823          	sd	s0,16(sp)
    8000397c:	00913423          	sd	s1,8(sp)
    80003980:	01213023          	sd	s2,0(sp)
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	02010413          	addi	s0,sp,32
    8000398c:	00005917          	auipc	s2,0x5
    80003990:	82c90913          	addi	s2,s2,-2004 # 800081b8 <cons>
    80003994:	00050493          	mv	s1,a0
    80003998:	00090513          	mv	a0,s2
    8000399c:	00001097          	auipc	ra,0x1
    800039a0:	e40080e7          	jalr	-448(ra) # 800047dc <acquire>
    800039a4:	02048c63          	beqz	s1,800039dc <consoleintr+0x68>
    800039a8:	0a092783          	lw	a5,160(s2)
    800039ac:	09892703          	lw	a4,152(s2)
    800039b0:	07f00693          	li	a3,127
    800039b4:	40e7873b          	subw	a4,a5,a4
    800039b8:	02e6e263          	bltu	a3,a4,800039dc <consoleintr+0x68>
    800039bc:	00d00713          	li	a4,13
    800039c0:	04e48063          	beq	s1,a4,80003a00 <consoleintr+0x8c>
    800039c4:	07f7f713          	andi	a4,a5,127
    800039c8:	00e90733          	add	a4,s2,a4
    800039cc:	0017879b          	addiw	a5,a5,1
    800039d0:	0af92023          	sw	a5,160(s2)
    800039d4:	00970c23          	sb	s1,24(a4)
    800039d8:	08f92e23          	sw	a5,156(s2)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	00813483          	ld	s1,8(sp)
    800039e8:	00013903          	ld	s2,0(sp)
    800039ec:	00004517          	auipc	a0,0x4
    800039f0:	7cc50513          	addi	a0,a0,1996 # 800081b8 <cons>
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00001317          	auipc	t1,0x1
    800039fc:	eb030067          	jr	-336(t1) # 800048a8 <release>
    80003a00:	00a00493          	li	s1,10
    80003a04:	fc1ff06f          	j	800039c4 <consoleintr+0x50>

0000000080003a08 <consoleinit>:
    80003a08:	fe010113          	addi	sp,sp,-32
    80003a0c:	00113c23          	sd	ra,24(sp)
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00913423          	sd	s1,8(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00004497          	auipc	s1,0x4
    80003a20:	79c48493          	addi	s1,s1,1948 # 800081b8 <cons>
    80003a24:	00048513          	mv	a0,s1
    80003a28:	00003597          	auipc	a1,0x3
    80003a2c:	88058593          	addi	a1,a1,-1920 # 800062a8 <CONSOLE_STATUS+0x298>
    80003a30:	00001097          	auipc	ra,0x1
    80003a34:	d88080e7          	jalr	-632(ra) # 800047b8 <initlock>
    80003a38:	00000097          	auipc	ra,0x0
    80003a3c:	7ac080e7          	jalr	1964(ra) # 800041e4 <uartinit>
    80003a40:	01813083          	ld	ra,24(sp)
    80003a44:	01013403          	ld	s0,16(sp)
    80003a48:	00000797          	auipc	a5,0x0
    80003a4c:	d9c78793          	addi	a5,a5,-612 # 800037e4 <consoleread>
    80003a50:	0af4bc23          	sd	a5,184(s1)
    80003a54:	00000797          	auipc	a5,0x0
    80003a58:	cec78793          	addi	a5,a5,-788 # 80003740 <consolewrite>
    80003a5c:	0cf4b023          	sd	a5,192(s1)
    80003a60:	00813483          	ld	s1,8(sp)
    80003a64:	02010113          	addi	sp,sp,32
    80003a68:	00008067          	ret

0000000080003a6c <console_read>:
    80003a6c:	ff010113          	addi	sp,sp,-16
    80003a70:	00813423          	sd	s0,8(sp)
    80003a74:	01010413          	addi	s0,sp,16
    80003a78:	00813403          	ld	s0,8(sp)
    80003a7c:	00004317          	auipc	t1,0x4
    80003a80:	7f433303          	ld	t1,2036(t1) # 80008270 <devsw+0x10>
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00030067          	jr	t1

0000000080003a8c <console_write>:
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00813423          	sd	s0,8(sp)
    80003a94:	01010413          	addi	s0,sp,16
    80003a98:	00813403          	ld	s0,8(sp)
    80003a9c:	00004317          	auipc	t1,0x4
    80003aa0:	7dc33303          	ld	t1,2012(t1) # 80008278 <devsw+0x18>
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00030067          	jr	t1

0000000080003aac <panic>:
    80003aac:	fe010113          	addi	sp,sp,-32
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	02010413          	addi	s0,sp,32
    80003ac0:	00050493          	mv	s1,a0
    80003ac4:	00002517          	auipc	a0,0x2
    80003ac8:	7ec50513          	addi	a0,a0,2028 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80003acc:	00005797          	auipc	a5,0x5
    80003ad0:	8407a623          	sw	zero,-1972(a5) # 80008318 <pr+0x18>
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	034080e7          	jalr	52(ra) # 80003b08 <__printf>
    80003adc:	00048513          	mv	a0,s1
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	028080e7          	jalr	40(ra) # 80003b08 <__printf>
    80003ae8:	00002517          	auipc	a0,0x2
    80003aec:	7a850513          	addi	a0,a0,1960 # 80006290 <CONSOLE_STATUS+0x280>
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	018080e7          	jalr	24(ra) # 80003b08 <__printf>
    80003af8:	00100793          	li	a5,1
    80003afc:	00003717          	auipc	a4,0x3
    80003b00:	56f72623          	sw	a5,1388(a4) # 80007068 <panicked>
    80003b04:	0000006f          	j	80003b04 <panic+0x58>

0000000080003b08 <__printf>:
    80003b08:	f3010113          	addi	sp,sp,-208
    80003b0c:	08813023          	sd	s0,128(sp)
    80003b10:	07313423          	sd	s3,104(sp)
    80003b14:	09010413          	addi	s0,sp,144
    80003b18:	05813023          	sd	s8,64(sp)
    80003b1c:	08113423          	sd	ra,136(sp)
    80003b20:	06913c23          	sd	s1,120(sp)
    80003b24:	07213823          	sd	s2,112(sp)
    80003b28:	07413023          	sd	s4,96(sp)
    80003b2c:	05513c23          	sd	s5,88(sp)
    80003b30:	05613823          	sd	s6,80(sp)
    80003b34:	05713423          	sd	s7,72(sp)
    80003b38:	03913c23          	sd	s9,56(sp)
    80003b3c:	03a13823          	sd	s10,48(sp)
    80003b40:	03b13423          	sd	s11,40(sp)
    80003b44:	00004317          	auipc	t1,0x4
    80003b48:	7bc30313          	addi	t1,t1,1980 # 80008300 <pr>
    80003b4c:	01832c03          	lw	s8,24(t1)
    80003b50:	00b43423          	sd	a1,8(s0)
    80003b54:	00c43823          	sd	a2,16(s0)
    80003b58:	00d43c23          	sd	a3,24(s0)
    80003b5c:	02e43023          	sd	a4,32(s0)
    80003b60:	02f43423          	sd	a5,40(s0)
    80003b64:	03043823          	sd	a6,48(s0)
    80003b68:	03143c23          	sd	a7,56(s0)
    80003b6c:	00050993          	mv	s3,a0
    80003b70:	4a0c1663          	bnez	s8,8000401c <__printf+0x514>
    80003b74:	60098c63          	beqz	s3,8000418c <__printf+0x684>
    80003b78:	0009c503          	lbu	a0,0(s3)
    80003b7c:	00840793          	addi	a5,s0,8
    80003b80:	f6f43c23          	sd	a5,-136(s0)
    80003b84:	00000493          	li	s1,0
    80003b88:	22050063          	beqz	a0,80003da8 <__printf+0x2a0>
    80003b8c:	00002a37          	lui	s4,0x2
    80003b90:	00018ab7          	lui	s5,0x18
    80003b94:	000f4b37          	lui	s6,0xf4
    80003b98:	00989bb7          	lui	s7,0x989
    80003b9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003ba0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003ba4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003ba8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003bac:	00148c9b          	addiw	s9,s1,1
    80003bb0:	02500793          	li	a5,37
    80003bb4:	01998933          	add	s2,s3,s9
    80003bb8:	38f51263          	bne	a0,a5,80003f3c <__printf+0x434>
    80003bbc:	00094783          	lbu	a5,0(s2)
    80003bc0:	00078c9b          	sext.w	s9,a5
    80003bc4:	1e078263          	beqz	a5,80003da8 <__printf+0x2a0>
    80003bc8:	0024849b          	addiw	s1,s1,2
    80003bcc:	07000713          	li	a4,112
    80003bd0:	00998933          	add	s2,s3,s1
    80003bd4:	38e78a63          	beq	a5,a4,80003f68 <__printf+0x460>
    80003bd8:	20f76863          	bltu	a4,a5,80003de8 <__printf+0x2e0>
    80003bdc:	42a78863          	beq	a5,a0,8000400c <__printf+0x504>
    80003be0:	06400713          	li	a4,100
    80003be4:	40e79663          	bne	a5,a4,80003ff0 <__printf+0x4e8>
    80003be8:	f7843783          	ld	a5,-136(s0)
    80003bec:	0007a603          	lw	a2,0(a5)
    80003bf0:	00878793          	addi	a5,a5,8
    80003bf4:	f6f43c23          	sd	a5,-136(s0)
    80003bf8:	42064a63          	bltz	a2,8000402c <__printf+0x524>
    80003bfc:	00a00713          	li	a4,10
    80003c00:	02e677bb          	remuw	a5,a2,a4
    80003c04:	00002d97          	auipc	s11,0x2
    80003c08:	6d4d8d93          	addi	s11,s11,1748 # 800062d8 <digits>
    80003c0c:	00900593          	li	a1,9
    80003c10:	0006051b          	sext.w	a0,a2
    80003c14:	00000c93          	li	s9,0
    80003c18:	02079793          	slli	a5,a5,0x20
    80003c1c:	0207d793          	srli	a5,a5,0x20
    80003c20:	00fd87b3          	add	a5,s11,a5
    80003c24:	0007c783          	lbu	a5,0(a5)
    80003c28:	02e656bb          	divuw	a3,a2,a4
    80003c2c:	f8f40023          	sb	a5,-128(s0)
    80003c30:	14c5d863          	bge	a1,a2,80003d80 <__printf+0x278>
    80003c34:	06300593          	li	a1,99
    80003c38:	00100c93          	li	s9,1
    80003c3c:	02e6f7bb          	remuw	a5,a3,a4
    80003c40:	02079793          	slli	a5,a5,0x20
    80003c44:	0207d793          	srli	a5,a5,0x20
    80003c48:	00fd87b3          	add	a5,s11,a5
    80003c4c:	0007c783          	lbu	a5,0(a5)
    80003c50:	02e6d73b          	divuw	a4,a3,a4
    80003c54:	f8f400a3          	sb	a5,-127(s0)
    80003c58:	12a5f463          	bgeu	a1,a0,80003d80 <__printf+0x278>
    80003c5c:	00a00693          	li	a3,10
    80003c60:	00900593          	li	a1,9
    80003c64:	02d777bb          	remuw	a5,a4,a3
    80003c68:	02079793          	slli	a5,a5,0x20
    80003c6c:	0207d793          	srli	a5,a5,0x20
    80003c70:	00fd87b3          	add	a5,s11,a5
    80003c74:	0007c503          	lbu	a0,0(a5)
    80003c78:	02d757bb          	divuw	a5,a4,a3
    80003c7c:	f8a40123          	sb	a0,-126(s0)
    80003c80:	48e5f263          	bgeu	a1,a4,80004104 <__printf+0x5fc>
    80003c84:	06300513          	li	a0,99
    80003c88:	02d7f5bb          	remuw	a1,a5,a3
    80003c8c:	02059593          	slli	a1,a1,0x20
    80003c90:	0205d593          	srli	a1,a1,0x20
    80003c94:	00bd85b3          	add	a1,s11,a1
    80003c98:	0005c583          	lbu	a1,0(a1)
    80003c9c:	02d7d7bb          	divuw	a5,a5,a3
    80003ca0:	f8b401a3          	sb	a1,-125(s0)
    80003ca4:	48e57263          	bgeu	a0,a4,80004128 <__printf+0x620>
    80003ca8:	3e700513          	li	a0,999
    80003cac:	02d7f5bb          	remuw	a1,a5,a3
    80003cb0:	02059593          	slli	a1,a1,0x20
    80003cb4:	0205d593          	srli	a1,a1,0x20
    80003cb8:	00bd85b3          	add	a1,s11,a1
    80003cbc:	0005c583          	lbu	a1,0(a1)
    80003cc0:	02d7d7bb          	divuw	a5,a5,a3
    80003cc4:	f8b40223          	sb	a1,-124(s0)
    80003cc8:	46e57663          	bgeu	a0,a4,80004134 <__printf+0x62c>
    80003ccc:	02d7f5bb          	remuw	a1,a5,a3
    80003cd0:	02059593          	slli	a1,a1,0x20
    80003cd4:	0205d593          	srli	a1,a1,0x20
    80003cd8:	00bd85b3          	add	a1,s11,a1
    80003cdc:	0005c583          	lbu	a1,0(a1)
    80003ce0:	02d7d7bb          	divuw	a5,a5,a3
    80003ce4:	f8b402a3          	sb	a1,-123(s0)
    80003ce8:	46ea7863          	bgeu	s4,a4,80004158 <__printf+0x650>
    80003cec:	02d7f5bb          	remuw	a1,a5,a3
    80003cf0:	02059593          	slli	a1,a1,0x20
    80003cf4:	0205d593          	srli	a1,a1,0x20
    80003cf8:	00bd85b3          	add	a1,s11,a1
    80003cfc:	0005c583          	lbu	a1,0(a1)
    80003d00:	02d7d7bb          	divuw	a5,a5,a3
    80003d04:	f8b40323          	sb	a1,-122(s0)
    80003d08:	3eeaf863          	bgeu	s5,a4,800040f8 <__printf+0x5f0>
    80003d0c:	02d7f5bb          	remuw	a1,a5,a3
    80003d10:	02059593          	slli	a1,a1,0x20
    80003d14:	0205d593          	srli	a1,a1,0x20
    80003d18:	00bd85b3          	add	a1,s11,a1
    80003d1c:	0005c583          	lbu	a1,0(a1)
    80003d20:	02d7d7bb          	divuw	a5,a5,a3
    80003d24:	f8b403a3          	sb	a1,-121(s0)
    80003d28:	42eb7e63          	bgeu	s6,a4,80004164 <__printf+0x65c>
    80003d2c:	02d7f5bb          	remuw	a1,a5,a3
    80003d30:	02059593          	slli	a1,a1,0x20
    80003d34:	0205d593          	srli	a1,a1,0x20
    80003d38:	00bd85b3          	add	a1,s11,a1
    80003d3c:	0005c583          	lbu	a1,0(a1)
    80003d40:	02d7d7bb          	divuw	a5,a5,a3
    80003d44:	f8b40423          	sb	a1,-120(s0)
    80003d48:	42ebfc63          	bgeu	s7,a4,80004180 <__printf+0x678>
    80003d4c:	02079793          	slli	a5,a5,0x20
    80003d50:	0207d793          	srli	a5,a5,0x20
    80003d54:	00fd8db3          	add	s11,s11,a5
    80003d58:	000dc703          	lbu	a4,0(s11)
    80003d5c:	00a00793          	li	a5,10
    80003d60:	00900c93          	li	s9,9
    80003d64:	f8e404a3          	sb	a4,-119(s0)
    80003d68:	00065c63          	bgez	a2,80003d80 <__printf+0x278>
    80003d6c:	f9040713          	addi	a4,s0,-112
    80003d70:	00f70733          	add	a4,a4,a5
    80003d74:	02d00693          	li	a3,45
    80003d78:	fed70823          	sb	a3,-16(a4)
    80003d7c:	00078c93          	mv	s9,a5
    80003d80:	f8040793          	addi	a5,s0,-128
    80003d84:	01978cb3          	add	s9,a5,s9
    80003d88:	f7f40d13          	addi	s10,s0,-129
    80003d8c:	000cc503          	lbu	a0,0(s9)
    80003d90:	fffc8c93          	addi	s9,s9,-1
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	b90080e7          	jalr	-1136(ra) # 80003924 <consputc>
    80003d9c:	ffac98e3          	bne	s9,s10,80003d8c <__printf+0x284>
    80003da0:	00094503          	lbu	a0,0(s2)
    80003da4:	e00514e3          	bnez	a0,80003bac <__printf+0xa4>
    80003da8:	1a0c1663          	bnez	s8,80003f54 <__printf+0x44c>
    80003dac:	08813083          	ld	ra,136(sp)
    80003db0:	08013403          	ld	s0,128(sp)
    80003db4:	07813483          	ld	s1,120(sp)
    80003db8:	07013903          	ld	s2,112(sp)
    80003dbc:	06813983          	ld	s3,104(sp)
    80003dc0:	06013a03          	ld	s4,96(sp)
    80003dc4:	05813a83          	ld	s5,88(sp)
    80003dc8:	05013b03          	ld	s6,80(sp)
    80003dcc:	04813b83          	ld	s7,72(sp)
    80003dd0:	04013c03          	ld	s8,64(sp)
    80003dd4:	03813c83          	ld	s9,56(sp)
    80003dd8:	03013d03          	ld	s10,48(sp)
    80003ddc:	02813d83          	ld	s11,40(sp)
    80003de0:	0d010113          	addi	sp,sp,208
    80003de4:	00008067          	ret
    80003de8:	07300713          	li	a4,115
    80003dec:	1ce78a63          	beq	a5,a4,80003fc0 <__printf+0x4b8>
    80003df0:	07800713          	li	a4,120
    80003df4:	1ee79e63          	bne	a5,a4,80003ff0 <__printf+0x4e8>
    80003df8:	f7843783          	ld	a5,-136(s0)
    80003dfc:	0007a703          	lw	a4,0(a5)
    80003e00:	00878793          	addi	a5,a5,8
    80003e04:	f6f43c23          	sd	a5,-136(s0)
    80003e08:	28074263          	bltz	a4,8000408c <__printf+0x584>
    80003e0c:	00002d97          	auipc	s11,0x2
    80003e10:	4ccd8d93          	addi	s11,s11,1228 # 800062d8 <digits>
    80003e14:	00f77793          	andi	a5,a4,15
    80003e18:	00fd87b3          	add	a5,s11,a5
    80003e1c:	0007c683          	lbu	a3,0(a5)
    80003e20:	00f00613          	li	a2,15
    80003e24:	0007079b          	sext.w	a5,a4
    80003e28:	f8d40023          	sb	a3,-128(s0)
    80003e2c:	0047559b          	srliw	a1,a4,0x4
    80003e30:	0047569b          	srliw	a3,a4,0x4
    80003e34:	00000c93          	li	s9,0
    80003e38:	0ee65063          	bge	a2,a4,80003f18 <__printf+0x410>
    80003e3c:	00f6f693          	andi	a3,a3,15
    80003e40:	00dd86b3          	add	a3,s11,a3
    80003e44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003e48:	0087d79b          	srliw	a5,a5,0x8
    80003e4c:	00100c93          	li	s9,1
    80003e50:	f8d400a3          	sb	a3,-127(s0)
    80003e54:	0cb67263          	bgeu	a2,a1,80003f18 <__printf+0x410>
    80003e58:	00f7f693          	andi	a3,a5,15
    80003e5c:	00dd86b3          	add	a3,s11,a3
    80003e60:	0006c583          	lbu	a1,0(a3)
    80003e64:	00f00613          	li	a2,15
    80003e68:	0047d69b          	srliw	a3,a5,0x4
    80003e6c:	f8b40123          	sb	a1,-126(s0)
    80003e70:	0047d593          	srli	a1,a5,0x4
    80003e74:	28f67e63          	bgeu	a2,a5,80004110 <__printf+0x608>
    80003e78:	00f6f693          	andi	a3,a3,15
    80003e7c:	00dd86b3          	add	a3,s11,a3
    80003e80:	0006c503          	lbu	a0,0(a3)
    80003e84:	0087d813          	srli	a6,a5,0x8
    80003e88:	0087d69b          	srliw	a3,a5,0x8
    80003e8c:	f8a401a3          	sb	a0,-125(s0)
    80003e90:	28b67663          	bgeu	a2,a1,8000411c <__printf+0x614>
    80003e94:	00f6f693          	andi	a3,a3,15
    80003e98:	00dd86b3          	add	a3,s11,a3
    80003e9c:	0006c583          	lbu	a1,0(a3)
    80003ea0:	00c7d513          	srli	a0,a5,0xc
    80003ea4:	00c7d69b          	srliw	a3,a5,0xc
    80003ea8:	f8b40223          	sb	a1,-124(s0)
    80003eac:	29067a63          	bgeu	a2,a6,80004140 <__printf+0x638>
    80003eb0:	00f6f693          	andi	a3,a3,15
    80003eb4:	00dd86b3          	add	a3,s11,a3
    80003eb8:	0006c583          	lbu	a1,0(a3)
    80003ebc:	0107d813          	srli	a6,a5,0x10
    80003ec0:	0107d69b          	srliw	a3,a5,0x10
    80003ec4:	f8b402a3          	sb	a1,-123(s0)
    80003ec8:	28a67263          	bgeu	a2,a0,8000414c <__printf+0x644>
    80003ecc:	00f6f693          	andi	a3,a3,15
    80003ed0:	00dd86b3          	add	a3,s11,a3
    80003ed4:	0006c683          	lbu	a3,0(a3)
    80003ed8:	0147d79b          	srliw	a5,a5,0x14
    80003edc:	f8d40323          	sb	a3,-122(s0)
    80003ee0:	21067663          	bgeu	a2,a6,800040ec <__printf+0x5e4>
    80003ee4:	02079793          	slli	a5,a5,0x20
    80003ee8:	0207d793          	srli	a5,a5,0x20
    80003eec:	00fd8db3          	add	s11,s11,a5
    80003ef0:	000dc683          	lbu	a3,0(s11)
    80003ef4:	00800793          	li	a5,8
    80003ef8:	00700c93          	li	s9,7
    80003efc:	f8d403a3          	sb	a3,-121(s0)
    80003f00:	00075c63          	bgez	a4,80003f18 <__printf+0x410>
    80003f04:	f9040713          	addi	a4,s0,-112
    80003f08:	00f70733          	add	a4,a4,a5
    80003f0c:	02d00693          	li	a3,45
    80003f10:	fed70823          	sb	a3,-16(a4)
    80003f14:	00078c93          	mv	s9,a5
    80003f18:	f8040793          	addi	a5,s0,-128
    80003f1c:	01978cb3          	add	s9,a5,s9
    80003f20:	f7f40d13          	addi	s10,s0,-129
    80003f24:	000cc503          	lbu	a0,0(s9)
    80003f28:	fffc8c93          	addi	s9,s9,-1
    80003f2c:	00000097          	auipc	ra,0x0
    80003f30:	9f8080e7          	jalr	-1544(ra) # 80003924 <consputc>
    80003f34:	ff9d18e3          	bne	s10,s9,80003f24 <__printf+0x41c>
    80003f38:	0100006f          	j	80003f48 <__printf+0x440>
    80003f3c:	00000097          	auipc	ra,0x0
    80003f40:	9e8080e7          	jalr	-1560(ra) # 80003924 <consputc>
    80003f44:	000c8493          	mv	s1,s9
    80003f48:	00094503          	lbu	a0,0(s2)
    80003f4c:	c60510e3          	bnez	a0,80003bac <__printf+0xa4>
    80003f50:	e40c0ee3          	beqz	s8,80003dac <__printf+0x2a4>
    80003f54:	00004517          	auipc	a0,0x4
    80003f58:	3ac50513          	addi	a0,a0,940 # 80008300 <pr>
    80003f5c:	00001097          	auipc	ra,0x1
    80003f60:	94c080e7          	jalr	-1716(ra) # 800048a8 <release>
    80003f64:	e49ff06f          	j	80003dac <__printf+0x2a4>
    80003f68:	f7843783          	ld	a5,-136(s0)
    80003f6c:	03000513          	li	a0,48
    80003f70:	01000d13          	li	s10,16
    80003f74:	00878713          	addi	a4,a5,8
    80003f78:	0007bc83          	ld	s9,0(a5)
    80003f7c:	f6e43c23          	sd	a4,-136(s0)
    80003f80:	00000097          	auipc	ra,0x0
    80003f84:	9a4080e7          	jalr	-1628(ra) # 80003924 <consputc>
    80003f88:	07800513          	li	a0,120
    80003f8c:	00000097          	auipc	ra,0x0
    80003f90:	998080e7          	jalr	-1640(ra) # 80003924 <consputc>
    80003f94:	00002d97          	auipc	s11,0x2
    80003f98:	344d8d93          	addi	s11,s11,836 # 800062d8 <digits>
    80003f9c:	03ccd793          	srli	a5,s9,0x3c
    80003fa0:	00fd87b3          	add	a5,s11,a5
    80003fa4:	0007c503          	lbu	a0,0(a5)
    80003fa8:	fffd0d1b          	addiw	s10,s10,-1
    80003fac:	004c9c93          	slli	s9,s9,0x4
    80003fb0:	00000097          	auipc	ra,0x0
    80003fb4:	974080e7          	jalr	-1676(ra) # 80003924 <consputc>
    80003fb8:	fe0d12e3          	bnez	s10,80003f9c <__printf+0x494>
    80003fbc:	f8dff06f          	j	80003f48 <__printf+0x440>
    80003fc0:	f7843783          	ld	a5,-136(s0)
    80003fc4:	0007bc83          	ld	s9,0(a5)
    80003fc8:	00878793          	addi	a5,a5,8
    80003fcc:	f6f43c23          	sd	a5,-136(s0)
    80003fd0:	000c9a63          	bnez	s9,80003fe4 <__printf+0x4dc>
    80003fd4:	1080006f          	j	800040dc <__printf+0x5d4>
    80003fd8:	001c8c93          	addi	s9,s9,1
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	948080e7          	jalr	-1720(ra) # 80003924 <consputc>
    80003fe4:	000cc503          	lbu	a0,0(s9)
    80003fe8:	fe0518e3          	bnez	a0,80003fd8 <__printf+0x4d0>
    80003fec:	f5dff06f          	j	80003f48 <__printf+0x440>
    80003ff0:	02500513          	li	a0,37
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	930080e7          	jalr	-1744(ra) # 80003924 <consputc>
    80003ffc:	000c8513          	mv	a0,s9
    80004000:	00000097          	auipc	ra,0x0
    80004004:	924080e7          	jalr	-1756(ra) # 80003924 <consputc>
    80004008:	f41ff06f          	j	80003f48 <__printf+0x440>
    8000400c:	02500513          	li	a0,37
    80004010:	00000097          	auipc	ra,0x0
    80004014:	914080e7          	jalr	-1772(ra) # 80003924 <consputc>
    80004018:	f31ff06f          	j	80003f48 <__printf+0x440>
    8000401c:	00030513          	mv	a0,t1
    80004020:	00000097          	auipc	ra,0x0
    80004024:	7bc080e7          	jalr	1980(ra) # 800047dc <acquire>
    80004028:	b4dff06f          	j	80003b74 <__printf+0x6c>
    8000402c:	40c0053b          	negw	a0,a2
    80004030:	00a00713          	li	a4,10
    80004034:	02e576bb          	remuw	a3,a0,a4
    80004038:	00002d97          	auipc	s11,0x2
    8000403c:	2a0d8d93          	addi	s11,s11,672 # 800062d8 <digits>
    80004040:	ff700593          	li	a1,-9
    80004044:	02069693          	slli	a3,a3,0x20
    80004048:	0206d693          	srli	a3,a3,0x20
    8000404c:	00dd86b3          	add	a3,s11,a3
    80004050:	0006c683          	lbu	a3,0(a3)
    80004054:	02e557bb          	divuw	a5,a0,a4
    80004058:	f8d40023          	sb	a3,-128(s0)
    8000405c:	10b65e63          	bge	a2,a1,80004178 <__printf+0x670>
    80004060:	06300593          	li	a1,99
    80004064:	02e7f6bb          	remuw	a3,a5,a4
    80004068:	02069693          	slli	a3,a3,0x20
    8000406c:	0206d693          	srli	a3,a3,0x20
    80004070:	00dd86b3          	add	a3,s11,a3
    80004074:	0006c683          	lbu	a3,0(a3)
    80004078:	02e7d73b          	divuw	a4,a5,a4
    8000407c:	00200793          	li	a5,2
    80004080:	f8d400a3          	sb	a3,-127(s0)
    80004084:	bca5ece3          	bltu	a1,a0,80003c5c <__printf+0x154>
    80004088:	ce5ff06f          	j	80003d6c <__printf+0x264>
    8000408c:	40e007bb          	negw	a5,a4
    80004090:	00002d97          	auipc	s11,0x2
    80004094:	248d8d93          	addi	s11,s11,584 # 800062d8 <digits>
    80004098:	00f7f693          	andi	a3,a5,15
    8000409c:	00dd86b3          	add	a3,s11,a3
    800040a0:	0006c583          	lbu	a1,0(a3)
    800040a4:	ff100613          	li	a2,-15
    800040a8:	0047d69b          	srliw	a3,a5,0x4
    800040ac:	f8b40023          	sb	a1,-128(s0)
    800040b0:	0047d59b          	srliw	a1,a5,0x4
    800040b4:	0ac75e63          	bge	a4,a2,80004170 <__printf+0x668>
    800040b8:	00f6f693          	andi	a3,a3,15
    800040bc:	00dd86b3          	add	a3,s11,a3
    800040c0:	0006c603          	lbu	a2,0(a3)
    800040c4:	00f00693          	li	a3,15
    800040c8:	0087d79b          	srliw	a5,a5,0x8
    800040cc:	f8c400a3          	sb	a2,-127(s0)
    800040d0:	d8b6e4e3          	bltu	a3,a1,80003e58 <__printf+0x350>
    800040d4:	00200793          	li	a5,2
    800040d8:	e2dff06f          	j	80003f04 <__printf+0x3fc>
    800040dc:	00002c97          	auipc	s9,0x2
    800040e0:	1dcc8c93          	addi	s9,s9,476 # 800062b8 <CONSOLE_STATUS+0x2a8>
    800040e4:	02800513          	li	a0,40
    800040e8:	ef1ff06f          	j	80003fd8 <__printf+0x4d0>
    800040ec:	00700793          	li	a5,7
    800040f0:	00600c93          	li	s9,6
    800040f4:	e0dff06f          	j	80003f00 <__printf+0x3f8>
    800040f8:	00700793          	li	a5,7
    800040fc:	00600c93          	li	s9,6
    80004100:	c69ff06f          	j	80003d68 <__printf+0x260>
    80004104:	00300793          	li	a5,3
    80004108:	00200c93          	li	s9,2
    8000410c:	c5dff06f          	j	80003d68 <__printf+0x260>
    80004110:	00300793          	li	a5,3
    80004114:	00200c93          	li	s9,2
    80004118:	de9ff06f          	j	80003f00 <__printf+0x3f8>
    8000411c:	00400793          	li	a5,4
    80004120:	00300c93          	li	s9,3
    80004124:	dddff06f          	j	80003f00 <__printf+0x3f8>
    80004128:	00400793          	li	a5,4
    8000412c:	00300c93          	li	s9,3
    80004130:	c39ff06f          	j	80003d68 <__printf+0x260>
    80004134:	00500793          	li	a5,5
    80004138:	00400c93          	li	s9,4
    8000413c:	c2dff06f          	j	80003d68 <__printf+0x260>
    80004140:	00500793          	li	a5,5
    80004144:	00400c93          	li	s9,4
    80004148:	db9ff06f          	j	80003f00 <__printf+0x3f8>
    8000414c:	00600793          	li	a5,6
    80004150:	00500c93          	li	s9,5
    80004154:	dadff06f          	j	80003f00 <__printf+0x3f8>
    80004158:	00600793          	li	a5,6
    8000415c:	00500c93          	li	s9,5
    80004160:	c09ff06f          	j	80003d68 <__printf+0x260>
    80004164:	00800793          	li	a5,8
    80004168:	00700c93          	li	s9,7
    8000416c:	bfdff06f          	j	80003d68 <__printf+0x260>
    80004170:	00100793          	li	a5,1
    80004174:	d91ff06f          	j	80003f04 <__printf+0x3fc>
    80004178:	00100793          	li	a5,1
    8000417c:	bf1ff06f          	j	80003d6c <__printf+0x264>
    80004180:	00900793          	li	a5,9
    80004184:	00800c93          	li	s9,8
    80004188:	be1ff06f          	j	80003d68 <__printf+0x260>
    8000418c:	00002517          	auipc	a0,0x2
    80004190:	13450513          	addi	a0,a0,308 # 800062c0 <CONSOLE_STATUS+0x2b0>
    80004194:	00000097          	auipc	ra,0x0
    80004198:	918080e7          	jalr	-1768(ra) # 80003aac <panic>

000000008000419c <printfinit>:
    8000419c:	fe010113          	addi	sp,sp,-32
    800041a0:	00813823          	sd	s0,16(sp)
    800041a4:	00913423          	sd	s1,8(sp)
    800041a8:	00113c23          	sd	ra,24(sp)
    800041ac:	02010413          	addi	s0,sp,32
    800041b0:	00004497          	auipc	s1,0x4
    800041b4:	15048493          	addi	s1,s1,336 # 80008300 <pr>
    800041b8:	00048513          	mv	a0,s1
    800041bc:	00002597          	auipc	a1,0x2
    800041c0:	11458593          	addi	a1,a1,276 # 800062d0 <CONSOLE_STATUS+0x2c0>
    800041c4:	00000097          	auipc	ra,0x0
    800041c8:	5f4080e7          	jalr	1524(ra) # 800047b8 <initlock>
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	0004ac23          	sw	zero,24(s1)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <uartinit>:
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00813423          	sd	s0,8(sp)
    800041ec:	01010413          	addi	s0,sp,16
    800041f0:	100007b7          	lui	a5,0x10000
    800041f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800041f8:	f8000713          	li	a4,-128
    800041fc:	00e781a3          	sb	a4,3(a5)
    80004200:	00300713          	li	a4,3
    80004204:	00e78023          	sb	a4,0(a5)
    80004208:	000780a3          	sb	zero,1(a5)
    8000420c:	00e781a3          	sb	a4,3(a5)
    80004210:	00700693          	li	a3,7
    80004214:	00d78123          	sb	a3,2(a5)
    80004218:	00e780a3          	sb	a4,1(a5)
    8000421c:	00813403          	ld	s0,8(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <uartputc>:
    80004228:	00003797          	auipc	a5,0x3
    8000422c:	e407a783          	lw	a5,-448(a5) # 80007068 <panicked>
    80004230:	00078463          	beqz	a5,80004238 <uartputc+0x10>
    80004234:	0000006f          	j	80004234 <uartputc+0xc>
    80004238:	fd010113          	addi	sp,sp,-48
    8000423c:	02813023          	sd	s0,32(sp)
    80004240:	00913c23          	sd	s1,24(sp)
    80004244:	01213823          	sd	s2,16(sp)
    80004248:	01313423          	sd	s3,8(sp)
    8000424c:	02113423          	sd	ra,40(sp)
    80004250:	03010413          	addi	s0,sp,48
    80004254:	00003917          	auipc	s2,0x3
    80004258:	e1c90913          	addi	s2,s2,-484 # 80007070 <uart_tx_r>
    8000425c:	00093783          	ld	a5,0(s2)
    80004260:	00003497          	auipc	s1,0x3
    80004264:	e1848493          	addi	s1,s1,-488 # 80007078 <uart_tx_w>
    80004268:	0004b703          	ld	a4,0(s1)
    8000426c:	02078693          	addi	a3,a5,32
    80004270:	00050993          	mv	s3,a0
    80004274:	02e69c63          	bne	a3,a4,800042ac <uartputc+0x84>
    80004278:	00001097          	auipc	ra,0x1
    8000427c:	834080e7          	jalr	-1996(ra) # 80004aac <push_on>
    80004280:	00093783          	ld	a5,0(s2)
    80004284:	0004b703          	ld	a4,0(s1)
    80004288:	02078793          	addi	a5,a5,32
    8000428c:	00e79463          	bne	a5,a4,80004294 <uartputc+0x6c>
    80004290:	0000006f          	j	80004290 <uartputc+0x68>
    80004294:	00001097          	auipc	ra,0x1
    80004298:	88c080e7          	jalr	-1908(ra) # 80004b20 <pop_on>
    8000429c:	00093783          	ld	a5,0(s2)
    800042a0:	0004b703          	ld	a4,0(s1)
    800042a4:	02078693          	addi	a3,a5,32
    800042a8:	fce688e3          	beq	a3,a4,80004278 <uartputc+0x50>
    800042ac:	01f77693          	andi	a3,a4,31
    800042b0:	00004597          	auipc	a1,0x4
    800042b4:	07058593          	addi	a1,a1,112 # 80008320 <uart_tx_buf>
    800042b8:	00d586b3          	add	a3,a1,a3
    800042bc:	00170713          	addi	a4,a4,1
    800042c0:	01368023          	sb	s3,0(a3)
    800042c4:	00e4b023          	sd	a4,0(s1)
    800042c8:	10000637          	lui	a2,0x10000
    800042cc:	02f71063          	bne	a4,a5,800042ec <uartputc+0xc4>
    800042d0:	0340006f          	j	80004304 <uartputc+0xdc>
    800042d4:	00074703          	lbu	a4,0(a4)
    800042d8:	00f93023          	sd	a5,0(s2)
    800042dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800042e0:	00093783          	ld	a5,0(s2)
    800042e4:	0004b703          	ld	a4,0(s1)
    800042e8:	00f70e63          	beq	a4,a5,80004304 <uartputc+0xdc>
    800042ec:	00564683          	lbu	a3,5(a2)
    800042f0:	01f7f713          	andi	a4,a5,31
    800042f4:	00e58733          	add	a4,a1,a4
    800042f8:	0206f693          	andi	a3,a3,32
    800042fc:	00178793          	addi	a5,a5,1
    80004300:	fc069ae3          	bnez	a3,800042d4 <uartputc+0xac>
    80004304:	02813083          	ld	ra,40(sp)
    80004308:	02013403          	ld	s0,32(sp)
    8000430c:	01813483          	ld	s1,24(sp)
    80004310:	01013903          	ld	s2,16(sp)
    80004314:	00813983          	ld	s3,8(sp)
    80004318:	03010113          	addi	sp,sp,48
    8000431c:	00008067          	ret

0000000080004320 <uartputc_sync>:
    80004320:	ff010113          	addi	sp,sp,-16
    80004324:	00813423          	sd	s0,8(sp)
    80004328:	01010413          	addi	s0,sp,16
    8000432c:	00003717          	auipc	a4,0x3
    80004330:	d3c72703          	lw	a4,-708(a4) # 80007068 <panicked>
    80004334:	02071663          	bnez	a4,80004360 <uartputc_sync+0x40>
    80004338:	00050793          	mv	a5,a0
    8000433c:	100006b7          	lui	a3,0x10000
    80004340:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004344:	02077713          	andi	a4,a4,32
    80004348:	fe070ce3          	beqz	a4,80004340 <uartputc_sync+0x20>
    8000434c:	0ff7f793          	andi	a5,a5,255
    80004350:	00f68023          	sb	a5,0(a3)
    80004354:	00813403          	ld	s0,8(sp)
    80004358:	01010113          	addi	sp,sp,16
    8000435c:	00008067          	ret
    80004360:	0000006f          	j	80004360 <uartputc_sync+0x40>

0000000080004364 <uartstart>:
    80004364:	ff010113          	addi	sp,sp,-16
    80004368:	00813423          	sd	s0,8(sp)
    8000436c:	01010413          	addi	s0,sp,16
    80004370:	00003617          	auipc	a2,0x3
    80004374:	d0060613          	addi	a2,a2,-768 # 80007070 <uart_tx_r>
    80004378:	00003517          	auipc	a0,0x3
    8000437c:	d0050513          	addi	a0,a0,-768 # 80007078 <uart_tx_w>
    80004380:	00063783          	ld	a5,0(a2)
    80004384:	00053703          	ld	a4,0(a0)
    80004388:	04f70263          	beq	a4,a5,800043cc <uartstart+0x68>
    8000438c:	100005b7          	lui	a1,0x10000
    80004390:	00004817          	auipc	a6,0x4
    80004394:	f9080813          	addi	a6,a6,-112 # 80008320 <uart_tx_buf>
    80004398:	01c0006f          	j	800043b4 <uartstart+0x50>
    8000439c:	0006c703          	lbu	a4,0(a3)
    800043a0:	00f63023          	sd	a5,0(a2)
    800043a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800043a8:	00063783          	ld	a5,0(a2)
    800043ac:	00053703          	ld	a4,0(a0)
    800043b0:	00f70e63          	beq	a4,a5,800043cc <uartstart+0x68>
    800043b4:	01f7f713          	andi	a4,a5,31
    800043b8:	00e806b3          	add	a3,a6,a4
    800043bc:	0055c703          	lbu	a4,5(a1)
    800043c0:	00178793          	addi	a5,a5,1
    800043c4:	02077713          	andi	a4,a4,32
    800043c8:	fc071ae3          	bnez	a4,8000439c <uartstart+0x38>
    800043cc:	00813403          	ld	s0,8(sp)
    800043d0:	01010113          	addi	sp,sp,16
    800043d4:	00008067          	ret

00000000800043d8 <uartgetc>:
    800043d8:	ff010113          	addi	sp,sp,-16
    800043dc:	00813423          	sd	s0,8(sp)
    800043e0:	01010413          	addi	s0,sp,16
    800043e4:	10000737          	lui	a4,0x10000
    800043e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800043ec:	0017f793          	andi	a5,a5,1
    800043f0:	00078c63          	beqz	a5,80004408 <uartgetc+0x30>
    800043f4:	00074503          	lbu	a0,0(a4)
    800043f8:	0ff57513          	andi	a0,a0,255
    800043fc:	00813403          	ld	s0,8(sp)
    80004400:	01010113          	addi	sp,sp,16
    80004404:	00008067          	ret
    80004408:	fff00513          	li	a0,-1
    8000440c:	ff1ff06f          	j	800043fc <uartgetc+0x24>

0000000080004410 <uartintr>:
    80004410:	100007b7          	lui	a5,0x10000
    80004414:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004418:	0017f793          	andi	a5,a5,1
    8000441c:	0a078463          	beqz	a5,800044c4 <uartintr+0xb4>
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	100004b7          	lui	s1,0x10000
    80004438:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000443c:	0ff57513          	andi	a0,a0,255
    80004440:	fffff097          	auipc	ra,0xfffff
    80004444:	534080e7          	jalr	1332(ra) # 80003974 <consoleintr>
    80004448:	0054c783          	lbu	a5,5(s1)
    8000444c:	0017f793          	andi	a5,a5,1
    80004450:	fe0794e3          	bnez	a5,80004438 <uartintr+0x28>
    80004454:	00003617          	auipc	a2,0x3
    80004458:	c1c60613          	addi	a2,a2,-996 # 80007070 <uart_tx_r>
    8000445c:	00003517          	auipc	a0,0x3
    80004460:	c1c50513          	addi	a0,a0,-996 # 80007078 <uart_tx_w>
    80004464:	00063783          	ld	a5,0(a2)
    80004468:	00053703          	ld	a4,0(a0)
    8000446c:	04f70263          	beq	a4,a5,800044b0 <uartintr+0xa0>
    80004470:	100005b7          	lui	a1,0x10000
    80004474:	00004817          	auipc	a6,0x4
    80004478:	eac80813          	addi	a6,a6,-340 # 80008320 <uart_tx_buf>
    8000447c:	01c0006f          	j	80004498 <uartintr+0x88>
    80004480:	0006c703          	lbu	a4,0(a3)
    80004484:	00f63023          	sd	a5,0(a2)
    80004488:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000448c:	00063783          	ld	a5,0(a2)
    80004490:	00053703          	ld	a4,0(a0)
    80004494:	00f70e63          	beq	a4,a5,800044b0 <uartintr+0xa0>
    80004498:	01f7f713          	andi	a4,a5,31
    8000449c:	00e806b3          	add	a3,a6,a4
    800044a0:	0055c703          	lbu	a4,5(a1)
    800044a4:	00178793          	addi	a5,a5,1
    800044a8:	02077713          	andi	a4,a4,32
    800044ac:	fc071ae3          	bnez	a4,80004480 <uartintr+0x70>
    800044b0:	01813083          	ld	ra,24(sp)
    800044b4:	01013403          	ld	s0,16(sp)
    800044b8:	00813483          	ld	s1,8(sp)
    800044bc:	02010113          	addi	sp,sp,32
    800044c0:	00008067          	ret
    800044c4:	00003617          	auipc	a2,0x3
    800044c8:	bac60613          	addi	a2,a2,-1108 # 80007070 <uart_tx_r>
    800044cc:	00003517          	auipc	a0,0x3
    800044d0:	bac50513          	addi	a0,a0,-1108 # 80007078 <uart_tx_w>
    800044d4:	00063783          	ld	a5,0(a2)
    800044d8:	00053703          	ld	a4,0(a0)
    800044dc:	04f70263          	beq	a4,a5,80004520 <uartintr+0x110>
    800044e0:	100005b7          	lui	a1,0x10000
    800044e4:	00004817          	auipc	a6,0x4
    800044e8:	e3c80813          	addi	a6,a6,-452 # 80008320 <uart_tx_buf>
    800044ec:	01c0006f          	j	80004508 <uartintr+0xf8>
    800044f0:	0006c703          	lbu	a4,0(a3)
    800044f4:	00f63023          	sd	a5,0(a2)
    800044f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800044fc:	00063783          	ld	a5,0(a2)
    80004500:	00053703          	ld	a4,0(a0)
    80004504:	02f70063          	beq	a4,a5,80004524 <uartintr+0x114>
    80004508:	01f7f713          	andi	a4,a5,31
    8000450c:	00e806b3          	add	a3,a6,a4
    80004510:	0055c703          	lbu	a4,5(a1)
    80004514:	00178793          	addi	a5,a5,1
    80004518:	02077713          	andi	a4,a4,32
    8000451c:	fc071ae3          	bnez	a4,800044f0 <uartintr+0xe0>
    80004520:	00008067          	ret
    80004524:	00008067          	ret

0000000080004528 <kinit>:
    80004528:	fc010113          	addi	sp,sp,-64
    8000452c:	02913423          	sd	s1,40(sp)
    80004530:	fffff7b7          	lui	a5,0xfffff
    80004534:	00005497          	auipc	s1,0x5
    80004538:	e0b48493          	addi	s1,s1,-501 # 8000933f <end+0xfff>
    8000453c:	02813823          	sd	s0,48(sp)
    80004540:	01313c23          	sd	s3,24(sp)
    80004544:	00f4f4b3          	and	s1,s1,a5
    80004548:	02113c23          	sd	ra,56(sp)
    8000454c:	03213023          	sd	s2,32(sp)
    80004550:	01413823          	sd	s4,16(sp)
    80004554:	01513423          	sd	s5,8(sp)
    80004558:	04010413          	addi	s0,sp,64
    8000455c:	000017b7          	lui	a5,0x1
    80004560:	01100993          	li	s3,17
    80004564:	00f487b3          	add	a5,s1,a5
    80004568:	01b99993          	slli	s3,s3,0x1b
    8000456c:	06f9e063          	bltu	s3,a5,800045cc <kinit+0xa4>
    80004570:	00004a97          	auipc	s5,0x4
    80004574:	dd0a8a93          	addi	s5,s5,-560 # 80008340 <end>
    80004578:	0754ec63          	bltu	s1,s5,800045f0 <kinit+0xc8>
    8000457c:	0734fa63          	bgeu	s1,s3,800045f0 <kinit+0xc8>
    80004580:	00088a37          	lui	s4,0x88
    80004584:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004588:	00003917          	auipc	s2,0x3
    8000458c:	af890913          	addi	s2,s2,-1288 # 80007080 <kmem>
    80004590:	00ca1a13          	slli	s4,s4,0xc
    80004594:	0140006f          	j	800045a8 <kinit+0x80>
    80004598:	000017b7          	lui	a5,0x1
    8000459c:	00f484b3          	add	s1,s1,a5
    800045a0:	0554e863          	bltu	s1,s5,800045f0 <kinit+0xc8>
    800045a4:	0534f663          	bgeu	s1,s3,800045f0 <kinit+0xc8>
    800045a8:	00001637          	lui	a2,0x1
    800045ac:	00100593          	li	a1,1
    800045b0:	00048513          	mv	a0,s1
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	5e4080e7          	jalr	1508(ra) # 80004b98 <__memset>
    800045bc:	00093783          	ld	a5,0(s2)
    800045c0:	00f4b023          	sd	a5,0(s1)
    800045c4:	00993023          	sd	s1,0(s2)
    800045c8:	fd4498e3          	bne	s1,s4,80004598 <kinit+0x70>
    800045cc:	03813083          	ld	ra,56(sp)
    800045d0:	03013403          	ld	s0,48(sp)
    800045d4:	02813483          	ld	s1,40(sp)
    800045d8:	02013903          	ld	s2,32(sp)
    800045dc:	01813983          	ld	s3,24(sp)
    800045e0:	01013a03          	ld	s4,16(sp)
    800045e4:	00813a83          	ld	s5,8(sp)
    800045e8:	04010113          	addi	sp,sp,64
    800045ec:	00008067          	ret
    800045f0:	00002517          	auipc	a0,0x2
    800045f4:	d0050513          	addi	a0,a0,-768 # 800062f0 <digits+0x18>
    800045f8:	fffff097          	auipc	ra,0xfffff
    800045fc:	4b4080e7          	jalr	1204(ra) # 80003aac <panic>

0000000080004600 <freerange>:
    80004600:	fc010113          	addi	sp,sp,-64
    80004604:	000017b7          	lui	a5,0x1
    80004608:	02913423          	sd	s1,40(sp)
    8000460c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004610:	009504b3          	add	s1,a0,s1
    80004614:	fffff537          	lui	a0,0xfffff
    80004618:	02813823          	sd	s0,48(sp)
    8000461c:	02113c23          	sd	ra,56(sp)
    80004620:	03213023          	sd	s2,32(sp)
    80004624:	01313c23          	sd	s3,24(sp)
    80004628:	01413823          	sd	s4,16(sp)
    8000462c:	01513423          	sd	s5,8(sp)
    80004630:	01613023          	sd	s6,0(sp)
    80004634:	04010413          	addi	s0,sp,64
    80004638:	00a4f4b3          	and	s1,s1,a0
    8000463c:	00f487b3          	add	a5,s1,a5
    80004640:	06f5e463          	bltu	a1,a5,800046a8 <freerange+0xa8>
    80004644:	00004a97          	auipc	s5,0x4
    80004648:	cfca8a93          	addi	s5,s5,-772 # 80008340 <end>
    8000464c:	0954e263          	bltu	s1,s5,800046d0 <freerange+0xd0>
    80004650:	01100993          	li	s3,17
    80004654:	01b99993          	slli	s3,s3,0x1b
    80004658:	0734fc63          	bgeu	s1,s3,800046d0 <freerange+0xd0>
    8000465c:	00058a13          	mv	s4,a1
    80004660:	00003917          	auipc	s2,0x3
    80004664:	a2090913          	addi	s2,s2,-1504 # 80007080 <kmem>
    80004668:	00002b37          	lui	s6,0x2
    8000466c:	0140006f          	j	80004680 <freerange+0x80>
    80004670:	000017b7          	lui	a5,0x1
    80004674:	00f484b3          	add	s1,s1,a5
    80004678:	0554ec63          	bltu	s1,s5,800046d0 <freerange+0xd0>
    8000467c:	0534fa63          	bgeu	s1,s3,800046d0 <freerange+0xd0>
    80004680:	00001637          	lui	a2,0x1
    80004684:	00100593          	li	a1,1
    80004688:	00048513          	mv	a0,s1
    8000468c:	00000097          	auipc	ra,0x0
    80004690:	50c080e7          	jalr	1292(ra) # 80004b98 <__memset>
    80004694:	00093703          	ld	a4,0(s2)
    80004698:	016487b3          	add	a5,s1,s6
    8000469c:	00e4b023          	sd	a4,0(s1)
    800046a0:	00993023          	sd	s1,0(s2)
    800046a4:	fcfa76e3          	bgeu	s4,a5,80004670 <freerange+0x70>
    800046a8:	03813083          	ld	ra,56(sp)
    800046ac:	03013403          	ld	s0,48(sp)
    800046b0:	02813483          	ld	s1,40(sp)
    800046b4:	02013903          	ld	s2,32(sp)
    800046b8:	01813983          	ld	s3,24(sp)
    800046bc:	01013a03          	ld	s4,16(sp)
    800046c0:	00813a83          	ld	s5,8(sp)
    800046c4:	00013b03          	ld	s6,0(sp)
    800046c8:	04010113          	addi	sp,sp,64
    800046cc:	00008067          	ret
    800046d0:	00002517          	auipc	a0,0x2
    800046d4:	c2050513          	addi	a0,a0,-992 # 800062f0 <digits+0x18>
    800046d8:	fffff097          	auipc	ra,0xfffff
    800046dc:	3d4080e7          	jalr	980(ra) # 80003aac <panic>

00000000800046e0 <kfree>:
    800046e0:	fe010113          	addi	sp,sp,-32
    800046e4:	00813823          	sd	s0,16(sp)
    800046e8:	00113c23          	sd	ra,24(sp)
    800046ec:	00913423          	sd	s1,8(sp)
    800046f0:	02010413          	addi	s0,sp,32
    800046f4:	03451793          	slli	a5,a0,0x34
    800046f8:	04079c63          	bnez	a5,80004750 <kfree+0x70>
    800046fc:	00004797          	auipc	a5,0x4
    80004700:	c4478793          	addi	a5,a5,-956 # 80008340 <end>
    80004704:	00050493          	mv	s1,a0
    80004708:	04f56463          	bltu	a0,a5,80004750 <kfree+0x70>
    8000470c:	01100793          	li	a5,17
    80004710:	01b79793          	slli	a5,a5,0x1b
    80004714:	02f57e63          	bgeu	a0,a5,80004750 <kfree+0x70>
    80004718:	00001637          	lui	a2,0x1
    8000471c:	00100593          	li	a1,1
    80004720:	00000097          	auipc	ra,0x0
    80004724:	478080e7          	jalr	1144(ra) # 80004b98 <__memset>
    80004728:	00003797          	auipc	a5,0x3
    8000472c:	95878793          	addi	a5,a5,-1704 # 80007080 <kmem>
    80004730:	0007b703          	ld	a4,0(a5)
    80004734:	01813083          	ld	ra,24(sp)
    80004738:	01013403          	ld	s0,16(sp)
    8000473c:	00e4b023          	sd	a4,0(s1)
    80004740:	0097b023          	sd	s1,0(a5)
    80004744:	00813483          	ld	s1,8(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret
    80004750:	00002517          	auipc	a0,0x2
    80004754:	ba050513          	addi	a0,a0,-1120 # 800062f0 <digits+0x18>
    80004758:	fffff097          	auipc	ra,0xfffff
    8000475c:	354080e7          	jalr	852(ra) # 80003aac <panic>

0000000080004760 <kalloc>:
    80004760:	fe010113          	addi	sp,sp,-32
    80004764:	00813823          	sd	s0,16(sp)
    80004768:	00913423          	sd	s1,8(sp)
    8000476c:	00113c23          	sd	ra,24(sp)
    80004770:	02010413          	addi	s0,sp,32
    80004774:	00003797          	auipc	a5,0x3
    80004778:	90c78793          	addi	a5,a5,-1780 # 80007080 <kmem>
    8000477c:	0007b483          	ld	s1,0(a5)
    80004780:	02048063          	beqz	s1,800047a0 <kalloc+0x40>
    80004784:	0004b703          	ld	a4,0(s1)
    80004788:	00001637          	lui	a2,0x1
    8000478c:	00500593          	li	a1,5
    80004790:	00048513          	mv	a0,s1
    80004794:	00e7b023          	sd	a4,0(a5)
    80004798:	00000097          	auipc	ra,0x0
    8000479c:	400080e7          	jalr	1024(ra) # 80004b98 <__memset>
    800047a0:	01813083          	ld	ra,24(sp)
    800047a4:	01013403          	ld	s0,16(sp)
    800047a8:	00048513          	mv	a0,s1
    800047ac:	00813483          	ld	s1,8(sp)
    800047b0:	02010113          	addi	sp,sp,32
    800047b4:	00008067          	ret

00000000800047b8 <initlock>:
    800047b8:	ff010113          	addi	sp,sp,-16
    800047bc:	00813423          	sd	s0,8(sp)
    800047c0:	01010413          	addi	s0,sp,16
    800047c4:	00813403          	ld	s0,8(sp)
    800047c8:	00b53423          	sd	a1,8(a0)
    800047cc:	00052023          	sw	zero,0(a0)
    800047d0:	00053823          	sd	zero,16(a0)
    800047d4:	01010113          	addi	sp,sp,16
    800047d8:	00008067          	ret

00000000800047dc <acquire>:
    800047dc:	fe010113          	addi	sp,sp,-32
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00913423          	sd	s1,8(sp)
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	01213023          	sd	s2,0(sp)
    800047f0:	02010413          	addi	s0,sp,32
    800047f4:	00050493          	mv	s1,a0
    800047f8:	10002973          	csrr	s2,sstatus
    800047fc:	100027f3          	csrr	a5,sstatus
    80004800:	ffd7f793          	andi	a5,a5,-3
    80004804:	10079073          	csrw	sstatus,a5
    80004808:	fffff097          	auipc	ra,0xfffff
    8000480c:	8e8080e7          	jalr	-1816(ra) # 800030f0 <mycpu>
    80004810:	07852783          	lw	a5,120(a0)
    80004814:	06078e63          	beqz	a5,80004890 <acquire+0xb4>
    80004818:	fffff097          	auipc	ra,0xfffff
    8000481c:	8d8080e7          	jalr	-1832(ra) # 800030f0 <mycpu>
    80004820:	07852783          	lw	a5,120(a0)
    80004824:	0004a703          	lw	a4,0(s1)
    80004828:	0017879b          	addiw	a5,a5,1
    8000482c:	06f52c23          	sw	a5,120(a0)
    80004830:	04071063          	bnez	a4,80004870 <acquire+0x94>
    80004834:	00100713          	li	a4,1
    80004838:	00070793          	mv	a5,a4
    8000483c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004840:	0007879b          	sext.w	a5,a5
    80004844:	fe079ae3          	bnez	a5,80004838 <acquire+0x5c>
    80004848:	0ff0000f          	fence
    8000484c:	fffff097          	auipc	ra,0xfffff
    80004850:	8a4080e7          	jalr	-1884(ra) # 800030f0 <mycpu>
    80004854:	01813083          	ld	ra,24(sp)
    80004858:	01013403          	ld	s0,16(sp)
    8000485c:	00a4b823          	sd	a0,16(s1)
    80004860:	00013903          	ld	s2,0(sp)
    80004864:	00813483          	ld	s1,8(sp)
    80004868:	02010113          	addi	sp,sp,32
    8000486c:	00008067          	ret
    80004870:	0104b903          	ld	s2,16(s1)
    80004874:	fffff097          	auipc	ra,0xfffff
    80004878:	87c080e7          	jalr	-1924(ra) # 800030f0 <mycpu>
    8000487c:	faa91ce3          	bne	s2,a0,80004834 <acquire+0x58>
    80004880:	00002517          	auipc	a0,0x2
    80004884:	a7850513          	addi	a0,a0,-1416 # 800062f8 <digits+0x20>
    80004888:	fffff097          	auipc	ra,0xfffff
    8000488c:	224080e7          	jalr	548(ra) # 80003aac <panic>
    80004890:	00195913          	srli	s2,s2,0x1
    80004894:	fffff097          	auipc	ra,0xfffff
    80004898:	85c080e7          	jalr	-1956(ra) # 800030f0 <mycpu>
    8000489c:	00197913          	andi	s2,s2,1
    800048a0:	07252e23          	sw	s2,124(a0)
    800048a4:	f75ff06f          	j	80004818 <acquire+0x3c>

00000000800048a8 <release>:
    800048a8:	fe010113          	addi	sp,sp,-32
    800048ac:	00813823          	sd	s0,16(sp)
    800048b0:	00113c23          	sd	ra,24(sp)
    800048b4:	00913423          	sd	s1,8(sp)
    800048b8:	01213023          	sd	s2,0(sp)
    800048bc:	02010413          	addi	s0,sp,32
    800048c0:	00052783          	lw	a5,0(a0)
    800048c4:	00079a63          	bnez	a5,800048d8 <release+0x30>
    800048c8:	00002517          	auipc	a0,0x2
    800048cc:	a3850513          	addi	a0,a0,-1480 # 80006300 <digits+0x28>
    800048d0:	fffff097          	auipc	ra,0xfffff
    800048d4:	1dc080e7          	jalr	476(ra) # 80003aac <panic>
    800048d8:	01053903          	ld	s2,16(a0)
    800048dc:	00050493          	mv	s1,a0
    800048e0:	fffff097          	auipc	ra,0xfffff
    800048e4:	810080e7          	jalr	-2032(ra) # 800030f0 <mycpu>
    800048e8:	fea910e3          	bne	s2,a0,800048c8 <release+0x20>
    800048ec:	0004b823          	sd	zero,16(s1)
    800048f0:	0ff0000f          	fence
    800048f4:	0f50000f          	fence	iorw,ow
    800048f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800048fc:	ffffe097          	auipc	ra,0xffffe
    80004900:	7f4080e7          	jalr	2036(ra) # 800030f0 <mycpu>
    80004904:	100027f3          	csrr	a5,sstatus
    80004908:	0027f793          	andi	a5,a5,2
    8000490c:	04079a63          	bnez	a5,80004960 <release+0xb8>
    80004910:	07852783          	lw	a5,120(a0)
    80004914:	02f05e63          	blez	a5,80004950 <release+0xa8>
    80004918:	fff7871b          	addiw	a4,a5,-1
    8000491c:	06e52c23          	sw	a4,120(a0)
    80004920:	00071c63          	bnez	a4,80004938 <release+0x90>
    80004924:	07c52783          	lw	a5,124(a0)
    80004928:	00078863          	beqz	a5,80004938 <release+0x90>
    8000492c:	100027f3          	csrr	a5,sstatus
    80004930:	0027e793          	ori	a5,a5,2
    80004934:	10079073          	csrw	sstatus,a5
    80004938:	01813083          	ld	ra,24(sp)
    8000493c:	01013403          	ld	s0,16(sp)
    80004940:	00813483          	ld	s1,8(sp)
    80004944:	00013903          	ld	s2,0(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret
    80004950:	00002517          	auipc	a0,0x2
    80004954:	9d050513          	addi	a0,a0,-1584 # 80006320 <digits+0x48>
    80004958:	fffff097          	auipc	ra,0xfffff
    8000495c:	154080e7          	jalr	340(ra) # 80003aac <panic>
    80004960:	00002517          	auipc	a0,0x2
    80004964:	9a850513          	addi	a0,a0,-1624 # 80006308 <digits+0x30>
    80004968:	fffff097          	auipc	ra,0xfffff
    8000496c:	144080e7          	jalr	324(ra) # 80003aac <panic>

0000000080004970 <holding>:
    80004970:	00052783          	lw	a5,0(a0)
    80004974:	00079663          	bnez	a5,80004980 <holding+0x10>
    80004978:	00000513          	li	a0,0
    8000497c:	00008067          	ret
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	00813823          	sd	s0,16(sp)
    80004988:	00913423          	sd	s1,8(sp)
    8000498c:	00113c23          	sd	ra,24(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	01053483          	ld	s1,16(a0)
    80004998:	ffffe097          	auipc	ra,0xffffe
    8000499c:	758080e7          	jalr	1880(ra) # 800030f0 <mycpu>
    800049a0:	01813083          	ld	ra,24(sp)
    800049a4:	01013403          	ld	s0,16(sp)
    800049a8:	40a48533          	sub	a0,s1,a0
    800049ac:	00153513          	seqz	a0,a0
    800049b0:	00813483          	ld	s1,8(sp)
    800049b4:	02010113          	addi	sp,sp,32
    800049b8:	00008067          	ret

00000000800049bc <push_off>:
    800049bc:	fe010113          	addi	sp,sp,-32
    800049c0:	00813823          	sd	s0,16(sp)
    800049c4:	00113c23          	sd	ra,24(sp)
    800049c8:	00913423          	sd	s1,8(sp)
    800049cc:	02010413          	addi	s0,sp,32
    800049d0:	100024f3          	csrr	s1,sstatus
    800049d4:	100027f3          	csrr	a5,sstatus
    800049d8:	ffd7f793          	andi	a5,a5,-3
    800049dc:	10079073          	csrw	sstatus,a5
    800049e0:	ffffe097          	auipc	ra,0xffffe
    800049e4:	710080e7          	jalr	1808(ra) # 800030f0 <mycpu>
    800049e8:	07852783          	lw	a5,120(a0)
    800049ec:	02078663          	beqz	a5,80004a18 <push_off+0x5c>
    800049f0:	ffffe097          	auipc	ra,0xffffe
    800049f4:	700080e7          	jalr	1792(ra) # 800030f0 <mycpu>
    800049f8:	07852783          	lw	a5,120(a0)
    800049fc:	01813083          	ld	ra,24(sp)
    80004a00:	01013403          	ld	s0,16(sp)
    80004a04:	0017879b          	addiw	a5,a5,1
    80004a08:	06f52c23          	sw	a5,120(a0)
    80004a0c:	00813483          	ld	s1,8(sp)
    80004a10:	02010113          	addi	sp,sp,32
    80004a14:	00008067          	ret
    80004a18:	0014d493          	srli	s1,s1,0x1
    80004a1c:	ffffe097          	auipc	ra,0xffffe
    80004a20:	6d4080e7          	jalr	1748(ra) # 800030f0 <mycpu>
    80004a24:	0014f493          	andi	s1,s1,1
    80004a28:	06952e23          	sw	s1,124(a0)
    80004a2c:	fc5ff06f          	j	800049f0 <push_off+0x34>

0000000080004a30 <pop_off>:
    80004a30:	ff010113          	addi	sp,sp,-16
    80004a34:	00813023          	sd	s0,0(sp)
    80004a38:	00113423          	sd	ra,8(sp)
    80004a3c:	01010413          	addi	s0,sp,16
    80004a40:	ffffe097          	auipc	ra,0xffffe
    80004a44:	6b0080e7          	jalr	1712(ra) # 800030f0 <mycpu>
    80004a48:	100027f3          	csrr	a5,sstatus
    80004a4c:	0027f793          	andi	a5,a5,2
    80004a50:	04079663          	bnez	a5,80004a9c <pop_off+0x6c>
    80004a54:	07852783          	lw	a5,120(a0)
    80004a58:	02f05a63          	blez	a5,80004a8c <pop_off+0x5c>
    80004a5c:	fff7871b          	addiw	a4,a5,-1
    80004a60:	06e52c23          	sw	a4,120(a0)
    80004a64:	00071c63          	bnez	a4,80004a7c <pop_off+0x4c>
    80004a68:	07c52783          	lw	a5,124(a0)
    80004a6c:	00078863          	beqz	a5,80004a7c <pop_off+0x4c>
    80004a70:	100027f3          	csrr	a5,sstatus
    80004a74:	0027e793          	ori	a5,a5,2
    80004a78:	10079073          	csrw	sstatus,a5
    80004a7c:	00813083          	ld	ra,8(sp)
    80004a80:	00013403          	ld	s0,0(sp)
    80004a84:	01010113          	addi	sp,sp,16
    80004a88:	00008067          	ret
    80004a8c:	00002517          	auipc	a0,0x2
    80004a90:	89450513          	addi	a0,a0,-1900 # 80006320 <digits+0x48>
    80004a94:	fffff097          	auipc	ra,0xfffff
    80004a98:	018080e7          	jalr	24(ra) # 80003aac <panic>
    80004a9c:	00002517          	auipc	a0,0x2
    80004aa0:	86c50513          	addi	a0,a0,-1940 # 80006308 <digits+0x30>
    80004aa4:	fffff097          	auipc	ra,0xfffff
    80004aa8:	008080e7          	jalr	8(ra) # 80003aac <panic>

0000000080004aac <push_on>:
    80004aac:	fe010113          	addi	sp,sp,-32
    80004ab0:	00813823          	sd	s0,16(sp)
    80004ab4:	00113c23          	sd	ra,24(sp)
    80004ab8:	00913423          	sd	s1,8(sp)
    80004abc:	02010413          	addi	s0,sp,32
    80004ac0:	100024f3          	csrr	s1,sstatus
    80004ac4:	100027f3          	csrr	a5,sstatus
    80004ac8:	0027e793          	ori	a5,a5,2
    80004acc:	10079073          	csrw	sstatus,a5
    80004ad0:	ffffe097          	auipc	ra,0xffffe
    80004ad4:	620080e7          	jalr	1568(ra) # 800030f0 <mycpu>
    80004ad8:	07852783          	lw	a5,120(a0)
    80004adc:	02078663          	beqz	a5,80004b08 <push_on+0x5c>
    80004ae0:	ffffe097          	auipc	ra,0xffffe
    80004ae4:	610080e7          	jalr	1552(ra) # 800030f0 <mycpu>
    80004ae8:	07852783          	lw	a5,120(a0)
    80004aec:	01813083          	ld	ra,24(sp)
    80004af0:	01013403          	ld	s0,16(sp)
    80004af4:	0017879b          	addiw	a5,a5,1
    80004af8:	06f52c23          	sw	a5,120(a0)
    80004afc:	00813483          	ld	s1,8(sp)
    80004b00:	02010113          	addi	sp,sp,32
    80004b04:	00008067          	ret
    80004b08:	0014d493          	srli	s1,s1,0x1
    80004b0c:	ffffe097          	auipc	ra,0xffffe
    80004b10:	5e4080e7          	jalr	1508(ra) # 800030f0 <mycpu>
    80004b14:	0014f493          	andi	s1,s1,1
    80004b18:	06952e23          	sw	s1,124(a0)
    80004b1c:	fc5ff06f          	j	80004ae0 <push_on+0x34>

0000000080004b20 <pop_on>:
    80004b20:	ff010113          	addi	sp,sp,-16
    80004b24:	00813023          	sd	s0,0(sp)
    80004b28:	00113423          	sd	ra,8(sp)
    80004b2c:	01010413          	addi	s0,sp,16
    80004b30:	ffffe097          	auipc	ra,0xffffe
    80004b34:	5c0080e7          	jalr	1472(ra) # 800030f0 <mycpu>
    80004b38:	100027f3          	csrr	a5,sstatus
    80004b3c:	0027f793          	andi	a5,a5,2
    80004b40:	04078463          	beqz	a5,80004b88 <pop_on+0x68>
    80004b44:	07852783          	lw	a5,120(a0)
    80004b48:	02f05863          	blez	a5,80004b78 <pop_on+0x58>
    80004b4c:	fff7879b          	addiw	a5,a5,-1
    80004b50:	06f52c23          	sw	a5,120(a0)
    80004b54:	07853783          	ld	a5,120(a0)
    80004b58:	00079863          	bnez	a5,80004b68 <pop_on+0x48>
    80004b5c:	100027f3          	csrr	a5,sstatus
    80004b60:	ffd7f793          	andi	a5,a5,-3
    80004b64:	10079073          	csrw	sstatus,a5
    80004b68:	00813083          	ld	ra,8(sp)
    80004b6c:	00013403          	ld	s0,0(sp)
    80004b70:	01010113          	addi	sp,sp,16
    80004b74:	00008067          	ret
    80004b78:	00001517          	auipc	a0,0x1
    80004b7c:	7d050513          	addi	a0,a0,2000 # 80006348 <digits+0x70>
    80004b80:	fffff097          	auipc	ra,0xfffff
    80004b84:	f2c080e7          	jalr	-212(ra) # 80003aac <panic>
    80004b88:	00001517          	auipc	a0,0x1
    80004b8c:	7a050513          	addi	a0,a0,1952 # 80006328 <digits+0x50>
    80004b90:	fffff097          	auipc	ra,0xfffff
    80004b94:	f1c080e7          	jalr	-228(ra) # 80003aac <panic>

0000000080004b98 <__memset>:
    80004b98:	ff010113          	addi	sp,sp,-16
    80004b9c:	00813423          	sd	s0,8(sp)
    80004ba0:	01010413          	addi	s0,sp,16
    80004ba4:	1a060e63          	beqz	a2,80004d60 <__memset+0x1c8>
    80004ba8:	40a007b3          	neg	a5,a0
    80004bac:	0077f793          	andi	a5,a5,7
    80004bb0:	00778693          	addi	a3,a5,7
    80004bb4:	00b00813          	li	a6,11
    80004bb8:	0ff5f593          	andi	a1,a1,255
    80004bbc:	fff6071b          	addiw	a4,a2,-1
    80004bc0:	1b06e663          	bltu	a3,a6,80004d6c <__memset+0x1d4>
    80004bc4:	1cd76463          	bltu	a4,a3,80004d8c <__memset+0x1f4>
    80004bc8:	1a078e63          	beqz	a5,80004d84 <__memset+0x1ec>
    80004bcc:	00b50023          	sb	a1,0(a0)
    80004bd0:	00100713          	li	a4,1
    80004bd4:	1ae78463          	beq	a5,a4,80004d7c <__memset+0x1e4>
    80004bd8:	00b500a3          	sb	a1,1(a0)
    80004bdc:	00200713          	li	a4,2
    80004be0:	1ae78a63          	beq	a5,a4,80004d94 <__memset+0x1fc>
    80004be4:	00b50123          	sb	a1,2(a0)
    80004be8:	00300713          	li	a4,3
    80004bec:	18e78463          	beq	a5,a4,80004d74 <__memset+0x1dc>
    80004bf0:	00b501a3          	sb	a1,3(a0)
    80004bf4:	00400713          	li	a4,4
    80004bf8:	1ae78263          	beq	a5,a4,80004d9c <__memset+0x204>
    80004bfc:	00b50223          	sb	a1,4(a0)
    80004c00:	00500713          	li	a4,5
    80004c04:	1ae78063          	beq	a5,a4,80004da4 <__memset+0x20c>
    80004c08:	00b502a3          	sb	a1,5(a0)
    80004c0c:	00700713          	li	a4,7
    80004c10:	18e79e63          	bne	a5,a4,80004dac <__memset+0x214>
    80004c14:	00b50323          	sb	a1,6(a0)
    80004c18:	00700e93          	li	t4,7
    80004c1c:	00859713          	slli	a4,a1,0x8
    80004c20:	00e5e733          	or	a4,a1,a4
    80004c24:	01059e13          	slli	t3,a1,0x10
    80004c28:	01c76e33          	or	t3,a4,t3
    80004c2c:	01859313          	slli	t1,a1,0x18
    80004c30:	006e6333          	or	t1,t3,t1
    80004c34:	02059893          	slli	a7,a1,0x20
    80004c38:	40f60e3b          	subw	t3,a2,a5
    80004c3c:	011368b3          	or	a7,t1,a7
    80004c40:	02859813          	slli	a6,a1,0x28
    80004c44:	0108e833          	or	a6,a7,a6
    80004c48:	03059693          	slli	a3,a1,0x30
    80004c4c:	003e589b          	srliw	a7,t3,0x3
    80004c50:	00d866b3          	or	a3,a6,a3
    80004c54:	03859713          	slli	a4,a1,0x38
    80004c58:	00389813          	slli	a6,a7,0x3
    80004c5c:	00f507b3          	add	a5,a0,a5
    80004c60:	00e6e733          	or	a4,a3,a4
    80004c64:	000e089b          	sext.w	a7,t3
    80004c68:	00f806b3          	add	a3,a6,a5
    80004c6c:	00e7b023          	sd	a4,0(a5)
    80004c70:	00878793          	addi	a5,a5,8
    80004c74:	fed79ce3          	bne	a5,a3,80004c6c <__memset+0xd4>
    80004c78:	ff8e7793          	andi	a5,t3,-8
    80004c7c:	0007871b          	sext.w	a4,a5
    80004c80:	01d787bb          	addw	a5,a5,t4
    80004c84:	0ce88e63          	beq	a7,a4,80004d60 <__memset+0x1c8>
    80004c88:	00f50733          	add	a4,a0,a5
    80004c8c:	00b70023          	sb	a1,0(a4)
    80004c90:	0017871b          	addiw	a4,a5,1
    80004c94:	0cc77663          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004c98:	00e50733          	add	a4,a0,a4
    80004c9c:	00b70023          	sb	a1,0(a4)
    80004ca0:	0027871b          	addiw	a4,a5,2
    80004ca4:	0ac77e63          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004ca8:	00e50733          	add	a4,a0,a4
    80004cac:	00b70023          	sb	a1,0(a4)
    80004cb0:	0037871b          	addiw	a4,a5,3
    80004cb4:	0ac77663          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004cb8:	00e50733          	add	a4,a0,a4
    80004cbc:	00b70023          	sb	a1,0(a4)
    80004cc0:	0047871b          	addiw	a4,a5,4
    80004cc4:	08c77e63          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004cc8:	00e50733          	add	a4,a0,a4
    80004ccc:	00b70023          	sb	a1,0(a4)
    80004cd0:	0057871b          	addiw	a4,a5,5
    80004cd4:	08c77663          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004cd8:	00e50733          	add	a4,a0,a4
    80004cdc:	00b70023          	sb	a1,0(a4)
    80004ce0:	0067871b          	addiw	a4,a5,6
    80004ce4:	06c77e63          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004ce8:	00e50733          	add	a4,a0,a4
    80004cec:	00b70023          	sb	a1,0(a4)
    80004cf0:	0077871b          	addiw	a4,a5,7
    80004cf4:	06c77663          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004cf8:	00e50733          	add	a4,a0,a4
    80004cfc:	00b70023          	sb	a1,0(a4)
    80004d00:	0087871b          	addiw	a4,a5,8
    80004d04:	04c77e63          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004d08:	00e50733          	add	a4,a0,a4
    80004d0c:	00b70023          	sb	a1,0(a4)
    80004d10:	0097871b          	addiw	a4,a5,9
    80004d14:	04c77663          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004d18:	00e50733          	add	a4,a0,a4
    80004d1c:	00b70023          	sb	a1,0(a4)
    80004d20:	00a7871b          	addiw	a4,a5,10
    80004d24:	02c77e63          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004d28:	00e50733          	add	a4,a0,a4
    80004d2c:	00b70023          	sb	a1,0(a4)
    80004d30:	00b7871b          	addiw	a4,a5,11
    80004d34:	02c77663          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004d38:	00e50733          	add	a4,a0,a4
    80004d3c:	00b70023          	sb	a1,0(a4)
    80004d40:	00c7871b          	addiw	a4,a5,12
    80004d44:	00c77e63          	bgeu	a4,a2,80004d60 <__memset+0x1c8>
    80004d48:	00e50733          	add	a4,a0,a4
    80004d4c:	00b70023          	sb	a1,0(a4)
    80004d50:	00d7879b          	addiw	a5,a5,13
    80004d54:	00c7f663          	bgeu	a5,a2,80004d60 <__memset+0x1c8>
    80004d58:	00f507b3          	add	a5,a0,a5
    80004d5c:	00b78023          	sb	a1,0(a5)
    80004d60:	00813403          	ld	s0,8(sp)
    80004d64:	01010113          	addi	sp,sp,16
    80004d68:	00008067          	ret
    80004d6c:	00b00693          	li	a3,11
    80004d70:	e55ff06f          	j	80004bc4 <__memset+0x2c>
    80004d74:	00300e93          	li	t4,3
    80004d78:	ea5ff06f          	j	80004c1c <__memset+0x84>
    80004d7c:	00100e93          	li	t4,1
    80004d80:	e9dff06f          	j	80004c1c <__memset+0x84>
    80004d84:	00000e93          	li	t4,0
    80004d88:	e95ff06f          	j	80004c1c <__memset+0x84>
    80004d8c:	00000793          	li	a5,0
    80004d90:	ef9ff06f          	j	80004c88 <__memset+0xf0>
    80004d94:	00200e93          	li	t4,2
    80004d98:	e85ff06f          	j	80004c1c <__memset+0x84>
    80004d9c:	00400e93          	li	t4,4
    80004da0:	e7dff06f          	j	80004c1c <__memset+0x84>
    80004da4:	00500e93          	li	t4,5
    80004da8:	e75ff06f          	j	80004c1c <__memset+0x84>
    80004dac:	00600e93          	li	t4,6
    80004db0:	e6dff06f          	j	80004c1c <__memset+0x84>

0000000080004db4 <__memmove>:
    80004db4:	ff010113          	addi	sp,sp,-16
    80004db8:	00813423          	sd	s0,8(sp)
    80004dbc:	01010413          	addi	s0,sp,16
    80004dc0:	0e060863          	beqz	a2,80004eb0 <__memmove+0xfc>
    80004dc4:	fff6069b          	addiw	a3,a2,-1
    80004dc8:	0006881b          	sext.w	a6,a3
    80004dcc:	0ea5e863          	bltu	a1,a0,80004ebc <__memmove+0x108>
    80004dd0:	00758713          	addi	a4,a1,7
    80004dd4:	00a5e7b3          	or	a5,a1,a0
    80004dd8:	40a70733          	sub	a4,a4,a0
    80004ddc:	0077f793          	andi	a5,a5,7
    80004de0:	00f73713          	sltiu	a4,a4,15
    80004de4:	00174713          	xori	a4,a4,1
    80004de8:	0017b793          	seqz	a5,a5
    80004dec:	00e7f7b3          	and	a5,a5,a4
    80004df0:	10078863          	beqz	a5,80004f00 <__memmove+0x14c>
    80004df4:	00900793          	li	a5,9
    80004df8:	1107f463          	bgeu	a5,a6,80004f00 <__memmove+0x14c>
    80004dfc:	0036581b          	srliw	a6,a2,0x3
    80004e00:	fff8081b          	addiw	a6,a6,-1
    80004e04:	02081813          	slli	a6,a6,0x20
    80004e08:	01d85893          	srli	a7,a6,0x1d
    80004e0c:	00858813          	addi	a6,a1,8
    80004e10:	00058793          	mv	a5,a1
    80004e14:	00050713          	mv	a4,a0
    80004e18:	01088833          	add	a6,a7,a6
    80004e1c:	0007b883          	ld	a7,0(a5)
    80004e20:	00878793          	addi	a5,a5,8
    80004e24:	00870713          	addi	a4,a4,8
    80004e28:	ff173c23          	sd	a7,-8(a4)
    80004e2c:	ff0798e3          	bne	a5,a6,80004e1c <__memmove+0x68>
    80004e30:	ff867713          	andi	a4,a2,-8
    80004e34:	02071793          	slli	a5,a4,0x20
    80004e38:	0207d793          	srli	a5,a5,0x20
    80004e3c:	00f585b3          	add	a1,a1,a5
    80004e40:	40e686bb          	subw	a3,a3,a4
    80004e44:	00f507b3          	add	a5,a0,a5
    80004e48:	06e60463          	beq	a2,a4,80004eb0 <__memmove+0xfc>
    80004e4c:	0005c703          	lbu	a4,0(a1)
    80004e50:	00e78023          	sb	a4,0(a5)
    80004e54:	04068e63          	beqz	a3,80004eb0 <__memmove+0xfc>
    80004e58:	0015c603          	lbu	a2,1(a1)
    80004e5c:	00100713          	li	a4,1
    80004e60:	00c780a3          	sb	a2,1(a5)
    80004e64:	04e68663          	beq	a3,a4,80004eb0 <__memmove+0xfc>
    80004e68:	0025c603          	lbu	a2,2(a1)
    80004e6c:	00200713          	li	a4,2
    80004e70:	00c78123          	sb	a2,2(a5)
    80004e74:	02e68e63          	beq	a3,a4,80004eb0 <__memmove+0xfc>
    80004e78:	0035c603          	lbu	a2,3(a1)
    80004e7c:	00300713          	li	a4,3
    80004e80:	00c781a3          	sb	a2,3(a5)
    80004e84:	02e68663          	beq	a3,a4,80004eb0 <__memmove+0xfc>
    80004e88:	0045c603          	lbu	a2,4(a1)
    80004e8c:	00400713          	li	a4,4
    80004e90:	00c78223          	sb	a2,4(a5)
    80004e94:	00e68e63          	beq	a3,a4,80004eb0 <__memmove+0xfc>
    80004e98:	0055c603          	lbu	a2,5(a1)
    80004e9c:	00500713          	li	a4,5
    80004ea0:	00c782a3          	sb	a2,5(a5)
    80004ea4:	00e68663          	beq	a3,a4,80004eb0 <__memmove+0xfc>
    80004ea8:	0065c703          	lbu	a4,6(a1)
    80004eac:	00e78323          	sb	a4,6(a5)
    80004eb0:	00813403          	ld	s0,8(sp)
    80004eb4:	01010113          	addi	sp,sp,16
    80004eb8:	00008067          	ret
    80004ebc:	02061713          	slli	a4,a2,0x20
    80004ec0:	02075713          	srli	a4,a4,0x20
    80004ec4:	00e587b3          	add	a5,a1,a4
    80004ec8:	f0f574e3          	bgeu	a0,a5,80004dd0 <__memmove+0x1c>
    80004ecc:	02069613          	slli	a2,a3,0x20
    80004ed0:	02065613          	srli	a2,a2,0x20
    80004ed4:	fff64613          	not	a2,a2
    80004ed8:	00e50733          	add	a4,a0,a4
    80004edc:	00c78633          	add	a2,a5,a2
    80004ee0:	fff7c683          	lbu	a3,-1(a5)
    80004ee4:	fff78793          	addi	a5,a5,-1
    80004ee8:	fff70713          	addi	a4,a4,-1
    80004eec:	00d70023          	sb	a3,0(a4)
    80004ef0:	fec798e3          	bne	a5,a2,80004ee0 <__memmove+0x12c>
    80004ef4:	00813403          	ld	s0,8(sp)
    80004ef8:	01010113          	addi	sp,sp,16
    80004efc:	00008067          	ret
    80004f00:	02069713          	slli	a4,a3,0x20
    80004f04:	02075713          	srli	a4,a4,0x20
    80004f08:	00170713          	addi	a4,a4,1
    80004f0c:	00e50733          	add	a4,a0,a4
    80004f10:	00050793          	mv	a5,a0
    80004f14:	0005c683          	lbu	a3,0(a1)
    80004f18:	00178793          	addi	a5,a5,1
    80004f1c:	00158593          	addi	a1,a1,1
    80004f20:	fed78fa3          	sb	a3,-1(a5)
    80004f24:	fee798e3          	bne	a5,a4,80004f14 <__memmove+0x160>
    80004f28:	f89ff06f          	j	80004eb0 <__memmove+0xfc>

0000000080004f2c <__putc>:
    80004f2c:	fe010113          	addi	sp,sp,-32
    80004f30:	00813823          	sd	s0,16(sp)
    80004f34:	00113c23          	sd	ra,24(sp)
    80004f38:	02010413          	addi	s0,sp,32
    80004f3c:	00050793          	mv	a5,a0
    80004f40:	fef40593          	addi	a1,s0,-17
    80004f44:	00100613          	li	a2,1
    80004f48:	00000513          	li	a0,0
    80004f4c:	fef407a3          	sb	a5,-17(s0)
    80004f50:	fffff097          	auipc	ra,0xfffff
    80004f54:	b3c080e7          	jalr	-1220(ra) # 80003a8c <console_write>
    80004f58:	01813083          	ld	ra,24(sp)
    80004f5c:	01013403          	ld	s0,16(sp)
    80004f60:	02010113          	addi	sp,sp,32
    80004f64:	00008067          	ret

0000000080004f68 <__getc>:
    80004f68:	fe010113          	addi	sp,sp,-32
    80004f6c:	00813823          	sd	s0,16(sp)
    80004f70:	00113c23          	sd	ra,24(sp)
    80004f74:	02010413          	addi	s0,sp,32
    80004f78:	fe840593          	addi	a1,s0,-24
    80004f7c:	00100613          	li	a2,1
    80004f80:	00000513          	li	a0,0
    80004f84:	fffff097          	auipc	ra,0xfffff
    80004f88:	ae8080e7          	jalr	-1304(ra) # 80003a6c <console_read>
    80004f8c:	fe844503          	lbu	a0,-24(s0)
    80004f90:	01813083          	ld	ra,24(sp)
    80004f94:	01013403          	ld	s0,16(sp)
    80004f98:	02010113          	addi	sp,sp,32
    80004f9c:	00008067          	ret

0000000080004fa0 <console_handler>:
    80004fa0:	fe010113          	addi	sp,sp,-32
    80004fa4:	00813823          	sd	s0,16(sp)
    80004fa8:	00113c23          	sd	ra,24(sp)
    80004fac:	00913423          	sd	s1,8(sp)
    80004fb0:	02010413          	addi	s0,sp,32
    80004fb4:	14202773          	csrr	a4,scause
    80004fb8:	100027f3          	csrr	a5,sstatus
    80004fbc:	0027f793          	andi	a5,a5,2
    80004fc0:	06079e63          	bnez	a5,8000503c <console_handler+0x9c>
    80004fc4:	00074c63          	bltz	a4,80004fdc <console_handler+0x3c>
    80004fc8:	01813083          	ld	ra,24(sp)
    80004fcc:	01013403          	ld	s0,16(sp)
    80004fd0:	00813483          	ld	s1,8(sp)
    80004fd4:	02010113          	addi	sp,sp,32
    80004fd8:	00008067          	ret
    80004fdc:	0ff77713          	andi	a4,a4,255
    80004fe0:	00900793          	li	a5,9
    80004fe4:	fef712e3          	bne	a4,a5,80004fc8 <console_handler+0x28>
    80004fe8:	ffffe097          	auipc	ra,0xffffe
    80004fec:	6dc080e7          	jalr	1756(ra) # 800036c4 <plic_claim>
    80004ff0:	00a00793          	li	a5,10
    80004ff4:	00050493          	mv	s1,a0
    80004ff8:	02f50c63          	beq	a0,a5,80005030 <console_handler+0x90>
    80004ffc:	fc0506e3          	beqz	a0,80004fc8 <console_handler+0x28>
    80005000:	00050593          	mv	a1,a0
    80005004:	00001517          	auipc	a0,0x1
    80005008:	24c50513          	addi	a0,a0,588 # 80006250 <CONSOLE_STATUS+0x240>
    8000500c:	fffff097          	auipc	ra,0xfffff
    80005010:	afc080e7          	jalr	-1284(ra) # 80003b08 <__printf>
    80005014:	01013403          	ld	s0,16(sp)
    80005018:	01813083          	ld	ra,24(sp)
    8000501c:	00048513          	mv	a0,s1
    80005020:	00813483          	ld	s1,8(sp)
    80005024:	02010113          	addi	sp,sp,32
    80005028:	ffffe317          	auipc	t1,0xffffe
    8000502c:	6d430067          	jr	1748(t1) # 800036fc <plic_complete>
    80005030:	fffff097          	auipc	ra,0xfffff
    80005034:	3e0080e7          	jalr	992(ra) # 80004410 <uartintr>
    80005038:	fddff06f          	j	80005014 <console_handler+0x74>
    8000503c:	00001517          	auipc	a0,0x1
    80005040:	31450513          	addi	a0,a0,788 # 80006350 <digits+0x78>
    80005044:	fffff097          	auipc	ra,0xfffff
    80005048:	a68080e7          	jalr	-1432(ra) # 80003aac <panic>
	...
