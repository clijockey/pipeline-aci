# Automation of the ACI constructs for PCF

The purpose of this project is to help pave the configuration of Cisco's ACI fabric to then facilitate deployment of PCF.

The work is still very much in progress and involves both the EMEA Cisco ACI SME and EMEA PCF SME.

# Plan

The plan is to configure all the constructs that best fit the deployment of PCF, this is based on testing in the lab including trail and error. 

The work will require two discrete streams;

 * PCF deployment on ACI without plugin
 * PCF deployment with C2C network plugin

The decision has been made to use the Cisco BU created SDK [(`acitoolkit`)](https://github.com/datacenter/acitoolkit) which is based on Python. Ideally we would use Terrafrom for consistency with other pipeline however a provider does not exists. 

The paving of the ACI fabric will be carried out by a Concourse pipeline and then the deployment of PCF will use the Concourse pipelines created by [Pivotal Customer0 team](https://github.com/pivotal-cf/pcf-pipelines).

# PCF deployment on base ACI


## Work in progress

- [x] Ability to configure a new Tenant
- [ ] ......
- [ ] To define the rest of the configuration needed

# PCF deployment with ACI C2C plugin
This stream has not been started yet.



