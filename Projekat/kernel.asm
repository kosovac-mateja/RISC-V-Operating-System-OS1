
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	79813103          	ld	sp,1944(sp) # 80007798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2c5030ef          	jal	ra,80003ae0 <start>

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
    80001188:	06d000ef          	jal	ra,800019f4 <handleSupervisorTrap>

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
#include "../h/syscall_c.h"

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
    80001330:	de0080e7          	jalr	-544(ra) # 8000210c <_Znam>
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

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001474:	00050513          	mv	a0,a0
    return ret;
}
    80001478:	0005051b          	sext.w	a0,a0
    8000147c:	00813083          	ld	ra,8(sp)
    80001480:	00013403          	ld	s0,0(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_Z10sem_deleteP3Sem>:

void sem_delete(sem_t handle) {
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00113423          	sd	ra,8(sp)
    80001494:	00813023          	sd	s0,0(sp)
    80001498:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000149c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SDELETE_CODE));
    800014a0:	02500793          	li	a5,37
    800014a4:	00078513          	mv	a0,a5

    syscall();
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	dac080e7          	jalr	-596(ra) # 80001254 <_Z7syscallv>
}
    800014b0:	00813083          	ld	ra,8(sp)
    800014b4:	00013403          	ld	s0,0(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800014c0:	ff010113          	addi	sp,sp,-16
    800014c4:	00113423          	sd	ra,8(sp)
    800014c8:	00813023          	sd	s0,0(sp)
    800014cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    800014d0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SWAIT_CODE));
    800014d4:	02300793          	li	a5,35
    800014d8:	00078513          	mv	a0,a5

    syscall();
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	d78080e7          	jalr	-648(ra) # 80001254 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014e4:	00050513          	mv	a0,a0
    return ret;
}
    800014e8:	0005051b          	sext.w	a0,a0
    800014ec:	00813083          	ld	ra,8(sp)
    800014f0:	00013403          	ld	s0,0(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret

00000000800014fc <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    800014fc:	ff010113          	addi	sp,sp,-16
    80001500:	00113423          	sd	ra,8(sp)
    80001504:	00813023          	sd	s0,0(sp)
    80001508:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    8000150c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SSIGNAL_CODE));
    80001510:	02400793          	li	a5,36
    80001514:	00078513          	mv	a0,a5

    syscall();
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	d3c080e7          	jalr	-708(ra) # 80001254 <_Z7syscallv>

    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001520:	00050513          	mv	a0,a0
    return ret;
}
    80001524:	0005051b          	sext.w	a0,a0
    80001528:	00813083          	ld	ra,8(sp)
    8000152c:	00013403          	ld	s0,0(sp)
    80001530:	01010113          	addi	sp,sp,16
    80001534:	00008067          	ret

0000000080001538 <_Z4getcv>:

char getc() {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00113423          	sd	ra,8(sp)
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (CGETC_CODE));
    80001548:	04100793          	li	a5,65
    8000154c:	00078513          	mv	a0,a5

    syscall();
    80001550:	00000097          	auipc	ra,0x0
    80001554:	d04080e7          	jalr	-764(ra) # 80001254 <_Z7syscallv>

    char c;
    __asm__ volatile("mv %0, a0" : "=r" (c));
    80001558:	00050513          	mv	a0,a0
    return c;
}
    8000155c:	0ff57513          	andi	a0,a0,255
    80001560:	00813083          	ld	ra,8(sp)
    80001564:	00013403          	ld	s0,0(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_Z4putcc>:

void putc(char c) {
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00113423          	sd	ra,8(sp)
    80001578:	00813023          	sd	s0,0(sp)
    8000157c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    80001580:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (CPUTC_CODE));
    80001584:	04200793          	li	a5,66
    80001588:	00078513          	mv	a0,a5

    syscall();
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	cc8080e7          	jalr	-824(ra) # 80001254 <_Z7syscallv>
}
    80001594:	00813083          	ld	ra,8(sp)
    80001598:	00013403          	ld	s0,0(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret

00000000800015a4 <_Z12thread_allocPP3PCBPFvPvES2_>:

void thread_alloc(thread_t* handle, void(*start_routine)(void*), void* arg) {
    800015a4:	fd010113          	addi	sp,sp,-48
    800015a8:	02113423          	sd	ra,40(sp)
    800015ac:	02813023          	sd	s0,32(sp)
    800015b0:	00913c23          	sd	s1,24(sp)
    800015b4:	01213823          	sd	s2,16(sp)
    800015b8:	01313423          	sd	s3,8(sp)
    800015bc:	03010413          	addi	s0,sp,48
    800015c0:	00050913          	mv	s2,a0
    800015c4:	00058493          	mv	s1,a1
    800015c8:	00060993          	mv	s3,a2
    thread_t *tempHandle = handle; void(*tempRoutine)(void*) = start_routine; void* tempArg = arg;

    uint64* stack_space;
    if (start_routine != nullptr) {
    800015cc:	04058a63          	beqz	a1,80001620 <_Z12thread_allocPP3PCBPFvPvES2_+0x7c>
        stack_space = new uint64[DEFAULT_STACK_SIZE];
    800015d0:	00008537          	lui	a0,0x8
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	b38080e7          	jalr	-1224(ra) # 8000210c <_Znam>
        stack_space = &stack_space[DEFAULT_STACK_SIZE];
    800015dc:	000087b7          	lui	a5,0x8
    800015e0:	00f50533          	add	a0,a0,a5
    } else stack_space = nullptr;

    __asm__ volatile("mv a7, %0" : : "r" (stack_space));
    800015e4:	00050893          	mv	a7,a0
    __asm__ volatile("mv a3, %0" : : "r" (tempArg));
    800015e8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" (tempRoutine));
    800015ec:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0" : : "r" (tempHandle));
    800015f0:	00090593          	mv	a1,s2
    __asm__ volatile("mv a0, %0" : : "r" (TALLOC_CODE));
    800015f4:	01400793          	li	a5,20
    800015f8:	00078513          	mv	a0,a5

    syscall();
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	c58080e7          	jalr	-936(ra) # 80001254 <_Z7syscallv>
}
    80001604:	02813083          	ld	ra,40(sp)
    80001608:	02013403          	ld	s0,32(sp)
    8000160c:	01813483          	ld	s1,24(sp)
    80001610:	01013903          	ld	s2,16(sp)
    80001614:	00813983          	ld	s3,8(sp)
    80001618:	03010113          	addi	sp,sp,48
    8000161c:	00008067          	ret
    } else stack_space = nullptr;
    80001620:	00000513          	li	a0,0
    80001624:	fc1ff06f          	j	800015e4 <_Z12thread_allocPP3PCBPFvPvES2_+0x40>

0000000080001628 <_Z16thread_schedulerP3PCB>:

void thread_scheduler(thread_t handle) {
    80001628:	ff010113          	addi	sp,sp,-16
    8000162c:	00113423          	sd	ra,8(sp)
    80001630:	00813023          	sd	s0,0(sp)
    80001634:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001638:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (TSCHEDULER_CODE));
    8000163c:	01500793          	li	a5,21
    80001640:	00078513          	mv	a0,a5

    syscall();
    80001644:	00000097          	auipc	ra,0x0
    80001648:	c10080e7          	jalr	-1008(ra) # 80001254 <_Z7syscallv>
}
    8000164c:	00813083          	ld	ra,8(sp)
    80001650:	00013403          	ld	s0,0(sp)
    80001654:	01010113          	addi	sp,sp,16
    80001658:	00008067          	ret

000000008000165c <_Z7userModv>:

void userMod() {
    8000165c:	ff010113          	addi	sp,sp,-16
    80001660:	00113423          	sd	ra,8(sp)
    80001664:	00813023          	sd	s0,0(sp)
    80001668:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (MUSER_CODE));
    8000166c:	05100793          	li	a5,81
    80001670:	00078513          	mv	a0,a5

    syscall();
    80001674:	00000097          	auipc	ra,0x0
    80001678:	be0080e7          	jalr	-1056(ra) # 80001254 <_Z7syscallv>
}
    8000167c:	00813083          	ld	ra,8(sp)
    80001680:	00013403          	ld	s0,0(sp)
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <_Z13supervisorModv>:

void supervisorMod() {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00113423          	sd	ra,8(sp)
    80001694:	00813023          	sd	s0,0(sp)
    80001698:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (MSUPERVISOR_CODE));
    8000169c:	05200793          	li	a5,82
    800016a0:	00078513          	mv	a0,a5

    syscall();
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	bb0080e7          	jalr	-1104(ra) # 80001254 <_Z7syscallv>
    800016ac:	00813083          	ld	ra,8(sp)
    800016b0:	00013403          	ld	s0,0(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <_ZN3PCB11bodyWrapperEPv>:
    running = Scheduler::get();

    PCB::contextSwitch(&old->context, &running->context);
}

void PCB::bodyWrapper(void* dummy) {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00113423          	sd	ra,8(sp)
    800016c4:	00813023          	sd	s0,0(sp)
    800016c8:	01010413          	addi	s0,sp,16
    if(running->body == idle || running->body == nullptr) supervisorMod();
    800016cc:	00006797          	auipc	a5,0x6
    800016d0:	1447b783          	ld	a5,324(a5) # 80007810 <_ZN3PCB7runningE>
    800016d4:	0087b783          	ld	a5,8(a5)
    800016d8:	00000717          	auipc	a4,0x0
    800016dc:	05070713          	addi	a4,a4,80 # 80001728 <_Z4idlePv>
    800016e0:	00e78a63          	beq	a5,a4,800016f4 <_ZN3PCB11bodyWrapperEPv+0x38>
    800016e4:	00078863          	beqz	a5,800016f4 <_ZN3PCB11bodyWrapperEPv+0x38>
    else userMod();
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	f74080e7          	jalr	-140(ra) # 8000165c <_Z7userModv>
    800016f0:	00c0006f          	j	800016fc <_ZN3PCB11bodyWrapperEPv+0x40>
    if(running->body == idle || running->body == nullptr) supervisorMod();
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	f98080e7          	jalr	-104(ra) # 8000168c <_Z13supervisorModv>

    running->body(running->arg);
    800016fc:	00006797          	auipc	a5,0x6
    80001700:	1147b783          	ld	a5,276(a5) # 80007810 <_ZN3PCB7runningE>
    80001704:	0087b703          	ld	a4,8(a5)
    80001708:	0107b503          	ld	a0,16(a5)
    8000170c:	000700e7          	jalr	a4
    thread_exit();
    80001710:	00000097          	auipc	ra,0x0
    80001714:	cb4080e7          	jalr	-844(ra) # 800013c4 <_Z11thread_exitv>
}
    80001718:	00813083          	ld	ra,8(sp)
    8000171c:	00013403          	ld	s0,0(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <_Z4idlePv>:
void PCB::operator delete(void *p) noexcept  { MemoryAllocator::mem_free(p); }

void PCB::operator delete[](void *p) noexcept  { MemoryAllocator::mem_free(p); }


void idle(void* arg) {
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00113423          	sd	ra,8(sp)
    80001730:	00813023          	sd	s0,0(sp)
    80001734:	01010413          	addi	s0,sp,16
    while(true)
        thread_dispatch();
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	c5c080e7          	jalr	-932(ra) # 80001394 <_Z15thread_dispatchv>
    while(true)
    80001740:	ff9ff06f          	j	80001738 <_Z4idlePv+0x10>

0000000080001744 <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    80001744:	fe010113          	addi	sp,sp,-32
    80001748:	00113c23          	sd	ra,24(sp)
    8000174c:	00813823          	sd	s0,16(sp)
    80001750:	00913423          	sd	s1,8(sp)
    80001754:	02010413          	addi	s0,sp,32
    PCB *old = running;
    80001758:	00006497          	auipc	s1,0x6
    8000175c:	0b84b483          	ld	s1,184(s1) # 80007810 <_ZN3PCB7runningE>
class PCB
{
public:
    ~PCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001760:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001764:	00079663          	bnez	a5,80001770 <_ZN3PCB8dispatchEv+0x2c>

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return blocked; }
    80001768:	0314c783          	lbu	a5,49(s1)
    8000176c:	02078c63          	beqz	a5,800017a4 <_ZN3PCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001770:	00001097          	auipc	ra,0x1
    80001774:	080080e7          	jalr	128(ra) # 800027f0 <_ZN9Scheduler3getEv>
    80001778:	00006797          	auipc	a5,0x6
    8000177c:	08a7bc23          	sd	a0,152(a5) # 80007810 <_ZN3PCB7runningE>
    PCB::contextSwitch(&old->context, &running->context);
    80001780:	02050593          	addi	a1,a0,32 # 8020 <_entry-0x7fff7fe0>
    80001784:	02048513          	addi	a0,s1,32
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	a98080e7          	jalr	-1384(ra) # 80001220 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80001790:	01813083          	ld	ra,24(sp)
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	00813483          	ld	s1,8(sp)
    8000179c:	02010113          	addi	sp,sp,32
    800017a0:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	0c4080e7          	jalr	196(ra) # 8000286c <_ZN9Scheduler3putEP3PCB>
    800017b0:	fc1ff06f          	j	80001770 <_ZN3PCB8dispatchEv+0x2c>

00000000800017b4 <_ZN3PCB5yieldEv>:
void PCB::yield() {
    800017b4:	ff010113          	addi	sp,sp,-16
    800017b8:	00113423          	sd	ra,8(sp)
    800017bc:	00813023          	sd	s0,0(sp)
    800017c0:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	83c080e7          	jalr	-1988(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    PCB::dispatch();
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	f78080e7          	jalr	-136(ra) # 80001744 <_ZN3PCB8dispatchEv>
    Riscv::popRegisters();
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	8a8080e7          	jalr	-1880(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    800017dc:	00813083          	ld	ra,8(sp)
    800017e0:	00013403          	ld	s0,0(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <_ZN3PCBnwEm>:
void *PCB::operator new(size_t size)  {
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00113423          	sd	ra,8(sp)
    800017f4:	00813023          	sd	s0,0(sp)
    800017f8:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    800017fc:	03f57793          	andi	a5,a0,63
    80001800:	02079063          	bnez	a5,80001820 <_ZN3PCBnwEm+0x34>
    80001804:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	60c080e7          	jalr	1548(ra) # 80001e14 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001810:	00813083          	ld	ra,8(sp)
    80001814:	00013403          	ld	s0,0(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80001820:	00655513          	srli	a0,a0,0x6
    80001824:	00150513          	addi	a0,a0,1
    80001828:	fe1ff06f          	j	80001808 <_ZN3PCBnwEm+0x1c>

000000008000182c <_ZN3PCBnaEm>:
void *PCB::operator new[](size_t size)  {
    8000182c:	ff010113          	addi	sp,sp,-16
    80001830:	00113423          	sd	ra,8(sp)
    80001834:	00813023          	sd	s0,0(sp)
    80001838:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    8000183c:	03f57793          	andi	a5,a0,63
    80001840:	02079063          	bnez	a5,80001860 <_ZN3PCBnaEm+0x34>
    80001844:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	5cc080e7          	jalr	1484(ra) # 80001e14 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001850:	00813083          	ld	ra,8(sp)
    80001854:	00013403          	ld	s0,0(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80001860:	00655513          	srli	a0,a0,0x6
    80001864:	00150513          	addi	a0,a0,1
    80001868:	fe1ff06f          	j	80001848 <_ZN3PCBnaEm+0x1c>

000000008000186c <_ZN3PCBdlEPv>:
void PCB::operator delete(void *p) noexcept  { MemoryAllocator::mem_free(p); }
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00113423          	sd	ra,8(sp)
    80001874:	00813023          	sd	s0,0(sp)
    80001878:	01010413          	addi	s0,sp,16
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	740080e7          	jalr	1856(ra) # 80001fbc <_ZN15MemoryAllocator8mem_freeEPv>
    80001884:	00813083          	ld	ra,8(sp)
    80001888:	00013403          	ld	s0,0(sp)
    8000188c:	01010113          	addi	sp,sp,16
    80001890:	00008067          	ret

0000000080001894 <_ZN3PCB13createProcessEPFvPvEPmS0_b>:
PCB *PCB::createProcess(Body body, uint64* stack, void* arg, bool put) {
    80001894:	fc010113          	addi	sp,sp,-64
    80001898:	02113c23          	sd	ra,56(sp)
    8000189c:	02813823          	sd	s0,48(sp)
    800018a0:	02913423          	sd	s1,40(sp)
    800018a4:	03213023          	sd	s2,32(sp)
    800018a8:	01313c23          	sd	s3,24(sp)
    800018ac:	01413823          	sd	s4,16(sp)
    800018b0:	01513423          	sd	s5,8(sp)
    800018b4:	04010413          	addi	s0,sp,64
    800018b8:	00050993          	mv	s3,a0
    800018bc:	00058913          	mv	s2,a1
    800018c0:	00060a13          	mv	s4,a2
    800018c4:	00068a93          	mv	s5,a3
    return new PCB(body, stack, arg, put);
    800018c8:	03800513          	li	a0,56
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	f20080e7          	jalr	-224(ra) # 800017ec <_ZN3PCBnwEm>
    800018d4:	00050493          	mv	s1,a0
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
                     stack != nullptr ? (uint64) stck : 0
                    }),
            finished(false),
            blocked(false)
    800018d8:	00200793          	li	a5,2
    800018dc:	00f53023          	sd	a5,0(a0)
    800018e0:	01353423          	sd	s3,8(a0)
    800018e4:	01453823          	sd	s4,16(a0)
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
    800018e8:	06098463          	beqz	s3,80001950 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xbc>
    800018ec:	06090663          	beqz	s2,80001958 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xc4>
    800018f0:	fffc07b7          	lui	a5,0xfffc0
    800018f4:	00878793          	addi	a5,a5,8 # fffffffffffc0008 <end+0xffffffff7ffb7538>
    800018f8:	00f907b3          	add	a5,s2,a5
            blocked(false)
    800018fc:	00f4bc23          	sd	a5,24(s1)
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
    80001900:	06098063          	beqz	s3,80001960 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xcc>
    80001904:	00000717          	auipc	a4,0x0
    80001908:	db870713          	addi	a4,a4,-584 # 800016bc <_ZN3PCB11bodyWrapperEPv>
            blocked(false)
    8000190c:	02e4b023          	sd	a4,32(s1)
                     stack != nullptr ? (uint64) stck : 0
    80001910:	04078c63          	beqz	a5,80001968 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xd4>
            blocked(false)
    80001914:	0324b423          	sd	s2,40(s1)
    80001918:	02048823          	sb	zero,48(s1)
    8000191c:	020488a3          	sb	zero,49(s1)
            { if (body != nullptr && put) { Scheduler::put(this); }
    80001920:	00098463          	beqz	s3,80001928 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x94>
    80001924:	040a9663          	bnez	s5,80001970 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0xdc>
}
    80001928:	00048513          	mv	a0,s1
    8000192c:	03813083          	ld	ra,56(sp)
    80001930:	03013403          	ld	s0,48(sp)
    80001934:	02813483          	ld	s1,40(sp)
    80001938:	02013903          	ld	s2,32(sp)
    8000193c:	01813983          	ld	s3,24(sp)
    80001940:	01013a03          	ld	s4,16(sp)
    80001944:	00813a83          	ld	s5,8(sp)
    80001948:	04010113          	addi	sp,sp,64
    8000194c:	00008067          	ret
            stack(body != nullptr && stck != nullptr ? stck - DEFAULT_STACK_SIZE * sizeof(uint64) + 1 : nullptr),
    80001950:	00000793          	li	a5,0
    80001954:	fa9ff06f          	j	800018fc <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x68>
    80001958:	00090793          	mv	a5,s2
    8000195c:	fa1ff06f          	j	800018fc <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x68>
            context({body != nullptr ? (uint64) &bodyWrapper : 0,
    80001960:	00000713          	li	a4,0
    80001964:	fa9ff06f          	j	8000190c <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x78>
                     stack != nullptr ? (uint64) stck : 0
    80001968:	00000913          	li	s2,0
    8000196c:	fa9ff06f          	j	80001914 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x80>
            { if (body != nullptr && put) { Scheduler::put(this); }
    80001970:	00048513          	mv	a0,s1
    80001974:	00001097          	auipc	ra,0x1
    80001978:	ef8080e7          	jalr	-264(ra) # 8000286c <_ZN9Scheduler3putEP3PCB>
    8000197c:	fadff06f          	j	80001928 <_ZN3PCB13createProcessEPFvPvEPmS0_b+0x94>
    80001980:	00050913          	mv	s2,a0
    return new PCB(body, stack, arg, put);
    80001984:	00048513          	mv	a0,s1
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	ee4080e7          	jalr	-284(ra) # 8000186c <_ZN3PCBdlEPv>
    80001990:	00090513          	mv	a0,s2
    80001994:	00007097          	auipc	ra,0x7
    80001998:	fa4080e7          	jalr	-92(ra) # 80008938 <_Unwind_Resume>

000000008000199c <_ZN3PCBdaEPv>:
void PCB::operator delete[](void *p) noexcept  { MemoryAllocator::mem_free(p); }
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	610080e7          	jalr	1552(ra) # 80001fbc <_ZN15MemoryAllocator8mem_freeEPv>
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_Z15userMainWrapperPv>:
}

void userMainWrapper(void* arg) {
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    userMain();
    800019d4:	00002097          	auipc	ra,0x2
    800019d8:	c80080e7          	jalr	-896(ra) # 80003654 <_Z8userMainv>
    supervisorMod(); //da bi se main zavrsio u sistemskom rezimu
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	cb0080e7          	jalr	-848(ra) # 8000168c <_Z13supervisorModv>
    800019e4:	00813083          	ld	ra,8(sp)
    800019e8:	00013403          	ld	s0,0(sp)
    800019ec:	01010113          	addi	sp,sp,16
    800019f0:	00008067          	ret

00000000800019f4 <handleSupervisorTrap>:
#include "../h/sem.h"
#include "../lib/console.h"
#include "../h/riscv.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap() {
    800019f4:	fb010113          	addi	sp,sp,-80
    800019f8:	04113423          	sd	ra,72(sp)
    800019fc:	04813023          	sd	s0,64(sp)
    80001a00:	02913c23          	sd	s1,56(sp)
    80001a04:	03213823          	sd	s2,48(sp)
    80001a08:	03313423          	sd	s3,40(sp)
    80001a0c:	05010413          	addi	s0,sp,80
};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a10:	142027f3          	csrr	a5,scause
    80001a14:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001a18:	fc843483          	ld	s1,-56(s0)
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a1c:	141027f3          	csrr	a5,sepc
    80001a20:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001a24:	fc043903          	ld	s2,-64(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a28:	100027f3          	csrr	a5,sstatus
    80001a2c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001a30:	fb843983          	ld	s3,-72(s0)

    uint64 scause = Riscv::r_scause();
    uint64 sepc = Riscv::r_sepc();
    uint64 sstatus = Riscv::r_sstatus();

    if(scause == 9 || scause == 8) {
    80001a34:	ff848713          	addi	a4,s1,-8
    80001a38:	00100793          	li	a5,1
    80001a3c:	04e7fc63          	bgeu	a5,a4,80001a94 <handleSupervisorTrap+0xa0>
        }

        Riscv::w_sepc(sepc+4); //prelazak na narednu instrukciju
    }

    else if(scause == (1UL << 63 | 9)) { //spoljasnji hardverski prekid
    80001a40:	fff00793          	li	a5,-1
    80001a44:	03f79793          	slli	a5,a5,0x3f
    80001a48:	00978793          	addi	a5,a5,9
    80001a4c:	22f48a63          	beq	s1,a5,80001c80 <handleSupervisorTrap+0x28c>
        console_handler();
    }

    else if(scause == (1UL << 63 | 1)) { //prekid od tajmera
    80001a50:	fff00793          	li	a5,-1
    80001a54:	03f79793          	slli	a5,a5,0x3f
    80001a58:	00178793          	addi	a5,a5,1
    80001a5c:	24f49863          	bne	s1,a5,80001cac <handleSupervisorTrap+0x2b8>
        PCB::timeSliceCnt++;
    80001a60:	00006717          	auipc	a4,0x6
    80001a64:	d4873703          	ld	a4,-696(a4) # 800077a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a68:	00073783          	ld	a5,0(a4)
    80001a6c:	00178793          	addi	a5,a5,1
    80001a70:	00f73023          	sd	a5,0(a4)

        if(PCB::timeSliceCnt >= PCB::running->timeSlice) {
    80001a74:	00006717          	auipc	a4,0x6
    80001a78:	d3c73703          	ld	a4,-708(a4) # 800077b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a7c:	00073703          	ld	a4,0(a4)
    80001a80:	00073703          	ld	a4,0(a4)
    80001a84:	20e7f463          	bgeu	a5,a4,80001c8c <handleSupervisorTrap+0x298>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001a88:	00200793          	li	a5,2
    80001a8c:	1447b073          	csrc	sip,a5
}
    80001a90:	0400006f          	j	80001ad0 <handleSupervisorTrap+0xdc>
        __asm__ volatile("mv %0, a0" : "=r" (code));
    80001a94:	00050793          	mv	a5,a0
        switch (code) {
    80001a98:	05200713          	li	a4,82
    80001a9c:	02f76663          	bltu	a4,a5,80001ac8 <handleSupervisorTrap+0xd4>
    80001aa0:	00279793          	slli	a5,a5,0x2
    80001aa4:	00004717          	auipc	a4,0x4
    80001aa8:	59070713          	addi	a4,a4,1424 # 80006034 <CONSOLE_STATUS+0x24>
    80001aac:	00e787b3          	add	a5,a5,a4
    80001ab0:	0007a783          	lw	a5,0(a5)
    80001ab4:	00e787b3          	add	a5,a5,a4
    80001ab8:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001abc:	00058513          	mv	a0,a1
                MemoryAllocator::mem_alloc(size);
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	354080e7          	jalr	852(ra) # 80001e14 <_ZN15MemoryAllocator9mem_allocEm>
        Riscv::w_sepc(sepc+4); //prelazak na narednu instrukciju
    80001ac8:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001acc:	14191073          	csrw	sepc,s2
        __putc('\n');
        printString("SCAUSE: ");
        printInt(scause);
        __putc('\n');
    }
}
    80001ad0:	04813083          	ld	ra,72(sp)
    80001ad4:	04013403          	ld	s0,64(sp)
    80001ad8:	03813483          	ld	s1,56(sp)
    80001adc:	03013903          	ld	s2,48(sp)
    80001ae0:	02813983          	ld	s3,40(sp)
    80001ae4:	05010113          	addi	sp,sp,80
    80001ae8:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    80001aec:	00058513          	mv	a0,a1
                MemoryAllocator::mem_free(ptr);
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	4cc080e7          	jalr	1228(ra) # 80001fbc <_ZN15MemoryAllocator8mem_freeEPv>
            }break;
    80001af8:	fd1ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001afc:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
    80001b00:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a3" : "=r" (arg));
    80001b04:	00068613          	mv	a2,a3
                __asm__ volatile("mv %0, a7" : "=r" (stack));
    80001b08:	00088593          	mv	a1,a7
                *handle = PCB::createProcess(start_routine, stack, arg, true);
    80001b0c:	00100693          	li	a3,1
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	d84080e7          	jalr	-636(ra) # 80001894 <_ZN3PCB13createProcessEPFvPvEPmS0_b>
    80001b18:	00a4b023          	sd	a0,0(s1)
            }break;
    80001b1c:	fadff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                PCB::yield();
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	c94080e7          	jalr	-876(ra) # 800017b4 <_ZN3PCB5yieldEv>
            }break;
    80001b28:	fa1ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                PCB::running->setFinished(true);
    80001b2c:	00006797          	auipc	a5,0x6
    80001b30:	c847b783          	ld	a5,-892(a5) # 800077b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b34:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001b38:	00100713          	li	a4,1
    80001b3c:	02e78823          	sb	a4,48(a5)
                PCB::yield();
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	c74080e7          	jalr	-908(ra) # 800017b4 <_ZN3PCB5yieldEv>
            } break;
    80001b48:	f81ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001b4c:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (init));
    80001b50:	00060513          	mv	a0,a2
                *handle = Sem::createSemaphore(init);
    80001b54:	0005051b          	sext.w	a0,a0
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	b44080e7          	jalr	-1212(ra) # 8000269c <_ZN3Sem15createSemaphoreEj>
    80001b60:	00a4b023          	sd	a0,0(s1)
            } break;
    80001b64:	f65ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001b68:	00058513          	mv	a0,a1
                Sem::deactivateSemaphore(handle);
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	a28080e7          	jalr	-1496(ra) # 80002594 <_ZN3Sem19deactivateSemaphoreEPS_>
            } break;
    80001b74:	f55ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001b78:	00058513          	mv	a0,a1
                Sem::deleteSemaphore(handle);
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	bd8080e7          	jalr	-1064(ra) # 80002754 <_ZN3Sem15deleteSemaphoreEPS_>
            } break;
    80001b84:	f45ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001b88:	00058513          	mv	a0,a1

    static int deactivateSemaphore(sem_t handle);

    static void deleteSemaphore(sem_t handle);

    bool isActive() { return active; }
    80001b8c:	00454783          	lbu	a5,4(a0)
                if(handle->isActive()) {
    80001b90:	02078863          	beqz	a5,80001bc0 <handleSupervisorTrap+0x1cc>
    void wait() { if(--val < 0) block(); }
    80001b94:	00052783          	lw	a5,0(a0)
    80001b98:	fff7879b          	addiw	a5,a5,-1
    80001b9c:	00f52023          	sw	a5,0(a0)
    80001ba0:	02079713          	slli	a4,a5,0x20
    80001ba4:	00074663          	bltz	a4,80001bb0 <handleSupervisorTrap+0x1bc>
                    ret = 0;
    80001ba8:	00000793          	li	a5,0
    80001bac:	0180006f          	j	80001bc4 <handleSupervisorTrap+0x1d0>
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	8bc080e7          	jalr	-1860(ra) # 8000246c <_ZN3Sem5blockEv>
    80001bb8:	00000793          	li	a5,0
    80001bbc:	0080006f          	j	80001bc4 <handleSupervisorTrap+0x1d0>
                sem_t handle; int ret = -1;
    80001bc0:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001bc4:	00078513          	mv	a0,a5
            } break;
    80001bc8:	f01ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001bcc:	00058513          	mv	a0,a1
    bool isActive() { return active; }
    80001bd0:	00454783          	lbu	a5,4(a0)
                if(handle->isActive()) {
    80001bd4:	02078863          	beqz	a5,80001c04 <handleSupervisorTrap+0x210>
    void signal() { if(++val <= 0) unblock(); }
    80001bd8:	00052783          	lw	a5,0(a0)
    80001bdc:	0017879b          	addiw	a5,a5,1
    80001be0:	0007871b          	sext.w	a4,a5
    80001be4:	00f52023          	sw	a5,0(a0)
    80001be8:	00e05663          	blez	a4,80001bf4 <handleSupervisorTrap+0x200>
                    ret = 0;
    80001bec:	00000793          	li	a5,0
    80001bf0:	0180006f          	j	80001c08 <handleSupervisorTrap+0x214>
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	91c080e7          	jalr	-1764(ra) # 80002510 <_ZN3Sem7unblockEv>
    80001bfc:	00000793          	li	a5,0
    80001c00:	0080006f          	j	80001c08 <handleSupervisorTrap+0x214>
                sem_t handle; int ret = -1;
    80001c04:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001c08:	00078513          	mv	a0,a5
            } break;
    80001c0c:	ebdff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                char c = __getc();
    80001c10:	00004097          	auipc	ra,0x4
    80001c14:	fc8080e7          	jalr	-56(ra) # 80005bd8 <__getc>
                __asm__ volatile("mv a0, %0" : : "r" (c));
    80001c18:	00050513          	mv	a0,a0
            } break;
    80001c1c:	eadff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (c));
    80001c20:	00058513          	mv	a0,a1
                __putc(c);
    80001c24:	0ff57513          	andi	a0,a0,255
    80001c28:	00004097          	auipc	ra,0x4
    80001c2c:	f74080e7          	jalr	-140(ra) # 80005b9c <__putc>
            } break;
    80001c30:	e99ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001c34:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
    80001c38:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a3" : "=r" (arg));
    80001c3c:	00068613          	mv	a2,a3
                __asm__ volatile("mv %0, a7" : "=r" (stack));
    80001c40:	00088593          	mv	a1,a7
                *handle = PCB::createProcess(start_routine, stack, arg, false);
    80001c44:	00000693          	li	a3,0
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	c4c080e7          	jalr	-948(ra) # 80001894 <_ZN3PCB13createProcessEPFvPvEPmS0_b>
    80001c50:	00a4b023          	sd	a0,0(s1)
            } break;
    80001c54:	e75ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80001c58:	00058513          	mv	a0,a1
                Scheduler::put(handle);
    80001c5c:	00001097          	auipc	ra,0x1
    80001c60:	c10080e7          	jalr	-1008(ra) # 8000286c <_ZN9Scheduler3putEP3PCB>
            } break;
    80001c64:	e65ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001c68:	10000793          	li	a5,256
    80001c6c:	1007b073          	csrc	sstatus,a5
}
    80001c70:	e59ff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c74:	10000793          	li	a5,256
    80001c78:	1007a073          	csrs	sstatus,a5
}
    80001c7c:	e4dff06f          	j	80001ac8 <handleSupervisorTrap+0xd4>
        console_handler();
    80001c80:	00004097          	auipc	ra,0x4
    80001c84:	f90080e7          	jalr	-112(ra) # 80005c10 <console_handler>
    80001c88:	e49ff06f          	j	80001ad0 <handleSupervisorTrap+0xdc>
            PCB::yield();
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	b28080e7          	jalr	-1240(ra) # 800017b4 <_ZN3PCB5yieldEv>
            PCB::timeSliceCnt = 0;
    80001c94:	00006797          	auipc	a5,0x6
    80001c98:	b147b783          	ld	a5,-1260(a5) # 800077a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c9c:	0007b023          	sd	zero,0(a5)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ca0:	14191073          	csrw	sepc,s2
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ca4:	10099073          	csrw	sstatus,s3
}
    80001ca8:	de1ff06f          	j	80001a88 <handleSupervisorTrap+0x94>
        __putc('\n');
    80001cac:	00a00513          	li	a0,10
    80001cb0:	00004097          	auipc	ra,0x4
    80001cb4:	eec080e7          	jalr	-276(ra) # 80005b9c <__putc>
        printString("SEPC: ");
    80001cb8:	00004517          	auipc	a0,0x4
    80001cbc:	36850513          	addi	a0,a0,872 # 80006020 <CONSOLE_STATUS+0x10>
    80001cc0:	00001097          	auipc	ra,0x1
    80001cc4:	c60080e7          	jalr	-928(ra) # 80002920 <_Z11printStringPKc>
        printInt(sepc);
    80001cc8:	00000613          	li	a2,0
    80001ccc:	00a00593          	li	a1,10
    80001cd0:	0009051b          	sext.w	a0,s2
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	de4080e7          	jalr	-540(ra) # 80002ab8 <_Z8printIntiii>
        __putc('\n');
    80001cdc:	00a00513          	li	a0,10
    80001ce0:	00004097          	auipc	ra,0x4
    80001ce4:	ebc080e7          	jalr	-324(ra) # 80005b9c <__putc>
        printString("SCAUSE: ");
    80001ce8:	00004517          	auipc	a0,0x4
    80001cec:	34050513          	addi	a0,a0,832 # 80006028 <CONSOLE_STATUS+0x18>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	c30080e7          	jalr	-976(ra) # 80002920 <_Z11printStringPKc>
        printInt(scause);
    80001cf8:	00000613          	li	a2,0
    80001cfc:	00a00593          	li	a1,10
    80001d00:	0004851b          	sext.w	a0,s1
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	db4080e7          	jalr	-588(ra) # 80002ab8 <_Z8printIntiii>
        __putc('\n');
    80001d0c:	00a00513          	li	a0,10
    80001d10:	00004097          	auipc	ra,0x4
    80001d14:	e8c080e7          	jalr	-372(ra) # 80005b9c <__putc>
}
    80001d18:	db9ff06f          	j	80001ad0 <handleSupervisorTrap+0xdc>

