variable "my_custom_ports" {

  description       = "my-custom-ports"
  type              = map(any)

  default = {
    80          = ["10.0.0.0/16"]
    8081        = ["10.0.2.0/24"]
  }

}