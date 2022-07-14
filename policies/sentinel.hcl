module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "generic-functions" {
    source = "../common-functions/generic-functions/generic-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "test/encryption_gcp_algo_enforce/mock-tfpaln-privateca-devopsalg-alg-notspecified.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "test/encryption_gcp_algo_enforce/mock-tfstate-v2.sentinel"
  }
}