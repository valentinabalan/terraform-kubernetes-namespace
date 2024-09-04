# Usage

### Add the following into your file
```
module "example" {
  source = "vvalentinabalan/namespace/kubernetes"
  name   = "my-first-namespace"
  number_of_pods = 36
}
```
### Run the following commands
```
  terraform init
  terraform apply
  ```