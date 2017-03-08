class MoneyBox:
    def __init__(self, capacity):
        self.capacity = capacity
        self.value = 0

    def add(self, v):
        self.value += v

    def can_add(self, v):
        return self.value + v <= self.capacity

