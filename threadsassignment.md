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

Inorder to order to overcome mis changing a value attribute we need to synchronize threads.In thread3.py we have made a syncronization between threads by using  **_Lock()_**.At any time, a lock can be held by a single thread, or by no thread at all. If a thread attempts to hold a lock that’s already held by some other thread, execution of the first thread is halted until the lock is released.For each shared resource, create a Lock object. When you need to access the resource, call acquire to hold the lock (this will wait for the lock to be released, if necessary), and call release to release the resouce so that other thread can use it.

####3)Comment out the join statements at the bottom of the program and describe what happens?####

The main purpose of *_join()_* is it blocks the calling thread until the thread whose join() method is called terminates – either normally or through an unhandled exception – or until the optional timeout occurs.
If we doesnot use join() in thread3.py then the main tread is getting terminated before the termination of its child threads ie;thread A & Thread B.

####4)What happens if you try to Ctrl-C out of the program before it terminates?####

Pressing Ctrl + c while a python program is running will cause python to raise a KeyboardInterupt .If there is any block to handle that exception then the keyboard interrupt gets handled if not if that interrupt is occured rapidliy then the programs execution gets terminated.

####5)Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation?####

In thread4.py the bizarre behavior of both the threads is due to  a lock has been called on a shared resource and none among the threads are calling acquire() method to access the resource .so anyone among the threads can use the shared resource.and hence each threads uses the thread randomly .

          global sharedNumber
        for k in xrange(10000000):
          
            sharedNumber = 1
            if sharedNumber != 1:
                print 'A: that was weird'
            
        print 'Goodbye from thread A'
        
####6)Does uncommenting the lock operations clear up the problem in question 5?####

The problem in question5 can be overcomed here if we use lock.acquire()method for a specific thread then that particular thread access the resource and uses it,after its usage if we call release() so that any other thread can access the same source if needed.Hence the threads get executed in the order how they acquire the lock on the shared resource.

    def run(self):
            global sharedNumber
            for k in xrange(10000000):
                self.lock.acquire()
                sharedNumber = 1
                if sharedNumber != 1:
                    print 'A: that was weird'
                self.lock.release()
            print 'Goodbye from thread A'
            


    def run(self):
        global sharedNumber
        for k in xrange(10000000):
            self.lock.acquire()
            sharedNumber = 2
            if sharedNumber != 2:
                print 'B: that was weird'
            self.lock.release()
        print 'Goodbye from thread B'
        
        
  here thread A acquires lock first on a sharedNumber and access it and then thread B acquires it after thread A releases it. 


