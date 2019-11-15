import threading
import time
# Example 2
def run(name):
    for i in range(5):
        time.sleep(1)
        print(name + ': ' + str(i))

if __name__ == "__main__":

    t1 = threading.Thread(target = run, args = ('t1',))
    t2 = threading.Thread(target = run, args = ('t2',))

    t1.start()
    t2.start()

