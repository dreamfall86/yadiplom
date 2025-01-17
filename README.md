# Дипломная работа по яндекс-курсу "Системный администратор"
- Здесь будут содержаться файлы проекта
- Каждые 12 часов необходимо обновлять токен и переавторизироваться в аккаунте с помощью интерфейса CLI Yandex:
```
yc config set service-account-key key.json
yc config set cloud-id <идентификатор_облака>
yc config set folder-id <идентификатор_каталога>

export YC_TOKEN=$(yc iam create-token)
export YC_CLOUD_ID=$(yc config get cloud-id)
export YC_FOLDER_ID=$(yc config get folder-id)
```

- UPD: настроил автоматическое развертывание инфраструктуры и установку необходимых пакетов на каждую ВМ с помощью связки Ansible+Terraform, также написал 2 скрипта на python, с помощью которых, как раз, и происходит автоматизация:
     - скрипт start .../terraform/start выполняет развертывание инфраструктуры с помощью terraform и передаёт действия скрипту invent.py
     - скрипт invent.py .../ansible/invent.py выполняет автоматическое создание файла inventory.json для работы плейбуков Ansible
       
- Запуск инфраструктуры необходимо проивзодить с выполнения скрипта start.
- После развертывания выполнить плейбук Ansible из одноименной директории:
```
ansible-playbook -i inventory.json playbook.yml
```
- В текущий момент после выполнения работ необходимо выполнить удаление виртуального окружения:
```
terraform destroy
```
- Выполнить удаление файла inventory.json в дирректории /ansible
