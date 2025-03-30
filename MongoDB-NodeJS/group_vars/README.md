# Group Variables
This directory contains Ansible group variables that apply to all hosts.
## Purpose
Global variables are defined here to ensure consistency across Node.js and MongoDB installations.
## Files
- **`all.yml`**: Shared variables like database names and usernames.
## Example Content
```yaml
mongodb_db: nodejs_db
mongodb_user: nodejs_user
node_version: "20"
app_dir: "/opt/nodejs_app"
