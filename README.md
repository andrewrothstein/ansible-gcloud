andrewrothstein.gcloud
=========

![Build Status](https://github.com/andrewrothstein/ansible-gcloud/actions/workflows/build.yml/badge.svg)

Installs [Google Cloud SDK](https://cloud.google.com/sdk).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.gcloud
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
