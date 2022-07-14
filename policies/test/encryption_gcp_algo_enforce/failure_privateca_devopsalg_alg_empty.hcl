module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfpaln-privateca-devopsalg-alg-empty.sentinel"
  }
}

module "tfstate-functions" {
    source = "../../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

mock "tfstate/v2" {
  module {
    source = "./mock-tfstate-v2.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}