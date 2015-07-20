Ruxit for AWS Elastic Beanstalk
===============================

Ruxit is a full-stack application monitoring solution that covers your entire application stack. Learn more on our website https://ruxit.com

Monitoring AWS Elastic Beanstalk Environments
---------------------------------------------

AWS Elastic Beanstalk gives you the option of deploying and auto scaling applications and services.
You can use a predefined .ebextensions configuration file to modify the process of deployment by supplying additional resources. See here for details: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customize-containers.html

In the .ebextensions directory we provide a template for creating such a configuration file. It triggers the installation of Ruxit on all EC2 instances related to your Beanstalk application.

You only need to adapt the key/value pairs for your RUXIT_TENANT and RUXIT_TOKEN.

RUXIT_TENANT
------------
Your ruxit tenant ID is the unique identifier of your ruxit environment. You can find it easily by looking at the URL in your browser when you are logged into your Ruxit home page.

https://{tenant}.live.ruxit.com

The subdomain {tenant} represents your tenant id.

RUXIT_TOKEN
-----------
The token for your ruxit tenant. You can get your token by following these steps

go to your ruxit environment: https://{tenant}.live.ruxit.com
Click the burger menu in the right upper corner and select Monitor another host
You will see the "Download Ruxit Agent" wizard; click Linux (even if you need Windows)
You will see the wget command line. The token is the last part of the path after /latest/

wget -O ruxit-Agent-Linux-1.XX.0.2015XXXX-XXXXXX.sh https://{tenant}.live.ruxit.com/installer/agent/unix/latest/{this-is-the-token}

Copy it and use it in your config

CONTACT
-------

https://ruxit.com
