variable "myvar" {
  type = string
  default = "hello terraform"
}

variable "mymap" {
  type = map(string)
  default = {
    mykey = "hello terraform"
  }
}

variable "mylist" {
  type = list
  default = [        
    "hello terraform", "world"
  ]
}
/*
  in terraform console:
  -> var.myvar
  -> "${var.myvar}"
  -> var.mymap["mykey"]
  -> var.mylist[0]
  -> element(var.mylist, 0)  //using function
  -> slice(var.mylist, 0, 1)
*/