# vim: sts=2 ts=2 sw=2 et ai
{% from "users/map.jinja" import users with context %}
users_add_rm:
  user.present:
    - name: users.user_add
  user.absent:
    - name: users.user_rm
users_ssh:
  ssh_auth.present:
    - user: users.user_add
    - nec: ssh-rsa
    - source users.key_path 
