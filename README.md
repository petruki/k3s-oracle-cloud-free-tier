# k3s-oracle-cloud-free-tier
Create a k3s cluster on Oracle Cloud's free for life tier.

This is part of the Medium article: 
[Create a free K3s cluster in Oracle Cloud using the “Always Free Tier”](https://chris-graham.medium.com/create-a-free-k3s-cluster-in-oracle-cloud-using-the-always-free-tier-7c4bc50072cc)

# Changes in this forked repository

1. Moved senstive input to a secret autoload terraform file

Create a file named: secret.auto.tfvars containing the following variables
```
region = "[REGION OF YOUR FREE TIER OCI]
compartment_id = "[COMPARTMENT ID]"
ssh_public_key_path = "[PATH/NAME OF YOUR SSH PUBLIC KEY]"
```

2. Fixed sqlpassword output
3. Fixed kubernetes config path location at providers

# Running

> $ oci session --profile kubernetes authenticate
> or
> $ oci iam region list --config-file /home/[username]/.oci/config --profile kubernetes --auth security_token
>
> $ terraform init
> $ terraform plan
> $ terraform apply