# AWS static site quickstart

Hosts a Flutter Web build (or any static site) on a private S3 bucket behind CloudFront, served on your own domain over HTTPS.

- `DataAwsRoute53Zone` looks up the existing public hosted zone that serves the domain.
- `AwsS3Bucket` holds the site files, and `AwsS3BucketPublicAccessBlock` keeps it private.
- `AwsCloudfrontOriginAccessControl` signs CloudFront's requests to the bucket, and `AwsS3BucketPolicy` (built with `DataAwsIamPolicyDocument`) lets only this distribution read it, through an `AWS:SourceArn` condition.
- `AwsAcmCertificate` requests a certificate for the domain; `AwsRoute53Record` publishes its DNS validation record, and `AwsAcmCertificateValidation` waits until ACM issues it.
- `AwsCloudfrontDistribution` serves the bucket with the AWS managed `Managed-CachingOptimized` cache policy (`DataAwsCloudfrontCachePolicy`), redirects HTTP to HTTPS, and answers 403 and 404 with `/index.html` so a Flutter Web app's client-side routes survive a reload.
- Two more `AwsRoute53Record` aliases (`A` and `AAAA`) point the domain at the distribution.

CloudFront only accepts ACM certificates from `us-east-1`, so the provider is pinned to that region. The bucket lives there too.

## Before you apply

Apply needs a domain you control:

- A **public Route 53 hosted zone** for the parent domain (`HOSTED_ZONE`, for example `example.com`) in the same AWS account. The domain's registrar must delegate to that zone's name servers, or ACM never sees the validation record and `aws_acm_certificate_validation` times out after 75 minutes.
- The site's host name (`SITE_DOMAIN`, for example `app.example.com`) must not already have `A` / `AAAA` records in that zone.

Costs are usage-based: S3 storage and requests, CloudFront data transfer, and the hosted zone's monthly charge. The public certificate is free. A new distribution takes several minutes to deploy.

You also need AWS credentials that can manage S3, CloudFront, ACM, and Route 53 records.

## Prerequisites

- Dart SDK >= 3.6 (Flutter SDK for the web build)
- Terraform CLI >= 1.11.0
- AWS credentials through the SDK chain (`AWS_PROFILE`, `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`, or an instance role); none are needed for synth

## Usage

```bash
dart pub get
SITE_DOMAIN=app.example.com HOSTED_ZONE=example.com dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

`SITE_DOMAIN` defaults to `app.example.com` and `HOSTED_ZONE` to `example.com`, which is enough for synth and `terraform validate`. No credentials appear in `tf-out/main.tf.json`: `AwsProvider` has no `access_key`, `secret_key`, or `token` parameter.

After `terraform apply`, upload the site. Read the bucket name from `terraform state show aws_s3_bucket.site` (`bucket`) and the distribution ID from `terraform state show aws_cloudfront_distribution.site` (`id`), then, from your Flutter app:

```bash
flutter build web
aws s3 sync build/web "s3://<bucket>" --delete
aws cloudfront create-invalidation --distribution-id <id> --paths '/*'
```

The bucket sets `force_destroy`, so `terraform destroy` removes the uploaded files with it.
