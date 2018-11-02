#!/usr/bin/env python3

##
# Script to show GitHub API issues data.
#
# Syntax:
#
#     sixarm-github-api-issues-data.py
# 
# Example:
#
#     $ GITHUB_PERSONAL_ACCESS_TOKEN=fe7f2bf4057de85eb638dc7356047b0e31d24a4b \
#       sixarm-github-api-issues-data.py
#
# Documentation:
#
#    * https://pygithub.readthedocs.io/en/latest/introduction.html
#
#
# ## Dependencies
#
# This script uses `pygithub`.
#
# Install:
#
#     $ pip install pygithub
#
#
# ## Troubleshooting
#
# If you get the error message:
#
#.    ModuleNotFoundError: No module named 'github'
#
# Then try installing using a specific python instance:
#
#     $ python3 -m pip install --upgrade pip
#     $ python3 -m pip install pygithub
#
# ## GitHub Enterprise
#
# If you use Github Enterprise with custom hostname,
# then you need to adjust this script by doing:
#
#     g = Github(base_url="https://{hostname}/api/v3", login_or_token="token")
#
##

import os
import sys
from pprint import pprint
import logging
import json
from github import Github

##
#
# Setup
#
##

def github_personal_access_token():
    x = os.getenv("GITHUB_PERSONAL_ACCESS_TOKEN")
    if x is None:
        print("This script needs an environment variable GITHUB_PERSONAL_ACCESS_TOKEN.", file=sys.stderr)
        quit()
    return x

def github_client():
    return Github(github_personal_access_token())

def show_user():
    user = GITHUB_CLIENT.get_user()
    pprint(user)
    
def show_repos():
    for repo in GITHUB_CLIENT.get_user().get_repos():
        print(repo.name)

def show_repo(github_owner_repo):
    repo = GITHUB_CLIENT.get_repo(owner_repo)
    print(repo.name)

def show_repo_issues(github_owner_repo):
    repo = GITHUB_CLIENT.get_repo(github_owner_repo)
    for issue in repo.get_issues():
        print(f"{github_owner_repo} issue title:{issue.title}")

def show_repo_labels(github_owner_repo):
    repo = GITHUB_CLIENT.get_repo(github_owner_repo)
    for label in repo.get_labels():
        print(f"{github_owner_repo} label:{label.name} color:{label.color}")

GITHUB_CLIENT = github_client()

def main():
    print("GitHub API demo")
    #show_repos()
    if len(sys.argv) > 1:
        github_owner_repo = sys.argv[1]
        print (f"github owner/repo:{github_owner_repo}")
        show_repo_issues(github_owner_repo)
  
if __name__== "__main__":
    main()
