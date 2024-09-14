FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Copy the app files
COPY . .

# Expose the port for the Streamlit app
EXPOSE 8501

# Define the command to run the Streamlit app
CMD ["streamlit", "run", "multiple disease pred.py"]