module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "generic-functions" {
    source = "../../../common-functions/generic-functions/generic-functions.sentinel"
}

module "tfstate-functions" {
    source = "../../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-gcp_dlp_trigger-null.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "./dummy-tfstate.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
