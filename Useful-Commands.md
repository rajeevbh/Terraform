Terraform provides a wide range of commands to manage your infrastructure as code. Here's a list of the most commonly used Terraform commands:

# Core Commands

    terraform init:
        Initializes a Terraform working directory by downloading the necessary provider plugins and setting up the backend configuration.
        Example: terraform init

    terraform plan:
        Creates an execution plan by showing the changes that Terraform will make to the infrastructure based on the current state and configuration files.
        Example: terraform plan

    terraform apply:
        Applies the changes required to reach the desired state of the configuration. It will create, update, or destroy resources as necessary.
        Example: terraform apply

    terraform destroy:
        Destroys the infrastructure managed by Terraform, removing all resources defined in the configuration files.
        Example: terraform destroy

    terraform show:
        Displays the current state or the output of a plan command. Useful for reviewing the current state of resources.
        Example: terraform show

    terraform output:
        Retrieves the outputs defined in the configuration. Useful for extracting information from the Terraform state.
        Example: terraform output

    terraform state:
        Interacts with the Terraform state file, allowing you to inspect, manipulate, or clean up state resources.
        Example: terraform state list

    terraform import:
        Imports existing infrastructure into your Terraform state, allowing Terraform to manage resources that were created outside of Terraform.
        Example: terraform import azurerm_resource_group.example /subscriptions/abc/resourceGroups/example-resources

    terraform taint:
        Marks a resource for recreation on the next apply. Useful for forcing an update or replacement of a resource.
        Example: terraform taint azurerm_virtual_machine.example

    terraform untaint:
        Removes the taint from a resource, preventing it from being destroyed and recreated on the next apply.
        Example: terraform untaint azurerm_virtual_machine.example

    terraform validate:
        Validates the configuration files in a directory, ensuring that they are syntactically correct and internally consistent.
        Example: terraform validate

    terraform fmt:
        Formats Terraform configuration files to follow the canonical standard. It ensures consistency and readability of the code.
        Example: terraform fmt

    terraform version:
        Displays the current version of Terraform installed, along with the versions of installed provider plugins.
        Example: terraform version

    terraform get:
        Downloads and installs modules referenced in the configuration files.
        Example: terraform get

    terraform graph:
        Generates a visual graph of the Terraform resources and their dependencies.
        Example: terraform graph | dot -Tpng > graph.png

    terraform providers:
        Lists the providers required for the configuration and their source locations.
        Example: terraform providers

    terraform state mv:
        Moves a resource in the state file to a new location, often used for renaming resources.
        Example: terraform state mv old_name new_name

    terraform state rm:
        Removes a resource from the Terraform state file, without affecting the actual infrastructure.
        Example: terraform state rm azurerm_virtual_machine.example

    terraform login:
        Logs in to a Terraform Cloud or Enterprise account, allowing you to use remote backends.
        Example: terraform login

    terraform workspace:
        Manages workspaces, which allow you to manage multiple environments (e.g., development, staging, production) within a single configuration.
        Example: terraform workspace new dev

    terraform refresh:
        Updates the state file with the real infrastructure, without modifying resources. Useful for syncing state with actual resources.
        Example: terraform refresh

# Other Useful Commands

    terraform console:
        An interactive console that allows you to query and interact with Terraform resources and expressions.
        Example: terraform console

    terraform debug:
        Runs Terraform in debug mode, providing verbose logging for troubleshooting.
        Example: TF_LOG=DEBUG terraform apply

    terraform force-unlock:
        Manually unlocks the state file in case Terraform gets stuck or crashes during an operation.
        Example: terraform force-unlock LOCK_ID

    terraform push:
        Pushes the Terraform state and plan to a remote backend or service (deprecated in favor of using Terraform Cloud).
        Example: terraform push
