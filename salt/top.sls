base:
  # Instalando/Configurando em todos os minions
  '*':
    - common
  # Instalando/Consigurando somente no debian_wsl
  'debian_wsl':
    - nginx