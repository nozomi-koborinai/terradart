/// AWS static site quickstart -- a Flutter Web build on S3 + CloudFront.
///
/// Defines an `AwsStaticSiteStack`: a private S3 bucket that only the
/// CloudFront distribution can read (origin access control plus a bucket
/// policy scoped to the distribution's ARN), served on a custom domain.
/// The ACM certificate is validated through a DNS record in an existing
/// Route 53 hosted zone, and alias records point the domain at the
/// distribution. Unknown paths fall back to `/index.html`, so a Flutter
/// Web app's client-side routes survive a reload.
///
/// CloudFront only accepts ACM certificates from `us-east-1`, so the
/// provider is pinned to that region.
///
/// Synth needs no credentials and none appear in `tf-out/`. Apply needs a
/// real domain in a Route 53 hosted zone (README, "Before you apply").
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_aws/acm.dart';
import 'package:terradart_aws/cloudfront.dart';
import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/provider.dart';
import 'package:terradart_aws/route53.dart';
import 'package:terradart_aws/s3.dart';
import 'package:terradart_core/terradart_core.dart';

const _originId = 'site-bucket';

/// Static site stack: bucket, certificate, distribution, and DNS records.
final class AwsStaticSiteStack extends Stack {
  AwsStaticSiteStack({required String siteDomain, required String hostedZone})
      : super(
          providers: [
            const AwsProvider(
              region: 'us-east-1',
              defaultTags: {'app': 'terradart-static-site-quickstart'},
            ),
          ],
        ) {
    final zone = DataAwsRoute53Zone(
      localName: 'site',
      name: TfArg.literal(hostedZone),
      privateZone: TfArg.literal(false),
    );
    addData(zone);

    final bucket = AwsS3Bucket(
      localName: 'site',
      bucketPrefix: TfArg.literal('terradart-site-'),
      forceDestroy: TfArg.literal(true),
    );
    add(bucket);
    add(
      AwsS3BucketPublicAccessBlock(
        localName: 'site',
        bucket: TfArg.ref(bucket.id),
        blockPublicAcls: TfArg.literal(true),
        blockPublicPolicy: TfArg.literal(true),
        ignorePublicAcls: TfArg.literal(true),
        restrictPublicBuckets: TfArg.literal(true),
      ),
    );

    final oac = AwsCloudfrontOriginAccessControl(
      localName: 'site',
      name: TfArg.literal('terradart-static-site'),
      description: TfArg.literal('CloudFront reads the site bucket'),
      originAccessControlOriginType: TfArg.literal('s3'),
      signingBehavior: TfArg.literal('always'),
      signingProtocol: TfArg.literal('sigv4'),
    );
    add(oac);

    final cert = AwsAcmCertificate(
      localName: 'site',
      domainName: TfArg.literal(siteDomain),
      validationMethod: TfArg.literal('DNS'),
      lifecycle: const LifecycleOptions(createBeforeDestroy: true),
    );
    add(cert);

    // A single-domain certificate has exactly one validation option;
    // domain_validation_options is a set, so index it through tolist().
    final option = 'tolist(${cert.domainValidationOptions.bareAddress})[0]';
    final validationRecord = AwsRoute53Record(
      localName: 'site_validation',
      zoneId: TfArg.ref(zone.id),
      name: TfArg.expression('\${$option.resource_record_name}'),
      type: TfArg.expression('\${$option.resource_record_type}'),
      records: TfArg.literal(['\${$option.resource_record_value}']),
      ttl: TfArg.literal(60),
      allowOverwrite: TfArg.literal(true),
    );
    add(validationRecord);

    final validation = AwsAcmCertificateValidation(
      localName: 'site',
      certificateArn: TfArg.ref(cert.arn),
      validationRecordFqdns: TfArg.literal([
        validationRecord.fqdn.interpolation,
      ]),
    );
    add(validation);

    final cachingOptimized = DataAwsCloudfrontCachePolicy(
      localName: 'caching_optimized',
      name: TfArg.literal('Managed-CachingOptimized'),
    );
    addData(cachingOptimized);

    final distribution = AwsCloudfrontDistribution(
      localName: 'site',
      enabled: TfArg.literal(true),
      isIpv6Enabled: TfArg.literal(true),
      comment: TfArg.literal(siteDomain),
      aliases: TfArg.literal([siteDomain]),
      defaultRootObject: TfArg.literal('index.html'),
      priceClass: TfArg.literal('PriceClass_100'),
      origin: [
        CloudfrontDistributionOrigin(
          originId: TfArg.literal(_originId),
          domainName: TfArg.ref(bucket.bucketRegionalDomainName),
          originAccessControlId: TfArg.ref(oac.id),
        ),
      ],
      defaultCacheBehavior: CloudfrontDistributionDefaultCacheBehavior(
        targetOriginId: TfArg.literal(_originId),
        viewerProtocolPolicy: TfArg.literal('redirect-to-https'),
        allowedMethods: TfArg.literal(['GET', 'HEAD']),
        cachedMethods: TfArg.literal(['GET', 'HEAD']),
        cachePolicyId: TfArg.ref(cachingOptimized.id),
        compress: TfArg.literal(true),
      ),
      customErrorResponse: [
        for (final code in [403, 404])
          CloudfrontDistributionCustomErrorResponse(
            errorCode: TfArg.literal(code),
            responseCode: TfArg.literal(200),
            responsePagePath: TfArg.literal('/index.html'),
          ),
      ],
      restrictions: CloudfrontDistributionRestrictions(
        geoRestriction: CloudfrontDistributionRestrictionsGeoRestriction(
          restrictionType: TfArg.literal('none'),
        ),
      ),
      viewerCertificate: CloudfrontDistributionViewerCertificate(
        acmCertificateArn: TfArg.ref(cert.arn),
        sslSupportMethod: TfArg.literal('sni-only'),
        minimumProtocolVersion: TfArg.literal('TLSv1.2_2021'),
      ),
      dependsOn: [ResourceDependency(validation)],
    );
    add(distribution);

    final readFromCloudFront = DataAwsIamPolicyDocument(
      localName: 'site_bucket',
      statement: [
        DataIamPolicyDocumentStatement(
          sid: TfArg.literal('AllowCloudFrontRead'),
          effect: TfArg.literal('Allow'),
          actions: TfArg.literal(['s3:GetObject']),
          resources: TfArg.literal(['${bucket.arn.interpolation}/*']),
          principals: [
            DataIamPolicyDocumentStatementPrincipals(
              type: TfArg.literal('Service'),
              identifiers: TfArg.literal(['cloudfront.amazonaws.com']),
            ),
          ],
          condition: [
            DataIamPolicyDocumentStatementCondition(
              test: TfArg.literal('StringEquals'),
              variable: TfArg.literal('AWS:SourceArn'),
              values: TfArg.literal([TfArg.ref(distribution.arn)]),
            ),
          ],
        ),
      ],
    );
    addData(readFromCloudFront);
    add(
      AwsS3BucketPolicy(
        localName: 'site',
        bucket: TfArg.ref(bucket.id),
        policy: TfArg.ref(readFromCloudFront.json),
      ),
    );

    for (final type in ['A', 'AAAA']) {
      add(
        AwsRoute53Record(
          localName: 'site_${type.toLowerCase()}',
          zoneId: TfArg.ref(zone.id),
          name: TfArg.literal(siteDomain),
          type: TfArg.literal(type),
          alias: Route53RecordAlias(
            name: TfArg.ref(distribution.domainName),
            zoneId: TfArg.ref(distribution.hostedZoneId),
            evaluateTargetHealth: TfArg.literal(false),
          ),
        ),
      );
    }
  }
}
