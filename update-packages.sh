#!/bin/bash

# Copyright 2017 Cavium Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Author: chencho

set -e

MODULES=(core-data-client core-domain core-exception core-test export-distro export-domain export-test support-domain support-logging-client developer-scripts export-client support-notifications-client core-data core-metadata-client )

for m in ${MODULES[@]} ;  do
    if [ -d $m ] ; then
        echo "Updating $m"
        cd $m
        git pull
        echo $m
        cd ..
    fi
done


echo "Done!"

