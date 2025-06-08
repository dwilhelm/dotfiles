#!/bin/sh

rsync -avz --exclude .*.swp home/ ~
chmod 700 ~
