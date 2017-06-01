Use #Ansible automation for finding #Cisco devices with Clock Signal issues. The clock signal component malfunction inside Cisco's ASA firewalls, ISR Routers , Meraki cloud managed switches, and some Nexus switch line cards causes the product to fail after 18 months. If you or your customer has a large number of devices it can be pain to figure out which devices might be impacted by logging into each network device, checking each device for hardware version ( V01/02/03) , comparing to hardware versions being impacted based on Cisco Field Notices and then extracting serial numbers for the impacted devices. CiscoClockSignal is a network automation tool developed by our team to quickly identify devices which might be potentially impacted with Clock signal issue . It uses Ansible for automating the login and collection of device information and then analysis.

Quick Start :

    Clone this repository in the /etc/ansible directory . Assuming that you've already setup ansible first.

    Populate the IP address of all network devices in the /etc/ansible/inventory file. Create a directory "clock-signal-devices" in /etc/ansible directory

    Execute ansible playbook : ansible-playbook playbooks/chk_clock_issue_devices.yaml

    Run list-dev-stats.sh from /etc/ansible directory to get the statistics of impacted devices , serial numbers and hardware version numbers

Why Ansible : We chose ansible because of its agentless architecture and the fact that we would not have to worry about different cisco devices having different commandline syntax ( e.g. NXOS vs IOS ) and we can abstract that via ansible capabilities.

Please note :

    This network automation tool assumes that all devices are using the same login/password in the network.
    If you need support or want more customized / faster solution please reach out to devops@irsols.com
    This tool can also be used for validation or confirming that there are no devices requiring replacement

References : http://www.crn.com/slide-shows/networking/300083678/10-things-you-need-to-know-about-ciscos-clock-signal-failure-and-product-replacement-priorities.htm?itc=refresh

http://www.cisco.com/c/en/us/support/web/clock-signal.html
