module "lambda-api" {
  source  = "applegreengrape/lambda-api/aws"
  version = "0.0.3"
  # insert the 6 required variables here

  api_name                = "twilio-backend-api"
  lambda_function_name    = "twilio-backend-api"
  lambda_handler          = "main"
  lambda_runtime          = "go1.x"
  lambda_filepath         = "/Users/pliu/Documents/jade/terraform-aws-lambda-api/terraform_test/deployment.zip"
  lambda_source_code_hash = "${base64sha256(file("/Users/pliu/Documents/jade/terraform-aws-lambda-api/terraform_test/deployment.zip"))}"


}