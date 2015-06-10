#!/bin/bash
## Provisioning script for all machines managed by Vagrant, run first.

# Include function definitions.
source /vagrant/build/functions.sh

# List of functions to run.
functionList="vagrantSetupHostsFile vagrantCreateSharedKeys installDesiredPackages setupNTPD disableFirewall removeMemoryLimitationOnUsers setSystemScheduling disableTHP disableSelinux configureSSH"

for functionName in $functionList; do
	echo ""
	echo "Running $functionName"
	echo ""
	# Call function name.

	$functionName

    # Check return code.
 	if [ $? -ne 0 ]; then
		echo "Function $functionName returned non-zero exit code!"
	fi
done
echo "Blah"
