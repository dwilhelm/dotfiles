#!/usr/bin/env python3

import argparse
import os
import socket
import subprocess

syncpaths = ["Documents", "Pictures", "edu"]
def parse_args():
    parser = argparse.ArgumentParser(prog="syncwith")
    parser.add_argument('-n', '--dry-run', action='store_true')
    parser.add_argument('--delete', action='store_true')
    parser.add_argument('remote_csv_list')
    return parser.parse_args()

def syncdir(remotebase, path, args):
    rsyncopts = "-rlptuvz"
    rsynclongopts = ["--exclude", ".*.swp", "--exclude", ".DS_Store", "--exclude", "Photos Library.photoslibrary"]
    localpath = f"{os.environ['HOME']}/{path}/"
    remotepath = f"{remotebase}{path}/"
    rsynccmd = ["rsync", rsyncopts]
    rsynccmd.extend(rsynclongopts)
    if args.dry_run:
        rsynccmd.append("--dry-run")
    if args.delete:
        rsynccmd.append("--delete")
    print(f"\nSync {localpath} to {remotepath}\n{rsynccmd}")
    subprocess.run(rsynccmd + [localpath, remotepath])
    print(f"\nSync {remotepath} to {localpath}\n{rsynccmd}")
    subprocess.run(rsynccmd + [remotepath, localpath])

def main():
    args = parse_args()
    for remote in args.remote_csv_list.split(','):
        if remote == f"{os.environ['USER']}@{socket.gethostname()}":
            continue
        for syncpath in syncpaths:
            syncdir(f"{remote}:", syncpath, args)

if __name__ == '__main__':
    main()
