import os
import random
from PIL import Image

def get_random_image(image_folder):
    """Selects a random image from the specified folder."""
    if not os.path.exists(image_folder):
        raise FileNotFoundError(f"Directory not found: {image_folder}")

    image_files = [
        os.path.join(image_folder, f)
        for f in os.listdir(image_folder)
        if f.lower().endswith(('.png', '.jpg', '.jpeg'))
    ]

    if not image_files:
        raise ValueError(f"No valid images found in {image_folder}")

    random_image = random.choice(image_files)
    return random_image

def display_image(image_path):
    """Displays the image using the Pillow library."""
    img = Image.open(image_path)
    img.show()  # Replace with your preferred image display method if needed

# Example usage:
image_folder = "path/to/your/images"  # Replace with the actual path to your images

try:
    random_image_path = get_random_image(image_folder)
    display_image(random_image_path)

    # Game logic (example):
    while True:
        user_guess = input("Guess the name of the heavenly body (or 'exit' to quit): ")

        if user_guess.lower() == 'exit':
            break

        # Check the user's guess and provide feedback
        # ...

        # Get a new random image for the next round
        random_image_path = get_random_image(image_folder)
        display_image(random_image_path)

except Exception as e:
    print(f"An error occurred: {e}")

