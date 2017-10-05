# CaffeDatasetPrep

Prepare the dataset used to train a neural network. Once the refactoring of the dataset is done, the rest is done well using NVIDIA Deep Learning GPU Training System (DIGITS):
https://developer.nvidia.com/digits

There are other options, but this is the one that worked for me. 

## Workflow
`buildIndex.sh`

1. This script loops through subfolders within the known folder.
2. Cleares old images from these temporary folders.
3. Repopulates them using the latest dataset of known images, stored in a different folder structure.

Once this reshuffling is done, the "known" folder can be used as a dataset for Nvidia DIGITS.