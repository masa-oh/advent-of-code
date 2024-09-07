# Advent of Code

This repository is for recording solutions to [Advent of Code](https://adventofcode.com/
) challenges. It provides a shell script that allows you to execute a specified Ruby script using a corresponding input file (`.txt`) and output the results in the same directory as the Ruby script.

## Features

- Easily execute specified Ruby scripts.
- Automatically handle input and output within the script's directory.
- Simple setup and usage.

## Prerequisites

- **macOS** or any UNIX-based operating system.
- **Ruby** installed on your system.

## Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/advent-of-code.git
   ```

2. Navigate to the cloned directory:

   ```bash
   cd advent-of-code
   ```

3. Make the shell script executable:

   ```bash
   chmod +x run_script.sh
   ```

## Usage

1. Place your input `.txt` file in the same directory as the Ruby script you want to execute. The default input file name is `input.txt`. You can change this name in the `run_script.sh` file if necessary.

2. Run the script, providing the full path to the Ruby script as an argument:

   ```bash
   ./run_script.sh /path/to/your_script.rb
   ```

3. The output will be saved in the same directory as the Ruby script, with the file name `output_<script_name>.txt`.

### Example

Suppose you have the following setup:

- `part1.rb` located at `2023/day1/part1.rb`
- Input file `input.txt` located in the same directory as `part1.rb`

To run the script:

```bash
./run_script.sh 2023/day1/part1.rb
```

This will generate the output file `2023/day1/output_part1.txt`.

## Customization

- **Input File Name**: The default input file name is `input.txt`, but you can change this by modifying the `INPUT_FILE` variable in the `run_script.sh` file.
- **Output File Name**: The output file name is automatically generated based on the Ruby script name, but you can modify this logic within the script if needed.
