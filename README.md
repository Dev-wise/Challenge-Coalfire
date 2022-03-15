# Challenge-Coalfire
### This challenge was created to provide the Coalfire team with a knowlegde and skill assement.
### The below steps were completed and deployed to personal testing AWS account without error.

- 1 VPC – 10.1.0.0/16
- 4 subnets (spread across two availability zones for high availability)
- Sub1 – 10.1.0.0/24 (should be accessible from internet)
- Sub2 – 10.1.1.0/24 (should be accessible from internet)
- Sub3 – 10.1.2.0/24 (should NOT be accessible from internet)
- Sub4 – 10.1.3.0/24 (should NOT be accessible from internet)
- 1 compute instance running RedHat in subnet sub2
- 20 GB storage
- t2.micro

###Note
