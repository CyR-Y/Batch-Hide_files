# Batch-Hide_files
This is a batch file that allows you to hide files



The Batch Hide files is a batch script designed to manage hidden files on a Windows system. It allows users to hide files, show hidden files, and view a list of currently hidden files. This tool is useful for users who want to keep certain files out of sight without deleting them.

 Features
- **Hide a File**: Users can specify a file path to hide a file from the file explorer.
- **Show a File**: Users can unhide a previously hidden file by providing its path.
- **View Hidden Files**: Users can view a list of all currently hidden files.
- **Exit**: Users can exit the application.

How to Use shh.bat
1. Hiding a File
To hide a file using the shh.bat script:
Step 1: Run the shh.bat script by double-clicking it or executing it from the command prompt.
Step 2: When the menu appears, select option [1] Hide a file by typing 1 and pressing Enter.
Step 3: You will be prompted to enter the full path of the file you want to hide. For example:
![image](https://github.com/user-attachments/assets/5a253883-1411-4949-985a-58e26b5c15cd)


- Step 4: If the file exists, it will be hidden, and you will see a success message:
  ![image](https://github.com/user-attachments/assets/413ce0eb-d1c6-48bf-9d38-210bb7c069b7)


Example:
If you want to hide a file named example.txt located in your Documents folder, you would enter:
![image](https://github.com/user-attachments/assets/68711ee2-c543-408d-a34e-ed56fe855eb7)


2. Showing a File
To show (unhide) a previously hidden file:
Step 1: Run the shh.bat script.
Step 2: Select option [2] Show a file by typing 2 and pressing Enter.
Step 3: Enter the full path of the file you want to unhide. For example:
![image](https://github.com/user-attachments/assets/b7bdfdf3-daaf-489e-b29b-e2c7a0cbdbaa)


- Step 4: If the file is hidden, it will be shown, and you will see a success message:
![image](https://github.com/user-attachments/assets/083c31c9-43b5-44da-931d-8f96890d6047)

Example:
To unhide the same file example.txt, you would enter:
![image](https://github.com/user-attachments/assets/b2bc8b74-8d1a-47d6-8c56-7d392962a38d)

3. Viewing Hidden Files
To view the list of currently hidden files:
Step 1: Run the shh.bat script.
Step 2: Select option [3] View hidden files by typing 3 and pressing Enter.
Step 3: The script will display the contents of the hidden files list, showing all files that are currently hidden.
Example:
If you have hidden example.txt, the output will look something like this:
![image](https://github.com/user-attachments/assets/928d5595-d3e1-48c0-8da4-bd8f6dd34a2e)


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
