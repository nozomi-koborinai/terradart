// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_website_configuration`.
const Set<String> _awsS3BucketWebsiteConfigurationSensitive = <String>{};

/// Typed helper for the `error_document` block of
/// `aws_s3_bucket_website_configuration` (derived from provider schema).
@immutable
final class S3BucketWebsiteConfigurationErrorDocument {
  const S3BucketWebsiteConfigurationErrorDocument({required this.key});

  final TfArg<String> key;

  Map<String, Object?> encode() => {'key': key.toTfJson()};
}

/// Typed helper for the `index_document` block of
/// `aws_s3_bucket_website_configuration` (derived from provider schema).
@immutable
final class S3BucketWebsiteConfigurationIndexDocument {
  const S3BucketWebsiteConfigurationIndexDocument({required this.suffix});

  final TfArg<String> suffix;

  Map<String, Object?> encode() => {'suffix': suffix.toTfJson()};
}

/// Typed helper for the `redirect_all_requests_to` block of
/// `aws_s3_bucket_website_configuration` (derived from provider schema).
@immutable
final class S3BucketWebsiteConfigurationRedirectAllRequestsTo {
  const S3BucketWebsiteConfigurationRedirectAllRequestsTo({
    required this.hostName,
    this.protocol,
  });

  final TfArg<String> hostName;

  final TfArg<String>? protocol;

  Map<String, Object?> encode() => {
    'host_name': hostName.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
  };
}

/// Typed helper for the `routing_rule` block of
/// `aws_s3_bucket_website_configuration` (derived from provider schema).
@immutable
final class S3BucketWebsiteConfigurationRoutingRule {
  const S3BucketWebsiteConfigurationRoutingRule({
    this.condition,
    required this.redirect,
  });

  final S3BucketWebsiteConfigurationRoutingRuleCondition? condition;

  final S3BucketWebsiteConfigurationRoutingRuleRedirect redirect;

  Map<String, Object?> encode() => {
    if (condition != null) 'condition': condition!.encode(),
    'redirect': redirect.encode(),
  };
}

/// Typed helper for the `routing_rule.condition` block of
/// `aws_s3_bucket_website_configuration` (derived from provider schema).
@immutable
final class S3BucketWebsiteConfigurationRoutingRuleCondition {
  const S3BucketWebsiteConfigurationRoutingRuleCondition({
    this.httpErrorCodeReturnedEquals,
    this.keyPrefixEquals,
  });

  final TfArg<String>? httpErrorCodeReturnedEquals;

  final TfArg<String>? keyPrefixEquals;

  Map<String, Object?> encode() => {
    if (httpErrorCodeReturnedEquals != null)
      'http_error_code_returned_equals': httpErrorCodeReturnedEquals!
          .toTfJson(),
    if (keyPrefixEquals != null)
      'key_prefix_equals': keyPrefixEquals!.toTfJson(),
  };
}

/// Typed helper for the `routing_rule.redirect` block of
/// `aws_s3_bucket_website_configuration` (derived from provider schema).
@immutable
final class S3BucketWebsiteConfigurationRoutingRuleRedirect {
  const S3BucketWebsiteConfigurationRoutingRuleRedirect({
    this.hostName,
    this.httpRedirectCode,
    this.protocol,
    this.replaceKeyPrefixWith,
    this.replaceKeyWith,
  });

  final TfArg<String>? hostName;

  final TfArg<String>? httpRedirectCode;

  final TfArg<String>? protocol;

  final TfArg<String>? replaceKeyPrefixWith;

  final TfArg<String>? replaceKeyWith;

  Map<String, Object?> encode() => {
    if (hostName != null) 'host_name': hostName!.toTfJson(),
    if (httpRedirectCode != null)
      'http_redirect_code': httpRedirectCode!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (replaceKeyPrefixWith != null)
      'replace_key_prefix_with': replaceKeyPrefixWith!.toTfJson(),
    if (replaceKeyWith != null) 'replace_key_with': replaceKeyWith!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_website_configuration`.
final class AwsS3BucketWebsiteConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_website_configuration';

  AwsS3BucketWebsiteConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    TfArg<String>? routingRules,
    S3BucketWebsiteConfigurationErrorDocument? errorDocument,
    S3BucketWebsiteConfigurationIndexDocument? indexDocument,
    S3BucketWebsiteConfigurationRedirectAllRequestsTo? redirectAllRequestsTo,
    List<S3BucketWebsiteConfigurationRoutingRule>? routingRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           if (routingRules != null) 'routing_rules': routingRules,
           if (errorDocument != null)
             'error_document': TfArg.literal(errorDocument.encode()),
           if (indexDocument != null)
             'index_document': TfArg.literal(indexDocument.encode()),
           if (redirectAllRequestsTo != null)
             'redirect_all_requests_to': TfArg.literal(
               redirectAllRequestsTo.encode(),
             ),
           if (routingRule != null)
             'routing_rule': TfArg.literal([
               for (final e in routingRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketWebsiteConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `website_domain` attribute.
  TfRef<String> get websiteDomain =>
      TfRef.attribute<String>(this, 'website_domain');

  /// Reference to `website_endpoint` attribute.
  TfRef<String> get websiteEndpoint =>
      TfRef.attribute<String>(this, 'website_endpoint');
}
