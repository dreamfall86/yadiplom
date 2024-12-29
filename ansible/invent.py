import json
import os

# Шаг 1: Загрузка данных из terraform_output.json
terraform_output_path = '../terraform/terraform_output.json'  # Путь к terraform_output.json
with open(terraform_output_path) as f:
    terraform_output = json.load(f)

# Шаг 2: Формирование структуры инвентаря
inventory = {
    "all": {
        "children": {
            "mediawiki": {
                "hosts": {}
            },
            "postgresql": {
                "hosts": {}
            },
            "minio": {
                "hosts": {}
            },
            "nginx": {
                "hosts": {}
            },
            "zabbix": {
                "hosts": {}
            }
        }
    }
}

private_key = "/home/dream/.ssh/id_ed25519"  # Укажите путь к приватному ключу

# Шаг 3: Заполнение данных для каждой группы
for host, ip in terraform_output.items():
    if "mw" in host:
        inventory["all"]["children"]["mediawiki"]["hosts"][host] = {
            "ansible_host": ip,
            "ansible_user": "root",
            "ansible_ssh_private_key_file": private_key,
            "ansible_ssh_common_args": "-o StrictHostKeyChecking=no"
        }
    elif "psql" in host:
        inventory["all"]["children"]["postgresql"]["hosts"][host] = {
            "ansible_host": ip,
            "ansible_user": "root",
            "ansible_ssh_private_key_file": private_key,
            "ansible_ssh_common_args": "-o StrictHostKeyChecking=no"
        }
    elif "minio" in host:
        inventory["all"]["children"]["minio"]["hosts"][host] = {
            "ansible_host": ip,
            "ansible_user": "root",
            "ansible_ssh_private_key_file": private_key,
            "ansible_ssh_common_args": "-o StrictHostKeyChecking=no"
        }
    elif "nginx" in host:
        inventory["all"]["children"]["nginx"]["hosts"][host] = {
            "ansible_host": ip,
            "ansible_user": "root",
            "ansible_ssh_private_key_file": private_key,
            "ansible_ssh_common_args": "-o StrictHostKeyChecking=no"
        }
    elif "zabbix" in host:
        inventory["all"]["children"]["zabbix"]["hosts"][host] = {
            "ansible_host": ip,
            "ansible_user": "root",
            "ansible_ssh_private_key_file": private_key,
            "ansible_ssh_common_args": "-o StrictHostKeyChecking=no"
        }

# Шаг 4: Сохранение инвентаря в файл JSON
inventory_dir = '../ansible'  # Директория, куда сохраняем инвентарь
os.makedirs(inventory_dir, exist_ok=True)  # Создать директорию, если не существует
inventory_file_path = os.path.join(inventory_dir, 'inventory.json')  # Путь к файлу

with open(inventory_file_path, 'w') as f:
    json.dump(inventory, f, indent=4)

print(f"Инвентарь для Ansible был успешно создан и сохранен в {inventory_file_path}")
