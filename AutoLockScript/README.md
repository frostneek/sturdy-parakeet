# AutoLockScript.vbs

This VBScript provides an automated way to lock your computer, put it to sleep, or skip the action based on user input and specific conditions.

## Requirements

- Windows operating system
- VBScript support

## Usage

1. Save the script as AutoLockScript.vbs.
2. Double-click the script file to run it.
3. Follow the on-screen prompts:
   - Enter 'yes' to lock the computer.
   - Enter 'no' to skip the action.
   - Enter the specified password to skip the action.
   - Enter any other input to put the computer to sleep.

## Configuration

- Customize the password in the script as needed.
- Adjust the folder path and file name for checking file existence.

## Notes

- The script checks if a specific file exists in the file explorer to determine whether to run the action.
- If the file exists, it automatically locks the computer.
- If the file does not exist, it prompts the user for input and takes appropriate actions.

## License

This script is provided under the [MIT License](LICENSE).

Feel free to customize the script and README to fit your specific needs.
