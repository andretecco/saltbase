nginx:
  pkg.installed: []
  service.running:
    - require:
      - pkg: nginx
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf

/etc/nginx/nginx.conf
  file.managed:
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: '0644'

#nginx:
#  pkg:
#    - installed
#  service:
#    - runnig
#    - require:
#        - pkg:
#            - nginx
#    - watch:
#      - pkg
#          - nginx
#          - file: 
#              - /etc/nginx/nginx.conf