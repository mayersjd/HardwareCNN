import mnist
import numpy as np
from conv import Conv
from pooling import Pooling
from dense import Dense

train_images = mnist.train_images()
train_labels = mnist.train_labels()

test_images = mnist.test_images()[:1000]
test_labels = mnist.test_labels()[:1000]

conv = Conv(8, 3, 3)
pooling = Pooling(2)
dense = Dense(13 * 13 * 8, 10)

loss = 0
num_correct = 0
for i, (im, label) in enumerate(zip(test_images, test_labels)):
    out = conv.forward((im / 255) - 0.5)
    out = pooling.forward(out)
    out = dense.forward(out)

    loss += -np.log(out[label])
    num_correct += 1 if np.argmax(out) == label else 0

    if i % 100 == 99:
        print('[Step %d] Average Loss %.3f | Accuracy: %d%%' % (i + 1, loss / 100, num_correct))
        loss = 0
        num_correct = 0