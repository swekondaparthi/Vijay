name "production"
description "For Prods!"
cookbook "apache", "= 0.1.0"
override_attributes({
    "PCI" => {
        "in_scope" =>false
    }
})