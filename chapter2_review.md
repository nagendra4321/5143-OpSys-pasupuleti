# Chapter 2 Review Questions
Name: Nagendra Babu Psupuleti
Course: 5143 Operating Systems
Date: 16 FEB 2016

## 1. What are three objectives of an OS design?
A. The main objectives of OS design are
	1.Convinience
	2.Efficiency
	3.Ability to evolve
## 2. What is the kernel of an OS?
A.  Kernel contains the core OS services, in which privileged instructions can be executed, which can’t be executed in user mode.
## 3. What is multiprogramming?
A. Multiprogramming is also known as multitasking. In this approach computer memory is expanded to hold many programs and executing all of them switching among all of them.
## 4. What is a process?
A. A process is a fundamental structure of operating system. A process can be defined as
-A program in execution
-An instance of a program running on a computer
 	-The entity that can be assigned to and executed on a processor
 	-A unit of activity characterized by a single sequential thread of execution, a
current state, and an associated set of system resources
## 5. How is the execution context of a process used by the OS?
A.  Execution context is also known as process state is the internal data which Is used by the OS to supervise and control the process. This information is separated from the process which is of use to the OS Such as registers, program counter, priority of process to check whether the process is waiting for a particular I/O event or process completed or interrupted etc
## 6. List and briefly explain five storage management responsibilities of a typical OS.
A.  The five principle storage management responsibilities are
  1.Process isolation: The OS must prevent independent processes from interfering.
  2.Automatic allocation and management: Programs should be dynamically allocated across the
Memory hierarchy as required and should manage the memory
  3. Support of modular programming: Programmers should be able to define program in modules, and to create, destroy and add modules dynamically
  4. Protection and access control: restricting the access to memory by access control using memory hierarchy and protecting the memory.
  5.Long-term storage: Many application programs require storing information for extended periods of time after the computer has been powered down.
## 7. Explain the distinction between a real address and a virtual address.
A. Real address is the physical address of a page in main memory, virtual address consist of a page number and offset for dynamical mapping related to physical address
## 8. Describe the round-robin scheduling technique.
A. In the round robin scheduling, processes are dispatched in a First in first out manner but are given a limited amount of CPU time called a time-slice or a quantum and when a process completes its execution for one time-slice it is added to process queue and the next process from the queue is picked up for execution from the process queue.
## 9. Explain the difference between a monolithic kernel and a microkernel.
A. Monolithic kernel is a large kernel, it consist of many OS functionalities like networking, scheduling, file system, device drivers and memory management etc. All these elements are implemented as single process sharing same address space. But in microkernel architecture only few essential functions are assigned to kernel like address space, inter process communication and basic scheduling. Other OS services are provided by processes called servers, that run in user mode and are treated like other application by the microkernel.
## 10. What is multithreading?
A. Multithreading is a technique of breaking a process into subparts called threads which can run concurrently. A thread is nothing but a small part of a process. Executing the multiple threads concurrently is called multithreading. 
## 11. List the key design issues for an SMP operating system.
A. A multiprocessor OS must provide all the functionality of a multiprogramming system plus additional features to accommodate multiple processors. Key design issues of SMP operating system are
1. Simultaneous concurrent processes or threads: Kernel routines need to be reentrant to allow several processors to execute the same kernel code simultaneously
2.Scheduling: Any processor may perform scheduling, which complicates the task of enforcing a scheduling policy
3.Synchronization: With multiple active processes having potential access to shared address spaces or shared I/O resources, care must be taken to provide effective synchronization
4.Memory management: The reuse of physical pages is the biggest problem of concern
5.Reliability and fault tolerance: The OS should provide graceful degradation in the face of processor failure


