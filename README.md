# ansible-role-dw-bdd-python-example
Sample code for "A Behavior Driven Developer's guide to Infrastructure as Code"

## Prerequisites
The following software needs to be installed on your local machine to be successful.

- [Virtual Box](https://www.virtualbox.org/)
- [Python 2.7](https://www.python.org/)
- [Make](https://en.wikipedia.org/wiki/Make_(software)

## Special consideration
If you are running the Anaconda Python this may not work.  Please point to the python distribution that came with your OS. This can be done by replacing "-p python2" with  "--python=/usr/bin/python2.7" in the [Makefile](https://github.ibm.com/watson-foundation-services/ansible-role-base-example/blob/master/Makefile#L6).

On the Mac you may need to install [sshpass](https://sourceforge.net/projects/sshpass/). This can be installed via [Brew](https://brew.sh). Without this package you cannot pass a password from an inventory file and will need to leverage "--ask-pass".

## Getting Started
These instructions will help you run the sample code on your local machine for educational purposes.

### Using make
To ease use I have provided a [Makefile](https://en.wikipedia.org/wiki/Makefile) to setup, run test, and clean-up. Simply run "make" in the project directory to start the process.

### Manual steps

* Create a [virtual environment](http://docs.python-guide.org/en/latest/dev/virtualenvs/)
```bash
virtualenv -p python2 --clear venv
source ./venv/bin/activate
```
* Install project pre-requisites
```bash
pip install -r ./requirements.txt; \
```
* Run [Molecule](http://molecule.readthedocs.io)
```bash
molecule test
```

_When you are ready to leave the virtual environment run "deactivate"_

# License

This project is licensed under the MIT License - see the LICENSE.md file for details
