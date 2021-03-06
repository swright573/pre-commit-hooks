#!/usr/bin/env sh

pdb_check=$(git grep pdb -- '*.py')
if [ ${#pdb_check} -gt 0 ]
then
        echo "COMMIT REJECTED: commit contains code with break points. Please remove before commiting."
        echo $pdb_check
        exit 1
else
        echo "Code contains no break points"
fi

exit 0