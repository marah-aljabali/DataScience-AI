import gzip
import numpy as np
def load_mnist (images_gz, lables_gz):
    f = gzip.open(images_gz,'r')
    f.read(4) # Read the magic number
    num_images = int.from_bytes(f.read(4), byteorder='big') # Read the number of images
    f.read(8) # Ignore the last 8 bytes, which contains width and height as we know its 28x28
    image_size = 28
    
    buf = f.read(image_size * image_size * num_images)
    # Convert the buffer (just bytes) to a NumPy array and convert it to float32 to do some manipulation later
    images = np.frombuffer(buf, dtype=np.uint8).astype(np.float32)
    # Reshape the array to a matrix with the shape (num_image, 28, 28)
    images = images.reshape(num_images, image_size, image_size)

    
    f = gzip.open(lables_gz,'r')
    f.read(4) # Read the magic number
    num_lables = int.from_bytes(f.read(4), byteorder='big') 

    buf = f.read(num_images)
    labels = np.frombuffer(buf, dtype=np.uint8)
    
    return (images, labels)
