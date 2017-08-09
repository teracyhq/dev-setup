# Teracy Dev Guide

This is the standard guide to use `teracy-dev` Teracy projects.

Please follow this getting started guide to set up the development environment.

Please take a cup of coffee with you, you mostly don't have to do anything but wait for the result,
enjoy!

## Upgrade

If you already set up the dev-setup and now you need to upgrade to the latest current dev-setup.

- How to know which version of teracy-dev you're using? follow:
  http://dev.teracy.org/docs/faqs.html#how-do-i-know-which-version-of-teracy-dev-that-i-m-using

- Upgrade from teracy-dev **v0.5.0-b3** to **v0.5.0-c1**

  ```
  $ cd ~/teracy-dev
  $ rm vagrant_config_override.json
  $ git fetch origin
  $ git checkout v0.5.0-c1
  $ cd workspace
  $ git clone https://github.com/teracyhq/dev-setup.git
  $ cd dev-setup
  $ git checkout develop
  $ # update more repos on the workspace if any
  $ vagrant reload --provision # then update the VM with new updated config
  ```

  Note: if `$ vagrant reload --provision` did not work, you can vagrant destroy then vagrant up for
  a clean VM: `$ vagrant destroy -f && vagrant up`

## Set up teracy-dev


- Firstly, follow this guide to install required software packages if you haven't done yet:
    + Remember to skip this step:
      http://dev.teracy.org/docs/getting_started.html#teracy-dev-git-clone-and-vagrant-up
    + http://dev.teracy.org/docs/getting_started.html

- And then:

    ```
    $ cd ~/
    $ git clone https://github.com/teracyhq/dev.git teracy-dev
    $ cd teracy-dev
    $ git checkout v0.5.0-c1
    $ cd workspace
    $ git clone https://github.com/teracyhq/dev-setup.git
    $ vagrant up
    ```

- After finishing running (take a long time to set everything up for the first time), you should
  see the following similar output:

    ```bash
    ==> default: [2017-08-07T07:25:30+00:00] INFO: Report handlers complete
    ==> default: Chef Client finished, 5/22 resources updated in 04 seconds
    ==> default: Running provisioner: ip (shell)...
        default: Running: /var/folders/59/znjnt7bn73d7c7_4l0fsdzm80000gn/T/vagrant-shell20170807-53362-1w21zg0.sh
    ==> default: ip address: 192.168.1.77
    ==> default: vagrant-gatling-rsync is starting the sync engine because you have at least one rsync folder. To disable this behavior, set `config.gatling.rsync_on_startup = false` in your Vagrantfile.
    ==> default: Doing an initial rsync...
    ==> default: Rsyncing folder: /Users/hoatle/teracy-dev/workspace/ => /home/vagrant/workspace
    ==> default:   - Exclude: [".vagrant/", ".git", ".idea/", "node_modules/", "bower_components/", ".npm/"]
    ==> default: Watching: /Users/hoatle/teracy-dev/workspace
    ```

- Make sure the ``/etc/hosts`` file get updated automatically with the following commands:

    ```bash
    $ cd ~/teracy-dev
    $ vagrant hostmanager
    ```

- `$ ping teracy.dev` to make sure it pings the right IP address of the VM:
   http://dev.teracy.org/docs/basic_usage.html#ip-address

- `$ cat /etc/hosts` file from the host machine to make sure there is no duplicated entries for
  `teracy-dev` or the VM IP address.

## How to start working

- Learn how to work with teracy-dev:

  + http://dev.teracy.org/docs/basic_usage.html
  + http://dev.teracy.org/docs/advanced_usage.html

- Follow this workflow: http://dev.teracy.org/docs/workflow.html

- Learn how to work with docker and docker-compose:

  + https://www.docker.com/
  + https://github.com/veggiemonk/awesome-docker
