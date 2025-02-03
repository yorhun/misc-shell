#!/bin/bash

chmod 700 ~/.ssh # Full access for the user (read, write, execute) but no access for others.
chmod 600 ~/.ssh/id_rsa    # Only the user can read and write the private key; no access for others.
chmod 644 ~/.ssh/id_rsa.pub # The public key is readable by everyone but writable only by the user.
chmod 600 ~/.ssh/config    # Only the user can read and write the SSH configuration file; no access for others.