0000000080001d1c <main>:
#include "../h/pcb.h"
#include "../h/riscv.h"

extern "C" void supervisorTrap();

void main() {
    80001d1c:	fd010113          	addi	sp,sp,-48
    80001d20:	02113423          	sd	ra,40(sp)
    80001d24:	02813023          	sd	s0,32(sp)
    80001d28:	03010413          	addi	s0,sp,48
    Riscv::w_stvec((uint64)&supervisorTrap); //adresa prekidne rutine
    80001d2c:	00006797          	auipc	a5,0x6
    80001d30:	a647b783          	ld	a5,-1436(a5) # 80007790 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001d34:	10579073          	csrw	stvec,a5

    thread_t kernelThread, idleThread;
    thread_t userThread;

    thread_create(&kernelThread, nullptr, nullptr);
    80001d38:	00000613          	li	a2,0
    80001d3c:	00000593          	li	a1,0
    80001d40:	fe840513          	addi	a0,s0,-24
    80001d44:	fffff097          	auipc	ra,0xfffff
    80001d48:	5b8080e7          	jalr	1464(ra) # 800012fc <_Z13thread_createPP3PCBPFvPvES2_>
    PCB::running = kernelThread;
    80001d4c:	00006797          	auipc	a5,0x6
    80001d50:	a647b783          	ld	a5,-1436(a5) # 800077b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d54:	fe843703          	ld	a4,-24(s0)
    80001d58:	00e7b023          	sd	a4,0(a5)

    thread_create(&idleThread, idle, nullptr);
    80001d5c:	00000613          	li	a2,0
    80001d60:	00006597          	auipc	a1,0x6
    80001d64:	a605b583          	ld	a1,-1440(a1) # 800077c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d68:	fe040513          	addi	a0,s0,-32
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	590080e7          	jalr	1424(ra) # 800012fc <_Z13thread_createPP3PCBPFvPvES2_>

    thread_create(&userThread, userMainWrapper, nullptr);
    80001d74:	00000613          	li	a2,0
    80001d78:	00006597          	auipc	a1,0x6
    80001d7c:	a285b583          	ld	a1,-1496(a1) # 800077a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d80:	fd840513          	addi	a0,s0,-40
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	578080e7          	jalr	1400(ra) # 800012fc <_Z13thread_createPP3PCBPFvPvES2_>

    while(!userThread->isFinished()) {
    80001d8c:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80001d90:	0307c783          	lbu	a5,48(a5)
    80001d94:	00079863          	bnez	a5,80001da4 <main+0x88>
        thread_dispatch();
    80001d98:	fffff097          	auipc	ra,0xfffff
    80001d9c:	5fc080e7          	jalr	1532(ra) # 80001394 <_Z15thread_dispatchv>
    80001da0:	fedff06f          	j	80001d8c <main+0x70>
    }
}
    80001da4:	02813083          	ld	ra,40(sp)
    80001da8:	02013403          	ld	s0,32(sp)
    80001dac:	03010113          	addi	sp,sp,48
    80001db0:	00008067          	ret

0000000080001db4 <_ZN15MemoryAllocator8mem_initEv>:
    return (char*)curr + MEM_BLOCK_SIZE; //vraca se adresa nakon zaglavlja
}



