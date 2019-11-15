import threading
import time

class Counter:

    def __init__(self):
        self.c = 0

    def getValue(self):
        return self.c
    def setValue(self, newC):
        self.c = newC

class IncrementThread(threading.Thread):

    def __init__(self, counter, lock):
        threading.Thread.__init__(self)
        self.counter = counter
        self.lock = lock

    def run(self):
        for i in range(100):
            self.lock.acquire()
            c = self.counter.getValue()
            c = c + 1
            time.sleep(0.01)
            self.counter.setValue(c)
            self.lock.release()

class DecrementThread(threading.Thread):

    def __init__(self, counter, lock):
        threading.Thread.__init__(self)
        self.counter = counter
        self.lock = lock

    def run(self):
        for i in range(100):
            self.lock.acquire()
            c = self.counter.getValue()
            c = c - 1
            time.sleep(0.01)
            self.counter.setValue(c)
            self.lock.release()

if __name__ == "__main__":

    counter = Counter()
    lock = threading.Lock()

    t1 = IncrementThread(counter, lock)
    t2 = DecrementThread(counter, lock)

    t1.start()
    t2.start()

    t1.join()
    t2.join()

    print('Counter value is ' + str(counter.getValue()))

