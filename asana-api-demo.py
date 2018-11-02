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
        print("This script needs an environment variable ASANA_PERSONAL_ACCESS_TOKEN.", file=sys.stderr)
        quit()
    return x

def asana_client():
    return asana.Client.access_token(asana_personal_access_token())

##
#
# Print your personal info, workspaces, projects, and tasks.
#
##

def show_me():
    print("Show me...")
    me = ASANA_CLIENT.users.me()
    print(f"My name:{me['name']}")

def show_workspaces():
    print("Show workspaces...")
    for workspace in ASANA_CLIENT.workspaces.find_all():
        print(f"workspace name:{workspace['name']}")

def show_workspaces_and_projects():
    print("Show each workspace and its projects...")
    for workspace in ASANA_CLIENT.workspaces.find_all():
        print(f"workspace name:{workspace['name']}")
        for project in ASANA_CLIENT.projects.find_by_workspace(workspace['id']):
            print(f"project name: {project['name']}")

def show_workspaces_and_projects_and_tasks():
    print("Show each workspace and each project and its tasks")
    for workspace in ASANA_CLIENT.workspaces.find_all():
       print(f"workspace name:{workspace['name']}")
       for project in ASANA_CLIENT.projects.find_by_workspace(workspace['id']):
           print(f"project name: {project['name']}")
           for task in ASANA_CLIENT.tasks.find_by_project(project['id']):
               print(f"task name: {task['name']}")

def show_tags():
    print("Show each workspace and its tags")
    for workspace in ASANA_CLIENT.workspaces.find_all():
       print(f"workspace name:{workspace['name']}")
       for tag in ASANA_CLIENT.tags.find_all({'workspace': workspace['id']}):
            print(f"tag name:{tag['name']}")
        
def create_task():
    print("Create a task in the first workspace and first project.")
    
    workspace = list(ASANA_CLIENT.workspaces.find_all())[0]
    print(f"workspace:{workspace['name']}")

    project = list(ASANA_CLIENT.projects.find_all({'workspace': workspace['id']}))[0]
    print(f"project:{project['name']}")

    name = "Demo task name"
    notes = "Demo task notes"

    task = ASANA_CLIENT.tasks.create_in_workspace(
        workspace['id'],
        {'name': name,
         'notes': notes,
         'projects': [project['id']]
        })
    pprint(result)
    
    task_id = ta['id']
    print(f"task id:{task_id}")

    task = ASANA_CLIENT.tasks.find_by_id(task_id)
    pprint(task)

ASANA_CLIENT = asana_client()

def main():
    print("Asana API demo")
    #show_me()
    #show_workspaces()
    show_workspaces_and_projects()
    #show_workspaces_and_projects_and_tasks()    
    show_tags()
    #create_task()
  
if __name__== "__main__":
    main()
