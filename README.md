# Tournament Project
A python module along with a database schema to facilitate a swiss tournament style match

## Relevant Files

**tournament.py**

Contains the python module to facilitate all the necessary events of a swiss tournament match

**tournament.sql**

Contains and creates the database schema for the swiss tournament

**tournament_test.py**

Unit tests for tournament.py

## Dependencies
[Python 2.7.X](https://www.python.org/downloads/)  

[Virtual Box](https://www.virtualbox.org/wiki/Downloads)

[Vagrant](https://www.vagrantup.com/downloads.html)

**Note:** If you don't want to install a virtual machine you will need to download your own version of [PostgreSQL](https://www.postgresql.org/download/)

##  Installation
Clone the Github Repository
```
$ git clone https://github.com/arthurchan1111/tournament.git
```
Or download the zip file and unzip the file

## Setup

1. Open up terminal or cmd and change to the directory where you downloaded this project

    **If you downloaded the virtual machine follow these next steps:**

    Change to the directory where Vagrantfile is located (vagrant/)

    Type in the following command to initiate the virtual machine:

        ```
        $ vagrant up
        ```

    After everything has been setup type in the following command to login to the virtual machine:

        ```
        $ vagrant ssh
        ```

    Once logged in change into the vagrant directory to view all the available subdirectories:
      ```
      $cd vagrant/
      ```

2. Change the directory into vagrant/tournament/

3. Type in the command:

      ```
      $ psql
      ```

4. Type in the following command:

      ```
      $ \i tournament.sql
      ```

    Or open up tournament.sql file and copy & paste all the contents in the file.

    **Note: This will delete any database named tournament**

5. Exit out of the SQL environment using:

      ```
      $ \q
      ```

6. Start the unit tests to see if everything is working with:
      ```
      $ python tournament_test.py
      ```
