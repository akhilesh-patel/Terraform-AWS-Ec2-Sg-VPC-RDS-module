module "ec2_module"{
source="../modules/ec2_module"
}

module "vpc_module"{
source="../modules/vpc_module"
}

module "sg_module"{
source="../modules/sg_module"
}

module "RDS_module"{
source="../modules/rds_module"
}