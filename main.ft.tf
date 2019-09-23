resource "azure_resource_group" "test" {
    name ="testResourceGroup1"
    location = "southIndia"

    tags{
    environment ="Production"
    } 
}