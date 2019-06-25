# Increase global open file handle limits on Unix systems

### Introduction

This cookbook is another good example for learning chef basics. As an
 incremental increase in complexity, this cookbook sets a default open file
 limit attribute that is used in the default recipe. This value is set for
 all users on the system globally.

### Default Recipe

The default recipe sets both the hard and soft open file limit as per
 `/etc/security/limits.conf`:

    *               soft    nofile           262140
    *               hard    nofile           262140

This change applies once a session is started. You may need to restart services
 for this change to apply.

### Usage

Per usual, upload the cookbook to your chef server:

    $ knife upload ./up_limits

Then add to the run list for your Linux clients or a common role they share.
 You can also adjust the attributes for each environment to alter the default
 file limit as desired.

### Confirmation

Use the ulimit utility for confirmation that the change has been applied.

    $ ulimit -n
    262140
    $ ulimit -Hn
    262140

---
