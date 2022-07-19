module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfpaln-privateca-devopsalg-alg-notspecified.sentinel"
  }
}

module "tfstate-functions" {
    source = "../../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfstate/v2" {
  module {
    source = "./mock-tfstate-v2.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "./dummy-tfconfig.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}