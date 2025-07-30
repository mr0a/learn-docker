
## Exercise 1
Linux & Shell scripting: Assignments to be completed [execute the commands in Linux OS only]
 
### Assignment 1: File Management and Permissions ✅
Create a directory named ~/project_files.
Find all files in the /var/log directory that are larger than 50KB and copy them to ~/project_files.
Change the permissions of all files in ~/project_files to:
Owner: Read and Write
Group: Read
Others: No permissions
Display the disk usage of ~/project_files in a human-readable format.

### Assignment 2: Collaborative User and Group Management
You're setting up a development environment for a small team. Perform the following tasks to configure users, groups, and a shared workspace:
Create Users:
Add the following users to the system:
emma, noah, olivia, alice, and bob.
Group Setup:
Create a group called developers with GID 4500.
Assign emma and noah as additional members of developers.
Set olivia’s primary group to developers.
Later, remove noah from the developers group and confirm the update.
Shared Workspace:
Create a new group named sharedgrp and add alice and bob to it.
Set up a directory /home/shared_folder with group ownership as sharedgrp.
Configure permissions so only group members have full access; others should have none.
Enable the setgid bit to ensure inherited group ownership on new files.
Team Collaboration Test:
While logged in as alice, create a file notes.txt inside the shared folder.
Switch to bob and modify notes.txt.
Ensure both users can collaborate seamlessly on the file without permission issues.
 
### Assignment 3: Process Monitoring, Archiving, and Backup Logging
Write a shell script to:
List all active processes consuming more than 10% CPU. ( if no processes are currently using more than 10% CPU - simulate )
Display the following details:
PID
Process Name
CPU Usage
Save this output to a file named high_cpu_processes.txt in the user's home directory (~/)
Create a compressed .tar.gz archive of the high_cpu_processes.txt file and save it as: ~/high_cpu_processes_com.tar.gz
Verify the integrity of the archive using the tar command and record the result in a log file named ~/high_cpu_processes_status.log
The log entry should:
Include the current timestamp
Clearly state whether the archive verification was successful or failed
Run the script and verify the output.
 
### Assignment 4:  Password Strength Checker 
 
shell script that takes one argument from the command line — a password string — and checks whether it meets the five most common security criteria for a strong password.
If the password fails one or more checks, display which specific rules were not met. If the password satisfies all the conditions, print a success message indicating the password is strong.
 
Write a shell script that:
Accepts one command-line argument: a password string (e.g., P@ssw0rd123!)
Checks the strength of the password based on the following criteria:
Minimum 8 characters
Contains at least one uppercase letter
Contains at least one lowercase letter
Contains at least one number
Contains at least one special character (!@#$%^&*()-_+=)
If the password fails any criteria, output should include:
[WEAK] Password is weak.
A list of the specific criteria that were not met
If the password meets all criteria, output should be:
[STRONG] Password is strong.
Sample Outputs:
EX : If the password meets all criteria, print: [STRONG] Password is strong.
EX : If the password fails any criteria, it should print:
 [WEAK] Password is weak.
Missing:
- <list of missing criteria>
Output must be saved to a log file named password_check_result.log in the current directory, not printed to the screen.
The log entry must include:
The current timestamp (e.g., 2025-07-02 19:15:30)
The username who ran the script
The strength result
If weak, include missing criteria
 
 
--------
 Output format: Share separate shell scripting files for each of these exercises.


## Exercise 2 ✅✅
Use Docker to:
- Pull and run Jenkins on port 8080 and HTTPD on port 8081.
- Retrieve and print the initial Jenkins admin password using a Docker command.
- Write a shell script that:
    - Checks if the Jenkins container is running (using Docker commands only).
    - Creates an HTML file showing Jenkins container running status.
    - Copies this file into the HTTPD container so it is served on a web page.  
    Note:
    - All checks and operations inside your shell script should be performed using Docker commands only.
- Do not use external tools like curl or ping.
- Expected Output:
- Jenkins and HTTPD containers running on ports 8080 and 8081 respectively.
- The initial Jenkins admin password printed to the terminal using a Docker command.
- After running the shell script, visiting localhost:8081 displays the current live status of the Jenkins container.


## Exercise 3 ✅
Dockerfile
 
Clone/Download this project (https://github.com/varun-subramaniam/node_app.git)
You could find a basic dockerfile and your task is to optimize it, make it secure and pass the port & mongu url as env from dockerfile

`docker image tag node-app-exercise3:latest demo:latest`

## Exercise 4 ✅✅

Docker Compose
Write necessary docker files and compose file to build a three-tier application with frontend, backend and database
Codebase reference: https://github.com/ashokide/three-tier-app/  [feel free to use any other alternative]
Expected Output: Three-tier application should be built and run using a single docker command. Create Dockerfile to cater to this requirement.
Constraints:
 - Isolated Networks
 - Volumes


## Exercise 5 ✅✅
 
- Set up a Node.js + TypeScript project with a working tsconfig.json, package.json, and package-lock.json. Ensure it compiles output into a dist/ folder.
- Event triggers can be push or pull request on any branches.
- Configure a build job using a matrix strategy for Node.js versions 16 and 18. Install dependencies with npm ci and compile using npm run build.
- Upload the dist/ folder from each matrix build as an artifact (name artifacts per Node version).
- Set up a test job using the same Node version matrix. Install dependencies and run tests (npm test). This job should depend on the build job.
- Configure a Docker job to download the dist/ artifact from Node 18 only, build a Docker image using it, and push the image to Docker Hub with the latest tag.
- Use npm ci --omit=dev in the Dockerfile to install only production dependencies.
- Create a deploy job that runs only for main and dev branches. It should depend on the Docker job.
- In the deploy step, print environment-specific variables API_URL and DB_NAME, using GitHub Environments (production for main, development for dev).
 