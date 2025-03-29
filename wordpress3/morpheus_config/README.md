# Morpheus Configuration
This directory contains the Morpheus blueprint JSON and related configurations.

## Morpheus Settings
    • Layout: Rocky 9 (Ensure this layout is configured in Morpheus).
    • Node Type: VM.
    • Instance Type: small (or any desired instance type).
    • Inputs: 
        ○ dbRootPassword: MariaDB root password.
        ○ dbUserPassword: MariaDB user password.
    • App Blueprint: 
        ○ Name: WordPress with MariaDB.
        ○ Description: Deploys a WordPress instance with a MariaDB database.
        ○ Nodes: db_server, web_server.
        ○ Ansible Playbooks: as defined in the json file.
