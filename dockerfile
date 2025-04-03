FROM python:3.9
#WORKDIR /myapp
#COPY ./services.txt .
#COPY ./myapp.py .
#COPY ./api_demo.py .
#CMD ["python", "api_demo"]
# Set working directory
WORKDIR /myapp

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Make sure this matches your actual entrypoint file
CMD ["python", "api_demo.py"]  