import threading
import time
# Nov12, 2019
# class Example
def run():
    name = threading.currentThread().getName()
    for i in range(5):
        time.sleep(1)
        print(name + ': ' + str(i))

if __name__ == "__main__":

    t1 = threading.Thread(target = run)
    t1.setName('t1')

    t2 = threading.Thread(target = run)
    t2.setName('t2')

    t1.start()
    t2.start()

