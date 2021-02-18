from abc import ABC

class Layer(ABC):
    def __init__(self):
        pass

    def forward(self):
        pass

    def backward(self):
        pass