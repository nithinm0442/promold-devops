# ProMold DevOps Infrastructure & Static Website

## Overview

This project demonstrates a real-world DevOps implementation for **ProMold**, a remediation services business operating in the Greater Toronto Area. The goal of this project is to provision cloud infrastructure using **Terraform**, deploy a **static business website on AWS S3**, and manage the entire setup using best practices around version control, infrastructure-as-code, and incremental delivery.

This repository is intentionally structured and committed in stages to reflect how production-grade infrastructure is built, tested, and evolved not as a one-shot tutorial dump.

---

## Architecture Summary

* **AWS S3** for static website hosting
* **Terraform** for infrastructure provisioning
* **Environment-based structure** (dev environment implemented)
* **GitHub** for version control and change history

The website assets are uploaded to S3 and served publicly, while Terraform manages all AWS resources declaratively.

---

## Repository Structure

```
ProMold-DevOps/
│
├── Terraform/
│   └── Envs/
│       └── dev/
│           ├── main.tf
│           ├── providers.tf
│           ├── backend.tf
│           └── .terraform.lock.hcl
│
├── Website/
│   ├── index.html
│   ├── style-v2.css
│   └── images/
│       ├── promold-logo.png
│       └── cmrc-seal.png
│
├── .gitignore
└── README.md
```

---

## Key Design Decisions

### Infrastructure as Code

Terraform is used to ensure infrastructure is:

* Reproducible
* Version-controlled
* Easy to review and iterate

Provider versions are locked using `.terraform.lock.hcl` to guarantee consistent deployments across machines.

### Environment Isolation

The `dev` environment is separated under `Terraform/Envs/` to allow future expansion into staging or production environments without refactoring the entire codebase.

### Clean Git History

Commits are intentionally split into logical units:

* Git ignore rules
* Terraform infrastructure
* Website source code

This mirrors real-world DevOps workflows and makes changes easy to audit.

---

## Deployment Flow

1. Terraform initializes and provisions AWS infrastructure
2. S3 bucket is configured for static website hosting
3. Website files are synced to the S3 bucket
4. Public endpoint serves the ProMold website

---

## What This Project Demonstrates

* Practical use of Terraform in AWS
* Understanding of cloud-native static hosting
* Clean repository hygiene (no state files or secrets committed)
* Incremental, professional Git workflow
* Real business use-case rather than a synthetic demo

---

## Future Improvements

* Remote Terraform state using S3 + DynamoDB
* CI/CD pipeline using GitHub Actions
* Custom domain with Route 53 and HTTPS
* Cost monitoring and tagging strategy
* Separate production environment

---

## About the Author

**Nithin Michael**

A techie with hands-on experience in cloud infrastructure, automation, and real-world deployments. This project reflects a production-minded approach to DevOps rather than a tutorial-based implementation.

---

## Notes

This repository intentionally excludes Terraform state files, credentials, and environment secrets to follow security best practices.
