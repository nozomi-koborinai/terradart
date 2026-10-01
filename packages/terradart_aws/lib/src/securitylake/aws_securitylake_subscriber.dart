// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securitylake_subscriber`.
const Set<String> _awsSecuritylakeSubscriberSensitive = <String>{};

/// Securitylake Subscriber Access enum for `access_type`.
extension type const SecuritylakeSubscriberAccessType._(TfArg<String> _)
    implements TfArg<String> {
  SecuritylakeSubscriberAccessType.variable(String name)
    : this._(TfArg.variable(name));
  SecuritylakeSubscriberAccessType.expression(String template)
    : this._(TfArg.expression(template));
  const SecuritylakeSubscriberAccessType.arg(TfArg<String> arg) : this._(arg);

  static const lakeformation = SecuritylakeSubscriberAccessType._(
    TfArgLiteral('LAKEFORMATION'),
  );
  static const s3 = SecuritylakeSubscriberAccessType._(TfArgLiteral('S3'));

  static const List<SecuritylakeSubscriberAccessType> values = [
    lakeformation,
    s3,
  ];
}

/// Typed helper for the `source` block of
/// `aws_securitylake_subscriber` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberSource {
  const SecuritylakeSubscriberSource({
    this.awsLogSourceResource,
    this.customLogSourceResource,
  });

  final List<SecuritylakeSubscriberAwsLogSourceResource>? awsLogSourceResource;

  final List<SecuritylakeSubscriberCustomLogSourceResource>?
  customLogSourceResource;

  Map<String, Object?> encode() => {
    if (awsLogSourceResource != null)
      'aws_log_source_resource': [
        for (final e in awsLogSourceResource!) e.encode(),
      ],
    if (customLogSourceResource != null)
      'custom_log_source_resource': [
        for (final e in customLogSourceResource!) e.encode(),
      ],
  };
}

/// Typed helper for the `source.aws_log_source_resource` block of
/// `aws_securitylake_subscriber` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberAwsLogSourceResource {
  const SecuritylakeSubscriberAwsLogSourceResource({
    required this.sourceName,
    this.sourceVersion,
  });

  final SecuritylakeSubscriberSourceName sourceName;

  final TfArg<String>? sourceVersion;

  Map<String, Object?> encode() => {
    'source_name': sourceName.toTfJson(),
    'source_version': ?sourceVersion?.toTfJson(),
  };
}

/// `source_name` — derived from the provider schema description.
extension type const SecuritylakeSubscriberSourceName._(TfArg<String> _)
    implements TfArg<String> {
  SecuritylakeSubscriberSourceName.variable(String name)
    : this._(TfArg.variable(name));
  SecuritylakeSubscriberSourceName.expression(String template)
    : this._(TfArg.expression(template));
  const SecuritylakeSubscriberSourceName.arg(TfArg<String> arg) : this._(arg);

  static const route53 = SecuritylakeSubscriberSourceName._(
    TfArgLiteral('ROUTE53'),
  );
  static const vpcFlow = SecuritylakeSubscriberSourceName._(
    TfArgLiteral('VPC_FLOW'),
  );
  static const shFindings = SecuritylakeSubscriberSourceName._(
    TfArgLiteral('SH_FINDINGS'),
  );
  static const cloudTrailMgmt = SecuritylakeSubscriberSourceName._(
    TfArgLiteral('CLOUD_TRAIL_MGMT'),
  );
  static const lambdaExecution = SecuritylakeSubscriberSourceName._(
    TfArgLiteral('LAMBDA_EXECUTION'),
  );
  static const s3Data = SecuritylakeSubscriberSourceName._(
    TfArgLiteral('S3_DATA'),
  );
  static const eksAudit = SecuritylakeSubscriberSourceName._(
    TfArgLiteral('EKS_AUDIT'),
  );
  static const waf = SecuritylakeSubscriberSourceName._(TfArgLiteral('WAF'));

  static const List<SecuritylakeSubscriberSourceName> values = [
    route53,
    vpcFlow,
    shFindings,
    cloudTrailMgmt,
    lambdaExecution,
    s3Data,
    eksAudit,
    waf,
  ];
}

/// Typed helper for the `source.custom_log_source_resource` block of
/// `aws_securitylake_subscriber` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberCustomLogSourceResource {
  const SecuritylakeSubscriberCustomLogSourceResource({
    required this.sourceName,
    this.sourceVersion,
  });

  final TfArg<String> sourceName;

  final TfArg<String>? sourceVersion;

  Map<String, Object?> encode() => {
    'source_name': sourceName.toTfJson(),
    'source_version': ?sourceVersion?.toTfJson(),
  };
}

/// Typed helper for the `subscriber_identity` block of
/// `aws_securitylake_subscriber` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberIdentity {
  const SecuritylakeSubscriberIdentity({
    required this.externalId,
    required this.principal,
  });

  final TfArg<String> externalId;

  final TfArg<String> principal;

  Map<String, Object?> encode() => {
    'external_id': externalId.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Factory wrapper for `aws_securitylake_subscriber`.
final class AwsSecuritylakeSubscriber extends Resource {
  static const String tfType = 'aws_securitylake_subscriber';

  AwsSecuritylakeSubscriber(
    super.localName, {
    SecuritylakeSubscriberAccessType? accessType,
    TfArg<String>? region,
    TfArg<String>? subscriberDescription,
    TfArg<String>? subscriberName,
    TfArg<Map<String, String>>? tags,
    List<SecuritylakeSubscriberSource>? source,
    List<SecuritylakeSubscriberIdentity>? subscriberIdentity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_type': ?accessType,
           'region': ?region,
           'subscriber_description': ?subscriberDescription,
           'subscriber_name': ?subscriberName,
           'tags': ?tags,
           if (source != null)
             'source': TfArg.literal([for (final e in source) e.encode()]),
           if (subscriberIdentity != null)
             'subscriber_identity': TfArg.literal([
               for (final e in subscriberIdentity) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecuritylakeSubscriberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecuritylakeSubscriber>`.
  RefTo<AwsSecuritylakeSubscriber> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `resource_share_arn` attribute.
  TfRef<String> get resourceShareArn =>
      TfRef.attribute<String>(this, 'resource_share_arn');

  /// Reference to `resource_share_name` attribute.
  TfRef<String> get resourceShareName =>
      TfRef.attribute<String>(this, 'resource_share_name');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `s3_bucket_arn` attribute.
  TfRef<String> get s3BucketArn =>
      TfRef.attribute<String>(this, 's3_bucket_arn');

  /// Reference to `subscriber_endpoint` attribute.
  TfRef<String> get subscriberEndpoint =>
      TfRef.attribute<String>(this, 'subscriber_endpoint');

  /// Reference to `subscriber_status` attribute.
  TfRef<String> get subscriberStatus =>
      TfRef.attribute<String>(this, 'subscriber_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `access_type` attribute.
  TfRef<String> get accessType => TfRef.attribute<String>(this, 'access_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subscriber_description` attribute.
  TfRef<String> get subscriberDescription =>
      TfRef.attribute<String>(this, 'subscriber_description');

  /// Reference to `subscriber_name` attribute.
  TfRef<String> get subscriberName =>
      TfRef.attribute<String>(this, 'subscriber_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
