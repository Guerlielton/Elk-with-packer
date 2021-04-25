ami_filter_name  = "ELK-CHALLENGE-*"
instance_type    = "t2.micro"
keypair          = "log"
allow_from_cidrs = ["seu ip publico/32"]
tag_name         = "ELK-CHALLENGE"
