# aws-ec2-quick-login
A quick way to login to an aws instance when you vaguely know the instance name.
Calls describe-instances and then uses that information to construct an ssh connection string for each of those instances.
Usage:
aws-ec2-quick-login.sh | grep yourinstancename

