users-formula:
  lookup:  # override the defauls in map.jinja
    root_group: root

users:

  ## Full list of pillar values
  canonical:
    fullname: Canonical User
    home: /home/canonical
    homedir_owner: canonical
    homedir_group: primarygroup
    user_dir_mode: 750
    createhome: True
    sudouser: True
    prime_group:
      name: primarygroup
      gid: 500
    groups:
      - users
    uid: 1001
    ssh_keys:
      privkey: PRIVATEKEY
      pubkey: PUBLICKEY

  ## Absent user
  redhat:
    absent: True
    purge: True
    force: True

