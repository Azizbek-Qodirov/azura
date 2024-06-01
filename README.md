# Azura Programming Language

Azura is a simple custom programming language implemented in Go. This README provides instructions on how to set up the Azura project, build the executable, and run Azura programs.

## Project Structure

The project is organized as follows:


## Setup Instructions

### Step 1: Build the Executable

1. Build the `azura` executable:

    ```sh
    go build -o azura ./cmd/azura
    ```

### Step 2: Install the Executable Globally

1. Move the `azura` executable to a directory included in your system's `PATH`:

    ```sh
	sudo cp azura_completion.sh /etc/bash_completion.d/azura
	cp azura_completion.sh ~/.bash_completion
    source ~/.bashrc
    source ~/.bash_completion
    ```



### Step 3: Run the Program

1. Ensure the `main.az` file contains valid Azura code. Example content:

    ```
    5 + 3
    ```

2. Run the `azura` program:

    ```sh
    azura run main.az
    ```

    This should output:

    ```
    Result: 8
    ```

## Usage

- **Run an Azura program**:

    ```sh
    azura run <filename>
    ```

    Replace `<filename>` with the path to your `.az` file containing the Azura code.

## Contributing

If you'd like to contribute to Azura, please fork the repository and use a feature branch. Pull requests are welcome.

## License

This project is licensed under the MIT License.


