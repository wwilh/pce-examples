# Node.js Ansible Playbooks
This repository contains Ansible playbooks to deploy a Node.js application with a MongoDB backend on Rocky 9 Linux VMs, integrated with Morpheus.
## Purpose
Automates the provisioning of:
- A Node.js instance with a simple "Hello World" app.
- A MongoDB instance configured as the application database.
## Directory Structure
- **`group_vars/`**: Global variables shared across all hosts.
- **`templates/`**: Placeholder for Jinja2 templates (currently unused).
- **`nodejs_install.yml`**: Playbook to install Node.js and dependencies.
- **`mongodb_install.yml`**: Playbook to install MongoDB and configure the database.
- **`README.md`**: This file.
## Prerequisites
- Morpheus with Ansible integration pointing to this repository.
- Morpheus Cypher secrets:
  - `secret/mongodb_password`: Password for the MongoDB application user.
  - `secret/mongodb_admin_password`: Password for the MongoDB admin user.
- Rocky 9 VM images in Morpheus.
## Usage
1. Push this repository to a Git server accessible by Morpheus.
2. Configure Morpheus Ansible integration:
   - Git URL: `<your-git-url>`
   - Playbooks: `nodejs_install.yml` (Node.js), `mongodb_install.yml` (MongoDB).
3. Define Morpheus layouts, node types, and app blueprint as per the configuration.
4. Provision the Node.js app via Morpheus.
## Notes
- Morpheus dynamically generates an inventory with `nodejs_vm` and `mongodb_vm` groups.
- The Node.js app listens on port 3000 and connects to MongoDB on port 27017.
