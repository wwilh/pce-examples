Example ansible integration code for Morpheus
===============================================

* [Overview](#overview)
* [A 2-tier Web Server with DB Backend](#A-2-tier-web-server-with-database-backend)
* [Creating 3 inputs for the Catalog item](#creating-3-inputs-for-the-catalog-item)

----------------------------------

# Overview

This GitHub repository provides the scripts, templates, and documentation for examples of ansible integrations for use with HPE Private Cloud Enterprise, virtual machines service.

# NodeJS
This example shows some basics of using Ansible to automate the configuration of a 2-tier webserver application with a MongoDB database backend.

# Wordpress2
This is used to create a 2-tier app in Morpheus. Create a task for each of the two yaml files and then create workflows for each, which then get added to your Wordpress app blueprint.

## Creating 3 inputs for the Catalog item
In Morpheus, create 3 cyber secrets
* Secret/db_user_password
* secret/db_root_password
* Secret/db_server_ip
When you create the catalog item, add a password input for each of these and then use the secrets as defaults. Users can create their own secrets if they wish and then enter them at the command line.

