###Name: Nagendra Babu Pasupuleti###
###Date:04/08/2016###
###M20228669###

####1)Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation?####

In *thread1.py* both the threads A and thread B are accessing a shared  resource and all the instructions are atomic.
An atomic instruction is  carried out in single step without any chance that another gets controll over it. 

In *thread2.py*  the run() function increments a Counter instance, increment operation is done in three steps :
                          
                    sharedCounter += 1

1.first the current value of the counter.

2.calculates the new value of counter variable.

3.rewrites the new value back to variable.

Meanwhile,if one thread gets control after the current thread has fetched the variable,increment it and write back to the current thread the same thing,possibility of missing a change to the value attribute.

####2)After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?####

Inorder to order to overcome mis changing a value attribute we need to synchronize threads.In thread3.py we have made a syncronization between threads by using  **_Lock()_**.At any time, a lock can be held by a single thread, or by no thread at all. If a thread attempts to hold a lock that’s already held by some other thread, execution of the first thread is halted until the lock is released.For each shared resource, create a Lock object. When you need to access the resource, call acquire to hold the lock (this will wait for the lock to be released, if necessary), and call release to release it:
