module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "generic-functions" {
    source = "../../../common-functions/generic-functions/generic-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-v2-caentcmek-keyspec-kmsver-afterunknown.sentinel"
  }
}
mock "tfstate/v2" {
  module {
    source = "mock-tfstate-v2-caentcmek-keyspec-kmsver-afterunknown.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-v2-caentcmek-keyspec-kmsver-afterunknown.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}