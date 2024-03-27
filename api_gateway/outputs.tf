output "api_gateway_invoke_url" {
  description = "URL to invoke the API Gateway"
  value       = aws_api_gateway_deployment.deployment.invoke_url
}
