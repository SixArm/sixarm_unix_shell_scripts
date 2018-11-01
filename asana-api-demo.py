#!/usr/bin/env python3

##
# Asana API demo
#
# Syntax:
#
#     asana-api-demo
#
# Example:
#
#     $ ASANA_PERSONAL_ACCESS_TOKEN="0/ca581dda1b807b654e09b05bd8a8c70" \
#       asana-api-demo.py
#
#
# ## Introduction
#
# Developers: see https://asana.com/developers
#
# API: https://asana.com/guide/help/api/api
#
# Clients: https://asana.com/developers/documentation/getting-started/client-libraries
#
#
# ## Setup
#
# To install dependencies:
#
#     $ pip install asana
#
# To generate your own Asana personal access token:
#
#   * Go to Asana https://asana.com
#   * Sign in as usual
#   * Go to your settings
#   * Tap "Create New Personal Access Token"
#
##

import os
import sys
from pprint import pprint
import logging
import json
import asana

##
#
# Setup
#
##

def asana_personal_access_token():
    """Read the Asasa personal access token via the environment."""
    x = os.getenv("ASANA_PERSONAL_ACCESS_TOKEN")
    if x is None:
        print("This script needs an Asana personal access token.", file=sys.stderr)
        quit()
    return x

# Construct an Asana client.
client = asana.Client.access_token(token)

# Set things up to send the name of this script to us to show that you succeeded! This is optional.
client.options['client_name'] = "asana-api-demo"

##
#
# Print your personal info, workspaces, projects, and tasks.
#
##

print("Asana API demo")

def show_me():
    print("Show me...")
    me = client.users.me()
    print(f"My name:{me['name']}")

def show_workspaces():
    print("Show workspaces...")
    for workspace in client.workspaces.find_all():
        print(f"workspace name:{workspace['name']}")

def show_workspaces_and_projects():
    print("Show each workspace and its projects...")
    for workspace in client.workspaces.find_all():
        print(f"workspace name:{workspace['name']}")
        for project in client.projects.find_by_workspace(workspace['id']):
            print(f"project name: {project['name']}")

def show_workspaces_and_projects_and_tasks():
    print("Show each workspace and each project and its tasks")
    for workspace in client.workspaces.find_all():
       print(f"workspace name:{workspace['name']}")
       for project in client.projects.find_by_workspace(workspace['id']):
           print(f"project name: {project['name']}")
           for task in client.tasks.find_by_project(project['id']):
               print(f"task name: {task['name']}")
    
def create_task():
    print("Create a task in the first workspace and first project.")
    
    workspace = list(client.workspaces.find_all())[0]
    print(f"workspace:{workspace['name']}")

    project = list(client.projects.find_all({'workspace': workspace['id']}))[0]
    print(f"project:{project['name']}")

    name = "Demo task name"
    notes = "Demo task notes"

    result = client.tasks.create_in_workspace(
        workspace['id'],
        {'name': name,
         'notes': notes,
         'projects': [project['id']]
        })

    pprint(result)

def main():
    create_task()
  
if __name__== "__main__":
    main()
