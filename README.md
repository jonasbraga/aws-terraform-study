# Terraform Study

## Description

This project is designed to study Terraform and its application in infrastructure provisioning. It aims to implement and demonstrate best practices for using Terraform in a real-world scenario.

## Modules

### hello-world

This is an introductory module that contains a simple test application. It serves as a basic example of how to use Terraform for infrastructure provisioning.

### eks-v1

This module represents an initial version of an EKS (Elastic Kubernetes Service) infrastructure setup. It is a straightforward implementation without the application of best practices.

### eks-v2

This module is a refactored version of the `eks-v1` module. It demonstrates the application of Terraform best practices and modular design. This is the final version of the code that should be used as a reference for future projects.

## Learning and Findings

During the study of Terraform, several important learnings and findings were made:

- The importance of managing the `tfstate` file: The `tfstate` file should be stored in a centralized location where the entire team can access it simultaneously. This helps to avoid conflicts and ensures consistent infrastructure provisioning.

- Version control for infrastructure code: It is crucial to version control the Terraform code using a version control system like Git. This allows for easy collaboration, tracking of changes, and rollback if needed.

- Modular design for reusability: Terraform modules provide a way to create reusable and shareable infrastructure components. By designing modules with best practices in mind, such as encapsulating resources and providing configurable inputs, code reusability and maintainability can be greatly improved.

- Applying Terraform best practices: Following Terraform best practices, such as using variables, leveraging modules, and separating environments, helps to create more robust and scalable infrastructure code.

- Continuous integration and deployment: Integrating Terraform with CI/CD pipelines enables automated infrastructure provisioning and deployment, reducing manual effort and ensuring consistent deployments.

- Understand how your cloud provider works: By familiarizing yourself with the cloud provider's services, APIs, and best practices, you can effectively implement infrastructure provisioning using their official or community-built modules. This knowledge simplifies the development process and ensures alignment with the cloud provider's recommended practices.

These findings and learnings have been applied in the different modules of this project, with the `eks-v2` module serving as a reference for future projects.
