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
      name: .literal(hostedZone),
      privateZone: .literal(false),
    );
    addData(zone);

    final bucket = AwsS3Bucket(
      localName: 'site',
      bucket: .bucketPrefix(.literal('terradart-site-')),
      forceDestroy: .literal(true),
    );
    add(bucket);
    add(
      AwsS3BucketPublicAccessBlock(
        localName: 'site',
        bucket: .ref(bucket.id),
        blockPublicAcls: .literal(true),
        blockPublicPolicy: .literal(true),
        ignorePublicAcls: .literal(true),
        restrictPublicBuckets: .literal(true),
      ),
    );

    final oac = AwsCloudfrontOriginAccessControl(
      localName: 'site',
      name: .literal('terradart-static-site'),
      description: .literal('CloudFront reads the site bucket'),
      originAccessControlOriginType: .literal(.s3),
      signingBehavior: .literal(.always),
      signingProtocol: .literal(.sigv4),
    );
    add(oac);

    final cert = AwsAcmCertificate(
      localName: 'site',
      source: .domainName(.literal(siteDomain)),
      validationMethod: .literal(.dns),
      lifecycle: const LifecycleOptions(createBeforeDestroy: true),
    );
    add(cert);

    // A single-domain certificate has exactly one validation option;
    // domain_validation_options is a set, so index it through tolist().
    final option = 'tolist(${cert.domainValidationOptions.bareAddress})[0]';
    final validationRecord = AwsRoute53Record(
      localName: 'site_validation',
      zoneId: .ref(zone.id),
      name: TfArg.expression('\${$option.resource_record_name}'),
      type: TfArg.expression('\${$option.resource_record_type}'),
      target: .records(.literal(['\${$option.resource_record_value}'])),
      ttl: .literal(60),
      allowOverwrite: .literal(true),
    );
    add(validationRecord);

    final validation = AwsAcmCertificateValidation(
      localName: 'site',
      certificateArn: .ref(cert.arn),
      validationRecordFqdns: .literal([validationRecord.fqdn.interpolation]),
    );
    add(validation);

    final cachingOptimized = DataAwsCloudfrontCachePolicy(
      localName: 'caching_optimized',
      name: .literal('Managed-CachingOptimized'),
    );
    addData(cachingOptimized);

    final distribution = AwsCloudfrontDistribution(
      localName: 'site',
      enabled: .literal(true),
      isIpv6Enabled: .literal(true),
      comment: .literal(siteDomain),
      aliases: .literal([siteDomain]),
      defaultRootObject: .literal('index.html'),
      priceClass: .literal(.priceclass100),
      origin: [
        CloudfrontDistributionOrigin(
          originId: .literal(_originId),
          domainName: .ref(bucket.bucketRegionalDomainName),
          originAccessControlId: .ref(oac.id),
        ),
      ],
      defaultCacheBehavior: CloudfrontDistributionDefaultCacheBehavior(
        targetOriginId: .literal(_originId),
        viewerProtocolPolicy: .literal(
          CloudfrontDistributionDefaultCacheBehaviorViewerProtocolPolicy
              .redirectToHttps,
        ),
        allowedMethods: .literal(['GET', 'HEAD']),
        cachedMethods: .literal(['GET', 'HEAD']),
        cachePolicyId: .ref(cachingOptimized.id),
        compress: .literal(true),
      ),
      customErrorResponse: [
        for (final code in [403, 404])
          CloudfrontDistributionCustomErrorResponse(
            errorCode: .literal(code),
            responseCode: .literal(200),
            responsePagePath: .literal('/index.html'),
          ),
      ],
      restrictions: CloudfrontDistributionRestrictions(
        geoRestriction: CloudfrontDistributionRestrictionsGeoRestriction(
          restrictionType: .literal(
            CloudfrontDistributionRestrictionsGeoRestrictionRestrictionType
                .none,
          ),
        ),
      ),
      viewerCertificate: CloudfrontDistributionViewerCertificate(
        acmCertificateArn: .ref(cert.arn),
        sslSupportMethod: .literal(.sniOnly),
        minimumProtocolVersion: .literal(
          CloudfrontDistributionViewerCertificateMinimumProtocolVersion
              .tlsv1p2x2021,
        ),
      ),
      dependsOn: [ResourceDependency(validation)],
    );
    add(distribution);

    final readFromCloudFront = DataAwsIamPolicyDocument(
      localName: 'site_bucket',
      statement: [
        DataIamPolicyDocumentStatement(
          sid: .literal('AllowCloudFrontRead'),
          effect: .literal('Allow'),
          actions: .literal(['s3:GetObject']),
          resources: .literal(['${bucket.arn.interpolation}/*']),
          principals: [
            DataIamPolicyDocumentStatementPrincipals(
              type: .literal('Service'),
              identifiers: .literal(['cloudfront.amazonaws.com']),
            ),
          ],
          condition: [
            DataIamPolicyDocumentStatementCondition(
              test: .literal('StringEquals'),
              variable: .literal('AWS:SourceArn'),
              values: .literal([TfArg.ref(distribution.arn)]),
            ),
          ],
        ),
      ],
    );
    addData(readFromCloudFront);
    add(
      AwsS3BucketPolicy(
        localName: 'site',
        bucket: .ref(bucket.id),
        policy: .ref(readFromCloudFront.json),
      ),
    );

    for (final type in [Route53RecordType.a, Route53RecordType.aaaa]) {
      add(
        AwsRoute53Record(
          localName: 'site_${type.name}',
          zoneId: .ref(zone.id),
          name: .literal(siteDomain),
          type: .literal(type),
          target: .alias(
            Route53RecordAlias(
              name: .ref(distribution.domainName),
              zoneId: .ref(distribution.hostedZoneId),
              evaluateTargetHealth: .literal(false),
            ),
          ),
        ),
      );
    }
  }
}
