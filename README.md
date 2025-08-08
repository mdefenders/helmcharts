# Helm Charts Repository

This repository contains Helm charts for deploying Kubernetes resources. It is organized to support multiple applications and deployment patterns.

## Charts

### argo-appsets
A Helm chart for deploying Argo ApplicationSets. Useful for managing multiple Argo CD applications with templated configuration.

- **Location:** `charts/argo-appsets/`
- **Files:**
  - `Chart.yaml`: Chart metadata
  - `values.yaml`: Default values for the chart
  - `templates/appsets.yaml`: ApplicationSet resource template

### it-delivers
A Helm chart for deploying a generic service template, including Deployment, Service, and Ingress resources.

- **Location:** `charts/it-delivers/`
- **Files:**
  - `Chart.yaml`: Chart metadata
  - `values.yaml`: Default values for the chart
  - `templates/deployment.yaml`: Deployment resource template
  - `templates/service.yaml`: Service resource template
  - `templates/ingress.yaml`: Ingress resource template

## Installation

1. Add this repository to your Helm repos (if published):
   ```sh
   helm repo add myrepo <repo-url>
   helm repo update
   ```
2. Install a chart:
   ```sh
   helm install <release-name> charts/<chart-name> -f <your-values-file.yaml>
   ```

## Usage

- Customize deployments by providing your own `values.yaml` file or using `--set` flags.
- Do **not** store secrets (e.g., GitHub tokens) in version control. Use external secret management (e.g., Kubernetes Secrets, SealedSecrets, or Argo CD Vault plugins).
- For sensitive values, reference Kubernetes secrets in your values file and templates.

## Development

- To add a new chart, create a new directory under `charts/` with the required files.
- Follow Helm best practices for templating and values management.
- Test charts locally with:
  ```sh
  helm template charts/<chart-name> -f <your-values-file.yaml>
  ```

## License

Specify your license here (e.g., MIT, Apache-2.0).