void MemoryAllocator::mem_init() {
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00813423          	sd	s0,8(sp)
    80001dbc:	01010413          	addi	s0,sp,16
    freeSegmentHead = (FreeSegment*)HEAP_START_ADDR; //pocetak heap-a
    80001dc0:	00006797          	auipc	a5,0x6
    80001dc4:	9c87b783          	ld	a5,-1592(a5) # 80007788 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001dc8:	0007b683          	ld	a3,0(a5)
    80001dcc:	00006717          	auipc	a4,0x6
    80001dd0:	a5470713          	addi	a4,a4,-1452 # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001dd4:	00d73023          	sd	a3,0(a4)

    freeSegmentHead->size = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / MEM_BLOCK_SIZE - 1) * MEM_BLOCK_SIZE;
    80001dd8:	00006797          	auipc	a5,0x6
    80001ddc:	9e07b783          	ld	a5,-1568(a5) # 800077b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001de0:	0007b783          	ld	a5,0(a5)
    80001de4:	40d787b3          	sub	a5,a5,a3
    80001de8:	0067d793          	srli	a5,a5,0x6
    80001dec:	fff78793          	addi	a5,a5,-1
    80001df0:	00679793          	slli	a5,a5,0x6
    80001df4:	00f6b023          	sd	a5,0(a3)

    freeSegmentHead->next = nullptr; freeSegmentHead->prev = nullptr;
    80001df8:	00073783          	ld	a5,0(a4)
    80001dfc:	0007b423          	sd	zero,8(a5)
    80001e00:	0007b823          	sd	zero,16(a5)

    usedSegmentHead = nullptr;
    80001e04:	00073423          	sd	zero,8(a4)
}
    80001e08:	00813403          	ld	s0,8(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN15MemoryAllocator9mem_allocEm>:
    if(size <= 0) return nullptr;
    80001e14:	14050463          	beqz	a0,80001f5c <_ZN15MemoryAllocator9mem_allocEm+0x148>
void *MemoryAllocator::mem_alloc(size_t size) {
    80001e18:	fe010113          	addi	sp,sp,-32
    80001e1c:	00113c23          	sd	ra,24(sp)
    80001e20:	00813823          	sd	s0,16(sp)
    80001e24:	00913423          	sd	s1,8(sp)
    80001e28:	02010413          	addi	s0,sp,32
    size = size * MEM_BLOCK_SIZE;
    80001e2c:	00651493          	slli	s1,a0,0x6
    if(!initialized) {
    80001e30:	00006797          	auipc	a5,0x6
    80001e34:	a007c783          	lbu	a5,-1536(a5) # 80007830 <_ZN15MemoryAllocator11initializedE>
    80001e38:	02078063          	beqz	a5,80001e58 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    FreeSegment *curr = freeSegmentHead;
    80001e3c:	00006517          	auipc	a0,0x6
    80001e40:	9e453503          	ld	a0,-1564(a0) # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
    for(; curr && curr->size < size; curr = curr->next);
    80001e44:	02050663          	beqz	a0,80001e70 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
    80001e48:	00053783          	ld	a5,0(a0)
    80001e4c:	0297f263          	bgeu	a5,s1,80001e70 <_ZN15MemoryAllocator9mem_allocEm+0x5c>
    80001e50:	00853503          	ld	a0,8(a0)
    80001e54:	ff1ff06f          	j	80001e44 <_ZN15MemoryAllocator9mem_allocEm+0x30>
        mem_init();
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	f5c080e7          	jalr	-164(ra) # 80001db4 <_ZN15MemoryAllocator8mem_initEv>
        initialized = true;
    80001e60:	00100793          	li	a5,1
    80001e64:	00006717          	auipc	a4,0x6
    80001e68:	9cf70623          	sb	a5,-1588(a4) # 80007830 <_ZN15MemoryAllocator11initializedE>
    80001e6c:	fd1ff06f          	j	80001e3c <_ZN15MemoryAllocator9mem_allocEm+0x28>
    if(!curr) return nullptr;
    80001e70:	0a050c63          	beqz	a0,80001f28 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    size_t remainingSize = curr->size - size;
    80001e74:	00053783          	ld	a5,0(a0)
    80001e78:	409787b3          	sub	a5,a5,s1
    curr->size = size;
    80001e7c:	00953023          	sd	s1,0(a0)
    if(remainingSize < 2 * MEM_BLOCK_SIZE) { //ako je preostali prostor manji od jednog bloka(drugi je za zaglavlja)
    80001e80:	07f00713          	li	a4,127
    80001e84:	04f76263          	bltu	a4,a5,80001ec8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        if(freeSegmentHead == curr) freeSegmentHead = curr->next;
    80001e88:	00006797          	auipc	a5,0x6
    80001e8c:	9987b783          	ld	a5,-1640(a5) # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001e90:	02a78463          	beq	a5,a0,80001eb8 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if(curr->next) curr->next->prev = curr->prev;
    80001e94:	00853783          	ld	a5,8(a0)
    80001e98:	00078663          	beqz	a5,80001ea4 <_ZN15MemoryAllocator9mem_allocEm+0x90>
    80001e9c:	01053703          	ld	a4,16(a0)
    80001ea0:	00e7b823          	sd	a4,16(a5)
        if(curr->prev) curr->prev->next = curr->next;
    80001ea4:	01053783          	ld	a5,16(a0)
    80001ea8:	04078c63          	beqz	a5,80001f00 <_ZN15MemoryAllocator9mem_allocEm+0xec>
    80001eac:	00853703          	ld	a4,8(a0)
    80001eb0:	00e7b423          	sd	a4,8(a5)
    80001eb4:	04c0006f          	j	80001f00 <_ZN15MemoryAllocator9mem_allocEm+0xec>
        if(freeSegmentHead == curr) freeSegmentHead = curr->next;
    80001eb8:	00853783          	ld	a5,8(a0)
    80001ebc:	00006717          	auipc	a4,0x6
    80001ec0:	96f73223          	sd	a5,-1692(a4) # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80001ec4:	fd1ff06f          	j	80001e94 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        size_t offset = MEM_BLOCK_SIZE + size;
    80001ec8:	04048713          	addi	a4,s1,64
        FreeSegment* newSegm = (FreeSegment*)((char*)curr + offset);
    80001ecc:	00e50733          	add	a4,a0,a4
        if (curr->prev) {
    80001ed0:	01053683          	ld	a3,16(a0)
    80001ed4:	06068463          	beqz	a3,80001f3c <_ZN15MemoryAllocator9mem_allocEm+0x128>
            curr->prev->next = newSegm;
    80001ed8:	00e6b423          	sd	a4,8(a3)
            newSegm->prev = curr->prev;
    80001edc:	01053683          	ld	a3,16(a0)
    80001ee0:	00d73823          	sd	a3,16(a4)
        if(curr->next)
    80001ee4:	00853683          	ld	a3,8(a0)
    80001ee8:	00068463          	beqz	a3,80001ef0 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
            curr->next->prev = newSegm;
    80001eec:	00e6b823          	sd	a4,16(a3)
        newSegm->next = curr->next;
    80001ef0:	00853683          	ld	a3,8(a0)
    80001ef4:	00d73423          	sd	a3,8(a4)
        newSegm->size = remainingSize - MEM_BLOCK_SIZE; //zbog njegovog zaglavlja
    80001ef8:	fc078793          	addi	a5,a5,-64
    80001efc:	00f73023          	sd	a5,0(a4)
    curr->next = nullptr; //potpuno se odvezuje cvor
    80001f00:	00053423          	sd	zero,8(a0)
    UsedSegment* used = (UsedSegment*)((char*)curr + sizeof(FreeSegment));
    80001f04:	01850713          	addi	a4,a0,24
    used->size = size;
    80001f08:	00953c23          	sd	s1,24(a0)
    if(!usedSegmentHead) {
    80001f0c:	00006797          	auipc	a5,0x6
    80001f10:	91c7b783          	ld	a5,-1764(a5) # 80007828 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001f14:	02078c63          	beqz	a5,80001f4c <_ZN15MemoryAllocator9mem_allocEm+0x138>
        used->next = usedSegmentHead;
    80001f18:	02f53023          	sd	a5,32(a0)
        usedSegmentHead = used;
    80001f1c:	00006797          	auipc	a5,0x6
    80001f20:	90e7b623          	sd	a4,-1780(a5) # 80007828 <_ZN15MemoryAllocator15usedSegmentHeadE>
    return (char*)curr + MEM_BLOCK_SIZE; //vraca se adresa nakon zaglavlja
    80001f24:	04050513          	addi	a0,a0,64
}
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	02010113          	addi	sp,sp,32
    80001f38:	00008067          	ret
            freeSegmentHead = newSegm;
    80001f3c:	00006697          	auipc	a3,0x6
    80001f40:	8ee6b223          	sd	a4,-1820(a3) # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
            freeSegmentHead->prev = nullptr;
    80001f44:	00073823          	sd	zero,16(a4)
    80001f48:	f9dff06f          	j	80001ee4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        usedSegmentHead = used;
    80001f4c:	00006797          	auipc	a5,0x6
    80001f50:	8ce7be23          	sd	a4,-1828(a5) # 80007828 <_ZN15MemoryAllocator15usedSegmentHeadE>
        usedSegmentHead->next = nullptr;
    80001f54:	00073423          	sd	zero,8(a4)
    80001f58:	fcdff06f          	j	80001f24 <_ZN15MemoryAllocator9mem_allocEm+0x110>
    if(size <= 0) return nullptr;
    80001f5c:	00000513          	li	a0,0
}
    80001f60:	00008067          	ret

0000000080001f64 <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE>:
    tryToJoin(fcurr);

    return 0;
}

void MemoryAllocator::tryToJoin(FreeSegment *curr) {
    80001f64:	ff010113          	addi	sp,sp,-16
    80001f68:	00813423          	sd	s0,8(sp)
    80001f6c:	01010413          	addi	s0,sp,16
    if (!curr) return;
    80001f70:	00050e63          	beqz	a0,80001f8c <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE+0x28>

    //da li je kraj jednog bloka jednak pocetku drugog
    if (curr->next && (char*)curr + curr->size == (char*)(curr->next) - MEM_BLOCK_SIZE) {
    80001f74:	00853783          	ld	a5,8(a0)
    80001f78:	00078a63          	beqz	a5,80001f8c <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE+0x28>
    80001f7c:	00053703          	ld	a4,0(a0)
    80001f80:	00e50633          	add	a2,a0,a4
    80001f84:	fc078693          	addi	a3,a5,-64
    80001f88:	00d60863          	beq	a2,a3,80001f98 <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE+0x34>
        curr->size += curr->next->size + MEM_BLOCK_SIZE;
        curr->next = curr->next->next;
        if (curr->next) curr->next->prev = curr;
    }
}
    80001f8c:	00813403          	ld	s0,8(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret
        curr->size += curr->next->size + MEM_BLOCK_SIZE;
    80001f98:	0007b683          	ld	a3,0(a5)
    80001f9c:	00d70733          	add	a4,a4,a3
    80001fa0:	04070713          	addi	a4,a4,64
    80001fa4:	00e53023          	sd	a4,0(a0)
        curr->next = curr->next->next;
    80001fa8:	0087b783          	ld	a5,8(a5)
    80001fac:	00f53423          	sd	a5,8(a0)
        if (curr->next) curr->next->prev = curr;
    80001fb0:	fc078ee3          	beqz	a5,80001f8c <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE+0x28>
    80001fb4:	00a7b823          	sd	a0,16(a5)
    80001fb8:	fd5ff06f          	j	80001f8c <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE+0x28>

0000000080001fbc <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    80001fbc:	10050c63          	beqz	a0,800020d4 <_ZN15MemoryAllocator8mem_freeEPv+0x118>
    80001fc0:	00050613          	mv	a2,a0
    UsedSegment* curr = usedSegmentHead, *prev = nullptr;
    80001fc4:	00006697          	auipc	a3,0x6
    80001fc8:	8646b683          	ld	a3,-1948(a3) # 80007828 <_ZN15MemoryAllocator15usedSegmentHeadE>
    80001fcc:	00000593          	li	a1,0
    for(; (curr != nullptr) & ((char*)curr - sizeof(FreeSegment) + MEM_BLOCK_SIZE != (char*)addr);
    80001fd0:	02868713          	addi	a4,a3,40
    80001fd4:	00d037b3          	snez	a5,a3
    80001fd8:	40c70733          	sub	a4,a4,a2
    80001fdc:	00e03733          	snez	a4,a4
    80001fe0:	00e7f7b3          	and	a5,a5,a4
    80001fe4:	0ff7f793          	andi	a5,a5,255
    80001fe8:	00078863          	beqz	a5,80001ff8 <_ZN15MemoryAllocator8mem_freeEPv+0x3c>
    prev = curr, curr = curr->next);
    80001fec:	00068593          	mv	a1,a3
    80001ff0:	0086b683          	ld	a3,8(a3)
    for(; (curr != nullptr) & ((char*)curr - sizeof(FreeSegment) + MEM_BLOCK_SIZE != (char*)addr);
    80001ff4:	fddff06f          	j	80001fd0 <_ZN15MemoryAllocator8mem_freeEPv+0x14>
    if(!curr) return -1;
    80001ff8:	0e068263          	beqz	a3,800020dc <_ZN15MemoryAllocator8mem_freeEPv+0x120>
int MemoryAllocator::mem_free(void *addr) {
    80001ffc:	fe010113          	addi	sp,sp,-32
    80002000:	00113c23          	sd	ra,24(sp)
    80002004:	00813823          	sd	s0,16(sp)
    80002008:	00913423          	sd	s1,8(sp)
    8000200c:	02010413          	addi	s0,sp,32
    if(prev) {
    80002010:	02058863          	beqz	a1,80002040 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        prev->next = curr->next;
    80002014:	0086b783          	ld	a5,8(a3)
    80002018:	00f5b423          	sd	a5,8(a1)
    if(freeSegmentHead && (char*)freeSegmentHead < (char*)addr) //ako uslov nije ispunjen segment postaje glava liste
    8000201c:	00006797          	auipc	a5,0x6
    80002020:	8047b783          	ld	a5,-2044(a5) # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
    80002024:	02078663          	beqz	a5,80002050 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002028:	02c7f863          	bgeu	a5,a2,80002058 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
        for(fcurr = freeSegmentHead; fcurr->next && (char*)addr > (char*)(fcurr->next); fcurr = fcurr->next);
    8000202c:	00078493          	mv	s1,a5
    80002030:	0087b783          	ld	a5,8(a5)
    80002034:	02078463          	beqz	a5,8000205c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002038:	fec7eae3          	bltu	a5,a2,8000202c <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    8000203c:	0200006f          	j	8000205c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    else usedSegmentHead = curr->next;
    80002040:	0086b783          	ld	a5,8(a3)
    80002044:	00005717          	auipc	a4,0x5
    80002048:	7ef73223          	sd	a5,2020(a4) # 80007828 <_ZN15MemoryAllocator15usedSegmentHeadE>
    8000204c:	fd1ff06f          	j	8000201c <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    FreeSegment* fcurr = nullptr;
    80002050:	00078493          	mv	s1,a5
    80002054:	0080006f          	j	8000205c <_ZN15MemoryAllocator8mem_freeEPv+0xa0>
    80002058:	00000493          	li	s1,0
    FreeSegment* newSeg = (FreeSegment*)((char*)addr - MEM_BLOCK_SIZE);
    8000205c:	fc060513          	addi	a0,a2,-64
    newSeg->size = curr->size;
    80002060:	0006b783          	ld	a5,0(a3)
    80002064:	fcf63023          	sd	a5,-64(a2)
    newSeg->prev = fcurr;
    80002068:	fc963823          	sd	s1,-48(a2)
    if (fcurr) newSeg->next = fcurr->next;
    8000206c:	04048663          	beqz	s1,800020b8 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
    80002070:	0084b783          	ld	a5,8(s1)
    80002074:	fcf63423          	sd	a5,-56(a2)
    if (newSeg->next) newSeg->next->prev = newSeg;
    80002078:	fc863783          	ld	a5,-56(a2)
    8000207c:	00078463          	beqz	a5,80002084 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
    80002080:	00a7b823          	sd	a0,16(a5)
    if (fcurr) fcurr->next = newSeg;
    80002084:	04048263          	beqz	s1,800020c8 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
    80002088:	00a4b423          	sd	a0,8(s1)
    tryToJoin(newSeg);
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	ed8080e7          	jalr	-296(ra) # 80001f64 <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE>
    tryToJoin(fcurr);
    80002094:	00048513          	mv	a0,s1
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	ecc080e7          	jalr	-308(ra) # 80001f64 <_ZN15MemoryAllocator9tryToJoinEPNS_11FreeSegmentE>
    return 0;
    800020a0:	00000513          	li	a0,0
}
    800020a4:	01813083          	ld	ra,24(sp)
    800020a8:	01013403          	ld	s0,16(sp)
    800020ac:	00813483          	ld	s1,8(sp)
    800020b0:	02010113          	addi	sp,sp,32
    800020b4:	00008067          	ret
    else newSeg->next = freeSegmentHead;
    800020b8:	00005797          	auipc	a5,0x5
    800020bc:	7687b783          	ld	a5,1896(a5) # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
    800020c0:	fcf63423          	sd	a5,-56(a2)
    800020c4:	fb5ff06f          	j	80002078 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    else freeSegmentHead = newSeg;
    800020c8:	00005797          	auipc	a5,0x5
    800020cc:	74a7bc23          	sd	a0,1880(a5) # 80007820 <_ZN15MemoryAllocator15freeSegmentHeadE>
    800020d0:	fbdff06f          	j	8000208c <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    if(!addr) return -1;
    800020d4:	fff00513          	li	a0,-1
    800020d8:	00008067          	ret
    if(!curr) return -1;
    800020dc:	fff00513          	li	a0,-1
}
    800020e0:	00008067          	ret

00000000800020e4 <_Znwm>:
#include "../h/memoryAllocator.h"
#include "../h/syscall_c.h"

void *operator new(size_t size) {
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00113423          	sd	ra,8(sp)
    800020ec:	00813023          	sd	s0,0(sp)
    800020f0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800020f4:	fffff097          	auipc	ra,0xfffff
    800020f8:	17c080e7          	jalr	380(ra) # 80001270 <_Z9mem_allocm>
}
    800020fc:	00813083          	ld	ra,8(sp)
    80002100:	00013403          	ld	s0,0(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <_Znam>:

void *operator new[](size_t size) {
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000211c:	fffff097          	auipc	ra,0xfffff
    80002120:	154080e7          	jalr	340(ra) # 80001270 <_Z9mem_allocm>
}
    80002124:	00813083          	ld	ra,8(sp)
    80002128:	00013403          	ld	s0,0(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <_ZdlPv>:

void operator delete(void *p) noexcept { mem_free(p); }
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00113423          	sd	ra,8(sp)
    8000213c:	00813023          	sd	s0,0(sp)
    80002140:	01010413          	addi	s0,sp,16
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	17c080e7          	jalr	380(ra) # 800012c0 <_Z8mem_freePv>
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZdaPv>:

void operator delete[](void *p) noexcept { mem_free(p); }
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	154080e7          	jalr	340(ra) # 800012c0 <_Z8mem_freePv>
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN6Thread10runWrapperEPv>:

Thread::Thread() {
    thread_alloc(&myHandle, runWrapper, this); //samo alocira nit
}

void Thread::runWrapper(void *arg) {
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00113423          	sd	ra,8(sp)
    8000218c:	00813023          	sd	s0,0(sp)
    80002190:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80002194:	00053783          	ld	a5,0(a0)
    80002198:	0107b783          	ld	a5,16(a5)
    8000219c:	000780e7          	jalr	a5
}
    800021a0:	00813083          	ld	ra,8(sp)
    800021a4:	00013403          	ld	s0,0(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret

00000000800021b0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	02010413          	addi	s0,sp,32
    800021c4:	00050493          	mv	s1,a0
    800021c8:	00005797          	auipc	a5,0x5
    800021cc:	51878793          	addi	a5,a5,1304 # 800076e0 <_ZTV9Semaphore+0x10>
    800021d0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800021d4:	00853503          	ld	a0,8(a0)
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	278080e7          	jalr	632(ra) # 80001450 <_Z9sem_closeP3Sem>
    sem_delete(myHandle);
    800021e0:	0084b503          	ld	a0,8(s1)
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	2a8080e7          	jalr	680(ra) # 8000148c <_Z10sem_deleteP3Sem>
}
    800021ec:	01813083          	ld	ra,24(sp)
    800021f0:	01013403          	ld	s0,16(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret

0000000080002200 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002200:	fe010113          	addi	sp,sp,-32
    80002204:	00113c23          	sd	ra,24(sp)
    80002208:	00813823          	sd	s0,16(sp)
    8000220c:	00913423          	sd	s1,8(sp)
    80002210:	02010413          	addi	s0,sp,32
    80002214:	00050493          	mv	s1,a0
}
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	f98080e7          	jalr	-104(ra) # 800021b0 <_ZN9SemaphoreD1Ev>
    80002220:	00048513          	mv	a0,s1
    80002224:	00000097          	auipc	ra,0x0
    80002228:	f10080e7          	jalr	-240(ra) # 80002134 <_ZdlPv>
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret

0000000080002240 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00113423          	sd	ra,8(sp)
    80002248:	00813023          	sd	s0,0(sp)
    8000224c:	01010413          	addi	s0,sp,16
    80002250:	00005797          	auipc	a5,0x5
    80002254:	46878793          	addi	a5,a5,1128 # 800076b8 <_ZTV6Thread+0x10>
    80002258:	00f53023          	sd	a5,0(a0)
    thread_alloc(&myHandle, body, arg);
    8000225c:	00850513          	addi	a0,a0,8
    80002260:	fffff097          	auipc	ra,0xfffff
    80002264:	344080e7          	jalr	836(ra) # 800015a4 <_Z12thread_allocPP3PCBPFvPvES2_>
}
    80002268:	00813083          	ld	ra,8(sp)
    8000226c:	00013403          	ld	s0,0(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <_ZN6Thread5startEv>:
int Thread::start() {
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00113423          	sd	ra,8(sp)
    80002280:	00813023          	sd	s0,0(sp)
    80002284:	01010413          	addi	s0,sp,16
    thread_scheduler(myHandle); //stavlja nit u scheduler
    80002288:	00853503          	ld	a0,8(a0)
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	39c080e7          	jalr	924(ra) # 80001628 <_Z16thread_schedulerP3PCB>
}
    80002294:	00000513          	li	a0,0
    80002298:	00813083          	ld	ra,8(sp)
    8000229c:	00013403          	ld	s0,0(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret

00000000800022a8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00113423          	sd	ra,8(sp)
    800022b0:	00813023          	sd	s0,0(sp)
    800022b4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	0dc080e7          	jalr	220(ra) # 80001394 <_Z15thread_dispatchv>
}
    800022c0:	00813083          	ld	ra,8(sp)
    800022c4:	00013403          	ld	s0,0(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00113423          	sd	ra,8(sp)
    800022d8:	00813023          	sd	s0,0(sp)
    800022dc:	01010413          	addi	s0,sp,16
    800022e0:	00005797          	auipc	a5,0x5
    800022e4:	3d878793          	addi	a5,a5,984 # 800076b8 <_ZTV6Thread+0x10>
    800022e8:	00f53023          	sd	a5,0(a0)
    thread_alloc(&myHandle, runWrapper, this); //samo alocira nit
    800022ec:	00050613          	mv	a2,a0
    800022f0:	00000597          	auipc	a1,0x0
    800022f4:	e9458593          	addi	a1,a1,-364 # 80002184 <_ZN6Thread10runWrapperEPv>
    800022f8:	00850513          	addi	a0,a0,8
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	2a8080e7          	jalr	680(ra) # 800015a4 <_Z12thread_allocPP3PCBPFvPvES2_>
}
    80002304:	00813083          	ld	ra,8(sp)
    80002308:	00013403          	ld	s0,0(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	00005797          	auipc	a5,0x5
    80002328:	3bc78793          	addi	a5,a5,956 # 800076e0 <_ZTV9Semaphore+0x10>
    8000232c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002330:	00850513          	addi	a0,a0,8
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	0c4080e7          	jalr	196(ra) # 800013f8 <_Z8sem_openPP3Semj>
}
    8000233c:	00813083          	ld	ra,8(sp)
    80002340:	00013403          	ld	s0,0(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	00813023          	sd	s0,0(sp)
    80002358:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000235c:	00853503          	ld	a0,8(a0)
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	160080e7          	jalr	352(ra) # 800014c0 <_Z8sem_waitP3Sem>
}
    80002368:	00813083          	ld	ra,8(sp)
    8000236c:	00013403          	ld	s0,0(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00113423          	sd	ra,8(sp)
    80002380:	00813023          	sd	s0,0(sp)
    80002384:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002388:	00853503          	ld	a0,8(a0)
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	170080e7          	jalr	368(ra) # 800014fc <_Z10sem_signalP3Sem>
}
    80002394:	00813083          	ld	ra,8(sp)
    80002398:	00013403          	ld	s0,0(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_ZN7Console4getcEv>:

char Console::getc() {
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00113423          	sd	ra,8(sp)
    800023ac:	00813023          	sd	s0,0(sp)
    800023b0:	01010413          	addi	s0,sp,16
    return ::getc();
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	184080e7          	jalr	388(ra) # 80001538 <_Z4getcv>
}
    800023bc:	00813083          	ld	ra,8(sp)
    800023c0:	00013403          	ld	s0,0(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00113423          	sd	ra,8(sp)
    800023d4:	00813023          	sd	s0,0(sp)
    800023d8:	01010413          	addi	s0,sp,16
    return ::putc(c);
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	194080e7          	jalr	404(ra) # 80001570 <_Z4putcc>
}
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZN6ThreadD1Ev>:

class Thread {
public:
    Thread (void (*body)(void*), void* arg);

    virtual ~Thread () {};
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00813423          	sd	s0,8(sp)
    800023fc:	01010413          	addi	s0,sp,16
    80002400:	00813403          	ld	s0,8(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <_ZN6Thread3runEv>:
    //static int sleep (time_t);

protected:
    Thread ();

    virtual void run () {};
    8000240c:	ff010113          	addi	sp,sp,-16
    80002410:	00813423          	sd	s0,8(sp)
    80002414:	01010413          	addi	s0,sp,16
    80002418:	00813403          	ld	s0,8(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <_ZN6ThreadD0Ev>:
    virtual ~Thread () {};
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00113423          	sd	ra,8(sp)
    8000242c:	00813023          	sd	s0,0(sp)
    80002430:	01010413          	addi	s0,sp,16
    80002434:	00000097          	auipc	ra,0x0
    80002438:	d00080e7          	jalr	-768(ra) # 80002134 <_ZdlPv>
    8000243c:	00813083          	ld	ra,8(sp)
    80002440:	00013403          	ld	s0,0(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.h"

void Riscv::popSppSpie()
{
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002458:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000245c:	10200073          	sret
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN3Sem5blockEv>:
#include "../h/sem.h"

void Sem::block() {
    8000246c:	fd010113          	addi	sp,sp,-48
    80002470:	02113423          	sd	ra,40(sp)
    80002474:	02813023          	sd	s0,32(sp)
    80002478:	00913c23          	sd	s1,24(sp)
    8000247c:	01213823          	sd	s2,16(sp)
    80002480:	01313423          	sd	s3,8(sp)
    80002484:	03010413          	addi	s0,sp,48
    80002488:	00050913          	mv	s2,a0
    blocked.addLast(PCB::running);
    8000248c:	00850493          	addi	s1,a0,8
    80002490:	00005797          	auipc	a5,0x5
    80002494:	3207b783          	ld	a5,800(a5) # 800077b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002498:	0007b983          	ld	s3,0(a5)
        if (!tail) { tail = head; }
        cnt++;
    }

    void addLast(T *data) {
        Elem *elem = new Elem(data, 0);
    8000249c:	01000513          	li	a0,16
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	c44080e7          	jalr	-956(ra) # 800020e4 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800024a8:	01353023          	sd	s3,0(a0)
    800024ac:	00053423          	sd	zero,8(a0)
        if (tail) {
    800024b0:	0084b783          	ld	a5,8(s1)
    800024b4:	04078863          	beqz	a5,80002504 <_ZN3Sem5blockEv+0x98>
            tail->next = elem;
    800024b8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800024bc:	00a4b423          	sd	a0,8(s1)
        } else {
            head = tail = elem;
        }
        cnt++;
    800024c0:	0104b783          	ld	a5,16(s1)
    800024c4:	00178793          	addi	a5,a5,1
    800024c8:	00f4b823          	sd	a5,16(s1)
    PCB::running->setBlocked(true);
    800024cc:	00005797          	auipc	a5,0x5
    800024d0:	2e47b783          	ld	a5,740(a5) # 800077b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800024d4:	0007b783          	ld	a5,0(a5)
    void setBlocked(bool value) { blocked = value; }
    800024d8:	00100713          	li	a4,1
    800024dc:	02e788a3          	sb	a4,49(a5)
    PCB::yield();
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	2d4080e7          	jalr	724(ra) # 800017b4 <_ZN3PCB5yieldEv>
}
    800024e8:	02813083          	ld	ra,40(sp)
    800024ec:	02013403          	ld	s0,32(sp)
    800024f0:	01813483          	ld	s1,24(sp)
    800024f4:	01013903          	ld	s2,16(sp)
    800024f8:	00813983          	ld	s3,8(sp)
    800024fc:	03010113          	addi	sp,sp,48
    80002500:	00008067          	ret
            head = tail = elem;
    80002504:	00a4b423          	sd	a0,8(s1)
    80002508:	00a93423          	sd	a0,8(s2)
    8000250c:	fb5ff06f          	j	800024c0 <_ZN3Sem5blockEv+0x54>

0000000080002510 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    80002510:	fe010113          	addi	sp,sp,-32
    80002514:	00113c23          	sd	ra,24(sp)
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00913423          	sd	s1,8(sp)
    80002520:	01213023          	sd	s2,0(sp)
    80002524:	02010413          	addi	s0,sp,32
    80002528:	00050793          	mv	a5,a0
    thread_t p = blocked.removeFirst();
    8000252c:	00850493          	addi	s1,a0,8
    }

    T *removeFirst() {
        if (!head) { return 0; }
    80002530:	00853503          	ld	a0,8(a0)
    80002534:	04050c63          	beqz	a0,8000258c <_ZN3Sem7unblockEv+0x7c>

        Elem *elem = head;
        head = head->next;
    80002538:	00853703          	ld	a4,8(a0)
    8000253c:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80002540:	04070263          	beqz	a4,80002584 <_ZN3Sem7unblockEv+0x74>

        T *ret = elem->data;
    80002544:	00053903          	ld	s2,0(a0)
        delete elem;
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	bec080e7          	jalr	-1044(ra) # 80002134 <_ZdlPv>
        cnt--;
    80002550:	0104b783          	ld	a5,16(s1)
    80002554:	fff78793          	addi	a5,a5,-1
    80002558:	00f4b823          	sd	a5,16(s1)
    8000255c:	020908a3          	sb	zero,49(s2)
    p->setBlocked(false);
    Scheduler::put(p);
    80002560:	00090513          	mv	a0,s2
    80002564:	00000097          	auipc	ra,0x0
    80002568:	308080e7          	jalr	776(ra) # 8000286c <_ZN9Scheduler3putEP3PCB>
}
    8000256c:	01813083          	ld	ra,24(sp)
    80002570:	01013403          	ld	s0,16(sp)
    80002574:	00813483          	ld	s1,8(sp)
    80002578:	00013903          	ld	s2,0(sp)
    8000257c:	02010113          	addi	sp,sp,32
    80002580:	00008067          	ret
        if (!head) { tail = 0; }
    80002584:	0004b423          	sd	zero,8(s1)
    80002588:	fbdff06f          	j	80002544 <_ZN3Sem7unblockEv+0x34>
        if (!head) { return 0; }
    8000258c:	00050913          	mv	s2,a0
    80002590:	fcdff06f          	j	8000255c <_ZN3Sem7unblockEv+0x4c>

0000000080002594 <_ZN3Sem19deactivateSemaphoreEPS_>:
    bool isActive() { return active; }
    80002594:	00454783          	lbu	a5,4(a0)
Sem *Sem::createSemaphore(uint32 init) {
    return new Sem(init);
}

int Sem::deactivateSemaphore(sem_t handle) {
    if(!handle->isActive()) return -1;
    80002598:	08078a63          	beqz	a5,8000262c <_ZN3Sem19deactivateSemaphoreEPS_+0x98>
int Sem::deactivateSemaphore(sem_t handle) {
    8000259c:	fc010113          	addi	sp,sp,-64
    800025a0:	02113c23          	sd	ra,56(sp)
    800025a4:	02813823          	sd	s0,48(sp)
    800025a8:	02913423          	sd	s1,40(sp)
    800025ac:	03213023          	sd	s2,32(sp)
    800025b0:	01313c23          	sd	s3,24(sp)
    800025b4:	01413823          	sd	s4,16(sp)
    800025b8:	01513423          	sd	s5,8(sp)
    800025bc:	04010413          	addi	s0,sp,64
    800025c0:	00050493          	mv	s1,a0
    void setActive(bool val) { active = val; }
    800025c4:	00050223          	sb	zero,4(a0)
    uint64 getCnt() { return cnt; }
    800025c8:	01853a83          	ld	s5,24(a0)

    handle->setActive(false);

    uint64 queueSize = handle->blocked.getCnt();

    for(uint64 i = 0; i < queueSize; i++) {
    800025cc:	00000913          	li	s2,0
    800025d0:	0340006f          	j	80002604 <_ZN3Sem19deactivateSemaphoreEPS_+0x70>
        if (!head) { tail = 0; }
    800025d4:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    800025d8:	00053a03          	ld	s4,0(a0)
        delete elem;
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	b58080e7          	jalr	-1192(ra) # 80002134 <_ZdlPv>
        cnt--;
    800025e4:	0109b783          	ld	a5,16(s3)
    800025e8:	fff78793          	addi	a5,a5,-1
    800025ec:	00f9b823          	sd	a5,16(s3)
    800025f0:	020a08a3          	sb	zero,49(s4)
        thread_t th = handle->blocked.removeFirst();
        th->setBlocked(false);
        Scheduler::put(th);
    800025f4:	000a0513          	mv	a0,s4
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	274080e7          	jalr	628(ra) # 8000286c <_ZN9Scheduler3putEP3PCB>
    for(uint64 i = 0; i < queueSize; i++) {
    80002600:	00190913          	addi	s2,s2,1
    80002604:	03597863          	bgeu	s2,s5,80002634 <_ZN3Sem19deactivateSemaphoreEPS_+0xa0>
        thread_t th = handle->blocked.removeFirst();
    80002608:	00848993          	addi	s3,s1,8
        if (!head) { return 0; }
    8000260c:	0084b503          	ld	a0,8(s1)
    80002610:	00050a63          	beqz	a0,80002624 <_ZN3Sem19deactivateSemaphoreEPS_+0x90>
        head = head->next;
    80002614:	00853783          	ld	a5,8(a0)
    80002618:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    8000261c:	fa079ee3          	bnez	a5,800025d8 <_ZN3Sem19deactivateSemaphoreEPS_+0x44>
    80002620:	fb5ff06f          	j	800025d4 <_ZN3Sem19deactivateSemaphoreEPS_+0x40>
        if (!head) { return 0; }
    80002624:	00050a13          	mv	s4,a0
    80002628:	fc9ff06f          	j	800025f0 <_ZN3Sem19deactivateSemaphoreEPS_+0x5c>
    if(!handle->isActive()) return -1;
    8000262c:	fff00513          	li	a0,-1
    }

    return 0;
}
    80002630:	00008067          	ret
    return 0;
    80002634:	00000513          	li	a0,0
}
    80002638:	03813083          	ld	ra,56(sp)
    8000263c:	03013403          	ld	s0,48(sp)
    80002640:	02813483          	ld	s1,40(sp)
    80002644:	02013903          	ld	s2,32(sp)
    80002648:	01813983          	ld	s3,24(sp)
    8000264c:	01013a03          	ld	s4,16(sp)
    80002650:	00813a83          	ld	s5,8(sp)
    80002654:	04010113          	addi	sp,sp,64
    80002658:	00008067          	ret

000000008000265c <_ZN3SemnwEm>:

void Sem::deleteSemaphore(sem_t handle) {
    delete handle;
}

void *Sem::operator new(size_t size)  {
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00113423          	sd	ra,8(sp)
    80002664:	00813023          	sd	s0,0(sp)
    80002668:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    8000266c:	03f57793          	andi	a5,a0,63
    80002670:	02079063          	bnez	a5,80002690 <_ZN3SemnwEm+0x34>
    80002674:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	79c080e7          	jalr	1948(ra) # 80001e14 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002680:	00813083          	ld	ra,8(sp)
    80002684:	00013403          	ld	s0,0(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80002690:	00655513          	srli	a0,a0,0x6
    80002694:	00150513          	addi	a0,a0,1
    80002698:	fe1ff06f          	j	80002678 <_ZN3SemnwEm+0x1c>

000000008000269c <_ZN3Sem15createSemaphoreEj>:
Sem *Sem::createSemaphore(uint32 init) {
    8000269c:	fe010113          	addi	sp,sp,-32
    800026a0:	00113c23          	sd	ra,24(sp)
    800026a4:	00813823          	sd	s0,16(sp)
    800026a8:	00913423          	sd	s1,8(sp)
    800026ac:	02010413          	addi	s0,sp,32
    800026b0:	00050493          	mv	s1,a0
    return new Sem(init);
    800026b4:	02000513          	li	a0,32
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	fa4080e7          	jalr	-92(ra) # 8000265c <_ZN3SemnwEm>
    Sem(uint32 init = 1) : val(init), active(true) {}
    800026c0:	00952023          	sw	s1,0(a0)
    800026c4:	00100713          	li	a4,1
    800026c8:	00e50223          	sb	a4,4(a0)
    List() : head(0), tail(0) {}
    800026cc:	00053423          	sd	zero,8(a0)
    800026d0:	00053823          	sd	zero,16(a0)
    800026d4:	00053c23          	sd	zero,24(a0)
}
    800026d8:	01813083          	ld	ra,24(sp)
    800026dc:	01013403          	ld	s0,16(sp)
    800026e0:	00813483          	ld	s1,8(sp)
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00008067          	ret

00000000800026ec <_ZN3SemnaEm>:

void *Sem::operator new[](size_t size)  {
    800026ec:	ff010113          	addi	sp,sp,-16
    800026f0:	00113423          	sd	ra,8(sp)
    800026f4:	00813023          	sd	s0,0(sp)
    800026f8:	01010413          	addi	s0,sp,16
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    800026fc:	03f57793          	andi	a5,a0,63
    80002700:	02079063          	bnez	a5,80002720 <_ZN3SemnaEm+0x34>
    80002704:	00655513          	srli	a0,a0,0x6
    return MemoryAllocator::mem_alloc(size);
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	70c080e7          	jalr	1804(ra) # 80001e14 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002710:	00813083          	ld	ra,8(sp)
    80002714:	00013403          	ld	s0,0(sp)
    80002718:	01010113          	addi	sp,sp,16
    8000271c:	00008067          	ret
    size = size % MEM_BLOCK_SIZE == 0 ? size / MEM_BLOCK_SIZE : (size / MEM_BLOCK_SIZE + 1 ); //pretvaranje u blokove
    80002720:	00655513          	srli	a0,a0,0x6
    80002724:	00150513          	addi	a0,a0,1
    80002728:	fe1ff06f          	j	80002708 <_ZN3SemnaEm+0x1c>

000000008000272c <_ZN3SemdlEPv>:

void Sem::operator delete(void *p) noexcept  { MemoryAllocator::mem_free(p); }
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00113423          	sd	ra,8(sp)
    80002734:	00813023          	sd	s0,0(sp)
    80002738:	01010413          	addi	s0,sp,16
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	880080e7          	jalr	-1920(ra) # 80001fbc <_ZN15MemoryAllocator8mem_freeEPv>
    80002744:	00813083          	ld	ra,8(sp)
    80002748:	00013403          	ld	s0,0(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN3Sem15deleteSemaphoreEPS_>:
    delete handle;
    80002754:	02050663          	beqz	a0,80002780 <_ZN3Sem15deleteSemaphoreEPS_+0x2c>
void Sem::deleteSemaphore(sem_t handle) {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
    delete handle;
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	fc4080e7          	jalr	-60(ra) # 8000272c <_ZN3SemdlEPv>
}
    80002770:	00813083          	ld	ra,8(sp)
    80002774:	00013403          	ld	s0,0(sp)
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00008067          	ret
    80002780:	00008067          	ret

0000000080002784 <_ZN3SemdaEPv>:

void Sem::operator delete[](void *p) noexcept  { MemoryAllocator::mem_free(p); }
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	00000097          	auipc	ra,0x0
    80002798:	828080e7          	jalr	-2008(ra) # 80001fbc <_ZN15MemoryAllocator8mem_freeEPv>
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_Z41__static_initialization_and_destruction_0ii>:
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(PCB *pcb) {
    readyCoroutineQueue.addLast(pcb);
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00813423          	sd	s0,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	00100793          	li	a5,1
    800027bc:	00f50863          	beq	a0,a5,800027cc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800027c0:	00813403          	ld	s0,8(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret
    800027cc:	000107b7          	lui	a5,0x10
    800027d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800027d4:	fef596e3          	bne	a1,a5,800027c0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    800027d8:	00005797          	auipc	a5,0x5
    800027dc:	06078793          	addi	a5,a5,96 # 80007838 <_ZN9Scheduler19readyCoroutineQueueE>
    800027e0:	0007b023          	sd	zero,0(a5)
    800027e4:	0007b423          	sd	zero,8(a5)
    800027e8:	0007b823          	sd	zero,16(a5)
    800027ec:	fd5ff06f          	j	800027c0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800027f0 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800027f0:	fe010113          	addi	sp,sp,-32
    800027f4:	00113c23          	sd	ra,24(sp)
    800027f8:	00813823          	sd	s0,16(sp)
    800027fc:	00913423          	sd	s1,8(sp)
    80002800:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002804:	00005517          	auipc	a0,0x5
    80002808:	03453503          	ld	a0,52(a0) # 80007838 <_ZN9Scheduler19readyCoroutineQueueE>
    8000280c:	04050c63          	beqz	a0,80002864 <_ZN9Scheduler3getEv+0x74>
        head = head->next;
    80002810:	00853783          	ld	a5,8(a0)
    80002814:	00005717          	auipc	a4,0x5
    80002818:	02f73223          	sd	a5,36(a4) # 80007838 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    8000281c:	02078e63          	beqz	a5,80002858 <_ZN9Scheduler3getEv+0x68>
        T *ret = elem->data;
    80002820:	00053483          	ld	s1,0(a0)
        delete elem;
    80002824:	00000097          	auipc	ra,0x0
    80002828:	910080e7          	jalr	-1776(ra) # 80002134 <_ZdlPv>
        cnt--;
    8000282c:	00005717          	auipc	a4,0x5
    80002830:	00c70713          	addi	a4,a4,12 # 80007838 <_ZN9Scheduler19readyCoroutineQueueE>
    80002834:	01073783          	ld	a5,16(a4)
    80002838:	fff78793          	addi	a5,a5,-1
    8000283c:	00f73823          	sd	a5,16(a4)
}
    80002840:	00048513          	mv	a0,s1
    80002844:	01813083          	ld	ra,24(sp)
    80002848:	01013403          	ld	s0,16(sp)
    8000284c:	00813483          	ld	s1,8(sp)
    80002850:	02010113          	addi	sp,sp,32
    80002854:	00008067          	ret
        if (!head) { tail = 0; }
    80002858:	00005797          	auipc	a5,0x5
    8000285c:	fe07b423          	sd	zero,-24(a5) # 80007840 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002860:	fc1ff06f          	j	80002820 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002864:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002868:	fd9ff06f          	j	80002840 <_ZN9Scheduler3getEv+0x50>

000000008000286c <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    8000286c:	fe010113          	addi	sp,sp,-32
    80002870:	00113c23          	sd	ra,24(sp)
    80002874:	00813823          	sd	s0,16(sp)
    80002878:	00913423          	sd	s1,8(sp)
    8000287c:	02010413          	addi	s0,sp,32
    80002880:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002884:	01000513          	li	a0,16
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	85c080e7          	jalr	-1956(ra) # 800020e4 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002890:	00953023          	sd	s1,0(a0)
    80002894:	00053423          	sd	zero,8(a0)
        if (tail) {
    80002898:	00005797          	auipc	a5,0x5
    8000289c:	fa87b783          	ld	a5,-88(a5) # 80007840 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800028a0:	02078c63          	beqz	a5,800028d8 <_ZN9Scheduler3putEP3PCB+0x6c>
            tail->next = elem;
    800028a4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800028a8:	00005797          	auipc	a5,0x5
    800028ac:	f8a7bc23          	sd	a0,-104(a5) # 80007840 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
        cnt++;
    800028b0:	00005717          	auipc	a4,0x5
    800028b4:	f8870713          	addi	a4,a4,-120 # 80007838 <_ZN9Scheduler19readyCoroutineQueueE>
    800028b8:	01073783          	ld	a5,16(a4)
    800028bc:	00178793          	addi	a5,a5,1
    800028c0:	00f73823          	sd	a5,16(a4)
    800028c4:	01813083          	ld	ra,24(sp)
    800028c8:	01013403          	ld	s0,16(sp)
    800028cc:	00813483          	ld	s1,8(sp)
    800028d0:	02010113          	addi	sp,sp,32
    800028d4:	00008067          	ret
            head = tail = elem;
    800028d8:	00005797          	auipc	a5,0x5
    800028dc:	f6078793          	addi	a5,a5,-160 # 80007838 <_ZN9Scheduler19readyCoroutineQueueE>
    800028e0:	00a7b423          	sd	a0,8(a5)
    800028e4:	00a7b023          	sd	a0,0(a5)
    800028e8:	fc9ff06f          	j	800028b0 <_ZN9Scheduler3putEP3PCB+0x44>

00000000800028ec <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800028ec:	ff010113          	addi	sp,sp,-16
    800028f0:	00113423          	sd	ra,8(sp)
    800028f4:	00813023          	sd	s0,0(sp)
    800028f8:	01010413          	addi	s0,sp,16
    800028fc:	000105b7          	lui	a1,0x10
    80002900:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002904:	00100513          	li	a0,1
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	ea4080e7          	jalr	-348(ra) # 800027ac <_Z41__static_initialization_and_destruction_0ii>
    80002910:	00813083          	ld	ra,8(sp)
    80002914:	00013403          	ld	s0,0(sp)
    80002918:	01010113          	addi	sp,sp,16
    8000291c:	00008067          	ret

0000000080002920 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002920:	fe010113          	addi	sp,sp,-32
    80002924:	00113c23          	sd	ra,24(sp)
    80002928:	00813823          	sd	s0,16(sp)
    8000292c:	00913423          	sd	s1,8(sp)
    80002930:	02010413          	addi	s0,sp,32
    80002934:	00050493          	mv	s1,a0
    LOCK();
    80002938:	00100613          	li	a2,1
    8000293c:	00000593          	li	a1,0
    80002940:	00005517          	auipc	a0,0x5
    80002944:	f1050513          	addi	a0,a0,-240 # 80007850 <lockPrint>
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	8ec080e7          	jalr	-1812(ra) # 80001234 <copy_and_swap>
    80002950:	fe0514e3          	bnez	a0,80002938 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002954:	0004c503          	lbu	a0,0(s1)
    80002958:	00050a63          	beqz	a0,8000296c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	c14080e7          	jalr	-1004(ra) # 80001570 <_Z4putcc>
        string++;
    80002964:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002968:	fedff06f          	j	80002954 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000296c:	00000613          	li	a2,0
    80002970:	00100593          	li	a1,1
    80002974:	00005517          	auipc	a0,0x5
    80002978:	edc50513          	addi	a0,a0,-292 # 80007850 <lockPrint>
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	8b8080e7          	jalr	-1864(ra) # 80001234 <copy_and_swap>
    80002984:	fe0514e3          	bnez	a0,8000296c <_Z11printStringPKc+0x4c>
}
    80002988:	01813083          	ld	ra,24(sp)
    8000298c:	01013403          	ld	s0,16(sp)
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	02010113          	addi	sp,sp,32
    80002998:	00008067          	ret

000000008000299c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000299c:	fd010113          	addi	sp,sp,-48
    800029a0:	02113423          	sd	ra,40(sp)
    800029a4:	02813023          	sd	s0,32(sp)
    800029a8:	00913c23          	sd	s1,24(sp)
    800029ac:	01213823          	sd	s2,16(sp)
    800029b0:	01313423          	sd	s3,8(sp)
    800029b4:	01413023          	sd	s4,0(sp)
    800029b8:	03010413          	addi	s0,sp,48
    800029bc:	00050993          	mv	s3,a0
    800029c0:	00058a13          	mv	s4,a1
    LOCK();
    800029c4:	00100613          	li	a2,1
    800029c8:	00000593          	li	a1,0
    800029cc:	00005517          	auipc	a0,0x5
    800029d0:	e8450513          	addi	a0,a0,-380 # 80007850 <lockPrint>
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	860080e7          	jalr	-1952(ra) # 80001234 <copy_and_swap>
    800029dc:	fe0514e3          	bnez	a0,800029c4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800029e0:	00000913          	li	s2,0
    800029e4:	00090493          	mv	s1,s2
    800029e8:	0019091b          	addiw	s2,s2,1
    800029ec:	03495a63          	bge	s2,s4,80002a20 <_Z9getStringPci+0x84>
        cc = getc();
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	b48080e7          	jalr	-1208(ra) # 80001538 <_Z4getcv>
        if(cc < 1)
    800029f8:	02050463          	beqz	a0,80002a20 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800029fc:	009984b3          	add	s1,s3,s1
    80002a00:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002a04:	00a00793          	li	a5,10
    80002a08:	00f50a63          	beq	a0,a5,80002a1c <_Z9getStringPci+0x80>
    80002a0c:	00d00793          	li	a5,13
    80002a10:	fcf51ae3          	bne	a0,a5,800029e4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002a14:	00090493          	mv	s1,s2
    80002a18:	0080006f          	j	80002a20 <_Z9getStringPci+0x84>
    80002a1c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002a20:	009984b3          	add	s1,s3,s1
    80002a24:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002a28:	00000613          	li	a2,0
    80002a2c:	00100593          	li	a1,1
    80002a30:	00005517          	auipc	a0,0x5
    80002a34:	e2050513          	addi	a0,a0,-480 # 80007850 <lockPrint>
    80002a38:	ffffe097          	auipc	ra,0xffffe
    80002a3c:	7fc080e7          	jalr	2044(ra) # 80001234 <copy_and_swap>
    80002a40:	fe0514e3          	bnez	a0,80002a28 <_Z9getStringPci+0x8c>
    return buf;
}
    80002a44:	00098513          	mv	a0,s3
    80002a48:	02813083          	ld	ra,40(sp)
    80002a4c:	02013403          	ld	s0,32(sp)
    80002a50:	01813483          	ld	s1,24(sp)
    80002a54:	01013903          	ld	s2,16(sp)
    80002a58:	00813983          	ld	s3,8(sp)
    80002a5c:	00013a03          	ld	s4,0(sp)
    80002a60:	03010113          	addi	sp,sp,48
    80002a64:	00008067          	ret

0000000080002a68 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00813423          	sd	s0,8(sp)
    80002a70:	01010413          	addi	s0,sp,16
    80002a74:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002a78:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002a7c:	0006c603          	lbu	a2,0(a3)
    80002a80:	fd06071b          	addiw	a4,a2,-48
    80002a84:	0ff77713          	andi	a4,a4,255
    80002a88:	00900793          	li	a5,9
    80002a8c:	02e7e063          	bltu	a5,a4,80002aac <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002a90:	0025179b          	slliw	a5,a0,0x2
    80002a94:	00a787bb          	addw	a5,a5,a0
    80002a98:	0017979b          	slliw	a5,a5,0x1
    80002a9c:	00168693          	addi	a3,a3,1
    80002aa0:	00c787bb          	addw	a5,a5,a2
    80002aa4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002aa8:	fd5ff06f          	j	80002a7c <_Z11stringToIntPKc+0x14>
    return n;
}
    80002aac:	00813403          	ld	s0,8(sp)
    80002ab0:	01010113          	addi	sp,sp,16
    80002ab4:	00008067          	ret

0000000080002ab8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002ab8:	fc010113          	addi	sp,sp,-64
    80002abc:	02113c23          	sd	ra,56(sp)
    80002ac0:	02813823          	sd	s0,48(sp)
    80002ac4:	02913423          	sd	s1,40(sp)
    80002ac8:	03213023          	sd	s2,32(sp)
    80002acc:	01313c23          	sd	s3,24(sp)
    80002ad0:	04010413          	addi	s0,sp,64
    80002ad4:	00050493          	mv	s1,a0
    80002ad8:	00058913          	mv	s2,a1
    80002adc:	00060993          	mv	s3,a2
    LOCK();
    80002ae0:	00100613          	li	a2,1
    80002ae4:	00000593          	li	a1,0
    80002ae8:	00005517          	auipc	a0,0x5
    80002aec:	d6850513          	addi	a0,a0,-664 # 80007850 <lockPrint>
    80002af0:	ffffe097          	auipc	ra,0xffffe
    80002af4:	744080e7          	jalr	1860(ra) # 80001234 <copy_and_swap>
    80002af8:	fe0514e3          	bnez	a0,80002ae0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002afc:	00098463          	beqz	s3,80002b04 <_Z8printIntiii+0x4c>
    80002b00:	0804c463          	bltz	s1,80002b88 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002b04:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002b08:	00000593          	li	a1,0
    }

    i = 0;
    80002b0c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002b10:	0009079b          	sext.w	a5,s2
    80002b14:	0325773b          	remuw	a4,a0,s2
    80002b18:	00048613          	mv	a2,s1
    80002b1c:	0014849b          	addiw	s1,s1,1
    80002b20:	02071693          	slli	a3,a4,0x20
    80002b24:	0206d693          	srli	a3,a3,0x20
    80002b28:	00005717          	auipc	a4,0x5
    80002b2c:	bc870713          	addi	a4,a4,-1080 # 800076f0 <digits>
    80002b30:	00d70733          	add	a4,a4,a3
    80002b34:	00074683          	lbu	a3,0(a4)
    80002b38:	fd040713          	addi	a4,s0,-48
    80002b3c:	00c70733          	add	a4,a4,a2
    80002b40:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002b44:	0005071b          	sext.w	a4,a0
    80002b48:	0325553b          	divuw	a0,a0,s2
    80002b4c:	fcf772e3          	bgeu	a4,a5,80002b10 <_Z8printIntiii+0x58>
    if(neg)
    80002b50:	00058c63          	beqz	a1,80002b68 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002b54:	fd040793          	addi	a5,s0,-48
    80002b58:	009784b3          	add	s1,a5,s1
    80002b5c:	02d00793          	li	a5,45
    80002b60:	fef48823          	sb	a5,-16(s1)
    80002b64:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002b68:	fff4849b          	addiw	s1,s1,-1
    80002b6c:	0204c463          	bltz	s1,80002b94 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002b70:	fd040793          	addi	a5,s0,-48
    80002b74:	009787b3          	add	a5,a5,s1
    80002b78:	ff07c503          	lbu	a0,-16(a5)
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	9f4080e7          	jalr	-1548(ra) # 80001570 <_Z4putcc>
    80002b84:	fe5ff06f          	j	80002b68 <_Z8printIntiii+0xb0>
        x = -xx;
    80002b88:	4090053b          	negw	a0,s1
        neg = 1;
    80002b8c:	00100593          	li	a1,1
        x = -xx;
    80002b90:	f7dff06f          	j	80002b0c <_Z8printIntiii+0x54>

    UNLOCK();
    80002b94:	00000613          	li	a2,0
    80002b98:	00100593          	li	a1,1
    80002b9c:	00005517          	auipc	a0,0x5
    80002ba0:	cb450513          	addi	a0,a0,-844 # 80007850 <lockPrint>
    80002ba4:	ffffe097          	auipc	ra,0xffffe
    80002ba8:	690080e7          	jalr	1680(ra) # 80001234 <copy_and_swap>
    80002bac:	fe0514e3          	bnez	a0,80002b94 <_Z8printIntiii+0xdc>
    80002bb0:	03813083          	ld	ra,56(sp)
    80002bb4:	03013403          	ld	s0,48(sp)
    80002bb8:	02813483          	ld	s1,40(sp)
    80002bbc:	02013903          	ld	s2,32(sp)
    80002bc0:	01813983          	ld	s3,24(sp)
    80002bc4:	04010113          	addi	sp,sp,64
    80002bc8:	00008067          	ret

0000000080002bcc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002bcc:	fd010113          	addi	sp,sp,-48
    80002bd0:	02113423          	sd	ra,40(sp)
    80002bd4:	02813023          	sd	s0,32(sp)
    80002bd8:	00913c23          	sd	s1,24(sp)
    80002bdc:	01213823          	sd	s2,16(sp)
    80002be0:	01313423          	sd	s3,8(sp)
    80002be4:	03010413          	addi	s0,sp,48
    80002be8:	00050493          	mv	s1,a0
    80002bec:	00058913          	mv	s2,a1
    80002bf0:	0015879b          	addiw	a5,a1,1
    80002bf4:	0007851b          	sext.w	a0,a5
    80002bf8:	00f4a023          	sw	a5,0(s1)
    80002bfc:	0004a823          	sw	zero,16(s1)
    80002c00:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002c04:	00251513          	slli	a0,a0,0x2
    80002c08:	ffffe097          	auipc	ra,0xffffe
    80002c0c:	668080e7          	jalr	1640(ra) # 80001270 <_Z9mem_allocm>
    80002c10:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002c14:	01000513          	li	a0,16
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	4cc080e7          	jalr	1228(ra) # 800020e4 <_Znwm>
    80002c20:	00050993          	mv	s3,a0
    80002c24:	00000593          	li	a1,0
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	6ec080e7          	jalr	1772(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    80002c30:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002c34:	01000513          	li	a0,16
    80002c38:	fffff097          	auipc	ra,0xfffff
    80002c3c:	4ac080e7          	jalr	1196(ra) # 800020e4 <_Znwm>
    80002c40:	00050993          	mv	s3,a0
    80002c44:	00090593          	mv	a1,s2
    80002c48:	fffff097          	auipc	ra,0xfffff
    80002c4c:	6cc080e7          	jalr	1740(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    80002c50:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002c54:	01000513          	li	a0,16
    80002c58:	fffff097          	auipc	ra,0xfffff
    80002c5c:	48c080e7          	jalr	1164(ra) # 800020e4 <_Znwm>
    80002c60:	00050913          	mv	s2,a0
    80002c64:	00100593          	li	a1,1
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	6ac080e7          	jalr	1708(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    80002c70:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002c74:	01000513          	li	a0,16
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	46c080e7          	jalr	1132(ra) # 800020e4 <_Znwm>
    80002c80:	00050913          	mv	s2,a0
    80002c84:	00100593          	li	a1,1
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	68c080e7          	jalr	1676(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    80002c90:	0324b823          	sd	s2,48(s1)
}
    80002c94:	02813083          	ld	ra,40(sp)
    80002c98:	02013403          	ld	s0,32(sp)
    80002c9c:	01813483          	ld	s1,24(sp)
    80002ca0:	01013903          	ld	s2,16(sp)
    80002ca4:	00813983          	ld	s3,8(sp)
    80002ca8:	03010113          	addi	sp,sp,48
    80002cac:	00008067          	ret
    80002cb0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002cb4:	00098513          	mv	a0,s3
    80002cb8:	fffff097          	auipc	ra,0xfffff
    80002cbc:	47c080e7          	jalr	1148(ra) # 80002134 <_ZdlPv>
    80002cc0:	00048513          	mv	a0,s1
    80002cc4:	00006097          	auipc	ra,0x6
    80002cc8:	c74080e7          	jalr	-908(ra) # 80008938 <_Unwind_Resume>
    80002ccc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002cd0:	00098513          	mv	a0,s3
    80002cd4:	fffff097          	auipc	ra,0xfffff
    80002cd8:	460080e7          	jalr	1120(ra) # 80002134 <_ZdlPv>
    80002cdc:	00048513          	mv	a0,s1
    80002ce0:	00006097          	auipc	ra,0x6
    80002ce4:	c58080e7          	jalr	-936(ra) # 80008938 <_Unwind_Resume>
    80002ce8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002cec:	00090513          	mv	a0,s2
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	444080e7          	jalr	1092(ra) # 80002134 <_ZdlPv>
    80002cf8:	00048513          	mv	a0,s1
    80002cfc:	00006097          	auipc	ra,0x6
    80002d00:	c3c080e7          	jalr	-964(ra) # 80008938 <_Unwind_Resume>
    80002d04:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002d08:	00090513          	mv	a0,s2
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	428080e7          	jalr	1064(ra) # 80002134 <_ZdlPv>
    80002d14:	00048513          	mv	a0,s1
    80002d18:	00006097          	auipc	ra,0x6
    80002d1c:	c20080e7          	jalr	-992(ra) # 80008938 <_Unwind_Resume>

0000000080002d20 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002d20:	fe010113          	addi	sp,sp,-32
    80002d24:	00113c23          	sd	ra,24(sp)
    80002d28:	00813823          	sd	s0,16(sp)
    80002d2c:	00913423          	sd	s1,8(sp)
    80002d30:	01213023          	sd	s2,0(sp)
    80002d34:	02010413          	addi	s0,sp,32
    80002d38:	00050493          	mv	s1,a0
    80002d3c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002d40:	01853503          	ld	a0,24(a0)
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	608080e7          	jalr	1544(ra) # 8000234c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002d4c:	0304b503          	ld	a0,48(s1)
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	5fc080e7          	jalr	1532(ra) # 8000234c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002d58:	0084b783          	ld	a5,8(s1)
    80002d5c:	0144a703          	lw	a4,20(s1)
    80002d60:	00271713          	slli	a4,a4,0x2
    80002d64:	00e787b3          	add	a5,a5,a4
    80002d68:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002d6c:	0144a783          	lw	a5,20(s1)
    80002d70:	0017879b          	addiw	a5,a5,1
    80002d74:	0004a703          	lw	a4,0(s1)
    80002d78:	02e7e7bb          	remw	a5,a5,a4
    80002d7c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002d80:	0304b503          	ld	a0,48(s1)
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	5f4080e7          	jalr	1524(ra) # 80002378 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002d8c:	0204b503          	ld	a0,32(s1)
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	5e8080e7          	jalr	1512(ra) # 80002378 <_ZN9Semaphore6signalEv>

}
    80002d98:	01813083          	ld	ra,24(sp)
    80002d9c:	01013403          	ld	s0,16(sp)
    80002da0:	00813483          	ld	s1,8(sp)
    80002da4:	00013903          	ld	s2,0(sp)
    80002da8:	02010113          	addi	sp,sp,32
    80002dac:	00008067          	ret

0000000080002db0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002db0:	fe010113          	addi	sp,sp,-32
    80002db4:	00113c23          	sd	ra,24(sp)
    80002db8:	00813823          	sd	s0,16(sp)
    80002dbc:	00913423          	sd	s1,8(sp)
    80002dc0:	01213023          	sd	s2,0(sp)
    80002dc4:	02010413          	addi	s0,sp,32
    80002dc8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002dcc:	02053503          	ld	a0,32(a0)
    80002dd0:	fffff097          	auipc	ra,0xfffff
    80002dd4:	57c080e7          	jalr	1404(ra) # 8000234c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002dd8:	0284b503          	ld	a0,40(s1)
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	570080e7          	jalr	1392(ra) # 8000234c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002de4:	0084b703          	ld	a4,8(s1)
    80002de8:	0104a783          	lw	a5,16(s1)
    80002dec:	00279693          	slli	a3,a5,0x2
    80002df0:	00d70733          	add	a4,a4,a3
    80002df4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002df8:	0017879b          	addiw	a5,a5,1
    80002dfc:	0004a703          	lw	a4,0(s1)
    80002e00:	02e7e7bb          	remw	a5,a5,a4
    80002e04:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002e08:	0284b503          	ld	a0,40(s1)
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	56c080e7          	jalr	1388(ra) # 80002378 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002e14:	0184b503          	ld	a0,24(s1)
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	560080e7          	jalr	1376(ra) # 80002378 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002e20:	00090513          	mv	a0,s2
    80002e24:	01813083          	ld	ra,24(sp)
    80002e28:	01013403          	ld	s0,16(sp)
    80002e2c:	00813483          	ld	s1,8(sp)
    80002e30:	00013903          	ld	s2,0(sp)
    80002e34:	02010113          	addi	sp,sp,32
    80002e38:	00008067          	ret

0000000080002e3c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002e3c:	fe010113          	addi	sp,sp,-32
    80002e40:	00113c23          	sd	ra,24(sp)
    80002e44:	00813823          	sd	s0,16(sp)
    80002e48:	00913423          	sd	s1,8(sp)
    80002e4c:	01213023          	sd	s2,0(sp)
    80002e50:	02010413          	addi	s0,sp,32
    80002e54:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002e58:	02853503          	ld	a0,40(a0)
    80002e5c:	fffff097          	auipc	ra,0xfffff
    80002e60:	4f0080e7          	jalr	1264(ra) # 8000234c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002e64:	0304b503          	ld	a0,48(s1)
    80002e68:	fffff097          	auipc	ra,0xfffff
    80002e6c:	4e4080e7          	jalr	1252(ra) # 8000234c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002e70:	0144a783          	lw	a5,20(s1)
    80002e74:	0104a903          	lw	s2,16(s1)
    80002e78:	0327ce63          	blt	a5,s2,80002eb4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002e7c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002e80:	0304b503          	ld	a0,48(s1)
    80002e84:	fffff097          	auipc	ra,0xfffff
    80002e88:	4f4080e7          	jalr	1268(ra) # 80002378 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002e8c:	0284b503          	ld	a0,40(s1)
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	4e8080e7          	jalr	1256(ra) # 80002378 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002e98:	00090513          	mv	a0,s2
    80002e9c:	01813083          	ld	ra,24(sp)
    80002ea0:	01013403          	ld	s0,16(sp)
    80002ea4:	00813483          	ld	s1,8(sp)
    80002ea8:	00013903          	ld	s2,0(sp)
    80002eac:	02010113          	addi	sp,sp,32
    80002eb0:	00008067          	ret
        ret = cap - head + tail;
    80002eb4:	0004a703          	lw	a4,0(s1)
    80002eb8:	4127093b          	subw	s2,a4,s2
    80002ebc:	00f9093b          	addw	s2,s2,a5
    80002ec0:	fc1ff06f          	j	80002e80 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002ec4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002ec4:	fe010113          	addi	sp,sp,-32
    80002ec8:	00113c23          	sd	ra,24(sp)
    80002ecc:	00813823          	sd	s0,16(sp)
    80002ed0:	00913423          	sd	s1,8(sp)
    80002ed4:	02010413          	addi	s0,sp,32
    80002ed8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002edc:	00a00513          	li	a0,10
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	4ec080e7          	jalr	1260(ra) # 800023cc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002ee8:	00003517          	auipc	a0,0x3
    80002eec:	29850513          	addi	a0,a0,664 # 80006180 <CONSOLE_STATUS+0x170>
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	a30080e7          	jalr	-1488(ra) # 80002920 <_Z11printStringPKc>
    while (getCnt()) {
    80002ef8:	00048513          	mv	a0,s1
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	f40080e7          	jalr	-192(ra) # 80002e3c <_ZN9BufferCPP6getCntEv>
    80002f04:	02050c63          	beqz	a0,80002f3c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002f08:	0084b783          	ld	a5,8(s1)
    80002f0c:	0104a703          	lw	a4,16(s1)
    80002f10:	00271713          	slli	a4,a4,0x2
    80002f14:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002f18:	0007c503          	lbu	a0,0(a5)
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	4b0080e7          	jalr	1200(ra) # 800023cc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002f24:	0104a783          	lw	a5,16(s1)
    80002f28:	0017879b          	addiw	a5,a5,1
    80002f2c:	0004a703          	lw	a4,0(s1)
    80002f30:	02e7e7bb          	remw	a5,a5,a4
    80002f34:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002f38:	fc1ff06f          	j	80002ef8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002f3c:	02100513          	li	a0,33
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	48c080e7          	jalr	1164(ra) # 800023cc <_ZN7Console4putcEc>
    Console::putc('\n');
    80002f48:	00a00513          	li	a0,10
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	480080e7          	jalr	1152(ra) # 800023cc <_ZN7Console4putcEc>
    mem_free(buffer);
    80002f54:	0084b503          	ld	a0,8(s1)
    80002f58:	ffffe097          	auipc	ra,0xffffe
    80002f5c:	368080e7          	jalr	872(ra) # 800012c0 <_Z8mem_freePv>
    delete itemAvailable;
    80002f60:	0204b503          	ld	a0,32(s1)
    80002f64:	00050863          	beqz	a0,80002f74 <_ZN9BufferCPPD1Ev+0xb0>
    80002f68:	00053783          	ld	a5,0(a0)
    80002f6c:	0087b783          	ld	a5,8(a5)
    80002f70:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002f74:	0184b503          	ld	a0,24(s1)
    80002f78:	00050863          	beqz	a0,80002f88 <_ZN9BufferCPPD1Ev+0xc4>
    80002f7c:	00053783          	ld	a5,0(a0)
    80002f80:	0087b783          	ld	a5,8(a5)
    80002f84:	000780e7          	jalr	a5
    delete mutexTail;
    80002f88:	0304b503          	ld	a0,48(s1)
    80002f8c:	00050863          	beqz	a0,80002f9c <_ZN9BufferCPPD1Ev+0xd8>
    80002f90:	00053783          	ld	a5,0(a0)
    80002f94:	0087b783          	ld	a5,8(a5)
    80002f98:	000780e7          	jalr	a5
    delete mutexHead;
    80002f9c:	0284b503          	ld	a0,40(s1)
    80002fa0:	00050863          	beqz	a0,80002fb0 <_ZN9BufferCPPD1Ev+0xec>
    80002fa4:	00053783          	ld	a5,0(a0)
    80002fa8:	0087b783          	ld	a5,8(a5)
    80002fac:	000780e7          	jalr	a5
}
    80002fb0:	01813083          	ld	ra,24(sp)
    80002fb4:	01013403          	ld	s0,16(sp)
    80002fb8:	00813483          	ld	s1,8(sp)
    80002fbc:	02010113          	addi	sp,sp,32
    80002fc0:	00008067          	ret

0000000080002fc4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80002fc4:	fd010113          	addi	sp,sp,-48
    80002fc8:	02113423          	sd	ra,40(sp)
    80002fcc:	02813023          	sd	s0,32(sp)
    80002fd0:	00913c23          	sd	s1,24(sp)
    80002fd4:	01213823          	sd	s2,16(sp)
    80002fd8:	01313423          	sd	s3,8(sp)
    80002fdc:	03010413          	addi	s0,sp,48
    80002fe0:	00050993          	mv	s3,a0
    80002fe4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002fe8:	00000913          	li	s2,0
    80002fec:	00c0006f          	j	80002ff8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	2b8080e7          	jalr	696(ra) # 800022a8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80002ff8:	ffffe097          	auipc	ra,0xffffe
    80002ffc:	540080e7          	jalr	1344(ra) # 80001538 <_Z4getcv>
    80003000:	0005059b          	sext.w	a1,a0
    80003004:	01b00793          	li	a5,27
    80003008:	02f58a63          	beq	a1,a5,8000303c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000300c:	0084b503          	ld	a0,8(s1)
    80003010:	00000097          	auipc	ra,0x0
    80003014:	d10080e7          	jalr	-752(ra) # 80002d20 <_ZN9BufferCPP3putEi>
        i++;
    80003018:	0019071b          	addiw	a4,s2,1
    8000301c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003020:	0004a683          	lw	a3,0(s1)
    80003024:	0026979b          	slliw	a5,a3,0x2
    80003028:	00d787bb          	addw	a5,a5,a3
    8000302c:	0017979b          	slliw	a5,a5,0x1
    80003030:	02f767bb          	remw	a5,a4,a5
    80003034:	fc0792e3          	bnez	a5,80002ff8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003038:	fb9ff06f          	j	80002ff0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000303c:	00100793          	li	a5,1
    80003040:	00005717          	auipc	a4,0x5
    80003044:	80f72c23          	sw	a5,-2024(a4) # 80007858 <threadEnd>
    td->buffer->put('!');
    80003048:	0109b783          	ld	a5,16(s3)
    8000304c:	02100593          	li	a1,33
    80003050:	0087b503          	ld	a0,8(a5)
    80003054:	00000097          	auipc	ra,0x0
    80003058:	ccc080e7          	jalr	-820(ra) # 80002d20 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000305c:	0104b503          	ld	a0,16(s1)
    80003060:	fffff097          	auipc	ra,0xfffff
    80003064:	318080e7          	jalr	792(ra) # 80002378 <_ZN9Semaphore6signalEv>
}
    80003068:	02813083          	ld	ra,40(sp)
    8000306c:	02013403          	ld	s0,32(sp)
    80003070:	01813483          	ld	s1,24(sp)
    80003074:	01013903          	ld	s2,16(sp)
    80003078:	00813983          	ld	s3,8(sp)
    8000307c:	03010113          	addi	sp,sp,48
    80003080:	00008067          	ret

0000000080003084 <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80003084:	fe010113          	addi	sp,sp,-32
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	00813823          	sd	s0,16(sp)
    80003090:	00913423          	sd	s1,8(sp)
    80003094:	01213023          	sd	s2,0(sp)
    80003098:	02010413          	addi	s0,sp,32
    8000309c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800030a0:	00000913          	li	s2,0
    800030a4:	00c0006f          	j	800030b0 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	200080e7          	jalr	512(ra) # 800022a8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800030b0:	00004797          	auipc	a5,0x4
    800030b4:	7a87a783          	lw	a5,1960(a5) # 80007858 <threadEnd>
    800030b8:	02079e63          	bnez	a5,800030f4 <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800030bc:	0004a583          	lw	a1,0(s1)
    800030c0:	0305859b          	addiw	a1,a1,48
    800030c4:	0084b503          	ld	a0,8(s1)
    800030c8:	00000097          	auipc	ra,0x0
    800030cc:	c58080e7          	jalr	-936(ra) # 80002d20 <_ZN9BufferCPP3putEi>
        i++;
    800030d0:	0019071b          	addiw	a4,s2,1
    800030d4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800030d8:	0004a683          	lw	a3,0(s1)
    800030dc:	0026979b          	slliw	a5,a3,0x2
    800030e0:	00d787bb          	addw	a5,a5,a3
    800030e4:	0017979b          	slliw	a5,a5,0x1
    800030e8:	02f767bb          	remw	a5,a4,a5
    800030ec:	fc0792e3          	bnez	a5,800030b0 <_ZN8Producer8producerEPv+0x2c>
    800030f0:	fb9ff06f          	j	800030a8 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800030f4:	0104b503          	ld	a0,16(s1)
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	280080e7          	jalr	640(ra) # 80002378 <_ZN9Semaphore6signalEv>
}
    80003100:	01813083          	ld	ra,24(sp)
    80003104:	01013403          	ld	s0,16(sp)
    80003108:	00813483          	ld	s1,8(sp)
    8000310c:	00013903          	ld	s2,0(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret

0000000080003118 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    80003118:	fd010113          	addi	sp,sp,-48
    8000311c:	02113423          	sd	ra,40(sp)
    80003120:	02813023          	sd	s0,32(sp)
    80003124:	00913c23          	sd	s1,24(sp)
    80003128:	01213823          	sd	s2,16(sp)
    8000312c:	01313423          	sd	s3,8(sp)
    80003130:	01413023          	sd	s4,0(sp)
    80003134:	03010413          	addi	s0,sp,48
    80003138:	00050993          	mv	s3,a0
    8000313c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003140:	00000a13          	li	s4,0
    80003144:	01c0006f          	j	80003160 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	160080e7          	jalr	352(ra) # 800022a8 <_ZN6Thread8dispatchEv>
    80003150:	0500006f          	j	800031a0 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003154:	00a00513          	li	a0,10
    80003158:	ffffe097          	auipc	ra,0xffffe
    8000315c:	418080e7          	jalr	1048(ra) # 80001570 <_Z4putcc>
    while (!threadEnd) {
    80003160:	00004797          	auipc	a5,0x4
    80003164:	6f87a783          	lw	a5,1784(a5) # 80007858 <threadEnd>
    80003168:	06079263          	bnez	a5,800031cc <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000316c:	00893503          	ld	a0,8(s2)
    80003170:	00000097          	auipc	ra,0x0
    80003174:	c40080e7          	jalr	-960(ra) # 80002db0 <_ZN9BufferCPP3getEv>
        i++;
    80003178:	001a049b          	addiw	s1,s4,1
    8000317c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80003180:	0ff57513          	andi	a0,a0,255
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	3ec080e7          	jalr	1004(ra) # 80001570 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000318c:	00092703          	lw	a4,0(s2)
    80003190:	0027179b          	slliw	a5,a4,0x2
    80003194:	00e787bb          	addw	a5,a5,a4
    80003198:	02f4e7bb          	remw	a5,s1,a5
    8000319c:	fa0786e3          	beqz	a5,80003148 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    800031a0:	05000793          	li	a5,80
    800031a4:	02f4e4bb          	remw	s1,s1,a5
    800031a8:	fa049ce3          	bnez	s1,80003160 <_ZN8Consumer8consumerEPv+0x48>
    800031ac:	fa9ff06f          	j	80003154 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800031b0:	0109b783          	ld	a5,16(s3)
    800031b4:	0087b503          	ld	a0,8(a5)
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	bf8080e7          	jalr	-1032(ra) # 80002db0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800031c0:	0ff57513          	andi	a0,a0,255
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	208080e7          	jalr	520(ra) # 800023cc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800031cc:	0109b783          	ld	a5,16(s3)
    800031d0:	0087b503          	ld	a0,8(a5)
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	c68080e7          	jalr	-920(ra) # 80002e3c <_ZN9BufferCPP6getCntEv>
    800031dc:	fca04ae3          	bgtz	a0,800031b0 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    800031e0:	01093503          	ld	a0,16(s2)
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	194080e7          	jalr	404(ra) # 80002378 <_ZN9Semaphore6signalEv>
}
    800031ec:	02813083          	ld	ra,40(sp)
    800031f0:	02013403          	ld	s0,32(sp)
    800031f4:	01813483          	ld	s1,24(sp)
    800031f8:	01013903          	ld	s2,16(sp)
    800031fc:	00813983          	ld	s3,8(sp)
    80003200:	00013a03          	ld	s4,0(sp)
    80003204:	03010113          	addi	sp,sp,48
    80003208:	00008067          	ret

000000008000320c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000320c:	f8010113          	addi	sp,sp,-128
    80003210:	06113c23          	sd	ra,120(sp)
    80003214:	06813823          	sd	s0,112(sp)
    80003218:	06913423          	sd	s1,104(sp)
    8000321c:	07213023          	sd	s2,96(sp)
    80003220:	05313c23          	sd	s3,88(sp)
    80003224:	05413823          	sd	s4,80(sp)
    80003228:	05513423          	sd	s5,72(sp)
    8000322c:	05613023          	sd	s6,64(sp)
    80003230:	03713c23          	sd	s7,56(sp)
    80003234:	03813823          	sd	s8,48(sp)
    80003238:	03913423          	sd	s9,40(sp)
    8000323c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003240:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003244:	00003517          	auipc	a0,0x3
    80003248:	f5450513          	addi	a0,a0,-172 # 80006198 <CONSOLE_STATUS+0x188>
    8000324c:	fffff097          	auipc	ra,0xfffff
    80003250:	6d4080e7          	jalr	1748(ra) # 80002920 <_Z11printStringPKc>
    getString(input, 30);
    80003254:	01e00593          	li	a1,30
    80003258:	f8040493          	addi	s1,s0,-128
    8000325c:	00048513          	mv	a0,s1
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	73c080e7          	jalr	1852(ra) # 8000299c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003268:	00048513          	mv	a0,s1
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	7fc080e7          	jalr	2044(ra) # 80002a68 <_Z11stringToIntPKc>
    80003274:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003278:	00003517          	auipc	a0,0x3
    8000327c:	f4050513          	addi	a0,a0,-192 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80003280:	fffff097          	auipc	ra,0xfffff
    80003284:	6a0080e7          	jalr	1696(ra) # 80002920 <_Z11printStringPKc>
    getString(input, 30);
    80003288:	01e00593          	li	a1,30
    8000328c:	00048513          	mv	a0,s1
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	70c080e7          	jalr	1804(ra) # 8000299c <_Z9getStringPci>
    n = stringToInt(input);
    80003298:	00048513          	mv	a0,s1
    8000329c:	fffff097          	auipc	ra,0xfffff
    800032a0:	7cc080e7          	jalr	1996(ra) # 80002a68 <_Z11stringToIntPKc>
    800032a4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800032a8:	00003517          	auipc	a0,0x3
    800032ac:	f3050513          	addi	a0,a0,-208 # 800061d8 <CONSOLE_STATUS+0x1c8>
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	670080e7          	jalr	1648(ra) # 80002920 <_Z11printStringPKc>
    800032b8:	00000613          	li	a2,0
    800032bc:	00a00593          	li	a1,10
    800032c0:	00090513          	mv	a0,s2
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	7f4080e7          	jalr	2036(ra) # 80002ab8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800032cc:	00003517          	auipc	a0,0x3
    800032d0:	f2450513          	addi	a0,a0,-220 # 800061f0 <CONSOLE_STATUS+0x1e0>
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	64c080e7          	jalr	1612(ra) # 80002920 <_Z11printStringPKc>
    800032dc:	00000613          	li	a2,0
    800032e0:	00a00593          	li	a1,10
    800032e4:	00048513          	mv	a0,s1
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	7d0080e7          	jalr	2000(ra) # 80002ab8 <_Z8printIntiii>
    printString(".\n");
    800032f0:	00003517          	auipc	a0,0x3
    800032f4:	f1850513          	addi	a0,a0,-232 # 80006208 <CONSOLE_STATUS+0x1f8>
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	628080e7          	jalr	1576(ra) # 80002920 <_Z11printStringPKc>
    if(threadNum > n) {
    80003300:	0324c463          	blt	s1,s2,80003328 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80003304:	03205c63          	blez	s2,8000333c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003308:	03800513          	li	a0,56
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	dd8080e7          	jalr	-552(ra) # 800020e4 <_Znwm>
    80003314:	00050a93          	mv	s5,a0
    80003318:	00048593          	mv	a1,s1
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	8b0080e7          	jalr	-1872(ra) # 80002bcc <_ZN9BufferCPPC1Ei>
    80003324:	0300006f          	j	80003354 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003328:	00003517          	auipc	a0,0x3
    8000332c:	ee850513          	addi	a0,a0,-280 # 80006210 <CONSOLE_STATUS+0x200>
    80003330:	fffff097          	auipc	ra,0xfffff
    80003334:	5f0080e7          	jalr	1520(ra) # 80002920 <_Z11printStringPKc>
        return;
    80003338:	0140006f          	j	8000334c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000333c:	00003517          	auipc	a0,0x3
    80003340:	f1450513          	addi	a0,a0,-236 # 80006250 <CONSOLE_STATUS+0x240>
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	5dc080e7          	jalr	1500(ra) # 80002920 <_Z11printStringPKc>
        return;
    8000334c:	000b8113          	mv	sp,s7
    80003350:	2400006f          	j	80003590 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    80003354:	01000513          	li	a0,16
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	d8c080e7          	jalr	-628(ra) # 800020e4 <_Znwm>
    80003360:	00050493          	mv	s1,a0
    80003364:	00000593          	li	a1,0
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	fac080e7          	jalr	-84(ra) # 80002314 <_ZN9SemaphoreC1Ej>
    80003370:	00004717          	auipc	a4,0x4
    80003374:	4e870713          	addi	a4,a4,1256 # 80007858 <threadEnd>
    80003378:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    8000337c:	00391793          	slli	a5,s2,0x3
    80003380:	00f78793          	addi	a5,a5,15
    80003384:	ff07f793          	andi	a5,a5,-16
    80003388:	40f10133          	sub	sp,sp,a5
    8000338c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003390:	0019069b          	addiw	a3,s2,1
    80003394:	00169793          	slli	a5,a3,0x1
    80003398:	00d787b3          	add	a5,a5,a3
    8000339c:	00379793          	slli	a5,a5,0x3
    800033a0:	00f78793          	addi	a5,a5,15
    800033a4:	ff07f793          	andi	a5,a5,-16
    800033a8:	40f10133          	sub	sp,sp,a5
    800033ac:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800033b0:	00191493          	slli	s1,s2,0x1
    800033b4:	012487b3          	add	a5,s1,s2
    800033b8:	00379793          	slli	a5,a5,0x3
    800033bc:	00fa07b3          	add	a5,s4,a5
    800033c0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800033c4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800033c8:	00873703          	ld	a4,8(a4)
    800033cc:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    800033d0:	01800513          	li	a0,24
    800033d4:	fffff097          	auipc	ra,0xfffff
    800033d8:	d10080e7          	jalr	-752(ra) # 800020e4 <_Znwm>
    800033dc:	00050b13          	mv	s6,a0
    800033e0:	012484b3          	add	s1,s1,s2
    800033e4:	00349493          	slli	s1,s1,0x3
    800033e8:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    800033ec:	fffff097          	auipc	ra,0xfffff
    800033f0:	ee4080e7          	jalr	-284(ra) # 800022d0 <_ZN6ThreadC1Ev>
    800033f4:	00004797          	auipc	a5,0x4
    800033f8:	37478793          	addi	a5,a5,884 # 80007768 <_ZTV8Consumer+0x10>
    800033fc:	00fb3023          	sd	a5,0(s6)
    80003400:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80003404:	000b0513          	mv	a0,s6
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	e70080e7          	jalr	-400(ra) # 80002278 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003410:	00000493          	li	s1,0
    80003414:	0380006f          	j	8000344c <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80003418:	00004797          	auipc	a5,0x4
    8000341c:	32878793          	addi	a5,a5,808 # 80007740 <_ZTV8Producer+0x10>
    80003420:	00fcb023          	sd	a5,0(s9)
    80003424:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80003428:	00349793          	slli	a5,s1,0x3
    8000342c:	00f987b3          	add	a5,s3,a5
    80003430:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003434:	00349793          	slli	a5,s1,0x3
    80003438:	00f987b3          	add	a5,s3,a5
    8000343c:	0007b503          	ld	a0,0(a5)
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	e38080e7          	jalr	-456(ra) # 80002278 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003448:	0014849b          	addiw	s1,s1,1
    8000344c:	0b24d063          	bge	s1,s2,800034ec <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    80003450:	00149793          	slli	a5,s1,0x1
    80003454:	009787b3          	add	a5,a5,s1
    80003458:	00379793          	slli	a5,a5,0x3
    8000345c:	00fa07b3          	add	a5,s4,a5
    80003460:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003464:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80003468:	00004717          	auipc	a4,0x4
    8000346c:	3f873703          	ld	a4,1016(a4) # 80007860 <waitForAll>
    80003470:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80003474:	02905863          	blez	s1,800034a4 <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    80003478:	01800513          	li	a0,24
    8000347c:	fffff097          	auipc	ra,0xfffff
    80003480:	c68080e7          	jalr	-920(ra) # 800020e4 <_Znwm>
    80003484:	00050c93          	mv	s9,a0
    80003488:	00149c13          	slli	s8,s1,0x1
    8000348c:	009c0c33          	add	s8,s8,s1
    80003490:	003c1c13          	slli	s8,s8,0x3
    80003494:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	e38080e7          	jalr	-456(ra) # 800022d0 <_ZN6ThreadC1Ev>
    800034a0:	f79ff06f          	j	80003418 <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    800034a4:	01800513          	li	a0,24
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	c3c080e7          	jalr	-964(ra) # 800020e4 <_Znwm>
    800034b0:	00050c93          	mv	s9,a0
    800034b4:	00149c13          	slli	s8,s1,0x1
    800034b8:	009c0c33          	add	s8,s8,s1
    800034bc:	003c1c13          	slli	s8,s8,0x3
    800034c0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800034c4:	fffff097          	auipc	ra,0xfffff
    800034c8:	e0c080e7          	jalr	-500(ra) # 800022d0 <_ZN6ThreadC1Ev>
    800034cc:	00004797          	auipc	a5,0x4
    800034d0:	24c78793          	addi	a5,a5,588 # 80007718 <_ZTV16ProducerKeyboard+0x10>
    800034d4:	00fcb023          	sd	a5,0(s9)
    800034d8:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800034dc:	00349793          	slli	a5,s1,0x3
    800034e0:	00f987b3          	add	a5,s3,a5
    800034e4:	0197b023          	sd	s9,0(a5)
    800034e8:	f4dff06f          	j	80003434 <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    800034ec:	fffff097          	auipc	ra,0xfffff
    800034f0:	dbc080e7          	jalr	-580(ra) # 800022a8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800034f4:	00000493          	li	s1,0
    800034f8:	00994e63          	blt	s2,s1,80003514 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    800034fc:	00004517          	auipc	a0,0x4
    80003500:	36453503          	ld	a0,868(a0) # 80007860 <waitForAll>
    80003504:	fffff097          	auipc	ra,0xfffff
    80003508:	e48080e7          	jalr	-440(ra) # 8000234c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000350c:	0014849b          	addiw	s1,s1,1
    80003510:	fe9ff06f          	j	800034f8 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    80003514:	00000493          	li	s1,0
    80003518:	0080006f          	j	80003520 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    8000351c:	0014849b          	addiw	s1,s1,1
    80003520:	0324d263          	bge	s1,s2,80003544 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    80003524:	00349793          	slli	a5,s1,0x3
    80003528:	00f987b3          	add	a5,s3,a5
    8000352c:	0007b503          	ld	a0,0(a5)
    80003530:	fe0506e3          	beqz	a0,8000351c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80003534:	00053783          	ld	a5,0(a0)
    80003538:	0087b783          	ld	a5,8(a5)
    8000353c:	000780e7          	jalr	a5
    80003540:	fddff06f          	j	8000351c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    80003544:	000b0a63          	beqz	s6,80003558 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80003548:	000b3783          	ld	a5,0(s6)
    8000354c:	0087b783          	ld	a5,8(a5)
    80003550:	000b0513          	mv	a0,s6
    80003554:	000780e7          	jalr	a5
    delete waitForAll;
    80003558:	00004517          	auipc	a0,0x4
    8000355c:	30853503          	ld	a0,776(a0) # 80007860 <waitForAll>
    80003560:	00050863          	beqz	a0,80003570 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80003564:	00053783          	ld	a5,0(a0)
    80003568:	0087b783          	ld	a5,8(a5)
    8000356c:	000780e7          	jalr	a5
    delete buffer;
    80003570:	000a8e63          	beqz	s5,8000358c <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80003574:	000a8513          	mv	a0,s5
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	94c080e7          	jalr	-1716(ra) # 80002ec4 <_ZN9BufferCPPD1Ev>
    80003580:	000a8513          	mv	a0,s5
    80003584:	fffff097          	auipc	ra,0xfffff
    80003588:	bb0080e7          	jalr	-1104(ra) # 80002134 <_ZdlPv>
    8000358c:	000b8113          	mv	sp,s7

}
    80003590:	f8040113          	addi	sp,s0,-128
    80003594:	07813083          	ld	ra,120(sp)
    80003598:	07013403          	ld	s0,112(sp)
    8000359c:	06813483          	ld	s1,104(sp)
    800035a0:	06013903          	ld	s2,96(sp)
    800035a4:	05813983          	ld	s3,88(sp)
    800035a8:	05013a03          	ld	s4,80(sp)
    800035ac:	04813a83          	ld	s5,72(sp)
    800035b0:	04013b03          	ld	s6,64(sp)
    800035b4:	03813b83          	ld	s7,56(sp)
    800035b8:	03013c03          	ld	s8,48(sp)
    800035bc:	02813c83          	ld	s9,40(sp)
    800035c0:	08010113          	addi	sp,sp,128
    800035c4:	00008067          	ret
    800035c8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800035cc:	000a8513          	mv	a0,s5
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	b64080e7          	jalr	-1180(ra) # 80002134 <_ZdlPv>
    800035d8:	00048513          	mv	a0,s1
    800035dc:	00005097          	auipc	ra,0x5
    800035e0:	35c080e7          	jalr	860(ra) # 80008938 <_Unwind_Resume>
    800035e4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800035e8:	00048513          	mv	a0,s1
    800035ec:	fffff097          	auipc	ra,0xfffff
    800035f0:	b48080e7          	jalr	-1208(ra) # 80002134 <_ZdlPv>
    800035f4:	00090513          	mv	a0,s2
    800035f8:	00005097          	auipc	ra,0x5
    800035fc:	340080e7          	jalr	832(ra) # 80008938 <_Unwind_Resume>
    80003600:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80003604:	000b0513          	mv	a0,s6
    80003608:	fffff097          	auipc	ra,0xfffff
    8000360c:	b2c080e7          	jalr	-1236(ra) # 80002134 <_ZdlPv>
    80003610:	00048513          	mv	a0,s1
    80003614:	00005097          	auipc	ra,0x5
    80003618:	324080e7          	jalr	804(ra) # 80008938 <_Unwind_Resume>
    8000361c:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80003620:	000c8513          	mv	a0,s9
    80003624:	fffff097          	auipc	ra,0xfffff
    80003628:	b10080e7          	jalr	-1264(ra) # 80002134 <_ZdlPv>
    8000362c:	00048513          	mv	a0,s1
    80003630:	00005097          	auipc	ra,0x5
    80003634:	308080e7          	jalr	776(ra) # 80008938 <_Unwind_Resume>
    80003638:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000363c:	000c8513          	mv	a0,s9
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	af4080e7          	jalr	-1292(ra) # 80002134 <_ZdlPv>
    80003648:	00048513          	mv	a0,s1
    8000364c:	00005097          	auipc	ra,0x5
    80003650:	2ec080e7          	jalr	748(ra) # 80008938 <_Unwind_Resume>

0000000080003654 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	00813023          	sd	s0,0(sp)
    80003660:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    80003664:	00000097          	auipc	ra,0x0
    80003668:	ba8080e7          	jalr	-1112(ra) # 8000320c <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    8000367c:	ff010113          	addi	sp,sp,-16
    80003680:	00813423          	sd	s0,8(sp)
    80003684:	01010413          	addi	s0,sp,16
    80003688:	00813403          	ld	s0,8(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00813423          	sd	s0,8(sp)
    8000369c:	01010413          	addi	s0,sp,16
    800036a0:	00813403          	ld	s0,8(sp)
    800036a4:	01010113          	addi	sp,sp,16
    800036a8:	00008067          	ret

00000000800036ac <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00813423          	sd	s0,8(sp)
    800036b4:	01010413          	addi	s0,sp,16
    800036b8:	00813403          	ld	s0,8(sp)
    800036bc:	01010113          	addi	sp,sp,16
    800036c0:	00008067          	ret

00000000800036c4 <_ZN8ConsumerD0Ev>:
class Consumer:public Thread {
    800036c4:	ff010113          	addi	sp,sp,-16
    800036c8:	00113423          	sd	ra,8(sp)
    800036cc:	00813023          	sd	s0,0(sp)
    800036d0:	01010413          	addi	s0,sp,16
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	a60080e7          	jalr	-1440(ra) # 80002134 <_ZdlPv>
    800036dc:	00813083          	ld	ra,8(sp)
    800036e0:	00013403          	ld	s0,0(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret

00000000800036ec <_ZN8ProducerD0Ev>:
class Producer:public Thread {
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00113423          	sd	ra,8(sp)
    800036f4:	00813023          	sd	s0,0(sp)
    800036f8:	01010413          	addi	s0,sp,16
    800036fc:	fffff097          	auipc	ra,0xfffff
    80003700:	a38080e7          	jalr	-1480(ra) # 80002134 <_ZdlPv>
    80003704:	00813083          	ld	ra,8(sp)
    80003708:	00013403          	ld	s0,0(sp)
    8000370c:	01010113          	addi	sp,sp,16
    80003710:	00008067          	ret

0000000080003714 <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    80003714:	ff010113          	addi	sp,sp,-16
    80003718:	00113423          	sd	ra,8(sp)
    8000371c:	00813023          	sd	s0,0(sp)
    80003720:	01010413          	addi	s0,sp,16
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	a10080e7          	jalr	-1520(ra) # 80002134 <_ZdlPv>
    8000372c:	00813083          	ld	ra,8(sp)
    80003730:	00013403          	ld	s0,0(sp)
    80003734:	01010113          	addi	sp,sp,16
    80003738:	00008067          	ret

000000008000373c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00113423          	sd	ra,8(sp)
    80003744:	00813023          	sd	s0,0(sp)
    80003748:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000374c:	01053583          	ld	a1,16(a0)
    80003750:	00000097          	auipc	ra,0x0
    80003754:	874080e7          	jalr	-1932(ra) # 80002fc4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80003758:	00813083          	ld	ra,8(sp)
    8000375c:	00013403          	ld	s0,0(sp)
    80003760:	01010113          	addi	sp,sp,16
    80003764:	00008067          	ret

0000000080003768 <_ZN8Producer3runEv>:
    void run() override {
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00113423          	sd	ra,8(sp)
    80003770:	00813023          	sd	s0,0(sp)
    80003774:	01010413          	addi	s0,sp,16
        producer(td);
    80003778:	01053583          	ld	a1,16(a0)
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	908080e7          	jalr	-1784(ra) # 80003084 <_ZN8Producer8producerEPv>
    }
    80003784:	00813083          	ld	ra,8(sp)
    80003788:	00013403          	ld	s0,0(sp)
    8000378c:	01010113          	addi	sp,sp,16
    80003790:	00008067          	ret

0000000080003794 <_ZN8Consumer3runEv>:
    void run() override {
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
        consumer(td);
    800037a4:	01053583          	ld	a1,16(a0)
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	970080e7          	jalr	-1680(ra) # 80003118 <_ZN8Consumer8consumerEPv>
    }
    800037b0:	00813083          	ld	ra,8(sp)
    800037b4:	00013403          	ld	s0,0(sp)
    800037b8:	01010113          	addi	sp,sp,16
    800037bc:	00008067          	ret

00000000800037c0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800037c0:	fe010113          	addi	sp,sp,-32
    800037c4:	00113c23          	sd	ra,24(sp)
    800037c8:	00813823          	sd	s0,16(sp)
    800037cc:	00913423          	sd	s1,8(sp)
    800037d0:	01213023          	sd	s2,0(sp)
    800037d4:	02010413          	addi	s0,sp,32
    800037d8:	00050493          	mv	s1,a0
    800037dc:	00058913          	mv	s2,a1
    800037e0:	0015879b          	addiw	a5,a1,1
    800037e4:	0007851b          	sext.w	a0,a5
    800037e8:	00f4a023          	sw	a5,0(s1)
    800037ec:	0004a823          	sw	zero,16(s1)
    800037f0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800037f4:	00251513          	slli	a0,a0,0x2
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	a78080e7          	jalr	-1416(ra) # 80001270 <_Z9mem_allocm>
    80003800:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003804:	00000593          	li	a1,0
    80003808:	02048513          	addi	a0,s1,32
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	bec080e7          	jalr	-1044(ra) # 800013f8 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80003814:	00090593          	mv	a1,s2
    80003818:	01848513          	addi	a0,s1,24
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	bdc080e7          	jalr	-1060(ra) # 800013f8 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80003824:	00100593          	li	a1,1
    80003828:	02848513          	addi	a0,s1,40
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	bcc080e7          	jalr	-1076(ra) # 800013f8 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80003834:	00100593          	li	a1,1
    80003838:	03048513          	addi	a0,s1,48
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	bbc080e7          	jalr	-1092(ra) # 800013f8 <_Z8sem_openPP3Semj>
}
    80003844:	01813083          	ld	ra,24(sp)
    80003848:	01013403          	ld	s0,16(sp)
    8000384c:	00813483          	ld	s1,8(sp)
    80003850:	00013903          	ld	s2,0(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret

000000008000385c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000385c:	fe010113          	addi	sp,sp,-32
    80003860:	00113c23          	sd	ra,24(sp)
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	01213023          	sd	s2,0(sp)
    80003870:	02010413          	addi	s0,sp,32
    80003874:	00050493          	mv	s1,a0
    80003878:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000387c:	01853503          	ld	a0,24(a0)
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	c40080e7          	jalr	-960(ra) # 800014c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80003888:	0304b503          	ld	a0,48(s1)
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	c34080e7          	jalr	-972(ra) # 800014c0 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80003894:	0084b783          	ld	a5,8(s1)
    80003898:	0144a703          	lw	a4,20(s1)
    8000389c:	00271713          	slli	a4,a4,0x2
    800038a0:	00e787b3          	add	a5,a5,a4
    800038a4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800038a8:	0144a783          	lw	a5,20(s1)
    800038ac:	0017879b          	addiw	a5,a5,1
    800038b0:	0004a703          	lw	a4,0(s1)
    800038b4:	02e7e7bb          	remw	a5,a5,a4
    800038b8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800038bc:	0304b503          	ld	a0,48(s1)
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	c3c080e7          	jalr	-964(ra) # 800014fc <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    800038c8:	0204b503          	ld	a0,32(s1)
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	c30080e7          	jalr	-976(ra) # 800014fc <_Z10sem_signalP3Sem>

}
    800038d4:	01813083          	ld	ra,24(sp)
    800038d8:	01013403          	ld	s0,16(sp)
    800038dc:	00813483          	ld	s1,8(sp)
    800038e0:	00013903          	ld	s2,0(sp)
    800038e4:	02010113          	addi	sp,sp,32
    800038e8:	00008067          	ret

00000000800038ec <_ZN6Buffer3getEv>:

int Buffer::get() {
    800038ec:	fe010113          	addi	sp,sp,-32
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00913423          	sd	s1,8(sp)
    800038fc:	01213023          	sd	s2,0(sp)
    80003900:	02010413          	addi	s0,sp,32
    80003904:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003908:	02053503          	ld	a0,32(a0)
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	bb4080e7          	jalr	-1100(ra) # 800014c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80003914:	0284b503          	ld	a0,40(s1)
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	ba8080e7          	jalr	-1112(ra) # 800014c0 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80003920:	0084b703          	ld	a4,8(s1)
    80003924:	0104a783          	lw	a5,16(s1)
    80003928:	00279693          	slli	a3,a5,0x2
    8000392c:	00d70733          	add	a4,a4,a3
    80003930:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003934:	0017879b          	addiw	a5,a5,1
    80003938:	0004a703          	lw	a4,0(s1)
    8000393c:	02e7e7bb          	remw	a5,a5,a4
    80003940:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003944:	0284b503          	ld	a0,40(s1)
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	bb4080e7          	jalr	-1100(ra) # 800014fc <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80003950:	0184b503          	ld	a0,24(s1)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	ba8080e7          	jalr	-1112(ra) # 800014fc <_Z10sem_signalP3Sem>

    return ret;
}
    8000395c:	00090513          	mv	a0,s2
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00813483          	ld	s1,8(sp)
    8000396c:	00013903          	ld	s2,0(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret

0000000080003978 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003978:	fe010113          	addi	sp,sp,-32
    8000397c:	00113c23          	sd	ra,24(sp)
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00913423          	sd	s1,8(sp)
    80003988:	01213023          	sd	s2,0(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003994:	02853503          	ld	a0,40(a0)
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	b28080e7          	jalr	-1240(ra) # 800014c0 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800039a0:	0304b503          	ld	a0,48(s1)
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	b1c080e7          	jalr	-1252(ra) # 800014c0 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800039ac:	0144a783          	lw	a5,20(s1)
    800039b0:	0104a903          	lw	s2,16(s1)
    800039b4:	0327ce63          	blt	a5,s2,800039f0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800039b8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800039bc:	0304b503          	ld	a0,48(s1)
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	b3c080e7          	jalr	-1220(ra) # 800014fc <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800039c8:	0284b503          	ld	a0,40(s1)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	b30080e7          	jalr	-1232(ra) # 800014fc <_Z10sem_signalP3Sem>

    return ret;
}
    800039d4:	00090513          	mv	a0,s2
    800039d8:	01813083          	ld	ra,24(sp)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	00013903          	ld	s2,0(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret
        ret = cap - head + tail;
    800039f0:	0004a703          	lw	a4,0(s1)
    800039f4:	4127093b          	subw	s2,a4,s2
    800039f8:	00f9093b          	addw	s2,s2,a5
    800039fc:	fc1ff06f          	j	800039bc <_ZN6Buffer6getCntEv+0x44>

0000000080003a00 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003a00:	fe010113          	addi	sp,sp,-32
    80003a04:	00113c23          	sd	ra,24(sp)
    80003a08:	00813823          	sd	s0,16(sp)
    80003a0c:	00913423          	sd	s1,8(sp)
    80003a10:	02010413          	addi	s0,sp,32
    80003a14:	00050493          	mv	s1,a0
    putc('\n');
    80003a18:	00a00513          	li	a0,10
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	b54080e7          	jalr	-1196(ra) # 80001570 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003a24:	00002517          	auipc	a0,0x2
    80003a28:	75c50513          	addi	a0,a0,1884 # 80006180 <CONSOLE_STATUS+0x170>
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	ef4080e7          	jalr	-268(ra) # 80002920 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003a34:	00048513          	mv	a0,s1
    80003a38:	00000097          	auipc	ra,0x0
    80003a3c:	f40080e7          	jalr	-192(ra) # 80003978 <_ZN6Buffer6getCntEv>
    80003a40:	02a05c63          	blez	a0,80003a78 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003a44:	0084b783          	ld	a5,8(s1)
    80003a48:	0104a703          	lw	a4,16(s1)
    80003a4c:	00271713          	slli	a4,a4,0x2
    80003a50:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003a54:	0007c503          	lbu	a0,0(a5)
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	b18080e7          	jalr	-1256(ra) # 80001570 <_Z4putcc>
        head = (head + 1) % cap;
    80003a60:	0104a783          	lw	a5,16(s1)
    80003a64:	0017879b          	addiw	a5,a5,1
    80003a68:	0004a703          	lw	a4,0(s1)
    80003a6c:	02e7e7bb          	remw	a5,a5,a4
    80003a70:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003a74:	fc1ff06f          	j	80003a34 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003a78:	02100513          	li	a0,33
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	af4080e7          	jalr	-1292(ra) # 80001570 <_Z4putcc>
    putc('\n');
    80003a84:	00a00513          	li	a0,10
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	ae8080e7          	jalr	-1304(ra) # 80001570 <_Z4putcc>
    mem_free(buffer);
    80003a90:	0084b503          	ld	a0,8(s1)
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	82c080e7          	jalr	-2004(ra) # 800012c0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003a9c:	0204b503          	ld	a0,32(s1)
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	9b0080e7          	jalr	-1616(ra) # 80001450 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80003aa8:	0184b503          	ld	a0,24(s1)
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	9a4080e7          	jalr	-1628(ra) # 80001450 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80003ab4:	0304b503          	ld	a0,48(s1)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	998080e7          	jalr	-1640(ra) # 80001450 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80003ac0:	0284b503          	ld	a0,40(s1)
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	98c080e7          	jalr	-1652(ra) # 80001450 <_Z9sem_closeP3Sem>
}
    80003acc:	01813083          	ld	ra,24(sp)
    80003ad0:	01013403          	ld	s0,16(sp)
    80003ad4:	00813483          	ld	s1,8(sp)
    80003ad8:	02010113          	addi	sp,sp,32
    80003adc:	00008067          	ret

0000000080003ae0 <start>:
    80003ae0:	ff010113          	addi	sp,sp,-16
    80003ae4:	00813423          	sd	s0,8(sp)
    80003ae8:	01010413          	addi	s0,sp,16
    80003aec:	300027f3          	csrr	a5,mstatus
    80003af0:	ffffe737          	lui	a4,0xffffe
    80003af4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5d2f>
    80003af8:	00e7f7b3          	and	a5,a5,a4
    80003afc:	00001737          	lui	a4,0x1
    80003b00:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003b04:	00e7e7b3          	or	a5,a5,a4
    80003b08:	30079073          	csrw	mstatus,a5
    80003b0c:	00000797          	auipc	a5,0x0
    80003b10:	16078793          	addi	a5,a5,352 # 80003c6c <system_main>
    80003b14:	34179073          	csrw	mepc,a5
    80003b18:	00000793          	li	a5,0
    80003b1c:	18079073          	csrw	satp,a5
    80003b20:	000107b7          	lui	a5,0x10
    80003b24:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003b28:	30279073          	csrw	medeleg,a5
    80003b2c:	30379073          	csrw	mideleg,a5
    80003b30:	104027f3          	csrr	a5,sie
    80003b34:	2227e793          	ori	a5,a5,546
    80003b38:	10479073          	csrw	sie,a5
    80003b3c:	fff00793          	li	a5,-1
    80003b40:	00a7d793          	srli	a5,a5,0xa
    80003b44:	3b079073          	csrw	pmpaddr0,a5
    80003b48:	00f00793          	li	a5,15
    80003b4c:	3a079073          	csrw	pmpcfg0,a5
    80003b50:	f14027f3          	csrr	a5,mhartid
    80003b54:	0200c737          	lui	a4,0x200c
    80003b58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b5c:	0007869b          	sext.w	a3,a5
    80003b60:	00269713          	slli	a4,a3,0x2
    80003b64:	000f4637          	lui	a2,0xf4
    80003b68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b6c:	00d70733          	add	a4,a4,a3
    80003b70:	0037979b          	slliw	a5,a5,0x3
    80003b74:	020046b7          	lui	a3,0x2004
    80003b78:	00d787b3          	add	a5,a5,a3
    80003b7c:	00c585b3          	add	a1,a1,a2
    80003b80:	00371693          	slli	a3,a4,0x3
    80003b84:	00004717          	auipc	a4,0x4
    80003b88:	cec70713          	addi	a4,a4,-788 # 80007870 <timer_scratch>
    80003b8c:	00b7b023          	sd	a1,0(a5)
    80003b90:	00d70733          	add	a4,a4,a3
    80003b94:	00f73c23          	sd	a5,24(a4)
    80003b98:	02c73023          	sd	a2,32(a4)
    80003b9c:	34071073          	csrw	mscratch,a4
    80003ba0:	00000797          	auipc	a5,0x0
    80003ba4:	6e078793          	addi	a5,a5,1760 # 80004280 <timervec>
    80003ba8:	30579073          	csrw	mtvec,a5
    80003bac:	300027f3          	csrr	a5,mstatus
    80003bb0:	0087e793          	ori	a5,a5,8
    80003bb4:	30079073          	csrw	mstatus,a5
    80003bb8:	304027f3          	csrr	a5,mie
    80003bbc:	0807e793          	ori	a5,a5,128
    80003bc0:	30479073          	csrw	mie,a5
    80003bc4:	f14027f3          	csrr	a5,mhartid
    80003bc8:	0007879b          	sext.w	a5,a5
    80003bcc:	00078213          	mv	tp,a5
    80003bd0:	30200073          	mret
    80003bd4:	00813403          	ld	s0,8(sp)
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	00008067          	ret

0000000080003be0 <timerinit>:
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00813423          	sd	s0,8(sp)
    80003be8:	01010413          	addi	s0,sp,16
    80003bec:	f14027f3          	csrr	a5,mhartid
    80003bf0:	0200c737          	lui	a4,0x200c
    80003bf4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003bf8:	0007869b          	sext.w	a3,a5
    80003bfc:	00269713          	slli	a4,a3,0x2
    80003c00:	000f4637          	lui	a2,0xf4
    80003c04:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003c08:	00d70733          	add	a4,a4,a3
    80003c0c:	0037979b          	slliw	a5,a5,0x3
    80003c10:	020046b7          	lui	a3,0x2004
    80003c14:	00d787b3          	add	a5,a5,a3
    80003c18:	00c585b3          	add	a1,a1,a2
    80003c1c:	00371693          	slli	a3,a4,0x3
    80003c20:	00004717          	auipc	a4,0x4
    80003c24:	c5070713          	addi	a4,a4,-944 # 80007870 <timer_scratch>
    80003c28:	00b7b023          	sd	a1,0(a5)
    80003c2c:	00d70733          	add	a4,a4,a3
    80003c30:	00f73c23          	sd	a5,24(a4)
    80003c34:	02c73023          	sd	a2,32(a4)
    80003c38:	34071073          	csrw	mscratch,a4
    80003c3c:	00000797          	auipc	a5,0x0
    80003c40:	64478793          	addi	a5,a5,1604 # 80004280 <timervec>
    80003c44:	30579073          	csrw	mtvec,a5
    80003c48:	300027f3          	csrr	a5,mstatus
    80003c4c:	0087e793          	ori	a5,a5,8
    80003c50:	30079073          	csrw	mstatus,a5
    80003c54:	304027f3          	csrr	a5,mie
    80003c58:	0807e793          	ori	a5,a5,128
    80003c5c:	30479073          	csrw	mie,a5
    80003c60:	00813403          	ld	s0,8(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret

0000000080003c6c <system_main>:
    80003c6c:	fe010113          	addi	sp,sp,-32
    80003c70:	00813823          	sd	s0,16(sp)
    80003c74:	00913423          	sd	s1,8(sp)
    80003c78:	00113c23          	sd	ra,24(sp)
    80003c7c:	02010413          	addi	s0,sp,32
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	0c4080e7          	jalr	196(ra) # 80003d44 <cpuid>
    80003c88:	00004497          	auipc	s1,0x4
    80003c8c:	b5848493          	addi	s1,s1,-1192 # 800077e0 <started>
    80003c90:	02050263          	beqz	a0,80003cb4 <system_main+0x48>
    80003c94:	0004a783          	lw	a5,0(s1)
    80003c98:	0007879b          	sext.w	a5,a5
    80003c9c:	fe078ce3          	beqz	a5,80003c94 <system_main+0x28>
    80003ca0:	0ff0000f          	fence
    80003ca4:	00002517          	auipc	a0,0x2
    80003ca8:	60c50513          	addi	a0,a0,1548 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	a70080e7          	jalr	-1424(ra) # 8000471c <panic>
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	9c4080e7          	jalr	-1596(ra) # 80004678 <consoleinit>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	150080e7          	jalr	336(ra) # 80004e0c <printfinit>
    80003cc4:	00002517          	auipc	a0,0x2
    80003cc8:	50c50513          	addi	a0,a0,1292 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	aac080e7          	jalr	-1364(ra) # 80004778 <__printf>
    80003cd4:	00002517          	auipc	a0,0x2
    80003cd8:	5ac50513          	addi	a0,a0,1452 # 80006280 <CONSOLE_STATUS+0x270>
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	a9c080e7          	jalr	-1380(ra) # 80004778 <__printf>
    80003ce4:	00002517          	auipc	a0,0x2
    80003ce8:	4ec50513          	addi	a0,a0,1260 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003cec:	00001097          	auipc	ra,0x1
    80003cf0:	a8c080e7          	jalr	-1396(ra) # 80004778 <__printf>
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	4a4080e7          	jalr	1188(ra) # 80005198 <kinit>
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	148080e7          	jalr	328(ra) # 80003e44 <trapinit>
    80003d04:	00000097          	auipc	ra,0x0
    80003d08:	16c080e7          	jalr	364(ra) # 80003e70 <trapinithart>
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	5b4080e7          	jalr	1460(ra) # 800042c0 <plicinit>
    80003d14:	00000097          	auipc	ra,0x0
    80003d18:	5d4080e7          	jalr	1492(ra) # 800042e8 <plicinithart>
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	078080e7          	jalr	120(ra) # 80003d94 <userinit>
    80003d24:	0ff0000f          	fence
    80003d28:	00100793          	li	a5,1
    80003d2c:	00002517          	auipc	a0,0x2
    80003d30:	56c50513          	addi	a0,a0,1388 # 80006298 <CONSOLE_STATUS+0x288>
    80003d34:	00f4a023          	sw	a5,0(s1)
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	a40080e7          	jalr	-1472(ra) # 80004778 <__printf>
    80003d40:	0000006f          	j	80003d40 <system_main+0xd4>

0000000080003d44 <cpuid>:
    80003d44:	ff010113          	addi	sp,sp,-16
    80003d48:	00813423          	sd	s0,8(sp)
    80003d4c:	01010413          	addi	s0,sp,16
    80003d50:	00020513          	mv	a0,tp
    80003d54:	00813403          	ld	s0,8(sp)
    80003d58:	0005051b          	sext.w	a0,a0
    80003d5c:	01010113          	addi	sp,sp,16
    80003d60:	00008067          	ret

0000000080003d64 <mycpu>:
    80003d64:	ff010113          	addi	sp,sp,-16
    80003d68:	00813423          	sd	s0,8(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	00020793          	mv	a5,tp
    80003d74:	00813403          	ld	s0,8(sp)
    80003d78:	0007879b          	sext.w	a5,a5
    80003d7c:	00779793          	slli	a5,a5,0x7
    80003d80:	00005517          	auipc	a0,0x5
    80003d84:	b2050513          	addi	a0,a0,-1248 # 800088a0 <cpus>
    80003d88:	00f50533          	add	a0,a0,a5
    80003d8c:	01010113          	addi	sp,sp,16
    80003d90:	00008067          	ret

0000000080003d94 <userinit>:
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00813423          	sd	s0,8(sp)
    80003d9c:	01010413          	addi	s0,sp,16
    80003da0:	00813403          	ld	s0,8(sp)
    80003da4:	01010113          	addi	sp,sp,16
    80003da8:	ffffe317          	auipc	t1,0xffffe
    80003dac:	f7430067          	jr	-140(t1) # 80001d1c <main>

0000000080003db0 <either_copyout>:
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00813023          	sd	s0,0(sp)
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	02051663          	bnez	a0,80003dec <either_copyout+0x3c>
    80003dc4:	00058513          	mv	a0,a1
    80003dc8:	00060593          	mv	a1,a2
    80003dcc:	0006861b          	sext.w	a2,a3
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	c54080e7          	jalr	-940(ra) # 80005a24 <__memmove>
    80003dd8:	00813083          	ld	ra,8(sp)
    80003ddc:	00013403          	ld	s0,0(sp)
    80003de0:	00000513          	li	a0,0
    80003de4:	01010113          	addi	sp,sp,16
    80003de8:	00008067          	ret
    80003dec:	00002517          	auipc	a0,0x2
    80003df0:	4ec50513          	addi	a0,a0,1260 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	928080e7          	jalr	-1752(ra) # 8000471c <panic>

0000000080003dfc <either_copyin>:
    80003dfc:	ff010113          	addi	sp,sp,-16
    80003e00:	00813023          	sd	s0,0(sp)
    80003e04:	00113423          	sd	ra,8(sp)
    80003e08:	01010413          	addi	s0,sp,16
    80003e0c:	02059463          	bnez	a1,80003e34 <either_copyin+0x38>
    80003e10:	00060593          	mv	a1,a2
    80003e14:	0006861b          	sext.w	a2,a3
    80003e18:	00002097          	auipc	ra,0x2
    80003e1c:	c0c080e7          	jalr	-1012(ra) # 80005a24 <__memmove>
    80003e20:	00813083          	ld	ra,8(sp)
    80003e24:	00013403          	ld	s0,0(sp)
    80003e28:	00000513          	li	a0,0
    80003e2c:	01010113          	addi	sp,sp,16
    80003e30:	00008067          	ret
    80003e34:	00002517          	auipc	a0,0x2
    80003e38:	4cc50513          	addi	a0,a0,1228 # 80006300 <CONSOLE_STATUS+0x2f0>
    80003e3c:	00001097          	auipc	ra,0x1
    80003e40:	8e0080e7          	jalr	-1824(ra) # 8000471c <panic>

0000000080003e44 <trapinit>:
    80003e44:	ff010113          	addi	sp,sp,-16
    80003e48:	00813423          	sd	s0,8(sp)
    80003e4c:	01010413          	addi	s0,sp,16
    80003e50:	00813403          	ld	s0,8(sp)
    80003e54:	00002597          	auipc	a1,0x2
    80003e58:	4d458593          	addi	a1,a1,1236 # 80006328 <CONSOLE_STATUS+0x318>
    80003e5c:	00005517          	auipc	a0,0x5
    80003e60:	ac450513          	addi	a0,a0,-1340 # 80008920 <tickslock>
    80003e64:	01010113          	addi	sp,sp,16
    80003e68:	00001317          	auipc	t1,0x1
    80003e6c:	5c030067          	jr	1472(t1) # 80005428 <initlock>

0000000080003e70 <trapinithart>:
    80003e70:	ff010113          	addi	sp,sp,-16
    80003e74:	00813423          	sd	s0,8(sp)
    80003e78:	01010413          	addi	s0,sp,16
    80003e7c:	00000797          	auipc	a5,0x0
    80003e80:	2f478793          	addi	a5,a5,756 # 80004170 <kernelvec>
    80003e84:	10579073          	csrw	stvec,a5
    80003e88:	00813403          	ld	s0,8(sp)
    80003e8c:	01010113          	addi	sp,sp,16
    80003e90:	00008067          	ret

0000000080003e94 <usertrap>:
    80003e94:	ff010113          	addi	sp,sp,-16
    80003e98:	00813423          	sd	s0,8(sp)
    80003e9c:	01010413          	addi	s0,sp,16
    80003ea0:	00813403          	ld	s0,8(sp)
    80003ea4:	01010113          	addi	sp,sp,16
    80003ea8:	00008067          	ret

0000000080003eac <usertrapret>:
    80003eac:	ff010113          	addi	sp,sp,-16
    80003eb0:	00813423          	sd	s0,8(sp)
    80003eb4:	01010413          	addi	s0,sp,16
    80003eb8:	00813403          	ld	s0,8(sp)
    80003ebc:	01010113          	addi	sp,sp,16
    80003ec0:	00008067          	ret

0000000080003ec4 <kerneltrap>:
    80003ec4:	fe010113          	addi	sp,sp,-32
    80003ec8:	00813823          	sd	s0,16(sp)
    80003ecc:	00113c23          	sd	ra,24(sp)
    80003ed0:	00913423          	sd	s1,8(sp)
    80003ed4:	02010413          	addi	s0,sp,32
    80003ed8:	142025f3          	csrr	a1,scause
    80003edc:	100027f3          	csrr	a5,sstatus
    80003ee0:	0027f793          	andi	a5,a5,2
    80003ee4:	10079c63          	bnez	a5,80003ffc <kerneltrap+0x138>
    80003ee8:	142027f3          	csrr	a5,scause
    80003eec:	0207ce63          	bltz	a5,80003f28 <kerneltrap+0x64>
    80003ef0:	00002517          	auipc	a0,0x2
    80003ef4:	48050513          	addi	a0,a0,1152 # 80006370 <CONSOLE_STATUS+0x360>
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	880080e7          	jalr	-1920(ra) # 80004778 <__printf>
    80003f00:	141025f3          	csrr	a1,sepc
    80003f04:	14302673          	csrr	a2,stval
    80003f08:	00002517          	auipc	a0,0x2
    80003f0c:	47850513          	addi	a0,a0,1144 # 80006380 <CONSOLE_STATUS+0x370>
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	868080e7          	jalr	-1944(ra) # 80004778 <__printf>
    80003f18:	00002517          	auipc	a0,0x2
    80003f1c:	48050513          	addi	a0,a0,1152 # 80006398 <CONSOLE_STATUS+0x388>
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	7fc080e7          	jalr	2044(ra) # 8000471c <panic>
    80003f28:	0ff7f713          	andi	a4,a5,255
    80003f2c:	00900693          	li	a3,9
    80003f30:	04d70063          	beq	a4,a3,80003f70 <kerneltrap+0xac>
    80003f34:	fff00713          	li	a4,-1
    80003f38:	03f71713          	slli	a4,a4,0x3f
    80003f3c:	00170713          	addi	a4,a4,1
    80003f40:	fae798e3          	bne	a5,a4,80003ef0 <kerneltrap+0x2c>
    80003f44:	00000097          	auipc	ra,0x0
    80003f48:	e00080e7          	jalr	-512(ra) # 80003d44 <cpuid>
    80003f4c:	06050663          	beqz	a0,80003fb8 <kerneltrap+0xf4>
    80003f50:	144027f3          	csrr	a5,sip
    80003f54:	ffd7f793          	andi	a5,a5,-3
    80003f58:	14479073          	csrw	sip,a5
    80003f5c:	01813083          	ld	ra,24(sp)
    80003f60:	01013403          	ld	s0,16(sp)
    80003f64:	00813483          	ld	s1,8(sp)
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret
    80003f70:	00000097          	auipc	ra,0x0
    80003f74:	3c4080e7          	jalr	964(ra) # 80004334 <plic_claim>
    80003f78:	00a00793          	li	a5,10
    80003f7c:	00050493          	mv	s1,a0
    80003f80:	06f50863          	beq	a0,a5,80003ff0 <kerneltrap+0x12c>
    80003f84:	fc050ce3          	beqz	a0,80003f5c <kerneltrap+0x98>
    80003f88:	00050593          	mv	a1,a0
    80003f8c:	00002517          	auipc	a0,0x2
    80003f90:	3c450513          	addi	a0,a0,964 # 80006350 <CONSOLE_STATUS+0x340>
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	7e4080e7          	jalr	2020(ra) # 80004778 <__printf>
    80003f9c:	01013403          	ld	s0,16(sp)
    80003fa0:	01813083          	ld	ra,24(sp)
    80003fa4:	00048513          	mv	a0,s1
    80003fa8:	00813483          	ld	s1,8(sp)
    80003fac:	02010113          	addi	sp,sp,32
    80003fb0:	00000317          	auipc	t1,0x0
    80003fb4:	3bc30067          	jr	956(t1) # 8000436c <plic_complete>
    80003fb8:	00005517          	auipc	a0,0x5
    80003fbc:	96850513          	addi	a0,a0,-1688 # 80008920 <tickslock>
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	48c080e7          	jalr	1164(ra) # 8000544c <acquire>
    80003fc8:	00004717          	auipc	a4,0x4
    80003fcc:	81c70713          	addi	a4,a4,-2020 # 800077e4 <ticks>
    80003fd0:	00072783          	lw	a5,0(a4)
    80003fd4:	00005517          	auipc	a0,0x5
    80003fd8:	94c50513          	addi	a0,a0,-1716 # 80008920 <tickslock>
    80003fdc:	0017879b          	addiw	a5,a5,1
    80003fe0:	00f72023          	sw	a5,0(a4)
    80003fe4:	00001097          	auipc	ra,0x1
    80003fe8:	534080e7          	jalr	1332(ra) # 80005518 <release>
    80003fec:	f65ff06f          	j	80003f50 <kerneltrap+0x8c>
    80003ff0:	00001097          	auipc	ra,0x1
    80003ff4:	090080e7          	jalr	144(ra) # 80005080 <uartintr>
    80003ff8:	fa5ff06f          	j	80003f9c <kerneltrap+0xd8>
    80003ffc:	00002517          	auipc	a0,0x2
    80004000:	33450513          	addi	a0,a0,820 # 80006330 <CONSOLE_STATUS+0x320>
    80004004:	00000097          	auipc	ra,0x0
    80004008:	718080e7          	jalr	1816(ra) # 8000471c <panic>

000000008000400c <clockintr>:
    8000400c:	fe010113          	addi	sp,sp,-32
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	00113c23          	sd	ra,24(sp)
    8000401c:	02010413          	addi	s0,sp,32
    80004020:	00005497          	auipc	s1,0x5
    80004024:	90048493          	addi	s1,s1,-1792 # 80008920 <tickslock>
    80004028:	00048513          	mv	a0,s1
    8000402c:	00001097          	auipc	ra,0x1
    80004030:	420080e7          	jalr	1056(ra) # 8000544c <acquire>
    80004034:	00003717          	auipc	a4,0x3
    80004038:	7b070713          	addi	a4,a4,1968 # 800077e4 <ticks>
    8000403c:	00072783          	lw	a5,0(a4)
    80004040:	01013403          	ld	s0,16(sp)
    80004044:	01813083          	ld	ra,24(sp)
    80004048:	00048513          	mv	a0,s1
    8000404c:	0017879b          	addiw	a5,a5,1
    80004050:	00813483          	ld	s1,8(sp)
    80004054:	00f72023          	sw	a5,0(a4)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00001317          	auipc	t1,0x1
    80004060:	4bc30067          	jr	1212(t1) # 80005518 <release>

0000000080004064 <devintr>:
    80004064:	142027f3          	csrr	a5,scause
    80004068:	00000513          	li	a0,0
    8000406c:	0007c463          	bltz	a5,80004074 <devintr+0x10>
    80004070:	00008067          	ret
    80004074:	fe010113          	addi	sp,sp,-32
    80004078:	00813823          	sd	s0,16(sp)
    8000407c:	00113c23          	sd	ra,24(sp)
    80004080:	00913423          	sd	s1,8(sp)
    80004084:	02010413          	addi	s0,sp,32
    80004088:	0ff7f713          	andi	a4,a5,255
    8000408c:	00900693          	li	a3,9
    80004090:	04d70c63          	beq	a4,a3,800040e8 <devintr+0x84>
    80004094:	fff00713          	li	a4,-1
    80004098:	03f71713          	slli	a4,a4,0x3f
    8000409c:	00170713          	addi	a4,a4,1
    800040a0:	00e78c63          	beq	a5,a4,800040b8 <devintr+0x54>
    800040a4:	01813083          	ld	ra,24(sp)
    800040a8:	01013403          	ld	s0,16(sp)
    800040ac:	00813483          	ld	s1,8(sp)
    800040b0:	02010113          	addi	sp,sp,32
    800040b4:	00008067          	ret
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	c8c080e7          	jalr	-884(ra) # 80003d44 <cpuid>
    800040c0:	06050663          	beqz	a0,8000412c <devintr+0xc8>
    800040c4:	144027f3          	csrr	a5,sip
    800040c8:	ffd7f793          	andi	a5,a5,-3
    800040cc:	14479073          	csrw	sip,a5
    800040d0:	01813083          	ld	ra,24(sp)
    800040d4:	01013403          	ld	s0,16(sp)
    800040d8:	00813483          	ld	s1,8(sp)
    800040dc:	00200513          	li	a0,2
    800040e0:	02010113          	addi	sp,sp,32
    800040e4:	00008067          	ret
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	24c080e7          	jalr	588(ra) # 80004334 <plic_claim>
    800040f0:	00a00793          	li	a5,10
    800040f4:	00050493          	mv	s1,a0
    800040f8:	06f50663          	beq	a0,a5,80004164 <devintr+0x100>
    800040fc:	00100513          	li	a0,1
    80004100:	fa0482e3          	beqz	s1,800040a4 <devintr+0x40>
    80004104:	00048593          	mv	a1,s1
    80004108:	00002517          	auipc	a0,0x2
    8000410c:	24850513          	addi	a0,a0,584 # 80006350 <CONSOLE_STATUS+0x340>
    80004110:	00000097          	auipc	ra,0x0
    80004114:	668080e7          	jalr	1640(ra) # 80004778 <__printf>
    80004118:	00048513          	mv	a0,s1
    8000411c:	00000097          	auipc	ra,0x0
    80004120:	250080e7          	jalr	592(ra) # 8000436c <plic_complete>
    80004124:	00100513          	li	a0,1
    80004128:	f7dff06f          	j	800040a4 <devintr+0x40>
    8000412c:	00004517          	auipc	a0,0x4
    80004130:	7f450513          	addi	a0,a0,2036 # 80008920 <tickslock>
    80004134:	00001097          	auipc	ra,0x1
    80004138:	318080e7          	jalr	792(ra) # 8000544c <acquire>
    8000413c:	00003717          	auipc	a4,0x3
    80004140:	6a870713          	addi	a4,a4,1704 # 800077e4 <ticks>
    80004144:	00072783          	lw	a5,0(a4)
    80004148:	00004517          	auipc	a0,0x4
    8000414c:	7d850513          	addi	a0,a0,2008 # 80008920 <tickslock>
    80004150:	0017879b          	addiw	a5,a5,1
    80004154:	00f72023          	sw	a5,0(a4)
    80004158:	00001097          	auipc	ra,0x1
    8000415c:	3c0080e7          	jalr	960(ra) # 80005518 <release>
    80004160:	f65ff06f          	j	800040c4 <devintr+0x60>
    80004164:	00001097          	auipc	ra,0x1
    80004168:	f1c080e7          	jalr	-228(ra) # 80005080 <uartintr>
    8000416c:	fadff06f          	j	80004118 <devintr+0xb4>

0000000080004170 <kernelvec>:
    80004170:	f0010113          	addi	sp,sp,-256
    80004174:	00113023          	sd	ra,0(sp)
    80004178:	00213423          	sd	sp,8(sp)
    8000417c:	00313823          	sd	gp,16(sp)
    80004180:	00413c23          	sd	tp,24(sp)
    80004184:	02513023          	sd	t0,32(sp)
    80004188:	02613423          	sd	t1,40(sp)
    8000418c:	02713823          	sd	t2,48(sp)
    80004190:	02813c23          	sd	s0,56(sp)
    80004194:	04913023          	sd	s1,64(sp)
    80004198:	04a13423          	sd	a0,72(sp)
    8000419c:	04b13823          	sd	a1,80(sp)
    800041a0:	04c13c23          	sd	a2,88(sp)
    800041a4:	06d13023          	sd	a3,96(sp)
    800041a8:	06e13423          	sd	a4,104(sp)
    800041ac:	06f13823          	sd	a5,112(sp)
    800041b0:	07013c23          	sd	a6,120(sp)
    800041b4:	09113023          	sd	a7,128(sp)
    800041b8:	09213423          	sd	s2,136(sp)
    800041bc:	09313823          	sd	s3,144(sp)
    800041c0:	09413c23          	sd	s4,152(sp)
    800041c4:	0b513023          	sd	s5,160(sp)
    800041c8:	0b613423          	sd	s6,168(sp)
    800041cc:	0b713823          	sd	s7,176(sp)
    800041d0:	0b813c23          	sd	s8,184(sp)
    800041d4:	0d913023          	sd	s9,192(sp)
    800041d8:	0da13423          	sd	s10,200(sp)
    800041dc:	0db13823          	sd	s11,208(sp)
    800041e0:	0dc13c23          	sd	t3,216(sp)
    800041e4:	0fd13023          	sd	t4,224(sp)
    800041e8:	0fe13423          	sd	t5,232(sp)
    800041ec:	0ff13823          	sd	t6,240(sp)
    800041f0:	cd5ff0ef          	jal	ra,80003ec4 <kerneltrap>
    800041f4:	00013083          	ld	ra,0(sp)
    800041f8:	00813103          	ld	sp,8(sp)
    800041fc:	01013183          	ld	gp,16(sp)
    80004200:	02013283          	ld	t0,32(sp)
    80004204:	02813303          	ld	t1,40(sp)
    80004208:	03013383          	ld	t2,48(sp)
    8000420c:	03813403          	ld	s0,56(sp)
    80004210:	04013483          	ld	s1,64(sp)
    80004214:	04813503          	ld	a0,72(sp)
    80004218:	05013583          	ld	a1,80(sp)
    8000421c:	05813603          	ld	a2,88(sp)
    80004220:	06013683          	ld	a3,96(sp)
    80004224:	06813703          	ld	a4,104(sp)
    80004228:	07013783          	ld	a5,112(sp)
    8000422c:	07813803          	ld	a6,120(sp)
    80004230:	08013883          	ld	a7,128(sp)
    80004234:	08813903          	ld	s2,136(sp)
    80004238:	09013983          	ld	s3,144(sp)
    8000423c:	09813a03          	ld	s4,152(sp)
    80004240:	0a013a83          	ld	s5,160(sp)
    80004244:	0a813b03          	ld	s6,168(sp)
    80004248:	0b013b83          	ld	s7,176(sp)
    8000424c:	0b813c03          	ld	s8,184(sp)
    80004250:	0c013c83          	ld	s9,192(sp)
    80004254:	0c813d03          	ld	s10,200(sp)
    80004258:	0d013d83          	ld	s11,208(sp)
    8000425c:	0d813e03          	ld	t3,216(sp)
    80004260:	0e013e83          	ld	t4,224(sp)
    80004264:	0e813f03          	ld	t5,232(sp)
    80004268:	0f013f83          	ld	t6,240(sp)
    8000426c:	10010113          	addi	sp,sp,256
    80004270:	10200073          	sret
    80004274:	00000013          	nop
    80004278:	00000013          	nop
    8000427c:	00000013          	nop

0000000080004280 <timervec>:
    80004280:	34051573          	csrrw	a0,mscratch,a0
    80004284:	00b53023          	sd	a1,0(a0)
    80004288:	00c53423          	sd	a2,8(a0)
    8000428c:	00d53823          	sd	a3,16(a0)
    80004290:	01853583          	ld	a1,24(a0)
    80004294:	02053603          	ld	a2,32(a0)
    80004298:	0005b683          	ld	a3,0(a1)
    8000429c:	00c686b3          	add	a3,a3,a2
    800042a0:	00d5b023          	sd	a3,0(a1)
    800042a4:	00200593          	li	a1,2
    800042a8:	14459073          	csrw	sip,a1
    800042ac:	01053683          	ld	a3,16(a0)
    800042b0:	00853603          	ld	a2,8(a0)
    800042b4:	00053583          	ld	a1,0(a0)
    800042b8:	34051573          	csrrw	a0,mscratch,a0
    800042bc:	30200073          	mret

00000000800042c0 <plicinit>:
    800042c0:	ff010113          	addi	sp,sp,-16
    800042c4:	00813423          	sd	s0,8(sp)
    800042c8:	01010413          	addi	s0,sp,16
    800042cc:	00813403          	ld	s0,8(sp)
    800042d0:	0c0007b7          	lui	a5,0xc000
    800042d4:	00100713          	li	a4,1
    800042d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800042dc:	00e7a223          	sw	a4,4(a5)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <plicinithart>:
    800042e8:	ff010113          	addi	sp,sp,-16
    800042ec:	00813023          	sd	s0,0(sp)
    800042f0:	00113423          	sd	ra,8(sp)
    800042f4:	01010413          	addi	s0,sp,16
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	a4c080e7          	jalr	-1460(ra) # 80003d44 <cpuid>
    80004300:	0085171b          	slliw	a4,a0,0x8
    80004304:	0c0027b7          	lui	a5,0xc002
    80004308:	00e787b3          	add	a5,a5,a4
    8000430c:	40200713          	li	a4,1026
    80004310:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004314:	00813083          	ld	ra,8(sp)
    80004318:	00013403          	ld	s0,0(sp)
    8000431c:	00d5151b          	slliw	a0,a0,0xd
    80004320:	0c2017b7          	lui	a5,0xc201
    80004324:	00a78533          	add	a0,a5,a0
    80004328:	00052023          	sw	zero,0(a0)
    8000432c:	01010113          	addi	sp,sp,16
    80004330:	00008067          	ret

0000000080004334 <plic_claim>:
    80004334:	ff010113          	addi	sp,sp,-16
    80004338:	00813023          	sd	s0,0(sp)
    8000433c:	00113423          	sd	ra,8(sp)
    80004340:	01010413          	addi	s0,sp,16
    80004344:	00000097          	auipc	ra,0x0
    80004348:	a00080e7          	jalr	-1536(ra) # 80003d44 <cpuid>
    8000434c:	00813083          	ld	ra,8(sp)
    80004350:	00013403          	ld	s0,0(sp)
    80004354:	00d5151b          	slliw	a0,a0,0xd
    80004358:	0c2017b7          	lui	a5,0xc201
    8000435c:	00a78533          	add	a0,a5,a0
    80004360:	00452503          	lw	a0,4(a0)
    80004364:	01010113          	addi	sp,sp,16
    80004368:	00008067          	ret

000000008000436c <plic_complete>:
    8000436c:	fe010113          	addi	sp,sp,-32
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00913423          	sd	s1,8(sp)
    80004378:	00113c23          	sd	ra,24(sp)
    8000437c:	02010413          	addi	s0,sp,32
    80004380:	00050493          	mv	s1,a0
    80004384:	00000097          	auipc	ra,0x0
    80004388:	9c0080e7          	jalr	-1600(ra) # 80003d44 <cpuid>
    8000438c:	01813083          	ld	ra,24(sp)
    80004390:	01013403          	ld	s0,16(sp)
    80004394:	00d5179b          	slliw	a5,a0,0xd
    80004398:	0c201737          	lui	a4,0xc201
    8000439c:	00f707b3          	add	a5,a4,a5
    800043a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800043a4:	00813483          	ld	s1,8(sp)
    800043a8:	02010113          	addi	sp,sp,32
    800043ac:	00008067          	ret

00000000800043b0 <consolewrite>:
    800043b0:	fb010113          	addi	sp,sp,-80
    800043b4:	04813023          	sd	s0,64(sp)
    800043b8:	04113423          	sd	ra,72(sp)
    800043bc:	02913c23          	sd	s1,56(sp)
    800043c0:	03213823          	sd	s2,48(sp)
    800043c4:	03313423          	sd	s3,40(sp)
    800043c8:	03413023          	sd	s4,32(sp)
    800043cc:	01513c23          	sd	s5,24(sp)
    800043d0:	05010413          	addi	s0,sp,80
    800043d4:	06c05c63          	blez	a2,8000444c <consolewrite+0x9c>
    800043d8:	00060993          	mv	s3,a2
    800043dc:	00050a13          	mv	s4,a0
    800043e0:	00058493          	mv	s1,a1
    800043e4:	00000913          	li	s2,0
    800043e8:	fff00a93          	li	s5,-1
    800043ec:	01c0006f          	j	80004408 <consolewrite+0x58>
    800043f0:	fbf44503          	lbu	a0,-65(s0)
    800043f4:	0019091b          	addiw	s2,s2,1
    800043f8:	00148493          	addi	s1,s1,1
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	a9c080e7          	jalr	-1380(ra) # 80004e98 <uartputc>
    80004404:	03298063          	beq	s3,s2,80004424 <consolewrite+0x74>
    80004408:	00048613          	mv	a2,s1
    8000440c:	00100693          	li	a3,1
    80004410:	000a0593          	mv	a1,s4
    80004414:	fbf40513          	addi	a0,s0,-65
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	9e4080e7          	jalr	-1564(ra) # 80003dfc <either_copyin>
    80004420:	fd5518e3          	bne	a0,s5,800043f0 <consolewrite+0x40>
    80004424:	04813083          	ld	ra,72(sp)
    80004428:	04013403          	ld	s0,64(sp)
    8000442c:	03813483          	ld	s1,56(sp)
    80004430:	02813983          	ld	s3,40(sp)
    80004434:	02013a03          	ld	s4,32(sp)
    80004438:	01813a83          	ld	s5,24(sp)
    8000443c:	00090513          	mv	a0,s2
    80004440:	03013903          	ld	s2,48(sp)
    80004444:	05010113          	addi	sp,sp,80
    80004448:	00008067          	ret
    8000444c:	00000913          	li	s2,0
    80004450:	fd5ff06f          	j	80004424 <consolewrite+0x74>

0000000080004454 <consoleread>:
    80004454:	f9010113          	addi	sp,sp,-112
    80004458:	06813023          	sd	s0,96(sp)
    8000445c:	04913c23          	sd	s1,88(sp)
    80004460:	05213823          	sd	s2,80(sp)
    80004464:	05313423          	sd	s3,72(sp)
    80004468:	05413023          	sd	s4,64(sp)
    8000446c:	03513c23          	sd	s5,56(sp)
    80004470:	03613823          	sd	s6,48(sp)
    80004474:	03713423          	sd	s7,40(sp)
    80004478:	03813023          	sd	s8,32(sp)
    8000447c:	06113423          	sd	ra,104(sp)
    80004480:	01913c23          	sd	s9,24(sp)
    80004484:	07010413          	addi	s0,sp,112
    80004488:	00060b93          	mv	s7,a2
    8000448c:	00050913          	mv	s2,a0
    80004490:	00058c13          	mv	s8,a1
    80004494:	00060b1b          	sext.w	s6,a2
    80004498:	00004497          	auipc	s1,0x4
    8000449c:	4b048493          	addi	s1,s1,1200 # 80008948 <cons>
    800044a0:	00400993          	li	s3,4
    800044a4:	fff00a13          	li	s4,-1
    800044a8:	00a00a93          	li	s5,10
    800044ac:	05705e63          	blez	s7,80004508 <consoleread+0xb4>
    800044b0:	09c4a703          	lw	a4,156(s1)
    800044b4:	0984a783          	lw	a5,152(s1)
    800044b8:	0007071b          	sext.w	a4,a4
    800044bc:	08e78463          	beq	a5,a4,80004544 <consoleread+0xf0>
    800044c0:	07f7f713          	andi	a4,a5,127
    800044c4:	00e48733          	add	a4,s1,a4
    800044c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800044cc:	0017869b          	addiw	a3,a5,1
    800044d0:	08d4ac23          	sw	a3,152(s1)
    800044d4:	00070c9b          	sext.w	s9,a4
    800044d8:	0b370663          	beq	a4,s3,80004584 <consoleread+0x130>
    800044dc:	00100693          	li	a3,1
    800044e0:	f9f40613          	addi	a2,s0,-97
    800044e4:	000c0593          	mv	a1,s8
    800044e8:	00090513          	mv	a0,s2
    800044ec:	f8e40fa3          	sb	a4,-97(s0)
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	8c0080e7          	jalr	-1856(ra) # 80003db0 <either_copyout>
    800044f8:	01450863          	beq	a0,s4,80004508 <consoleread+0xb4>
    800044fc:	001c0c13          	addi	s8,s8,1
    80004500:	fffb8b9b          	addiw	s7,s7,-1
    80004504:	fb5c94e3          	bne	s9,s5,800044ac <consoleread+0x58>
    80004508:	000b851b          	sext.w	a0,s7
    8000450c:	06813083          	ld	ra,104(sp)
    80004510:	06013403          	ld	s0,96(sp)
    80004514:	05813483          	ld	s1,88(sp)
    80004518:	05013903          	ld	s2,80(sp)
    8000451c:	04813983          	ld	s3,72(sp)
    80004520:	04013a03          	ld	s4,64(sp)
    80004524:	03813a83          	ld	s5,56(sp)
    80004528:	02813b83          	ld	s7,40(sp)
    8000452c:	02013c03          	ld	s8,32(sp)
    80004530:	01813c83          	ld	s9,24(sp)
    80004534:	40ab053b          	subw	a0,s6,a0
    80004538:	03013b03          	ld	s6,48(sp)
    8000453c:	07010113          	addi	sp,sp,112
    80004540:	00008067          	ret
    80004544:	00001097          	auipc	ra,0x1
    80004548:	1d8080e7          	jalr	472(ra) # 8000571c <push_on>
    8000454c:	0984a703          	lw	a4,152(s1)
    80004550:	09c4a783          	lw	a5,156(s1)
    80004554:	0007879b          	sext.w	a5,a5
    80004558:	fef70ce3          	beq	a4,a5,80004550 <consoleread+0xfc>
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	234080e7          	jalr	564(ra) # 80005790 <pop_on>
    80004564:	0984a783          	lw	a5,152(s1)
    80004568:	07f7f713          	andi	a4,a5,127
    8000456c:	00e48733          	add	a4,s1,a4
    80004570:	01874703          	lbu	a4,24(a4)
    80004574:	0017869b          	addiw	a3,a5,1
    80004578:	08d4ac23          	sw	a3,152(s1)
    8000457c:	00070c9b          	sext.w	s9,a4
    80004580:	f5371ee3          	bne	a4,s3,800044dc <consoleread+0x88>
    80004584:	000b851b          	sext.w	a0,s7
    80004588:	f96bf2e3          	bgeu	s7,s6,8000450c <consoleread+0xb8>
    8000458c:	08f4ac23          	sw	a5,152(s1)
    80004590:	f7dff06f          	j	8000450c <consoleread+0xb8>

0000000080004594 <consputc>:
    80004594:	10000793          	li	a5,256
    80004598:	00f50663          	beq	a0,a5,800045a4 <consputc+0x10>
    8000459c:	00001317          	auipc	t1,0x1
    800045a0:	9f430067          	jr	-1548(t1) # 80004f90 <uartputc_sync>
    800045a4:	ff010113          	addi	sp,sp,-16
    800045a8:	00113423          	sd	ra,8(sp)
    800045ac:	00813023          	sd	s0,0(sp)
    800045b0:	01010413          	addi	s0,sp,16
    800045b4:	00800513          	li	a0,8
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	9d8080e7          	jalr	-1576(ra) # 80004f90 <uartputc_sync>
    800045c0:	02000513          	li	a0,32
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	9cc080e7          	jalr	-1588(ra) # 80004f90 <uartputc_sync>
    800045cc:	00013403          	ld	s0,0(sp)
    800045d0:	00813083          	ld	ra,8(sp)
    800045d4:	00800513          	li	a0,8
    800045d8:	01010113          	addi	sp,sp,16
    800045dc:	00001317          	auipc	t1,0x1
    800045e0:	9b430067          	jr	-1612(t1) # 80004f90 <uartputc_sync>

00000000800045e4 <consoleintr>:
    800045e4:	fe010113          	addi	sp,sp,-32
    800045e8:	00813823          	sd	s0,16(sp)
    800045ec:	00913423          	sd	s1,8(sp)
    800045f0:	01213023          	sd	s2,0(sp)
    800045f4:	00113c23          	sd	ra,24(sp)
    800045f8:	02010413          	addi	s0,sp,32
    800045fc:	00004917          	auipc	s2,0x4
    80004600:	34c90913          	addi	s2,s2,844 # 80008948 <cons>
    80004604:	00050493          	mv	s1,a0
    80004608:	00090513          	mv	a0,s2
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	e40080e7          	jalr	-448(ra) # 8000544c <acquire>
    80004614:	02048c63          	beqz	s1,8000464c <consoleintr+0x68>
    80004618:	0a092783          	lw	a5,160(s2)
    8000461c:	09892703          	lw	a4,152(s2)
    80004620:	07f00693          	li	a3,127
    80004624:	40e7873b          	subw	a4,a5,a4
    80004628:	02e6e263          	bltu	a3,a4,8000464c <consoleintr+0x68>
    8000462c:	00d00713          	li	a4,13
    80004630:	04e48063          	beq	s1,a4,80004670 <consoleintr+0x8c>
    80004634:	07f7f713          	andi	a4,a5,127
    80004638:	00e90733          	add	a4,s2,a4
    8000463c:	0017879b          	addiw	a5,a5,1
    80004640:	0af92023          	sw	a5,160(s2)
    80004644:	00970c23          	sb	s1,24(a4)
    80004648:	08f92e23          	sw	a5,156(s2)
    8000464c:	01013403          	ld	s0,16(sp)
    80004650:	01813083          	ld	ra,24(sp)
    80004654:	00813483          	ld	s1,8(sp)
    80004658:	00013903          	ld	s2,0(sp)
    8000465c:	00004517          	auipc	a0,0x4
    80004660:	2ec50513          	addi	a0,a0,748 # 80008948 <cons>
    80004664:	02010113          	addi	sp,sp,32
    80004668:	00001317          	auipc	t1,0x1
    8000466c:	eb030067          	jr	-336(t1) # 80005518 <release>
    80004670:	00a00493          	li	s1,10
    80004674:	fc1ff06f          	j	80004634 <consoleintr+0x50>

0000000080004678 <consoleinit>:
    80004678:	fe010113          	addi	sp,sp,-32
    8000467c:	00113c23          	sd	ra,24(sp)
    80004680:	00813823          	sd	s0,16(sp)
    80004684:	00913423          	sd	s1,8(sp)
    80004688:	02010413          	addi	s0,sp,32
    8000468c:	00004497          	auipc	s1,0x4
    80004690:	2bc48493          	addi	s1,s1,700 # 80008948 <cons>
    80004694:	00048513          	mv	a0,s1
    80004698:	00002597          	auipc	a1,0x2
    8000469c:	d1058593          	addi	a1,a1,-752 # 800063a8 <CONSOLE_STATUS+0x398>
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	d88080e7          	jalr	-632(ra) # 80005428 <initlock>
    800046a8:	00000097          	auipc	ra,0x0
    800046ac:	7ac080e7          	jalr	1964(ra) # 80004e54 <uartinit>
    800046b0:	01813083          	ld	ra,24(sp)
    800046b4:	01013403          	ld	s0,16(sp)
    800046b8:	00000797          	auipc	a5,0x0
    800046bc:	d9c78793          	addi	a5,a5,-612 # 80004454 <consoleread>
    800046c0:	0af4bc23          	sd	a5,184(s1)
    800046c4:	00000797          	auipc	a5,0x0
    800046c8:	cec78793          	addi	a5,a5,-788 # 800043b0 <consolewrite>
    800046cc:	0cf4b023          	sd	a5,192(s1)
    800046d0:	00813483          	ld	s1,8(sp)
    800046d4:	02010113          	addi	sp,sp,32
    800046d8:	00008067          	ret

00000000800046dc <console_read>:
    800046dc:	ff010113          	addi	sp,sp,-16
    800046e0:	00813423          	sd	s0,8(sp)
    800046e4:	01010413          	addi	s0,sp,16
    800046e8:	00813403          	ld	s0,8(sp)
    800046ec:	00004317          	auipc	t1,0x4
    800046f0:	31433303          	ld	t1,788(t1) # 80008a00 <devsw+0x10>
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00030067          	jr	t1

00000000800046fc <console_write>:
    800046fc:	ff010113          	addi	sp,sp,-16
    80004700:	00813423          	sd	s0,8(sp)
    80004704:	01010413          	addi	s0,sp,16
    80004708:	00813403          	ld	s0,8(sp)
    8000470c:	00004317          	auipc	t1,0x4
    80004710:	2fc33303          	ld	t1,764(t1) # 80008a08 <devsw+0x18>
    80004714:	01010113          	addi	sp,sp,16
    80004718:	00030067          	jr	t1

000000008000471c <panic>:
    8000471c:	fe010113          	addi	sp,sp,-32
    80004720:	00113c23          	sd	ra,24(sp)
    80004724:	00813823          	sd	s0,16(sp)
    80004728:	00913423          	sd	s1,8(sp)
    8000472c:	02010413          	addi	s0,sp,32
    80004730:	00050493          	mv	s1,a0
    80004734:	00002517          	auipc	a0,0x2
    80004738:	c7c50513          	addi	a0,a0,-900 # 800063b0 <CONSOLE_STATUS+0x3a0>
    8000473c:	00004797          	auipc	a5,0x4
    80004740:	3607a623          	sw	zero,876(a5) # 80008aa8 <pr+0x18>
    80004744:	00000097          	auipc	ra,0x0
    80004748:	034080e7          	jalr	52(ra) # 80004778 <__printf>
    8000474c:	00048513          	mv	a0,s1
    80004750:	00000097          	auipc	ra,0x0
    80004754:	028080e7          	jalr	40(ra) # 80004778 <__printf>
    80004758:	00002517          	auipc	a0,0x2
    8000475c:	a7850513          	addi	a0,a0,-1416 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80004760:	00000097          	auipc	ra,0x0
    80004764:	018080e7          	jalr	24(ra) # 80004778 <__printf>
    80004768:	00100793          	li	a5,1
    8000476c:	00003717          	auipc	a4,0x3
    80004770:	06f72e23          	sw	a5,124(a4) # 800077e8 <panicked>
    80004774:	0000006f          	j	80004774 <panic+0x58>

0000000080004778 <__printf>:
    80004778:	f3010113          	addi	sp,sp,-208
    8000477c:	08813023          	sd	s0,128(sp)
    80004780:	07313423          	sd	s3,104(sp)
    80004784:	09010413          	addi	s0,sp,144
    80004788:	05813023          	sd	s8,64(sp)
    8000478c:	08113423          	sd	ra,136(sp)
    80004790:	06913c23          	sd	s1,120(sp)
    80004794:	07213823          	sd	s2,112(sp)
    80004798:	07413023          	sd	s4,96(sp)
    8000479c:	05513c23          	sd	s5,88(sp)
    800047a0:	05613823          	sd	s6,80(sp)
    800047a4:	05713423          	sd	s7,72(sp)
    800047a8:	03913c23          	sd	s9,56(sp)
    800047ac:	03a13823          	sd	s10,48(sp)
    800047b0:	03b13423          	sd	s11,40(sp)
    800047b4:	00004317          	auipc	t1,0x4
    800047b8:	2dc30313          	addi	t1,t1,732 # 80008a90 <pr>
    800047bc:	01832c03          	lw	s8,24(t1)
    800047c0:	00b43423          	sd	a1,8(s0)
    800047c4:	00c43823          	sd	a2,16(s0)
    800047c8:	00d43c23          	sd	a3,24(s0)
    800047cc:	02e43023          	sd	a4,32(s0)
    800047d0:	02f43423          	sd	a5,40(s0)
    800047d4:	03043823          	sd	a6,48(s0)
    800047d8:	03143c23          	sd	a7,56(s0)
    800047dc:	00050993          	mv	s3,a0
    800047e0:	4a0c1663          	bnez	s8,80004c8c <__printf+0x514>
    800047e4:	60098c63          	beqz	s3,80004dfc <__printf+0x684>
    800047e8:	0009c503          	lbu	a0,0(s3)
    800047ec:	00840793          	addi	a5,s0,8
    800047f0:	f6f43c23          	sd	a5,-136(s0)
    800047f4:	00000493          	li	s1,0
    800047f8:	22050063          	beqz	a0,80004a18 <__printf+0x2a0>
    800047fc:	00002a37          	lui	s4,0x2
    80004800:	00018ab7          	lui	s5,0x18
    80004804:	000f4b37          	lui	s6,0xf4
    80004808:	00989bb7          	lui	s7,0x989
    8000480c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004810:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004814:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004818:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000481c:	00148c9b          	addiw	s9,s1,1
    80004820:	02500793          	li	a5,37
    80004824:	01998933          	add	s2,s3,s9
    80004828:	38f51263          	bne	a0,a5,80004bac <__printf+0x434>
    8000482c:	00094783          	lbu	a5,0(s2)
    80004830:	00078c9b          	sext.w	s9,a5
    80004834:	1e078263          	beqz	a5,80004a18 <__printf+0x2a0>
    80004838:	0024849b          	addiw	s1,s1,2
    8000483c:	07000713          	li	a4,112
    80004840:	00998933          	add	s2,s3,s1
    80004844:	38e78a63          	beq	a5,a4,80004bd8 <__printf+0x460>
    80004848:	20f76863          	bltu	a4,a5,80004a58 <__printf+0x2e0>
    8000484c:	42a78863          	beq	a5,a0,80004c7c <__printf+0x504>
    80004850:	06400713          	li	a4,100
    80004854:	40e79663          	bne	a5,a4,80004c60 <__printf+0x4e8>
    80004858:	f7843783          	ld	a5,-136(s0)
    8000485c:	0007a603          	lw	a2,0(a5)
    80004860:	00878793          	addi	a5,a5,8
    80004864:	f6f43c23          	sd	a5,-136(s0)
    80004868:	42064a63          	bltz	a2,80004c9c <__printf+0x524>
    8000486c:	00a00713          	li	a4,10
    80004870:	02e677bb          	remuw	a5,a2,a4
    80004874:	00002d97          	auipc	s11,0x2
    80004878:	b64d8d93          	addi	s11,s11,-1180 # 800063d8 <digits>
    8000487c:	00900593          	li	a1,9
    80004880:	0006051b          	sext.w	a0,a2
    80004884:	00000c93          	li	s9,0
    80004888:	02079793          	slli	a5,a5,0x20
    8000488c:	0207d793          	srli	a5,a5,0x20
    80004890:	00fd87b3          	add	a5,s11,a5
    80004894:	0007c783          	lbu	a5,0(a5)
    80004898:	02e656bb          	divuw	a3,a2,a4
    8000489c:	f8f40023          	sb	a5,-128(s0)
    800048a0:	14c5d863          	bge	a1,a2,800049f0 <__printf+0x278>
    800048a4:	06300593          	li	a1,99
    800048a8:	00100c93          	li	s9,1
    800048ac:	02e6f7bb          	remuw	a5,a3,a4
    800048b0:	02079793          	slli	a5,a5,0x20
    800048b4:	0207d793          	srli	a5,a5,0x20
    800048b8:	00fd87b3          	add	a5,s11,a5
    800048bc:	0007c783          	lbu	a5,0(a5)
    800048c0:	02e6d73b          	divuw	a4,a3,a4
    800048c4:	f8f400a3          	sb	a5,-127(s0)
    800048c8:	12a5f463          	bgeu	a1,a0,800049f0 <__printf+0x278>
    800048cc:	00a00693          	li	a3,10
    800048d0:	00900593          	li	a1,9
    800048d4:	02d777bb          	remuw	a5,a4,a3
    800048d8:	02079793          	slli	a5,a5,0x20
    800048dc:	0207d793          	srli	a5,a5,0x20
    800048e0:	00fd87b3          	add	a5,s11,a5
    800048e4:	0007c503          	lbu	a0,0(a5)
    800048e8:	02d757bb          	divuw	a5,a4,a3
    800048ec:	f8a40123          	sb	a0,-126(s0)
    800048f0:	48e5f263          	bgeu	a1,a4,80004d74 <__printf+0x5fc>
    800048f4:	06300513          	li	a0,99
    800048f8:	02d7f5bb          	remuw	a1,a5,a3
    800048fc:	02059593          	slli	a1,a1,0x20
    80004900:	0205d593          	srli	a1,a1,0x20
    80004904:	00bd85b3          	add	a1,s11,a1
    80004908:	0005c583          	lbu	a1,0(a1)
    8000490c:	02d7d7bb          	divuw	a5,a5,a3
    80004910:	f8b401a3          	sb	a1,-125(s0)
    80004914:	48e57263          	bgeu	a0,a4,80004d98 <__printf+0x620>
    80004918:	3e700513          	li	a0,999
    8000491c:	02d7f5bb          	remuw	a1,a5,a3
    80004920:	02059593          	slli	a1,a1,0x20
    80004924:	0205d593          	srli	a1,a1,0x20
    80004928:	00bd85b3          	add	a1,s11,a1
    8000492c:	0005c583          	lbu	a1,0(a1)
    80004930:	02d7d7bb          	divuw	a5,a5,a3
    80004934:	f8b40223          	sb	a1,-124(s0)
    80004938:	46e57663          	bgeu	a0,a4,80004da4 <__printf+0x62c>
    8000493c:	02d7f5bb          	remuw	a1,a5,a3
    80004940:	02059593          	slli	a1,a1,0x20
    80004944:	0205d593          	srli	a1,a1,0x20
    80004948:	00bd85b3          	add	a1,s11,a1
    8000494c:	0005c583          	lbu	a1,0(a1)
    80004950:	02d7d7bb          	divuw	a5,a5,a3
    80004954:	f8b402a3          	sb	a1,-123(s0)
    80004958:	46ea7863          	bgeu	s4,a4,80004dc8 <__printf+0x650>
    8000495c:	02d7f5bb          	remuw	a1,a5,a3
    80004960:	02059593          	slli	a1,a1,0x20
    80004964:	0205d593          	srli	a1,a1,0x20
    80004968:	00bd85b3          	add	a1,s11,a1
    8000496c:	0005c583          	lbu	a1,0(a1)
    80004970:	02d7d7bb          	divuw	a5,a5,a3
    80004974:	f8b40323          	sb	a1,-122(s0)
    80004978:	3eeaf863          	bgeu	s5,a4,80004d68 <__printf+0x5f0>
    8000497c:	02d7f5bb          	remuw	a1,a5,a3
    80004980:	02059593          	slli	a1,a1,0x20
    80004984:	0205d593          	srli	a1,a1,0x20
    80004988:	00bd85b3          	add	a1,s11,a1
    8000498c:	0005c583          	lbu	a1,0(a1)
    80004990:	02d7d7bb          	divuw	a5,a5,a3
    80004994:	f8b403a3          	sb	a1,-121(s0)
    80004998:	42eb7e63          	bgeu	s6,a4,80004dd4 <__printf+0x65c>
    8000499c:	02d7f5bb          	remuw	a1,a5,a3
    800049a0:	02059593          	slli	a1,a1,0x20
    800049a4:	0205d593          	srli	a1,a1,0x20
    800049a8:	00bd85b3          	add	a1,s11,a1
    800049ac:	0005c583          	lbu	a1,0(a1)
    800049b0:	02d7d7bb          	divuw	a5,a5,a3
    800049b4:	f8b40423          	sb	a1,-120(s0)
    800049b8:	42ebfc63          	bgeu	s7,a4,80004df0 <__printf+0x678>
    800049bc:	02079793          	slli	a5,a5,0x20
    800049c0:	0207d793          	srli	a5,a5,0x20
    800049c4:	00fd8db3          	add	s11,s11,a5
    800049c8:	000dc703          	lbu	a4,0(s11)
    800049cc:	00a00793          	li	a5,10
    800049d0:	00900c93          	li	s9,9
    800049d4:	f8e404a3          	sb	a4,-119(s0)
    800049d8:	00065c63          	bgez	a2,800049f0 <__printf+0x278>
    800049dc:	f9040713          	addi	a4,s0,-112
    800049e0:	00f70733          	add	a4,a4,a5
    800049e4:	02d00693          	li	a3,45
    800049e8:	fed70823          	sb	a3,-16(a4)
    800049ec:	00078c93          	mv	s9,a5
    800049f0:	f8040793          	addi	a5,s0,-128
    800049f4:	01978cb3          	add	s9,a5,s9
    800049f8:	f7f40d13          	addi	s10,s0,-129
    800049fc:	000cc503          	lbu	a0,0(s9)
    80004a00:	fffc8c93          	addi	s9,s9,-1
    80004a04:	00000097          	auipc	ra,0x0
    80004a08:	b90080e7          	jalr	-1136(ra) # 80004594 <consputc>
    80004a0c:	ffac98e3          	bne	s9,s10,800049fc <__printf+0x284>
    80004a10:	00094503          	lbu	a0,0(s2)
    80004a14:	e00514e3          	bnez	a0,8000481c <__printf+0xa4>
    80004a18:	1a0c1663          	bnez	s8,80004bc4 <__printf+0x44c>
    80004a1c:	08813083          	ld	ra,136(sp)
    80004a20:	08013403          	ld	s0,128(sp)
    80004a24:	07813483          	ld	s1,120(sp)
    80004a28:	07013903          	ld	s2,112(sp)
    80004a2c:	06813983          	ld	s3,104(sp)
    80004a30:	06013a03          	ld	s4,96(sp)
    80004a34:	05813a83          	ld	s5,88(sp)
    80004a38:	05013b03          	ld	s6,80(sp)
    80004a3c:	04813b83          	ld	s7,72(sp)
    80004a40:	04013c03          	ld	s8,64(sp)
    80004a44:	03813c83          	ld	s9,56(sp)
    80004a48:	03013d03          	ld	s10,48(sp)
    80004a4c:	02813d83          	ld	s11,40(sp)
    80004a50:	0d010113          	addi	sp,sp,208
    80004a54:	00008067          	ret
    80004a58:	07300713          	li	a4,115
    80004a5c:	1ce78a63          	beq	a5,a4,80004c30 <__printf+0x4b8>
    80004a60:	07800713          	li	a4,120
    80004a64:	1ee79e63          	bne	a5,a4,80004c60 <__printf+0x4e8>
    80004a68:	f7843783          	ld	a5,-136(s0)
    80004a6c:	0007a703          	lw	a4,0(a5)
    80004a70:	00878793          	addi	a5,a5,8
    80004a74:	f6f43c23          	sd	a5,-136(s0)
    80004a78:	28074263          	bltz	a4,80004cfc <__printf+0x584>
    80004a7c:	00002d97          	auipc	s11,0x2
    80004a80:	95cd8d93          	addi	s11,s11,-1700 # 800063d8 <digits>
    80004a84:	00f77793          	andi	a5,a4,15
    80004a88:	00fd87b3          	add	a5,s11,a5
    80004a8c:	0007c683          	lbu	a3,0(a5)
    80004a90:	00f00613          	li	a2,15
    80004a94:	0007079b          	sext.w	a5,a4
    80004a98:	f8d40023          	sb	a3,-128(s0)
    80004a9c:	0047559b          	srliw	a1,a4,0x4
    80004aa0:	0047569b          	srliw	a3,a4,0x4
    80004aa4:	00000c93          	li	s9,0
    80004aa8:	0ee65063          	bge	a2,a4,80004b88 <__printf+0x410>
    80004aac:	00f6f693          	andi	a3,a3,15
    80004ab0:	00dd86b3          	add	a3,s11,a3
    80004ab4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004ab8:	0087d79b          	srliw	a5,a5,0x8
    80004abc:	00100c93          	li	s9,1
    80004ac0:	f8d400a3          	sb	a3,-127(s0)
    80004ac4:	0cb67263          	bgeu	a2,a1,80004b88 <__printf+0x410>
    80004ac8:	00f7f693          	andi	a3,a5,15
    80004acc:	00dd86b3          	add	a3,s11,a3
    80004ad0:	0006c583          	lbu	a1,0(a3)
    80004ad4:	00f00613          	li	a2,15
    80004ad8:	0047d69b          	srliw	a3,a5,0x4
    80004adc:	f8b40123          	sb	a1,-126(s0)
    80004ae0:	0047d593          	srli	a1,a5,0x4
    80004ae4:	28f67e63          	bgeu	a2,a5,80004d80 <__printf+0x608>
    80004ae8:	00f6f693          	andi	a3,a3,15
    80004aec:	00dd86b3          	add	a3,s11,a3
    80004af0:	0006c503          	lbu	a0,0(a3)
    80004af4:	0087d813          	srli	a6,a5,0x8
    80004af8:	0087d69b          	srliw	a3,a5,0x8
    80004afc:	f8a401a3          	sb	a0,-125(s0)
    80004b00:	28b67663          	bgeu	a2,a1,80004d8c <__printf+0x614>
    80004b04:	00f6f693          	andi	a3,a3,15
    80004b08:	00dd86b3          	add	a3,s11,a3
    80004b0c:	0006c583          	lbu	a1,0(a3)
    80004b10:	00c7d513          	srli	a0,a5,0xc
    80004b14:	00c7d69b          	srliw	a3,a5,0xc
    80004b18:	f8b40223          	sb	a1,-124(s0)
    80004b1c:	29067a63          	bgeu	a2,a6,80004db0 <__printf+0x638>
    80004b20:	00f6f693          	andi	a3,a3,15
    80004b24:	00dd86b3          	add	a3,s11,a3
    80004b28:	0006c583          	lbu	a1,0(a3)
    80004b2c:	0107d813          	srli	a6,a5,0x10
    80004b30:	0107d69b          	srliw	a3,a5,0x10
    80004b34:	f8b402a3          	sb	a1,-123(s0)
    80004b38:	28a67263          	bgeu	a2,a0,80004dbc <__printf+0x644>
    80004b3c:	00f6f693          	andi	a3,a3,15
    80004b40:	00dd86b3          	add	a3,s11,a3
    80004b44:	0006c683          	lbu	a3,0(a3)
    80004b48:	0147d79b          	srliw	a5,a5,0x14
    80004b4c:	f8d40323          	sb	a3,-122(s0)
    80004b50:	21067663          	bgeu	a2,a6,80004d5c <__printf+0x5e4>
    80004b54:	02079793          	slli	a5,a5,0x20
    80004b58:	0207d793          	srli	a5,a5,0x20
    80004b5c:	00fd8db3          	add	s11,s11,a5
    80004b60:	000dc683          	lbu	a3,0(s11)
    80004b64:	00800793          	li	a5,8
    80004b68:	00700c93          	li	s9,7
    80004b6c:	f8d403a3          	sb	a3,-121(s0)
    80004b70:	00075c63          	bgez	a4,80004b88 <__printf+0x410>
    80004b74:	f9040713          	addi	a4,s0,-112
    80004b78:	00f70733          	add	a4,a4,a5
    80004b7c:	02d00693          	li	a3,45
    80004b80:	fed70823          	sb	a3,-16(a4)
    80004b84:	00078c93          	mv	s9,a5
    80004b88:	f8040793          	addi	a5,s0,-128
    80004b8c:	01978cb3          	add	s9,a5,s9
    80004b90:	f7f40d13          	addi	s10,s0,-129
    80004b94:	000cc503          	lbu	a0,0(s9)
    80004b98:	fffc8c93          	addi	s9,s9,-1
    80004b9c:	00000097          	auipc	ra,0x0
    80004ba0:	9f8080e7          	jalr	-1544(ra) # 80004594 <consputc>
    80004ba4:	ff9d18e3          	bne	s10,s9,80004b94 <__printf+0x41c>
    80004ba8:	0100006f          	j	80004bb8 <__printf+0x440>
    80004bac:	00000097          	auipc	ra,0x0
    80004bb0:	9e8080e7          	jalr	-1560(ra) # 80004594 <consputc>
    80004bb4:	000c8493          	mv	s1,s9
    80004bb8:	00094503          	lbu	a0,0(s2)
    80004bbc:	c60510e3          	bnez	a0,8000481c <__printf+0xa4>
    80004bc0:	e40c0ee3          	beqz	s8,80004a1c <__printf+0x2a4>
    80004bc4:	00004517          	auipc	a0,0x4
    80004bc8:	ecc50513          	addi	a0,a0,-308 # 80008a90 <pr>
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	94c080e7          	jalr	-1716(ra) # 80005518 <release>
    80004bd4:	e49ff06f          	j	80004a1c <__printf+0x2a4>
    80004bd8:	f7843783          	ld	a5,-136(s0)
    80004bdc:	03000513          	li	a0,48
    80004be0:	01000d13          	li	s10,16
    80004be4:	00878713          	addi	a4,a5,8
    80004be8:	0007bc83          	ld	s9,0(a5)
    80004bec:	f6e43c23          	sd	a4,-136(s0)
    80004bf0:	00000097          	auipc	ra,0x0
    80004bf4:	9a4080e7          	jalr	-1628(ra) # 80004594 <consputc>
    80004bf8:	07800513          	li	a0,120
    80004bfc:	00000097          	auipc	ra,0x0
    80004c00:	998080e7          	jalr	-1640(ra) # 80004594 <consputc>
    80004c04:	00001d97          	auipc	s11,0x1
    80004c08:	7d4d8d93          	addi	s11,s11,2004 # 800063d8 <digits>
    80004c0c:	03ccd793          	srli	a5,s9,0x3c
    80004c10:	00fd87b3          	add	a5,s11,a5
    80004c14:	0007c503          	lbu	a0,0(a5)
    80004c18:	fffd0d1b          	addiw	s10,s10,-1
    80004c1c:	004c9c93          	slli	s9,s9,0x4
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	974080e7          	jalr	-1676(ra) # 80004594 <consputc>
    80004c28:	fe0d12e3          	bnez	s10,80004c0c <__printf+0x494>
    80004c2c:	f8dff06f          	j	80004bb8 <__printf+0x440>
    80004c30:	f7843783          	ld	a5,-136(s0)
    80004c34:	0007bc83          	ld	s9,0(a5)
    80004c38:	00878793          	addi	a5,a5,8
    80004c3c:	f6f43c23          	sd	a5,-136(s0)
    80004c40:	000c9a63          	bnez	s9,80004c54 <__printf+0x4dc>
    80004c44:	1080006f          	j	80004d4c <__printf+0x5d4>
    80004c48:	001c8c93          	addi	s9,s9,1
    80004c4c:	00000097          	auipc	ra,0x0
    80004c50:	948080e7          	jalr	-1720(ra) # 80004594 <consputc>
    80004c54:	000cc503          	lbu	a0,0(s9)
    80004c58:	fe0518e3          	bnez	a0,80004c48 <__printf+0x4d0>
    80004c5c:	f5dff06f          	j	80004bb8 <__printf+0x440>
    80004c60:	02500513          	li	a0,37
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	930080e7          	jalr	-1744(ra) # 80004594 <consputc>
    80004c6c:	000c8513          	mv	a0,s9
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	924080e7          	jalr	-1756(ra) # 80004594 <consputc>
    80004c78:	f41ff06f          	j	80004bb8 <__printf+0x440>
    80004c7c:	02500513          	li	a0,37
    80004c80:	00000097          	auipc	ra,0x0
    80004c84:	914080e7          	jalr	-1772(ra) # 80004594 <consputc>
    80004c88:	f31ff06f          	j	80004bb8 <__printf+0x440>
    80004c8c:	00030513          	mv	a0,t1
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	7bc080e7          	jalr	1980(ra) # 8000544c <acquire>
    80004c98:	b4dff06f          	j	800047e4 <__printf+0x6c>
    80004c9c:	40c0053b          	negw	a0,a2
    80004ca0:	00a00713          	li	a4,10
    80004ca4:	02e576bb          	remuw	a3,a0,a4
    80004ca8:	00001d97          	auipc	s11,0x1
    80004cac:	730d8d93          	addi	s11,s11,1840 # 800063d8 <digits>
    80004cb0:	ff700593          	li	a1,-9
    80004cb4:	02069693          	slli	a3,a3,0x20
    80004cb8:	0206d693          	srli	a3,a3,0x20
    80004cbc:	00dd86b3          	add	a3,s11,a3
    80004cc0:	0006c683          	lbu	a3,0(a3)
    80004cc4:	02e557bb          	divuw	a5,a0,a4
    80004cc8:	f8d40023          	sb	a3,-128(s0)
    80004ccc:	10b65e63          	bge	a2,a1,80004de8 <__printf+0x670>
    80004cd0:	06300593          	li	a1,99
    80004cd4:	02e7f6bb          	remuw	a3,a5,a4
    80004cd8:	02069693          	slli	a3,a3,0x20
    80004cdc:	0206d693          	srli	a3,a3,0x20
    80004ce0:	00dd86b3          	add	a3,s11,a3
    80004ce4:	0006c683          	lbu	a3,0(a3)
    80004ce8:	02e7d73b          	divuw	a4,a5,a4
    80004cec:	00200793          	li	a5,2
    80004cf0:	f8d400a3          	sb	a3,-127(s0)
    80004cf4:	bca5ece3          	bltu	a1,a0,800048cc <__printf+0x154>
    80004cf8:	ce5ff06f          	j	800049dc <__printf+0x264>
    80004cfc:	40e007bb          	negw	a5,a4
    80004d00:	00001d97          	auipc	s11,0x1
    80004d04:	6d8d8d93          	addi	s11,s11,1752 # 800063d8 <digits>
    80004d08:	00f7f693          	andi	a3,a5,15
    80004d0c:	00dd86b3          	add	a3,s11,a3
    80004d10:	0006c583          	lbu	a1,0(a3)
    80004d14:	ff100613          	li	a2,-15
    80004d18:	0047d69b          	srliw	a3,a5,0x4
    80004d1c:	f8b40023          	sb	a1,-128(s0)
    80004d20:	0047d59b          	srliw	a1,a5,0x4
    80004d24:	0ac75e63          	bge	a4,a2,80004de0 <__printf+0x668>
    80004d28:	00f6f693          	andi	a3,a3,15
    80004d2c:	00dd86b3          	add	a3,s11,a3
    80004d30:	0006c603          	lbu	a2,0(a3)
    80004d34:	00f00693          	li	a3,15
    80004d38:	0087d79b          	srliw	a5,a5,0x8
    80004d3c:	f8c400a3          	sb	a2,-127(s0)
    80004d40:	d8b6e4e3          	bltu	a3,a1,80004ac8 <__printf+0x350>
    80004d44:	00200793          	li	a5,2
    80004d48:	e2dff06f          	j	80004b74 <__printf+0x3fc>
    80004d4c:	00001c97          	auipc	s9,0x1
    80004d50:	66cc8c93          	addi	s9,s9,1644 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80004d54:	02800513          	li	a0,40
    80004d58:	ef1ff06f          	j	80004c48 <__printf+0x4d0>
    80004d5c:	00700793          	li	a5,7
    80004d60:	00600c93          	li	s9,6
    80004d64:	e0dff06f          	j	80004b70 <__printf+0x3f8>
    80004d68:	00700793          	li	a5,7
    80004d6c:	00600c93          	li	s9,6
    80004d70:	c69ff06f          	j	800049d8 <__printf+0x260>
    80004d74:	00300793          	li	a5,3
    80004d78:	00200c93          	li	s9,2
    80004d7c:	c5dff06f          	j	800049d8 <__printf+0x260>
    80004d80:	00300793          	li	a5,3
    80004d84:	00200c93          	li	s9,2
    80004d88:	de9ff06f          	j	80004b70 <__printf+0x3f8>
    80004d8c:	00400793          	li	a5,4
    80004d90:	00300c93          	li	s9,3
    80004d94:	dddff06f          	j	80004b70 <__printf+0x3f8>
    80004d98:	00400793          	li	a5,4
    80004d9c:	00300c93          	li	s9,3
    80004da0:	c39ff06f          	j	800049d8 <__printf+0x260>
    80004da4:	00500793          	li	a5,5
    80004da8:	00400c93          	li	s9,4
    80004dac:	c2dff06f          	j	800049d8 <__printf+0x260>
    80004db0:	00500793          	li	a5,5
    80004db4:	00400c93          	li	s9,4
    80004db8:	db9ff06f          	j	80004b70 <__printf+0x3f8>
    80004dbc:	00600793          	li	a5,6
    80004dc0:	00500c93          	li	s9,5
    80004dc4:	dadff06f          	j	80004b70 <__printf+0x3f8>
    80004dc8:	00600793          	li	a5,6
    80004dcc:	00500c93          	li	s9,5
    80004dd0:	c09ff06f          	j	800049d8 <__printf+0x260>
    80004dd4:	00800793          	li	a5,8
    80004dd8:	00700c93          	li	s9,7
    80004ddc:	bfdff06f          	j	800049d8 <__printf+0x260>
    80004de0:	00100793          	li	a5,1
    80004de4:	d91ff06f          	j	80004b74 <__printf+0x3fc>
    80004de8:	00100793          	li	a5,1
    80004dec:	bf1ff06f          	j	800049dc <__printf+0x264>
    80004df0:	00900793          	li	a5,9
    80004df4:	00800c93          	li	s9,8
    80004df8:	be1ff06f          	j	800049d8 <__printf+0x260>
    80004dfc:	00001517          	auipc	a0,0x1
    80004e00:	5c450513          	addi	a0,a0,1476 # 800063c0 <CONSOLE_STATUS+0x3b0>
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	918080e7          	jalr	-1768(ra) # 8000471c <panic>

0000000080004e0c <printfinit>:
    80004e0c:	fe010113          	addi	sp,sp,-32
    80004e10:	00813823          	sd	s0,16(sp)
    80004e14:	00913423          	sd	s1,8(sp)
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	02010413          	addi	s0,sp,32
    80004e20:	00004497          	auipc	s1,0x4
    80004e24:	c7048493          	addi	s1,s1,-912 # 80008a90 <pr>
    80004e28:	00048513          	mv	a0,s1
    80004e2c:	00001597          	auipc	a1,0x1
    80004e30:	5a458593          	addi	a1,a1,1444 # 800063d0 <CONSOLE_STATUS+0x3c0>
    80004e34:	00000097          	auipc	ra,0x0
    80004e38:	5f4080e7          	jalr	1524(ra) # 80005428 <initlock>
    80004e3c:	01813083          	ld	ra,24(sp)
    80004e40:	01013403          	ld	s0,16(sp)
    80004e44:	0004ac23          	sw	zero,24(s1)
    80004e48:	00813483          	ld	s1,8(sp)
    80004e4c:	02010113          	addi	sp,sp,32
    80004e50:	00008067          	ret

0000000080004e54 <uartinit>:
    80004e54:	ff010113          	addi	sp,sp,-16
    80004e58:	00813423          	sd	s0,8(sp)
    80004e5c:	01010413          	addi	s0,sp,16
    80004e60:	100007b7          	lui	a5,0x10000
    80004e64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004e68:	f8000713          	li	a4,-128
    80004e6c:	00e781a3          	sb	a4,3(a5)
    80004e70:	00300713          	li	a4,3
    80004e74:	00e78023          	sb	a4,0(a5)
    80004e78:	000780a3          	sb	zero,1(a5)
    80004e7c:	00e781a3          	sb	a4,3(a5)
    80004e80:	00700693          	li	a3,7
    80004e84:	00d78123          	sb	a3,2(a5)
    80004e88:	00e780a3          	sb	a4,1(a5)
    80004e8c:	00813403          	ld	s0,8(sp)
    80004e90:	01010113          	addi	sp,sp,16
    80004e94:	00008067          	ret

0000000080004e98 <uartputc>:
    80004e98:	00003797          	auipc	a5,0x3
    80004e9c:	9507a783          	lw	a5,-1712(a5) # 800077e8 <panicked>
    80004ea0:	00078463          	beqz	a5,80004ea8 <uartputc+0x10>
    80004ea4:	0000006f          	j	80004ea4 <uartputc+0xc>
    80004ea8:	fd010113          	addi	sp,sp,-48
    80004eac:	02813023          	sd	s0,32(sp)
    80004eb0:	00913c23          	sd	s1,24(sp)
    80004eb4:	01213823          	sd	s2,16(sp)
    80004eb8:	01313423          	sd	s3,8(sp)
    80004ebc:	02113423          	sd	ra,40(sp)
    80004ec0:	03010413          	addi	s0,sp,48
    80004ec4:	00003917          	auipc	s2,0x3
    80004ec8:	92c90913          	addi	s2,s2,-1748 # 800077f0 <uart_tx_r>
    80004ecc:	00093783          	ld	a5,0(s2)
    80004ed0:	00003497          	auipc	s1,0x3
    80004ed4:	92848493          	addi	s1,s1,-1752 # 800077f8 <uart_tx_w>
    80004ed8:	0004b703          	ld	a4,0(s1)
    80004edc:	02078693          	addi	a3,a5,32
    80004ee0:	00050993          	mv	s3,a0
    80004ee4:	02e69c63          	bne	a3,a4,80004f1c <uartputc+0x84>
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	834080e7          	jalr	-1996(ra) # 8000571c <push_on>
    80004ef0:	00093783          	ld	a5,0(s2)
    80004ef4:	0004b703          	ld	a4,0(s1)
    80004ef8:	02078793          	addi	a5,a5,32
    80004efc:	00e79463          	bne	a5,a4,80004f04 <uartputc+0x6c>
    80004f00:	0000006f          	j	80004f00 <uartputc+0x68>
    80004f04:	00001097          	auipc	ra,0x1
    80004f08:	88c080e7          	jalr	-1908(ra) # 80005790 <pop_on>
    80004f0c:	00093783          	ld	a5,0(s2)
    80004f10:	0004b703          	ld	a4,0(s1)
    80004f14:	02078693          	addi	a3,a5,32
    80004f18:	fce688e3          	beq	a3,a4,80004ee8 <uartputc+0x50>
    80004f1c:	01f77693          	andi	a3,a4,31
    80004f20:	00004597          	auipc	a1,0x4
    80004f24:	b9058593          	addi	a1,a1,-1136 # 80008ab0 <uart_tx_buf>
    80004f28:	00d586b3          	add	a3,a1,a3
    80004f2c:	00170713          	addi	a4,a4,1
    80004f30:	01368023          	sb	s3,0(a3)
    80004f34:	00e4b023          	sd	a4,0(s1)
    80004f38:	10000637          	lui	a2,0x10000
    80004f3c:	02f71063          	bne	a4,a5,80004f5c <uartputc+0xc4>
    80004f40:	0340006f          	j	80004f74 <uartputc+0xdc>
    80004f44:	00074703          	lbu	a4,0(a4)
    80004f48:	00f93023          	sd	a5,0(s2)
    80004f4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004f50:	00093783          	ld	a5,0(s2)
    80004f54:	0004b703          	ld	a4,0(s1)
    80004f58:	00f70e63          	beq	a4,a5,80004f74 <uartputc+0xdc>
    80004f5c:	00564683          	lbu	a3,5(a2)
    80004f60:	01f7f713          	andi	a4,a5,31
    80004f64:	00e58733          	add	a4,a1,a4
    80004f68:	0206f693          	andi	a3,a3,32
    80004f6c:	00178793          	addi	a5,a5,1
    80004f70:	fc069ae3          	bnez	a3,80004f44 <uartputc+0xac>
    80004f74:	02813083          	ld	ra,40(sp)
    80004f78:	02013403          	ld	s0,32(sp)
    80004f7c:	01813483          	ld	s1,24(sp)
    80004f80:	01013903          	ld	s2,16(sp)
    80004f84:	00813983          	ld	s3,8(sp)
    80004f88:	03010113          	addi	sp,sp,48
    80004f8c:	00008067          	ret

0000000080004f90 <uartputc_sync>:
    80004f90:	ff010113          	addi	sp,sp,-16
    80004f94:	00813423          	sd	s0,8(sp)
    80004f98:	01010413          	addi	s0,sp,16
    80004f9c:	00003717          	auipc	a4,0x3
    80004fa0:	84c72703          	lw	a4,-1972(a4) # 800077e8 <panicked>
    80004fa4:	02071663          	bnez	a4,80004fd0 <uartputc_sync+0x40>
    80004fa8:	00050793          	mv	a5,a0
    80004fac:	100006b7          	lui	a3,0x10000
    80004fb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004fb4:	02077713          	andi	a4,a4,32
    80004fb8:	fe070ce3          	beqz	a4,80004fb0 <uartputc_sync+0x20>
    80004fbc:	0ff7f793          	andi	a5,a5,255
    80004fc0:	00f68023          	sb	a5,0(a3)
    80004fc4:	00813403          	ld	s0,8(sp)
    80004fc8:	01010113          	addi	sp,sp,16
    80004fcc:	00008067          	ret
    80004fd0:	0000006f          	j	80004fd0 <uartputc_sync+0x40>

0000000080004fd4 <uartstart>:
    80004fd4:	ff010113          	addi	sp,sp,-16
    80004fd8:	00813423          	sd	s0,8(sp)
    80004fdc:	01010413          	addi	s0,sp,16
    80004fe0:	00003617          	auipc	a2,0x3
    80004fe4:	81060613          	addi	a2,a2,-2032 # 800077f0 <uart_tx_r>
    80004fe8:	00003517          	auipc	a0,0x3
    80004fec:	81050513          	addi	a0,a0,-2032 # 800077f8 <uart_tx_w>
    80004ff0:	00063783          	ld	a5,0(a2)
    80004ff4:	00053703          	ld	a4,0(a0)
    80004ff8:	04f70263          	beq	a4,a5,8000503c <uartstart+0x68>
    80004ffc:	100005b7          	lui	a1,0x10000
    80005000:	00004817          	auipc	a6,0x4
    80005004:	ab080813          	addi	a6,a6,-1360 # 80008ab0 <uart_tx_buf>
    80005008:	01c0006f          	j	80005024 <uartstart+0x50>
    8000500c:	0006c703          	lbu	a4,0(a3)
    80005010:	00f63023          	sd	a5,0(a2)
    80005014:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005018:	00063783          	ld	a5,0(a2)
    8000501c:	00053703          	ld	a4,0(a0)
    80005020:	00f70e63          	beq	a4,a5,8000503c <uartstart+0x68>
    80005024:	01f7f713          	andi	a4,a5,31
    80005028:	00e806b3          	add	a3,a6,a4
    8000502c:	0055c703          	lbu	a4,5(a1)
    80005030:	00178793          	addi	a5,a5,1
    80005034:	02077713          	andi	a4,a4,32
    80005038:	fc071ae3          	bnez	a4,8000500c <uartstart+0x38>
    8000503c:	00813403          	ld	s0,8(sp)
    80005040:	01010113          	addi	sp,sp,16
    80005044:	00008067          	ret

0000000080005048 <uartgetc>:
    80005048:	ff010113          	addi	sp,sp,-16
    8000504c:	00813423          	sd	s0,8(sp)
    80005050:	01010413          	addi	s0,sp,16
    80005054:	10000737          	lui	a4,0x10000
    80005058:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000505c:	0017f793          	andi	a5,a5,1
    80005060:	00078c63          	beqz	a5,80005078 <uartgetc+0x30>
    80005064:	00074503          	lbu	a0,0(a4)
    80005068:	0ff57513          	andi	a0,a0,255
    8000506c:	00813403          	ld	s0,8(sp)
    80005070:	01010113          	addi	sp,sp,16
    80005074:	00008067          	ret
    80005078:	fff00513          	li	a0,-1
    8000507c:	ff1ff06f          	j	8000506c <uartgetc+0x24>

0000000080005080 <uartintr>:
    80005080:	100007b7          	lui	a5,0x10000
    80005084:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005088:	0017f793          	andi	a5,a5,1
    8000508c:	0a078463          	beqz	a5,80005134 <uartintr+0xb4>
    80005090:	fe010113          	addi	sp,sp,-32
    80005094:	00813823          	sd	s0,16(sp)
    80005098:	00913423          	sd	s1,8(sp)
    8000509c:	00113c23          	sd	ra,24(sp)
    800050a0:	02010413          	addi	s0,sp,32
    800050a4:	100004b7          	lui	s1,0x10000
    800050a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800050ac:	0ff57513          	andi	a0,a0,255
    800050b0:	fffff097          	auipc	ra,0xfffff
    800050b4:	534080e7          	jalr	1332(ra) # 800045e4 <consoleintr>
    800050b8:	0054c783          	lbu	a5,5(s1)
    800050bc:	0017f793          	andi	a5,a5,1
    800050c0:	fe0794e3          	bnez	a5,800050a8 <uartintr+0x28>
    800050c4:	00002617          	auipc	a2,0x2
    800050c8:	72c60613          	addi	a2,a2,1836 # 800077f0 <uart_tx_r>
    800050cc:	00002517          	auipc	a0,0x2
    800050d0:	72c50513          	addi	a0,a0,1836 # 800077f8 <uart_tx_w>
    800050d4:	00063783          	ld	a5,0(a2)
    800050d8:	00053703          	ld	a4,0(a0)
    800050dc:	04f70263          	beq	a4,a5,80005120 <uartintr+0xa0>
    800050e0:	100005b7          	lui	a1,0x10000
    800050e4:	00004817          	auipc	a6,0x4
    800050e8:	9cc80813          	addi	a6,a6,-1588 # 80008ab0 <uart_tx_buf>
    800050ec:	01c0006f          	j	80005108 <uartintr+0x88>
    800050f0:	0006c703          	lbu	a4,0(a3)
    800050f4:	00f63023          	sd	a5,0(a2)
    800050f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800050fc:	00063783          	ld	a5,0(a2)
    80005100:	00053703          	ld	a4,0(a0)
    80005104:	00f70e63          	beq	a4,a5,80005120 <uartintr+0xa0>
    80005108:	01f7f713          	andi	a4,a5,31
    8000510c:	00e806b3          	add	a3,a6,a4
    80005110:	0055c703          	lbu	a4,5(a1)
    80005114:	00178793          	addi	a5,a5,1
    80005118:	02077713          	andi	a4,a4,32
    8000511c:	fc071ae3          	bnez	a4,800050f0 <uartintr+0x70>
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	00813483          	ld	s1,8(sp)
    8000512c:	02010113          	addi	sp,sp,32
    80005130:	00008067          	ret
    80005134:	00002617          	auipc	a2,0x2
    80005138:	6bc60613          	addi	a2,a2,1724 # 800077f0 <uart_tx_r>
    8000513c:	00002517          	auipc	a0,0x2
    80005140:	6bc50513          	addi	a0,a0,1724 # 800077f8 <uart_tx_w>
    80005144:	00063783          	ld	a5,0(a2)
    80005148:	00053703          	ld	a4,0(a0)
    8000514c:	04f70263          	beq	a4,a5,80005190 <uartintr+0x110>
    80005150:	100005b7          	lui	a1,0x10000
    80005154:	00004817          	auipc	a6,0x4
    80005158:	95c80813          	addi	a6,a6,-1700 # 80008ab0 <uart_tx_buf>
    8000515c:	01c0006f          	j	80005178 <uartintr+0xf8>
    80005160:	0006c703          	lbu	a4,0(a3)
    80005164:	00f63023          	sd	a5,0(a2)
    80005168:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000516c:	00063783          	ld	a5,0(a2)
    80005170:	00053703          	ld	a4,0(a0)
    80005174:	02f70063          	beq	a4,a5,80005194 <uartintr+0x114>
    80005178:	01f7f713          	andi	a4,a5,31
    8000517c:	00e806b3          	add	a3,a6,a4
    80005180:	0055c703          	lbu	a4,5(a1)
    80005184:	00178793          	addi	a5,a5,1
    80005188:	02077713          	andi	a4,a4,32
    8000518c:	fc071ae3          	bnez	a4,80005160 <uartintr+0xe0>
    80005190:	00008067          	ret
    80005194:	00008067          	ret

0000000080005198 <kinit>:
    80005198:	fc010113          	addi	sp,sp,-64
    8000519c:	02913423          	sd	s1,40(sp)
    800051a0:	fffff7b7          	lui	a5,0xfffff
    800051a4:	00005497          	auipc	s1,0x5
    800051a8:	92b48493          	addi	s1,s1,-1749 # 80009acf <end+0xfff>
    800051ac:	02813823          	sd	s0,48(sp)
    800051b0:	01313c23          	sd	s3,24(sp)
    800051b4:	00f4f4b3          	and	s1,s1,a5
    800051b8:	02113c23          	sd	ra,56(sp)
    800051bc:	03213023          	sd	s2,32(sp)
    800051c0:	01413823          	sd	s4,16(sp)
    800051c4:	01513423          	sd	s5,8(sp)
    800051c8:	04010413          	addi	s0,sp,64
    800051cc:	000017b7          	lui	a5,0x1
    800051d0:	01100993          	li	s3,17
    800051d4:	00f487b3          	add	a5,s1,a5
    800051d8:	01b99993          	slli	s3,s3,0x1b
    800051dc:	06f9e063          	bltu	s3,a5,8000523c <kinit+0xa4>
    800051e0:	00004a97          	auipc	s5,0x4
    800051e4:	8f0a8a93          	addi	s5,s5,-1808 # 80008ad0 <end>
    800051e8:	0754ec63          	bltu	s1,s5,80005260 <kinit+0xc8>
    800051ec:	0734fa63          	bgeu	s1,s3,80005260 <kinit+0xc8>
    800051f0:	00088a37          	lui	s4,0x88
    800051f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800051f8:	00002917          	auipc	s2,0x2
    800051fc:	60890913          	addi	s2,s2,1544 # 80007800 <kmem>
    80005200:	00ca1a13          	slli	s4,s4,0xc
    80005204:	0140006f          	j	80005218 <kinit+0x80>
    80005208:	000017b7          	lui	a5,0x1
    8000520c:	00f484b3          	add	s1,s1,a5
    80005210:	0554e863          	bltu	s1,s5,80005260 <kinit+0xc8>
    80005214:	0534f663          	bgeu	s1,s3,80005260 <kinit+0xc8>
    80005218:	00001637          	lui	a2,0x1
    8000521c:	00100593          	li	a1,1
    80005220:	00048513          	mv	a0,s1
    80005224:	00000097          	auipc	ra,0x0
    80005228:	5e4080e7          	jalr	1508(ra) # 80005808 <__memset>
    8000522c:	00093783          	ld	a5,0(s2)
    80005230:	00f4b023          	sd	a5,0(s1)
    80005234:	00993023          	sd	s1,0(s2)
    80005238:	fd4498e3          	bne	s1,s4,80005208 <kinit+0x70>
    8000523c:	03813083          	ld	ra,56(sp)
    80005240:	03013403          	ld	s0,48(sp)
    80005244:	02813483          	ld	s1,40(sp)
    80005248:	02013903          	ld	s2,32(sp)
    8000524c:	01813983          	ld	s3,24(sp)
    80005250:	01013a03          	ld	s4,16(sp)
    80005254:	00813a83          	ld	s5,8(sp)
    80005258:	04010113          	addi	sp,sp,64
    8000525c:	00008067          	ret
    80005260:	00001517          	auipc	a0,0x1
    80005264:	19050513          	addi	a0,a0,400 # 800063f0 <digits+0x18>
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	4b4080e7          	jalr	1204(ra) # 8000471c <panic>

0000000080005270 <freerange>:
    80005270:	fc010113          	addi	sp,sp,-64
    80005274:	000017b7          	lui	a5,0x1
    80005278:	02913423          	sd	s1,40(sp)
    8000527c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005280:	009504b3          	add	s1,a0,s1
    80005284:	fffff537          	lui	a0,0xfffff
    80005288:	02813823          	sd	s0,48(sp)
    8000528c:	02113c23          	sd	ra,56(sp)
    80005290:	03213023          	sd	s2,32(sp)
    80005294:	01313c23          	sd	s3,24(sp)
    80005298:	01413823          	sd	s4,16(sp)
    8000529c:	01513423          	sd	s5,8(sp)
    800052a0:	01613023          	sd	s6,0(sp)
    800052a4:	04010413          	addi	s0,sp,64
    800052a8:	00a4f4b3          	and	s1,s1,a0
    800052ac:	00f487b3          	add	a5,s1,a5
    800052b0:	06f5e463          	bltu	a1,a5,80005318 <freerange+0xa8>
    800052b4:	00004a97          	auipc	s5,0x4
    800052b8:	81ca8a93          	addi	s5,s5,-2020 # 80008ad0 <end>
    800052bc:	0954e263          	bltu	s1,s5,80005340 <freerange+0xd0>
    800052c0:	01100993          	li	s3,17
    800052c4:	01b99993          	slli	s3,s3,0x1b
    800052c8:	0734fc63          	bgeu	s1,s3,80005340 <freerange+0xd0>
    800052cc:	00058a13          	mv	s4,a1
    800052d0:	00002917          	auipc	s2,0x2
    800052d4:	53090913          	addi	s2,s2,1328 # 80007800 <kmem>
    800052d8:	00002b37          	lui	s6,0x2
    800052dc:	0140006f          	j	800052f0 <freerange+0x80>
    800052e0:	000017b7          	lui	a5,0x1
    800052e4:	00f484b3          	add	s1,s1,a5
    800052e8:	0554ec63          	bltu	s1,s5,80005340 <freerange+0xd0>
    800052ec:	0534fa63          	bgeu	s1,s3,80005340 <freerange+0xd0>
    800052f0:	00001637          	lui	a2,0x1
    800052f4:	00100593          	li	a1,1
    800052f8:	00048513          	mv	a0,s1
    800052fc:	00000097          	auipc	ra,0x0
    80005300:	50c080e7          	jalr	1292(ra) # 80005808 <__memset>
    80005304:	00093703          	ld	a4,0(s2)
    80005308:	016487b3          	add	a5,s1,s6
    8000530c:	00e4b023          	sd	a4,0(s1)
    80005310:	00993023          	sd	s1,0(s2)
    80005314:	fcfa76e3          	bgeu	s4,a5,800052e0 <freerange+0x70>
    80005318:	03813083          	ld	ra,56(sp)
    8000531c:	03013403          	ld	s0,48(sp)
    80005320:	02813483          	ld	s1,40(sp)
    80005324:	02013903          	ld	s2,32(sp)
    80005328:	01813983          	ld	s3,24(sp)
    8000532c:	01013a03          	ld	s4,16(sp)
    80005330:	00813a83          	ld	s5,8(sp)
    80005334:	00013b03          	ld	s6,0(sp)
    80005338:	04010113          	addi	sp,sp,64
    8000533c:	00008067          	ret
    80005340:	00001517          	auipc	a0,0x1
    80005344:	0b050513          	addi	a0,a0,176 # 800063f0 <digits+0x18>
    80005348:	fffff097          	auipc	ra,0xfffff
    8000534c:	3d4080e7          	jalr	980(ra) # 8000471c <panic>

0000000080005350 <kfree>:
    80005350:	fe010113          	addi	sp,sp,-32
    80005354:	00813823          	sd	s0,16(sp)
    80005358:	00113c23          	sd	ra,24(sp)
    8000535c:	00913423          	sd	s1,8(sp)
    80005360:	02010413          	addi	s0,sp,32
    80005364:	03451793          	slli	a5,a0,0x34
    80005368:	04079c63          	bnez	a5,800053c0 <kfree+0x70>
    8000536c:	00003797          	auipc	a5,0x3
    80005370:	76478793          	addi	a5,a5,1892 # 80008ad0 <end>
    80005374:	00050493          	mv	s1,a0
    80005378:	04f56463          	bltu	a0,a5,800053c0 <kfree+0x70>
    8000537c:	01100793          	li	a5,17
    80005380:	01b79793          	slli	a5,a5,0x1b
    80005384:	02f57e63          	bgeu	a0,a5,800053c0 <kfree+0x70>
    80005388:	00001637          	lui	a2,0x1
    8000538c:	00100593          	li	a1,1
    80005390:	00000097          	auipc	ra,0x0
    80005394:	478080e7          	jalr	1144(ra) # 80005808 <__memset>
    80005398:	00002797          	auipc	a5,0x2
    8000539c:	46878793          	addi	a5,a5,1128 # 80007800 <kmem>
    800053a0:	0007b703          	ld	a4,0(a5)
    800053a4:	01813083          	ld	ra,24(sp)
    800053a8:	01013403          	ld	s0,16(sp)
    800053ac:	00e4b023          	sd	a4,0(s1)
    800053b0:	0097b023          	sd	s1,0(a5)
    800053b4:	00813483          	ld	s1,8(sp)
    800053b8:	02010113          	addi	sp,sp,32
    800053bc:	00008067          	ret
    800053c0:	00001517          	auipc	a0,0x1
    800053c4:	03050513          	addi	a0,a0,48 # 800063f0 <digits+0x18>
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	354080e7          	jalr	852(ra) # 8000471c <panic>

00000000800053d0 <kalloc>:
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00813823          	sd	s0,16(sp)
    800053d8:	00913423          	sd	s1,8(sp)
    800053dc:	00113c23          	sd	ra,24(sp)
    800053e0:	02010413          	addi	s0,sp,32
    800053e4:	00002797          	auipc	a5,0x2
    800053e8:	41c78793          	addi	a5,a5,1052 # 80007800 <kmem>
    800053ec:	0007b483          	ld	s1,0(a5)
    800053f0:	02048063          	beqz	s1,80005410 <kalloc+0x40>
    800053f4:	0004b703          	ld	a4,0(s1)
    800053f8:	00001637          	lui	a2,0x1
    800053fc:	00500593          	li	a1,5
    80005400:	00048513          	mv	a0,s1
    80005404:	00e7b023          	sd	a4,0(a5)
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	400080e7          	jalr	1024(ra) # 80005808 <__memset>
    80005410:	01813083          	ld	ra,24(sp)
    80005414:	01013403          	ld	s0,16(sp)
    80005418:	00048513          	mv	a0,s1
    8000541c:	00813483          	ld	s1,8(sp)
    80005420:	02010113          	addi	sp,sp,32
    80005424:	00008067          	ret

0000000080005428 <initlock>:
    80005428:	ff010113          	addi	sp,sp,-16
    8000542c:	00813423          	sd	s0,8(sp)
    80005430:	01010413          	addi	s0,sp,16
    80005434:	00813403          	ld	s0,8(sp)
    80005438:	00b53423          	sd	a1,8(a0)
    8000543c:	00052023          	sw	zero,0(a0)
    80005440:	00053823          	sd	zero,16(a0)
    80005444:	01010113          	addi	sp,sp,16
    80005448:	00008067          	ret

000000008000544c <acquire>:
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00813823          	sd	s0,16(sp)
    80005454:	00913423          	sd	s1,8(sp)
    80005458:	00113c23          	sd	ra,24(sp)
    8000545c:	01213023          	sd	s2,0(sp)
    80005460:	02010413          	addi	s0,sp,32
    80005464:	00050493          	mv	s1,a0
    80005468:	10002973          	csrr	s2,sstatus
    8000546c:	100027f3          	csrr	a5,sstatus
    80005470:	ffd7f793          	andi	a5,a5,-3
    80005474:	10079073          	csrw	sstatus,a5
    80005478:	fffff097          	auipc	ra,0xfffff
    8000547c:	8ec080e7          	jalr	-1812(ra) # 80003d64 <mycpu>
    80005480:	07852783          	lw	a5,120(a0)
    80005484:	06078e63          	beqz	a5,80005500 <acquire+0xb4>
    80005488:	fffff097          	auipc	ra,0xfffff
    8000548c:	8dc080e7          	jalr	-1828(ra) # 80003d64 <mycpu>
    80005490:	07852783          	lw	a5,120(a0)
    80005494:	0004a703          	lw	a4,0(s1)
    80005498:	0017879b          	addiw	a5,a5,1
    8000549c:	06f52c23          	sw	a5,120(a0)
    800054a0:	04071063          	bnez	a4,800054e0 <acquire+0x94>
    800054a4:	00100713          	li	a4,1
    800054a8:	00070793          	mv	a5,a4
    800054ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800054b0:	0007879b          	sext.w	a5,a5
    800054b4:	fe079ae3          	bnez	a5,800054a8 <acquire+0x5c>
    800054b8:	0ff0000f          	fence
    800054bc:	fffff097          	auipc	ra,0xfffff
    800054c0:	8a8080e7          	jalr	-1880(ra) # 80003d64 <mycpu>
    800054c4:	01813083          	ld	ra,24(sp)
    800054c8:	01013403          	ld	s0,16(sp)
    800054cc:	00a4b823          	sd	a0,16(s1)
    800054d0:	00013903          	ld	s2,0(sp)
    800054d4:	00813483          	ld	s1,8(sp)
    800054d8:	02010113          	addi	sp,sp,32
    800054dc:	00008067          	ret
    800054e0:	0104b903          	ld	s2,16(s1)
    800054e4:	fffff097          	auipc	ra,0xfffff
    800054e8:	880080e7          	jalr	-1920(ra) # 80003d64 <mycpu>
    800054ec:	faa91ce3          	bne	s2,a0,800054a4 <acquire+0x58>
    800054f0:	00001517          	auipc	a0,0x1
    800054f4:	f0850513          	addi	a0,a0,-248 # 800063f8 <digits+0x20>
    800054f8:	fffff097          	auipc	ra,0xfffff
    800054fc:	224080e7          	jalr	548(ra) # 8000471c <panic>
    80005500:	00195913          	srli	s2,s2,0x1
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	860080e7          	jalr	-1952(ra) # 80003d64 <mycpu>
    8000550c:	00197913          	andi	s2,s2,1
    80005510:	07252e23          	sw	s2,124(a0)
    80005514:	f75ff06f          	j	80005488 <acquire+0x3c>

0000000080005518 <release>:
    80005518:	fe010113          	addi	sp,sp,-32
    8000551c:	00813823          	sd	s0,16(sp)
    80005520:	00113c23          	sd	ra,24(sp)
    80005524:	00913423          	sd	s1,8(sp)
    80005528:	01213023          	sd	s2,0(sp)
    8000552c:	02010413          	addi	s0,sp,32
    80005530:	00052783          	lw	a5,0(a0)
    80005534:	00079a63          	bnez	a5,80005548 <release+0x30>
    80005538:	00001517          	auipc	a0,0x1
    8000553c:	ec850513          	addi	a0,a0,-312 # 80006400 <digits+0x28>
    80005540:	fffff097          	auipc	ra,0xfffff
    80005544:	1dc080e7          	jalr	476(ra) # 8000471c <panic>
    80005548:	01053903          	ld	s2,16(a0)
    8000554c:	00050493          	mv	s1,a0
    80005550:	fffff097          	auipc	ra,0xfffff
    80005554:	814080e7          	jalr	-2028(ra) # 80003d64 <mycpu>
    80005558:	fea910e3          	bne	s2,a0,80005538 <release+0x20>
    8000555c:	0004b823          	sd	zero,16(s1)
    80005560:	0ff0000f          	fence
    80005564:	0f50000f          	fence	iorw,ow
    80005568:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000556c:	ffffe097          	auipc	ra,0xffffe
    80005570:	7f8080e7          	jalr	2040(ra) # 80003d64 <mycpu>
    80005574:	100027f3          	csrr	a5,sstatus
    80005578:	0027f793          	andi	a5,a5,2
    8000557c:	04079a63          	bnez	a5,800055d0 <release+0xb8>
    80005580:	07852783          	lw	a5,120(a0)
    80005584:	02f05e63          	blez	a5,800055c0 <release+0xa8>
    80005588:	fff7871b          	addiw	a4,a5,-1
    8000558c:	06e52c23          	sw	a4,120(a0)
    80005590:	00071c63          	bnez	a4,800055a8 <release+0x90>
    80005594:	07c52783          	lw	a5,124(a0)
    80005598:	00078863          	beqz	a5,800055a8 <release+0x90>
    8000559c:	100027f3          	csrr	a5,sstatus
    800055a0:	0027e793          	ori	a5,a5,2
    800055a4:	10079073          	csrw	sstatus,a5
    800055a8:	01813083          	ld	ra,24(sp)
    800055ac:	01013403          	ld	s0,16(sp)
    800055b0:	00813483          	ld	s1,8(sp)
    800055b4:	00013903          	ld	s2,0(sp)
    800055b8:	02010113          	addi	sp,sp,32
    800055bc:	00008067          	ret
    800055c0:	00001517          	auipc	a0,0x1
    800055c4:	e6050513          	addi	a0,a0,-416 # 80006420 <digits+0x48>
    800055c8:	fffff097          	auipc	ra,0xfffff
    800055cc:	154080e7          	jalr	340(ra) # 8000471c <panic>
    800055d0:	00001517          	auipc	a0,0x1
    800055d4:	e3850513          	addi	a0,a0,-456 # 80006408 <digits+0x30>
    800055d8:	fffff097          	auipc	ra,0xfffff
    800055dc:	144080e7          	jalr	324(ra) # 8000471c <panic>

00000000800055e0 <holding>:
    800055e0:	00052783          	lw	a5,0(a0)
    800055e4:	00079663          	bnez	a5,800055f0 <holding+0x10>
    800055e8:	00000513          	li	a0,0
    800055ec:	00008067          	ret
    800055f0:	fe010113          	addi	sp,sp,-32
    800055f4:	00813823          	sd	s0,16(sp)
    800055f8:	00913423          	sd	s1,8(sp)
    800055fc:	00113c23          	sd	ra,24(sp)
    80005600:	02010413          	addi	s0,sp,32
    80005604:	01053483          	ld	s1,16(a0)
    80005608:	ffffe097          	auipc	ra,0xffffe
    8000560c:	75c080e7          	jalr	1884(ra) # 80003d64 <mycpu>
    80005610:	01813083          	ld	ra,24(sp)
    80005614:	01013403          	ld	s0,16(sp)
    80005618:	40a48533          	sub	a0,s1,a0
    8000561c:	00153513          	seqz	a0,a0
    80005620:	00813483          	ld	s1,8(sp)
    80005624:	02010113          	addi	sp,sp,32
    80005628:	00008067          	ret

000000008000562c <push_off>:
    8000562c:	fe010113          	addi	sp,sp,-32
    80005630:	00813823          	sd	s0,16(sp)
    80005634:	00113c23          	sd	ra,24(sp)
    80005638:	00913423          	sd	s1,8(sp)
    8000563c:	02010413          	addi	s0,sp,32
    80005640:	100024f3          	csrr	s1,sstatus
    80005644:	100027f3          	csrr	a5,sstatus
    80005648:	ffd7f793          	andi	a5,a5,-3
    8000564c:	10079073          	csrw	sstatus,a5
    80005650:	ffffe097          	auipc	ra,0xffffe
    80005654:	714080e7          	jalr	1812(ra) # 80003d64 <mycpu>
    80005658:	07852783          	lw	a5,120(a0)
    8000565c:	02078663          	beqz	a5,80005688 <push_off+0x5c>
    80005660:	ffffe097          	auipc	ra,0xffffe
    80005664:	704080e7          	jalr	1796(ra) # 80003d64 <mycpu>
    80005668:	07852783          	lw	a5,120(a0)
    8000566c:	01813083          	ld	ra,24(sp)
    80005670:	01013403          	ld	s0,16(sp)
    80005674:	0017879b          	addiw	a5,a5,1
    80005678:	06f52c23          	sw	a5,120(a0)
    8000567c:	00813483          	ld	s1,8(sp)
    80005680:	02010113          	addi	sp,sp,32
    80005684:	00008067          	ret
    80005688:	0014d493          	srli	s1,s1,0x1
    8000568c:	ffffe097          	auipc	ra,0xffffe
    80005690:	6d8080e7          	jalr	1752(ra) # 80003d64 <mycpu>
    80005694:	0014f493          	andi	s1,s1,1
    80005698:	06952e23          	sw	s1,124(a0)
    8000569c:	fc5ff06f          	j	80005660 <push_off+0x34>

00000000800056a0 <pop_off>:
    800056a0:	ff010113          	addi	sp,sp,-16
    800056a4:	00813023          	sd	s0,0(sp)
    800056a8:	00113423          	sd	ra,8(sp)
    800056ac:	01010413          	addi	s0,sp,16
    800056b0:	ffffe097          	auipc	ra,0xffffe
    800056b4:	6b4080e7          	jalr	1716(ra) # 80003d64 <mycpu>
    800056b8:	100027f3          	csrr	a5,sstatus
    800056bc:	0027f793          	andi	a5,a5,2
    800056c0:	04079663          	bnez	a5,8000570c <pop_off+0x6c>
    800056c4:	07852783          	lw	a5,120(a0)
    800056c8:	02f05a63          	blez	a5,800056fc <pop_off+0x5c>
    800056cc:	fff7871b          	addiw	a4,a5,-1
    800056d0:	06e52c23          	sw	a4,120(a0)
    800056d4:	00071c63          	bnez	a4,800056ec <pop_off+0x4c>
    800056d8:	07c52783          	lw	a5,124(a0)
    800056dc:	00078863          	beqz	a5,800056ec <pop_off+0x4c>
    800056e0:	100027f3          	csrr	a5,sstatus
    800056e4:	0027e793          	ori	a5,a5,2
    800056e8:	10079073          	csrw	sstatus,a5
    800056ec:	00813083          	ld	ra,8(sp)
    800056f0:	00013403          	ld	s0,0(sp)
    800056f4:	01010113          	addi	sp,sp,16
    800056f8:	00008067          	ret
    800056fc:	00001517          	auipc	a0,0x1
    80005700:	d2450513          	addi	a0,a0,-732 # 80006420 <digits+0x48>
    80005704:	fffff097          	auipc	ra,0xfffff
    80005708:	018080e7          	jalr	24(ra) # 8000471c <panic>
    8000570c:	00001517          	auipc	a0,0x1
    80005710:	cfc50513          	addi	a0,a0,-772 # 80006408 <digits+0x30>
    80005714:	fffff097          	auipc	ra,0xfffff
    80005718:	008080e7          	jalr	8(ra) # 8000471c <panic>

000000008000571c <push_on>:
    8000571c:	fe010113          	addi	sp,sp,-32
    80005720:	00813823          	sd	s0,16(sp)
    80005724:	00113c23          	sd	ra,24(sp)
    80005728:	00913423          	sd	s1,8(sp)
    8000572c:	02010413          	addi	s0,sp,32
    80005730:	100024f3          	csrr	s1,sstatus
    80005734:	100027f3          	csrr	a5,sstatus
    80005738:	0027e793          	ori	a5,a5,2
    8000573c:	10079073          	csrw	sstatus,a5
    80005740:	ffffe097          	auipc	ra,0xffffe
    80005744:	624080e7          	jalr	1572(ra) # 80003d64 <mycpu>
    80005748:	07852783          	lw	a5,120(a0)
    8000574c:	02078663          	beqz	a5,80005778 <push_on+0x5c>
    80005750:	ffffe097          	auipc	ra,0xffffe
    80005754:	614080e7          	jalr	1556(ra) # 80003d64 <mycpu>
    80005758:	07852783          	lw	a5,120(a0)
    8000575c:	01813083          	ld	ra,24(sp)
    80005760:	01013403          	ld	s0,16(sp)
    80005764:	0017879b          	addiw	a5,a5,1
    80005768:	06f52c23          	sw	a5,120(a0)
    8000576c:	00813483          	ld	s1,8(sp)
    80005770:	02010113          	addi	sp,sp,32
    80005774:	00008067          	ret
    80005778:	0014d493          	srli	s1,s1,0x1
    8000577c:	ffffe097          	auipc	ra,0xffffe
    80005780:	5e8080e7          	jalr	1512(ra) # 80003d64 <mycpu>
    80005784:	0014f493          	andi	s1,s1,1
    80005788:	06952e23          	sw	s1,124(a0)
    8000578c:	fc5ff06f          	j	80005750 <push_on+0x34>

0000000080005790 <pop_on>:
    80005790:	ff010113          	addi	sp,sp,-16
    80005794:	00813023          	sd	s0,0(sp)
    80005798:	00113423          	sd	ra,8(sp)
    8000579c:	01010413          	addi	s0,sp,16
    800057a0:	ffffe097          	auipc	ra,0xffffe
    800057a4:	5c4080e7          	jalr	1476(ra) # 80003d64 <mycpu>
    800057a8:	100027f3          	csrr	a5,sstatus
    800057ac:	0027f793          	andi	a5,a5,2
    800057b0:	04078463          	beqz	a5,800057f8 <pop_on+0x68>
    800057b4:	07852783          	lw	a5,120(a0)
    800057b8:	02f05863          	blez	a5,800057e8 <pop_on+0x58>
    800057bc:	fff7879b          	addiw	a5,a5,-1
    800057c0:	06f52c23          	sw	a5,120(a0)
    800057c4:	07853783          	ld	a5,120(a0)
    800057c8:	00079863          	bnez	a5,800057d8 <pop_on+0x48>
    800057cc:	100027f3          	csrr	a5,sstatus
    800057d0:	ffd7f793          	andi	a5,a5,-3
    800057d4:	10079073          	csrw	sstatus,a5
    800057d8:	00813083          	ld	ra,8(sp)
    800057dc:	00013403          	ld	s0,0(sp)
    800057e0:	01010113          	addi	sp,sp,16
    800057e4:	00008067          	ret
    800057e8:	00001517          	auipc	a0,0x1
    800057ec:	c6050513          	addi	a0,a0,-928 # 80006448 <digits+0x70>
    800057f0:	fffff097          	auipc	ra,0xfffff
    800057f4:	f2c080e7          	jalr	-212(ra) # 8000471c <panic>
    800057f8:	00001517          	auipc	a0,0x1
    800057fc:	c3050513          	addi	a0,a0,-976 # 80006428 <digits+0x50>
    80005800:	fffff097          	auipc	ra,0xfffff
    80005804:	f1c080e7          	jalr	-228(ra) # 8000471c <panic>

0000000080005808 <__memset>:
    80005808:	ff010113          	addi	sp,sp,-16
    8000580c:	00813423          	sd	s0,8(sp)
    80005810:	01010413          	addi	s0,sp,16
    80005814:	1a060e63          	beqz	a2,800059d0 <__memset+0x1c8>
    80005818:	40a007b3          	neg	a5,a0
    8000581c:	0077f793          	andi	a5,a5,7
    80005820:	00778693          	addi	a3,a5,7
    80005824:	00b00813          	li	a6,11
    80005828:	0ff5f593          	andi	a1,a1,255
    8000582c:	fff6071b          	addiw	a4,a2,-1
    80005830:	1b06e663          	bltu	a3,a6,800059dc <__memset+0x1d4>
    80005834:	1cd76463          	bltu	a4,a3,800059fc <__memset+0x1f4>
    80005838:	1a078e63          	beqz	a5,800059f4 <__memset+0x1ec>
    8000583c:	00b50023          	sb	a1,0(a0)
    80005840:	00100713          	li	a4,1
    80005844:	1ae78463          	beq	a5,a4,800059ec <__memset+0x1e4>
    80005848:	00b500a3          	sb	a1,1(a0)
    8000584c:	00200713          	li	a4,2
    80005850:	1ae78a63          	beq	a5,a4,80005a04 <__memset+0x1fc>
    80005854:	00b50123          	sb	a1,2(a0)
    80005858:	00300713          	li	a4,3
    8000585c:	18e78463          	beq	a5,a4,800059e4 <__memset+0x1dc>
    80005860:	00b501a3          	sb	a1,3(a0)
    80005864:	00400713          	li	a4,4
    80005868:	1ae78263          	beq	a5,a4,80005a0c <__memset+0x204>
    8000586c:	00b50223          	sb	a1,4(a0)
    80005870:	00500713          	li	a4,5
    80005874:	1ae78063          	beq	a5,a4,80005a14 <__memset+0x20c>
    80005878:	00b502a3          	sb	a1,5(a0)
    8000587c:	00700713          	li	a4,7
    80005880:	18e79e63          	bne	a5,a4,80005a1c <__memset+0x214>
    80005884:	00b50323          	sb	a1,6(a0)
    80005888:	00700e93          	li	t4,7
    8000588c:	00859713          	slli	a4,a1,0x8
    80005890:	00e5e733          	or	a4,a1,a4
    80005894:	01059e13          	slli	t3,a1,0x10
    80005898:	01c76e33          	or	t3,a4,t3
    8000589c:	01859313          	slli	t1,a1,0x18
    800058a0:	006e6333          	or	t1,t3,t1
    800058a4:	02059893          	slli	a7,a1,0x20
    800058a8:	40f60e3b          	subw	t3,a2,a5
    800058ac:	011368b3          	or	a7,t1,a7
    800058b0:	02859813          	slli	a6,a1,0x28
    800058b4:	0108e833          	or	a6,a7,a6
    800058b8:	03059693          	slli	a3,a1,0x30
    800058bc:	003e589b          	srliw	a7,t3,0x3
    800058c0:	00d866b3          	or	a3,a6,a3
    800058c4:	03859713          	slli	a4,a1,0x38
    800058c8:	00389813          	slli	a6,a7,0x3
    800058cc:	00f507b3          	add	a5,a0,a5
    800058d0:	00e6e733          	or	a4,a3,a4
    800058d4:	000e089b          	sext.w	a7,t3
    800058d8:	00f806b3          	add	a3,a6,a5
    800058dc:	00e7b023          	sd	a4,0(a5)
    800058e0:	00878793          	addi	a5,a5,8
    800058e4:	fed79ce3          	bne	a5,a3,800058dc <__memset+0xd4>
    800058e8:	ff8e7793          	andi	a5,t3,-8
    800058ec:	0007871b          	sext.w	a4,a5
    800058f0:	01d787bb          	addw	a5,a5,t4
    800058f4:	0ce88e63          	beq	a7,a4,800059d0 <__memset+0x1c8>
    800058f8:	00f50733          	add	a4,a0,a5
    800058fc:	00b70023          	sb	a1,0(a4)
    80005900:	0017871b          	addiw	a4,a5,1
    80005904:	0cc77663          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005908:	00e50733          	add	a4,a0,a4
    8000590c:	00b70023          	sb	a1,0(a4)
    80005910:	0027871b          	addiw	a4,a5,2
    80005914:	0ac77e63          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005918:	00e50733          	add	a4,a0,a4
    8000591c:	00b70023          	sb	a1,0(a4)
    80005920:	0037871b          	addiw	a4,a5,3
    80005924:	0ac77663          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005928:	00e50733          	add	a4,a0,a4
    8000592c:	00b70023          	sb	a1,0(a4)
    80005930:	0047871b          	addiw	a4,a5,4
    80005934:	08c77e63          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005938:	00e50733          	add	a4,a0,a4
    8000593c:	00b70023          	sb	a1,0(a4)
    80005940:	0057871b          	addiw	a4,a5,5
    80005944:	08c77663          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005948:	00e50733          	add	a4,a0,a4
    8000594c:	00b70023          	sb	a1,0(a4)
    80005950:	0067871b          	addiw	a4,a5,6
    80005954:	06c77e63          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005958:	00e50733          	add	a4,a0,a4
    8000595c:	00b70023          	sb	a1,0(a4)
    80005960:	0077871b          	addiw	a4,a5,7
    80005964:	06c77663          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005968:	00e50733          	add	a4,a0,a4
    8000596c:	00b70023          	sb	a1,0(a4)
    80005970:	0087871b          	addiw	a4,a5,8
    80005974:	04c77e63          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005978:	00e50733          	add	a4,a0,a4
    8000597c:	00b70023          	sb	a1,0(a4)
    80005980:	0097871b          	addiw	a4,a5,9
    80005984:	04c77663          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005988:	00e50733          	add	a4,a0,a4
    8000598c:	00b70023          	sb	a1,0(a4)
    80005990:	00a7871b          	addiw	a4,a5,10
    80005994:	02c77e63          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    80005998:	00e50733          	add	a4,a0,a4
    8000599c:	00b70023          	sb	a1,0(a4)
    800059a0:	00b7871b          	addiw	a4,a5,11
    800059a4:	02c77663          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    800059a8:	00e50733          	add	a4,a0,a4
    800059ac:	00b70023          	sb	a1,0(a4)
    800059b0:	00c7871b          	addiw	a4,a5,12
    800059b4:	00c77e63          	bgeu	a4,a2,800059d0 <__memset+0x1c8>
    800059b8:	00e50733          	add	a4,a0,a4
    800059bc:	00b70023          	sb	a1,0(a4)
    800059c0:	00d7879b          	addiw	a5,a5,13
    800059c4:	00c7f663          	bgeu	a5,a2,800059d0 <__memset+0x1c8>
    800059c8:	00f507b3          	add	a5,a0,a5
    800059cc:	00b78023          	sb	a1,0(a5)
    800059d0:	00813403          	ld	s0,8(sp)
    800059d4:	01010113          	addi	sp,sp,16
    800059d8:	00008067          	ret
    800059dc:	00b00693          	li	a3,11
    800059e0:	e55ff06f          	j	80005834 <__memset+0x2c>
    800059e4:	00300e93          	li	t4,3
    800059e8:	ea5ff06f          	j	8000588c <__memset+0x84>
    800059ec:	00100e93          	li	t4,1
    800059f0:	e9dff06f          	j	8000588c <__memset+0x84>
    800059f4:	00000e93          	li	t4,0
    800059f8:	e95ff06f          	j	8000588c <__memset+0x84>
    800059fc:	00000793          	li	a5,0
    80005a00:	ef9ff06f          	j	800058f8 <__memset+0xf0>
    80005a04:	00200e93          	li	t4,2
    80005a08:	e85ff06f          	j	8000588c <__memset+0x84>
    80005a0c:	00400e93          	li	t4,4
    80005a10:	e7dff06f          	j	8000588c <__memset+0x84>
    80005a14:	00500e93          	li	t4,5
    80005a18:	e75ff06f          	j	8000588c <__memset+0x84>
    80005a1c:	00600e93          	li	t4,6
    80005a20:	e6dff06f          	j	8000588c <__memset+0x84>

0000000080005a24 <__memmove>:
    80005a24:	ff010113          	addi	sp,sp,-16
    80005a28:	00813423          	sd	s0,8(sp)
    80005a2c:	01010413          	addi	s0,sp,16
    80005a30:	0e060863          	beqz	a2,80005b20 <__memmove+0xfc>
    80005a34:	fff6069b          	addiw	a3,a2,-1
    80005a38:	0006881b          	sext.w	a6,a3
    80005a3c:	0ea5e863          	bltu	a1,a0,80005b2c <__memmove+0x108>
    80005a40:	00758713          	addi	a4,a1,7
    80005a44:	00a5e7b3          	or	a5,a1,a0
    80005a48:	40a70733          	sub	a4,a4,a0
    80005a4c:	0077f793          	andi	a5,a5,7
    80005a50:	00f73713          	sltiu	a4,a4,15
    80005a54:	00174713          	xori	a4,a4,1
    80005a58:	0017b793          	seqz	a5,a5
    80005a5c:	00e7f7b3          	and	a5,a5,a4
    80005a60:	10078863          	beqz	a5,80005b70 <__memmove+0x14c>
    80005a64:	00900793          	li	a5,9
    80005a68:	1107f463          	bgeu	a5,a6,80005b70 <__memmove+0x14c>
    80005a6c:	0036581b          	srliw	a6,a2,0x3
    80005a70:	fff8081b          	addiw	a6,a6,-1
    80005a74:	02081813          	slli	a6,a6,0x20
    80005a78:	01d85893          	srli	a7,a6,0x1d
    80005a7c:	00858813          	addi	a6,a1,8
    80005a80:	00058793          	mv	a5,a1
    80005a84:	00050713          	mv	a4,a0
    80005a88:	01088833          	add	a6,a7,a6
    80005a8c:	0007b883          	ld	a7,0(a5)
    80005a90:	00878793          	addi	a5,a5,8
    80005a94:	00870713          	addi	a4,a4,8
    80005a98:	ff173c23          	sd	a7,-8(a4)
    80005a9c:	ff0798e3          	bne	a5,a6,80005a8c <__memmove+0x68>
    80005aa0:	ff867713          	andi	a4,a2,-8
    80005aa4:	02071793          	slli	a5,a4,0x20
    80005aa8:	0207d793          	srli	a5,a5,0x20
    80005aac:	00f585b3          	add	a1,a1,a5
    80005ab0:	40e686bb          	subw	a3,a3,a4
    80005ab4:	00f507b3          	add	a5,a0,a5
    80005ab8:	06e60463          	beq	a2,a4,80005b20 <__memmove+0xfc>
    80005abc:	0005c703          	lbu	a4,0(a1)
    80005ac0:	00e78023          	sb	a4,0(a5)
    80005ac4:	04068e63          	beqz	a3,80005b20 <__memmove+0xfc>
    80005ac8:	0015c603          	lbu	a2,1(a1)
    80005acc:	00100713          	li	a4,1
    80005ad0:	00c780a3          	sb	a2,1(a5)
    80005ad4:	04e68663          	beq	a3,a4,80005b20 <__memmove+0xfc>
    80005ad8:	0025c603          	lbu	a2,2(a1)
    80005adc:	00200713          	li	a4,2
    80005ae0:	00c78123          	sb	a2,2(a5)
    80005ae4:	02e68e63          	beq	a3,a4,80005b20 <__memmove+0xfc>
    80005ae8:	0035c603          	lbu	a2,3(a1)
    80005aec:	00300713          	li	a4,3
    80005af0:	00c781a3          	sb	a2,3(a5)
    80005af4:	02e68663          	beq	a3,a4,80005b20 <__memmove+0xfc>
    80005af8:	0045c603          	lbu	a2,4(a1)
    80005afc:	00400713          	li	a4,4
    80005b00:	00c78223          	sb	a2,4(a5)
    80005b04:	00e68e63          	beq	a3,a4,80005b20 <__memmove+0xfc>
    80005b08:	0055c603          	lbu	a2,5(a1)
    80005b0c:	00500713          	li	a4,5
    80005b10:	00c782a3          	sb	a2,5(a5)
    80005b14:	00e68663          	beq	a3,a4,80005b20 <__memmove+0xfc>
    80005b18:	0065c703          	lbu	a4,6(a1)
    80005b1c:	00e78323          	sb	a4,6(a5)
    80005b20:	00813403          	ld	s0,8(sp)
    80005b24:	01010113          	addi	sp,sp,16
    80005b28:	00008067          	ret
    80005b2c:	02061713          	slli	a4,a2,0x20
    80005b30:	02075713          	srli	a4,a4,0x20
    80005b34:	00e587b3          	add	a5,a1,a4
    80005b38:	f0f574e3          	bgeu	a0,a5,80005a40 <__memmove+0x1c>
    80005b3c:	02069613          	slli	a2,a3,0x20
    80005b40:	02065613          	srli	a2,a2,0x20
    80005b44:	fff64613          	not	a2,a2
    80005b48:	00e50733          	add	a4,a0,a4
    80005b4c:	00c78633          	add	a2,a5,a2
    80005b50:	fff7c683          	lbu	a3,-1(a5)
    80005b54:	fff78793          	addi	a5,a5,-1
    80005b58:	fff70713          	addi	a4,a4,-1
    80005b5c:	00d70023          	sb	a3,0(a4)
    80005b60:	fec798e3          	bne	a5,a2,80005b50 <__memmove+0x12c>
    80005b64:	00813403          	ld	s0,8(sp)
    80005b68:	01010113          	addi	sp,sp,16
    80005b6c:	00008067          	ret
    80005b70:	02069713          	slli	a4,a3,0x20
    80005b74:	02075713          	srli	a4,a4,0x20
    80005b78:	00170713          	addi	a4,a4,1
    80005b7c:	00e50733          	add	a4,a0,a4
    80005b80:	00050793          	mv	a5,a0
    80005b84:	0005c683          	lbu	a3,0(a1)
    80005b88:	00178793          	addi	a5,a5,1
    80005b8c:	00158593          	addi	a1,a1,1
    80005b90:	fed78fa3          	sb	a3,-1(a5)
    80005b94:	fee798e3          	bne	a5,a4,80005b84 <__memmove+0x160>
    80005b98:	f89ff06f          	j	80005b20 <__memmove+0xfc>

0000000080005b9c <__putc>:
    80005b9c:	fe010113          	addi	sp,sp,-32
    80005ba0:	00813823          	sd	s0,16(sp)
    80005ba4:	00113c23          	sd	ra,24(sp)
    80005ba8:	02010413          	addi	s0,sp,32
    80005bac:	00050793          	mv	a5,a0
    80005bb0:	fef40593          	addi	a1,s0,-17
    80005bb4:	00100613          	li	a2,1
    80005bb8:	00000513          	li	a0,0
    80005bbc:	fef407a3          	sb	a5,-17(s0)
    80005bc0:	fffff097          	auipc	ra,0xfffff
    80005bc4:	b3c080e7          	jalr	-1220(ra) # 800046fc <console_write>
    80005bc8:	01813083          	ld	ra,24(sp)
    80005bcc:	01013403          	ld	s0,16(sp)
    80005bd0:	02010113          	addi	sp,sp,32
    80005bd4:	00008067          	ret

0000000080005bd8 <__getc>:
    80005bd8:	fe010113          	addi	sp,sp,-32
    80005bdc:	00813823          	sd	s0,16(sp)
    80005be0:	00113c23          	sd	ra,24(sp)
    80005be4:	02010413          	addi	s0,sp,32
    80005be8:	fe840593          	addi	a1,s0,-24
    80005bec:	00100613          	li	a2,1
    80005bf0:	00000513          	li	a0,0
    80005bf4:	fffff097          	auipc	ra,0xfffff
    80005bf8:	ae8080e7          	jalr	-1304(ra) # 800046dc <console_read>
    80005bfc:	fe844503          	lbu	a0,-24(s0)
    80005c00:	01813083          	ld	ra,24(sp)
    80005c04:	01013403          	ld	s0,16(sp)
    80005c08:	02010113          	addi	sp,sp,32
    80005c0c:	00008067          	ret

0000000080005c10 <console_handler>:
    80005c10:	fe010113          	addi	sp,sp,-32
    80005c14:	00813823          	sd	s0,16(sp)
    80005c18:	00113c23          	sd	ra,24(sp)
    80005c1c:	00913423          	sd	s1,8(sp)
    80005c20:	02010413          	addi	s0,sp,32
    80005c24:	14202773          	csrr	a4,scause
    80005c28:	100027f3          	csrr	a5,sstatus
    80005c2c:	0027f793          	andi	a5,a5,2
    80005c30:	06079e63          	bnez	a5,80005cac <console_handler+0x9c>
    80005c34:	00074c63          	bltz	a4,80005c4c <console_handler+0x3c>
    80005c38:	01813083          	ld	ra,24(sp)
    80005c3c:	01013403          	ld	s0,16(sp)
    80005c40:	00813483          	ld	s1,8(sp)
    80005c44:	02010113          	addi	sp,sp,32
    80005c48:	00008067          	ret
    80005c4c:	0ff77713          	andi	a4,a4,255
    80005c50:	00900793          	li	a5,9
    80005c54:	fef712e3          	bne	a4,a5,80005c38 <console_handler+0x28>
    80005c58:	ffffe097          	auipc	ra,0xffffe
    80005c5c:	6dc080e7          	jalr	1756(ra) # 80004334 <plic_claim>
    80005c60:	00a00793          	li	a5,10
    80005c64:	00050493          	mv	s1,a0
    80005c68:	02f50c63          	beq	a0,a5,80005ca0 <console_handler+0x90>
    80005c6c:	fc0506e3          	beqz	a0,80005c38 <console_handler+0x28>
    80005c70:	00050593          	mv	a1,a0
    80005c74:	00000517          	auipc	a0,0x0
    80005c78:	6dc50513          	addi	a0,a0,1756 # 80006350 <CONSOLE_STATUS+0x340>
    80005c7c:	fffff097          	auipc	ra,0xfffff
    80005c80:	afc080e7          	jalr	-1284(ra) # 80004778 <__printf>
    80005c84:	01013403          	ld	s0,16(sp)
    80005c88:	01813083          	ld	ra,24(sp)
    80005c8c:	00048513          	mv	a0,s1
    80005c90:	00813483          	ld	s1,8(sp)
    80005c94:	02010113          	addi	sp,sp,32
    80005c98:	ffffe317          	auipc	t1,0xffffe
    80005c9c:	6d430067          	jr	1748(t1) # 8000436c <plic_complete>
    80005ca0:	fffff097          	auipc	ra,0xfffff
    80005ca4:	3e0080e7          	jalr	992(ra) # 80005080 <uartintr>
    80005ca8:	fddff06f          	j	80005c84 <console_handler+0x74>
    80005cac:	00000517          	auipc	a0,0x0
    80005cb0:	7a450513          	addi	a0,a0,1956 # 80006450 <digits+0x78>
    80005cb4:	fffff097          	auipc	ra,0xfffff
    80005cb8:	a68080e7          	jalr	-1432(ra) # 8000471c <panic>
	...
