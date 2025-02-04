# Poetry Nix Template

A template for Python applications using Poetry and Nix. This template provides a streamlined setup for developing Python applications with modern development tools and reproducible environments.

## Features

- Poetry for dependency management
- Nix for reproducible development environments
- Pre-configured development tools:
  - Black for code formatting
  - isort for import sorting
  - pylint for code linting
  - pytest for testing
- Example application structure
- Sample tests

## Prerequisites

- Nix package manager installed
- `direnv` (optional but recommended)

## Getting Started

1. Clone this template:
   ```bash
   git clone https://github.com/yourusername/poetry-nix-template.git
   cd poetry-nix-template
   ```

2. Allow direnv (if using):
   ```bash
   direnv allow
   ```

3. Enter the Nix development shell manually (if not using direnv):
   ```bash
   nix develop
   ```

4. Install dependencies:
   ```bash
   poetry install
   ```

5. Run the example application:
   ```bash
   poetry run example-app
   ```

6. Run tests:
   ```bash
   poetry run pytest
   ```

## Project Structure

```
├── example_app/          # Main package directory
│   ├── __init__.py
│   └── main/            # Main module
│       └── __init__.py  # Contains example function and entry point
├── tests/               # Test directory
│   └── main/
│       └── test_main.py # Tests for main module
├── pyproject.toml       # Poetry configuration
├── flake.nix           # Nix flake configuration
└── README.md           # This file
```

## Development

### Code Style

This template uses:
- Black for code formatting (line length: 88 characters)
- isort for import sorting (configured to work with Black)
- pylint for code linting

### Running Tests

```bash
poetry run pytest
```

### Formatting Code

```bash
poetry run black .
poetry run isort .
```

### Linting

```bash
poetry run pylint example_app tests
```

## Customizing the Template

1. Update `pyproject.toml`:
   - Change the package name
   - Update the author information
   - Modify/add dependencies as needed

2. Update the application:
   - Rename the `example_app` directory to your desired package name
   - Update the entry point in `pyproject.toml`
   - Modify the example function or replace it with your own code

3. Update `flake.nix`:
   - Modify the development shell configuration if needed
   - Add additional development tools as required

## License

This template is provided under the MIT License. See the LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.