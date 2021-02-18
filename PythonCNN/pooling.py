from layer import Layer
import numpy as np

class Pooling(Layer):
    def __init__(self, dimensions, pooling="max"):
        self.dimensions = dimensions
        self.pooling = pooling

    def iterate_regions(self, image):
        h, w, _ = image.shape
        new_h = h // 2
        new_w = w // self.dimensions

        for i in range(new_h):
            for j in range(new_w):
                im_region = image[(i * 2):(i * 2 + 2), (j * 2):(j * 2 + self.dimensions)]
                yield im_region, i, j

    def forward(self, input):
        h, w, num_filters = input.shape
        output = np.zeros((h // 2, w // self.dimensions, num_filters))

        for im_region, i, j in self.iterate_regions(input):
            output[i, j] = np.max(im_region, axis=(0, 1)) if self.pooling == "max" else np.average(im_region, axis=(0, 1))

        return output