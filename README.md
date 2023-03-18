# Custom NGINX Web Server Deployment

This project automates the deployment of a custom NGINX web server using Ansible. It includes the installation and configuration of Python 3.9, Docker, and PostgreSQL on a CentOS 7 system.

## Table of Contents

- [Requirements](#requirements)
- [Installation and Setup](#installation-and-setup)
- [Usage](#usage)
- [Configuration](#configuration)
- [Dependencies](#dependencies)
- [License](#license)

## Requirements

- CentOS 7 remote server
- Ansible installed on the control machine

## Installation and Setup

1. Clone this repository to your local control machine.
2. Update the `hosts.ini` file with the IP address and SSH user of your CentOS 7 remote server.
3. Make sure your SSH key is properly configured for the remote server.
4. Install any required dependencies (see the [Dependencies](#dependencies) section).

## Usage

1. Run the Ansible playbook with the following command:

```python
ansible-playbook -i hosts.ini main.yml
```

2. After the playbook finishes running, you should be able to access the web server by navigating to the remote server's IP address or domain name in your web browser.

## Configuration

- `main.yml`: This is the main Ansible playbook that installs and configures all required components. You can customize it to fit your needs by adding, modifying, or removing tasks.
- `roles/*/tasks/main.yml`: These files contain individual roles for installing and configuring each component (e.g., Python, Docker, PostgreSQL, etc.). Modify them to adjust the installation and configuration steps.

## Dependencies

- Python 3.9
- Docker
- PostgreSQL
- Ansible

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
