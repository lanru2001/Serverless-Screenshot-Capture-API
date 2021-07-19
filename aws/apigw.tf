#This API will be used to direct all requests that are made for the screenshot service

resource "aws_api_gateway_rest_api" "screenshot_api" {
  name        = "screenshot_api"
  description = "Lambda-powered screenshot API"
  depends_on = [
    aws_lambda_function.take_screenshot
  ]
}
