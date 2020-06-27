# Terraform Variable types

- Terraform variables were completely reworked for the terraform 0.12 release
- You can now have more control over the variables, and have **for and for-each loops**, which where not possible with earlier versions
- You don't have to specify the type in variables, but it is recommended 
- Terraform's simple variable types:
    - String
    - Number 
    - Bool
- Complex types:
    - List(type) -> List[0,1,2,3]
    - Set(type) -> Like a List but only contains **unique value** and doesn't keep the order you put it
    - Map(type) -> Map: {"key" = "value"}
    - Object({<ATTR NAME> = <TYPE>, ..}) -> Like a map, but each element can have a different type
    ```
    {
        firstName = "John"
        age = 10
    }
    ```
    - Tuple([<TYPE>, ..]) -> Is like a list, but each element can have a different type
    ```
    [0, "string", false]
    ```

    **The most common types are list and map.**

    ## More about variables in terraform
    - Type is not necessary, terraform can pick of the type of the variable
    - Use variables to hide secrets
        - Do not commit in Git repository 
    - Use variables for elements that might change
        - AMIs are different per region 
    - Use variables to make it yourself easier to reuse terraform files