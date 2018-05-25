users-formula:
  lookup:  # override the defauls in map.jinja
    root_group: root

users:

  ## Full list of pillar values
  redhat:
    fullname: RedHat User
    home: /home/redhat
    homedir_owner: redhat
    homedir_group: primarygroup
    user_dir_mode: 750
    createhome: True
    sudouser: True
    sudo_rules:
      - ALL=(ALL) NOPASSWD:ALL
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
  canonical:
    absent: True
    purge: True
    force: True

