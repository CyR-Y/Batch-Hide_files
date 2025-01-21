# Batch-Hide_files
This is a batch file that allows you to hide files



The Batch Hide files is a batch script designed to manage hidden files on a Windows system. It allows users to hide files, show hidden files, and view a list of currently hidden files. This tool is useful for users who want to keep certain files out of sight without deleting them.

 Features
- **Hide a File**: Users can specify a file path to hide a file from the file explorer.
- **Show a File**: Users can unhide a previously hidden file by providing its path.
- **View Hidden Files**: Users can view a list of all currently hidden files.
- **Exit**: Users can exit the application.

How It Works
The script operates through a simple text-based menu interface. Users can select options by entering the corresponding number. The script performs the following actions based on user input:

1. *Hide a File*
   - Prompts the user to enter the full path of the file they wish to hide.
   - If the file exists, it uses the `attrib +h` command to hide the file.
   - The hidden file's path is logged in a hidden files list.

2. *Show a File*
   - Prompts the user to enter the full path of the file they wish to unhide.
   - If the file is hidden, it uses the `attrib -h` command to unhide the file.
   - The file is removed from the hidden files list.

3. *View Hidden Files*
   - Displays the contents of the hidden files list, showing all currently hidden files.

4. *Exit*
   - Exits the script.

Requirements
- Windows operating system.
- Basic command line knowledge (optional).

Disclaimer!
This tool is intended for personal use and should be used responsibly. Hiding files does not provide security; it merely makes them less visible in the file explorer.

---

Feel free to modify any sections to better fit your needs! If you have any additional features or details you'd like to include, let me know!
