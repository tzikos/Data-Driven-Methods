## Data-Driven Methods Exercises

This repository contains coursework and exercises for the Data-driven Methods class. It includes weekly materials, example code, and datasets used throughout the exercises.

## Quick Start

1. Set up the Python environment (see below).
2. Download and unpack the course code and datasets.
3. Open and run the weekly notebooks.

## Environment Setup

### Prerequisites

- Python **≥ 3.11**
- [uv](https://docs.astral.sh/uv/) (recommended) **or** pip

### Using uv (recommended)

```bash
# Install uv if you don't have it
curl -LsSf https://astral.sh/uv/install.sh | sh

# Create a virtual environment and install all dependencies
uv sync
```

This reads `pyproject.toml` and installs all required packages (`tensorflow`, `keras`, `numpy`, `scipy`, `matplotlib`, `ipykernel`, etc.) into a `.venv` in the project root.

### Using pip

```bash
# Create and activate a virtual environment
python -m venv .venv
source .venv/bin/activate   # On macOS/Linux
# .venv\Scripts\activate    # On Windows

# Install dependencies
pip install .
```

### Selecting the Kernel in VS Code

1. Open any `.ipynb` notebook.
2. Click the kernel picker in the top-right corner.
3. Select the **`.venv (Python 3.11+)`** environment from this project.

## Download Code and Data

Use the provided script to download and unzip the resources. It will remove the zip files after extraction.

```bash
bash scripts/fetch_resources.sh
```

The script downloads:
- DATA: http://databookuw.com/DATA.zip
- CODE: http://databookuw.com/CODE_PYTHON.zip
