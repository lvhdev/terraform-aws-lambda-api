# terraform-aws-lambda-api

```
module "lambda-api" {
  source  = "applegreengrape/lambda-api/aws"
  version = "0.0.5"
  # insert the 6 required variables here

  api_name                = "my-backend-api"
  lambda_function_name    = "my-backend-api"
  lambda_handler          = "main"
  lambda_runtime          = "go1.x"
  lambda_filename         = "/Users/pliu/Documents/jade/terraform-aws-lambda-api/terraform_test/deployment.zip"
  lambda_source_code_hash = "${base64sha256(file("/Users/pliu/Documents/jade/terraform-aws-lambda-api/terraform_test/deployment.zip"))}"

  lambda_environment_variables = {
      ENV_1 = "",
      ENV_2 = "",
  }

}
```