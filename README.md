Ruxit for AWS Elastic Beanstalk
===============================

Ruxit is a full-stack application monitoring solution that covers your entire application stack. Learn more on our website https://ruxit.com

Monitoring AWS Elastic Beanstalk Environments
---------------------------------------------

AWS Elastic Beanstalk gives you the option of deploying and auto scaling applications and services.
You can use a predefined .ebextensions configuration file to modify the process of deployment by supplying additional resources. See here for details: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customize-containers.html

In the .ebextensions directory we provide a template for creating such a configuration file. It triggers the installation of Ruxit on all EC2 instances related to your Beanstalk application.

You only need to adapt the key/value pairs for your RUXIT_TENANT and RUXIT_TOKEN.
Please go to your Ruxit dashboard, open the menu and select "Monitor another host". The download link in the Linux section contains both, your TENANT (the first subdomain) and your TOKEN (last part of URL).

CONTACT
-------

https://ruxit.com
