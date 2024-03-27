module "lambda_function" {
  source = "./lambda_function"  # Path to your Lambda function module

  function_name = "esargsyan_LambdaFunction"
  
  runtime       = "nodejs20.x"   # Choose the appropriate Node.js version
}


module "api_gateway" {
  source = "./api_gateway"  # Path to your API Gateway module
  
  lambda_function_name = module.lambda_function.function_name
}
