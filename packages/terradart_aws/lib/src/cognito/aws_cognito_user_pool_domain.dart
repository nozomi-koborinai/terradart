// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool_domain`.
const Set<String> _awsCognitoUserPoolDomainSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_pool_domain`.
final class AwsCognitoUserPoolDomain extends Resource {
  static const String tfType = 'aws_cognito_user_pool_domain';

  AwsCognitoUserPoolDomain({
    required super.localName,
    TfArg<String>? certificateArn,
    required TfArg<String> domain,
    TfArg<num>? managedLoginVersion,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_arn': ?certificateArn,
           'domain': domain,
           'managed_login_version': ?managedLoginVersion,
           'region': ?region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserPoolDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoUserPoolDomain>`.
  RefTo<AwsCognitoUserPoolDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `cloudfront_distribution` attribute.
  TfRef<String> get cloudfrontDistribution =>
      TfRef.attribute<String>(this, 'cloudfront_distribution');

  /// Reference to `cloudfront_distribution_arn` attribute.
  TfRef<String> get cloudfrontDistributionArn =>
      TfRef.attribute<String>(this, 'cloudfront_distribution_arn');

  /// Reference to `cloudfront_distribution_zone_id` attribute.
  TfRef<String> get cloudfrontDistributionZoneId =>
      TfRef.attribute<String>(this, 'cloudfront_distribution_zone_id');

  /// Reference to `s3_bucket` attribute.
  TfRef<String> get s3Bucket => TfRef.attribute<String>(this, 's3_bucket');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArnRef =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `managed_login_version` attribute.
  TfRef<num> get managedLoginVersionRef =>
      TfRef.attribute<num>(this, 'managed_login_version');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolIdRef =>
      TfRef.attribute<String>(this, 'user_pool_id');
}
