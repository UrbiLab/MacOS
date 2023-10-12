#!/bin/bash

Location=$(dirname $0)
Package="Cisco Secure Client.pkg"
ChoicesXML="ciscoChoice.xml"

installer -dumplog -verbose -pkg "$Location/$Package" -target / -allowUntrusted -applyChoiceChangesXML "$Location/$ChoicesXML"

exit 0