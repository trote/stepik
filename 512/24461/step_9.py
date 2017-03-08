class Buffer:
    def __init__(self):
        self.buf = []
        self.size = 5

    def add(self, *args):
        for arg in args:
            self.buf.append(arg)
            if len(self.buf) == self.size:
                print(sum(self.buf[:self.size]))
                del self.buf[:self.size]

    def get_current_part(self):
        return self.buf
