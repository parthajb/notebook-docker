#!/bin/bash

cd /path/to/project-root/jupyter/notebooks
git add .
git commit -m "Hourly backup"
git push origin main
