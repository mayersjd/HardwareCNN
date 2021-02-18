from layer import Layer
import numpy as np

class Conv(Layer):
    def __init__(self, num_filters, filter_height, filter_width):
        self.num_filters = num_filters
        self.filter_height = filter_height
        self.filter_width = filter_width
        self.filters = np.random.randn(self.num_filters, self.filter_height, self.filter_width) / 9

    def iterate_regions(self, image):
        h, w = image.shape

        for i in range(h - (self.filter_height - 1)):
            for j in range(w - (self.filter_width - 1)):
                im_region = image[i:(i + self.filter_height), j:(j + self.filter_width)]
                yield im_region, i, j

    def forward(self, input):
        h, w = input.shape
        output = np.zeros((h - 2, w - 2, self.num_filters))

        for im_region, i, j in self.iterate_regions(input):
            output[i, j] = np.sum(im_region * self.filters, axis=(1, 2))

        return output