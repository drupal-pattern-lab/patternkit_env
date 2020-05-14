# Development environment for the Patternkit Ecosystem.

This dev environment makes it easier to work on:

- [Patternkit](https://drupal.org/projects/patternkit)
- [PatternFly Theme](https://drupal.org/projects/patternfly_theme)

This is a Drupal 8 with Composer installation pre-configured for use with Docksal.

Features:

- Drupal 8 Composer Project
- `fin init` [example](.docksal/commands/init)
- Using the [default](.docksal/docksal.env#L9) Docksal LAMP stack with [image version pinning](.docksal/docksal.env#L13-L15)
- PHP and MySQL settings overrides [examples](.docksal/etc)

## Setup instructions

### Step #1: Docksal environment setup

**This is a one time setup - skip this if you already have a working Docksal environment.**

Follow [Docksal environment setup instructions](https://docs.docksal.io/en/master/getting-started/env-setup)

### Step #2: Project setup

1. Clone this repo into your Projects directory

    ```bash
    git clone --recurse-submodules -j8 https://github.com/cybtachyon/patternkit_env.git
    cd patternkit_env
    ```

   > ![Info](https://raw.githubusercontent.com/primer/octicons-v2/master/icons/16/info.svg) Forget to use `--recurse-submodules`? Use `git submodule update --init --recursive`.

2. Initialize the site

    This will initialize local settings and install the site via drush

    ```bash
    fin init
    ```

3. Point your browser to [https://patternkitenv.docksal](https://patternkitenv.docksal)

When the automated install is complete the command line output will display the admin username and password.

## Experimental IDE

This project ships with an experimental IDE you can set up via `fin ide`.

## More automation with 'fin init'

Site provisioning can be automated using `fin init`, which calls the shell script in [.docksal/commands/init](.docksal/commands/init).
This script is meant to be modified per project. The one in this repo will give you a good starting example.

Some common tasks that can be handled by the init script (an other [custom commands](https://docs.docksal.io/en/master/fin/custom-commands/)):

- initialize local settings files for Docker Compose, Drupal, Behat, etc.
- import DB or perform a site install
- compile Sass
- run DB updates, revert features, clear caches, etc.
- enable/disable modules, update variables values


## Security notice

This repo is intended for quick start demos and includes a hardcoded value for `hash_salt` in `settings.php`.
If you are basing your project code base on this repo, make sure you regenerate and update the `hash_salt` value.
A new value can be generated with `drush ev '$hash = Drupal\Component\Utility\Crypt::randomBytesBase64(55); print $hash . "\n";'`

## Working on the sub-projects.

This repo uses git sub-modules to make it easier to develop for Patternkit and its first-class theme PatternFly.

To make it easier, you can use the `fin feature-start` command to start working on new features.

This executes the following:

```bash
git fetch origin
git add .
git stash save -u "Automatic stash via fin feature-start."
git checkout -f master
git rebase origin/master
git submodule update --rebase --remote
git checkout -b feature/"${USERNAME}"/${1}
```
