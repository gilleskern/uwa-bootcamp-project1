## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Diagrams/ELK.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook files may be used to install only certain pieces of it, such as Filebeat.

  - [ELK install playbook](https://github.com/gilleskern/uwa-bootcamp-project1/blob/main/Ansible/install-elk.yml)
  - [Filebeat playbook](https://github.com/gilleskern/uwa-bootcamp-project1/blob/main/Ansible/filebeat-playbook.yml)
  - [Metricbeat playbook](https://github.com/gilleskern/uwa-bootcamp-project1/blob/main/Ansible/metricbeat-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

What aspect of security do load balancers protect?\
The primary function of load balancers is to spread the traffic across multiple servers. If a server becomes unavailable due to a DDoS attack, 
load balancers will re-route requests to another server. in doing so, load balancers help to eliminate single points of failure, reduce the attack surface,
and make it harder to exhaust resources and saturate links.

What is the advantage of a jump box?\
The main advantage of a jump box is to hide an entire network from a potential attacker on the Internet. It also provides a secured access to the network
and allows for easy installation of software packages to different groups of computers.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the event logs and system metrics.
- What does Filebeat watch for? Filebeat watches for log files or locations that the user specify.
- What does Metricbeat record? Metricbeat watches for metrics from the operating system and from services running on the server.

The configuration details of each machine may be found below.\
Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table.

| Name                 | Function          | IP Address | Operating System |
|----------------------|-------------------|------------|------------------|
| Jump-Box-Provisioner | Gateway           | 10.0.0.4   | Linux (Ubuntu)   |
| Web-1                | Web Server        | 10.0.0.7   | Linux (Ubuntu)   |
| Web-2                | Web Server        | 10.0.0.12  | Linux (Ubuntu)   |
| Web-3                | Web Server        | 10.0.0.11  | Linux (Ubuntu)   |
| ELK-Server           | Monitoring Server | 10.1.0.4   | Linux (Ubuntu)   |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- My public IP address (I am not going to tell you what it is!)

Machines within the network can only be accessed by SSH.
- Which machine did you allow to access your ELK VM? the Jump-Box-Provisioner
- What was its IP address? 20.37.240.22

A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP Addresses |
|----------------------|---------------------|----------------------|
| Jump-Box-Provisioner | Yes                 | My Public IP         |
| Web-1                | No                  | 10.0.0.4             |
| Web-2                | No                  | 10.0.0.4             |
| Web-3                | No                  | 10.0.0.4             |
| ELK-Server           | No                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._