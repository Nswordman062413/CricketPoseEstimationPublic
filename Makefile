.PHONY: venv install run clean

# Target to create virtual environment
venv:
	python3 -m venv venv

# Install dependencies and upgrade pip
install: venv
	venv/bin/pip install --upgrade pip
	venv/bin/pip install -r requirements.txt
	@echo "Virtual environment setup complete."
	@echo "To activate the virtual environment, run:"
	@echo "  source venv/bin/activate"  # For Linux/macOS
	@echo "  venv\\Scripts\\activate"  # For Windows (if using Git Bash/WSL)

# Run Jupyter Notebook
run:
	venv/bin/jupyter notebook

# Clean up virtual environment and caches
clean:
	rm -rf venv __pycache__ *.pyc
	@echo "Clean-up complete."
