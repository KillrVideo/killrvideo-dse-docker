#!/bin/sh

# Pull the latest from projects that are git subtrees
git subtree pull --prefix lib/killrvideo-data git@github.com:KillrVideo/killrvideo-data.git master --squash