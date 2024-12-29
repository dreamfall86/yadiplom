virtual_machines = {
    "mw1" = {
      vm_name      = "mediawiki1" # Имя ВМ
      vm_desc      = "server 1 for mediawiki" 
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "mw1" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования
    },
    "mw2" = {
      vm_name      = "mediawiki2" # Имя ВМ
      vm_desc      = "server 2 for mediawiki"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "mw2" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования
    },
    "psql1" = {
      vm_name      = "postgresql1" # Имя ВМ
      vm_desc      = "postgresql server main" # Описание
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "psql1" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования
    },
    "psql2" = {
      vm_name      = "posgresql2" # Имя ВМ
      vm_desc      = "postgresql server standby" 
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "psql2" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования
    },
    "minio" = {
      vm_name      = "minio" # Имя ВМ
      vm_desc      = "minio server" 
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "minio" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования
    },
    "nginx" = {
      vm_name      = "nginxbalancer" # Имя ВМ
      vm_desc      = "vm for nginx-balancer L7" 
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "nginx" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования
    },
    "zabbix" = {
      vm_name      = "zabbixs" # Имя ВМ
      vm_desc      = "zabbix server" # Описание
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "zabbix" # Название диска
      template     = "fd866d9q7rcg6h4udadk" # ID образа ОС для использования
    }
}
