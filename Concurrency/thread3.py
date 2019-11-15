import threading
import time
#Example 3
class MyThread(threading.Thread):

    def __init__(self, name):
        threading.Thread.__init__(self)
        self.name = name

    def run(self):
        for i in range(5):
            time.sleep(1)
            print(self.name + ': ' + str(i))

if __name__ == "__main__":

    t1 = MyThread('t1')
    t2 = MyThread('t2')

    t1.start()
    t2.start()

