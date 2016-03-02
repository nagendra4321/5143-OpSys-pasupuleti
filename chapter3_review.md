##Chapter 3 Review Questions
Name: Nagendra babu Pasupuleti
Course: 5143 Operating Systems
Date: 02 Mar 2016
##3.4.What does it mean to preempt a process?
Preemption means when operating system moves a process from running to ready state without process request,
it interrupts the task so that it can resume it later and runs another process. This is also called as context 
switch it is normally carried out by the scheduler which has the power to preempt ,interrupt process and can 
later resume the process .
##3.5.What is swapping and what is its purpose?
Swapping is the procedure or a memory management technique to increase the processor utilization.it can increase
the number of processes in the system. Operating system swaps a process from ready state to ready suspended state
so that when the process is idle for input other processes use the cpu time to increase the cpu utilization. 
Swapping is nothing but  moving some blocks of memory from main memory to secondary memory and forming a queue
of suspended processes so that it can resume them later.
##3.9.List three general categories of information in a process control block?
The Process Control Block stores different types of data, all the data needed for efficient process management. 
Though the details of these structures are obviously system-dependent, we can identify some very common parts, 
and classify them in three main categories:
#####1.Process identification data:
it stores the data that is unique for the process to identify.
#####2.Processor state data:
it stores the process state data like stack,register values.
#####3.Process control data:
it stores the control  data of a process likepc program counter.
##3.10.Why are two modes (user and kernel) needed?
#####Kernel Mode
In Kernel mode, the executing process has complete and unrestricted access to the underlying hardware. It can 
execute any CPU instruction and reference any memory address. Kernel mode is generally reserved for the lowest-level,
 the operating system processes. Crashes in kernel mode are very dangerous,they will halt the entire PC.
#####User Mode
In User mode, the process does not have directly access hardware or reference memory. Code running in user
mode must call kernel mode access hardware or memory. Due to the protection  by this user and kernel mode,
crashes in user mode are always recoverable. Most of the code running on your computer will execute in user mode.
##3.12 What is the difference between an interrupt and a trap?
Traps and interrupts are the one which breaks the normal execution of the program
#####Trap:
Traps are software interrupts. A trap is and abnormal condition occured in the process execution by the CPU, 
 A trap will occur during the execution of process 
#####Interrupt:
Interrupts are hardware interrupts. An interrupt in an interruption in the normal execution of the program. 
When the CPU is interrupt, then it stops its current activities like execution of the program.It is signal 
sent to the CPU by an external device to halt the process like I/O device.
##3.13 Give three examples of an interrupt?
####Internal Interrupts:
#####These are those which are occurred due to Some Problem in the Execution
For Example When a user performing any Operation which contains any Error and which contains any type of Error. 
####Software interrupt:
#####These are due to either by an exceptional condition in the processor
For example, if the processor's arithmetic logic unit is commanded to divide a number by zero
####External Interrupt:
#####These occurs when any Input and Output Device request for any Operation and the CPU will Execute that instructions first
For Example When a Program is executed and when we move the Mouse on the Screen then the CPU will handle this External interrupt first 
and after that he will resume with his Operation.
##3.14 What is the difference between a mode switch and a process switch?
#####Process Switch:
Process switch is nothing but when a process changes its state from one state to other like running,blocked,ready states.
The data of the process like register data ,program counter and saved data like instruction and memory references are saved 
in the so that the progran can load again and resume its operations this is called process switch.it gives a illution of 
multitasking running several processes at a time
#####Mode switch:
When a process in user mode need some previlized functions then it has to call kernal mode to execute those functions.then the
process will be halted and a mode switch is done from user mode to kernal mode this is called as mode switch .it is less expensive 
than process switch. It does not require processes to change but the same process will be run in kernal mode and after it has done 
then the process will be switched back to user mode.
