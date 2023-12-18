## Machine Learning Documentations

Overview
This script is designed to classify food images using the Food-101 dataset. Here's a simple breakdown of what it does:

1. Download & Setup:
- Downloads and extracts the Food-101 dataset.
- Organizes data into training and testing sets.

2. Model:
- Uses the InceptionV3 model for image classification.
- Adds a few layers for better performance.

3. Training:
- Augments training data for improved model performance.
- Trains the model and saves the best weights.

4. Results:
- Saves the trained model ('Food_pregnagrowth.h5').
- Logs training history in 'history.log'.

Usage
1. Requirements:
- Ensure TensorFlow, Matplotlib, and NumPy are installed:
pip install tensorflow matplotlib numpy

2. Download Dataset:
!wget http://data.vision.ee.ethz.ch/cvl/food-101.tar.gz
!tar xzvf food-101.tar.gz

3. Run the Script:
- Execute the Python script, making any necessary adjustments.

4. Customization (Optional):
- Adjust epochs, batch size, or other parameters as needed.

Model
- Uses a simplified InceptionV3 model with added layers:
base_model = InceptionV3(weights='imagenet', include_top=False)
x = GlobalAveragePooling2D()(base_model.output)
x = Dense(128, activation='relu')(x)
x = Dropout(0.2)(x)
predictions = Dense(101, activation='softmax')(x)
model = Model(inputs=base_model.input, outputs=predictions)

Training
- Trains the model with SGD optimizer, saving the best weights.

Results
- Trained model is saved as 'Food_pregnagrowth.h5', and training history is logged in 'history.log'. Adjustments can be made based on these results.
