import cv2
import numpy as np
import os
import shutil
from PIL import Image

def recolor_masks(dir):
	folders = os.listdir(dir)
	for folder in folders:
		folder_path = os.path.join(dir, folder, "masks")
		files = os.listdir(folder_path)
		for file in files:
			file_path = os.path.join(folder_path, file)
			mask = cv2.imread(file_path, cv2.IMREAD_GRAYSCALE)
			mask[np.where(mask != 0)] = 255
			Image.fromarray(mask).save(file_path)

dir = "P17_01"
recolor_masks(dir)


