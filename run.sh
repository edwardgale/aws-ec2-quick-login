#!/usr/bin/env bash
aws ec2 describe-instances | jq '.Reservations | .[].Instances | {dns: .[].PublicDnsName, key: .[].KeyName, state: .[].State.Name, name: .[].Tags | from_entries | .Name} | if .dns | length > 0 then .name + " ssh -i ~/.aws/" +.key + ".pem ec2-user@" + .dns else "" end'

