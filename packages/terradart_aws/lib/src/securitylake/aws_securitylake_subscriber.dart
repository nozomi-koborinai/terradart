// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securitylake_subscriber`.
const Set<String> _awsSecuritylakeSubscriberSensitive = <String>{};

/// Typed helper for the `source` block of
/// `aws_securitylake_subscriber` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberSource {
  const SecuritylakeSubscriberSource({
    this.awsLogSourceResource,
    this.customLogSourceResource,
  });

  final List<SecuritylakeSubscriberSourceAwsLogSourceResource>?
  awsLogSourceResource;

  final List<SecuritylakeSubscriberSourceCustomLogSourceResource>?
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
final class SecuritylakeSubscriberSourceAwsLogSourceResource {
  const SecuritylakeSubscriberSourceAwsLogSourceResource({
    required this.sourceName,
    this.sourceVersion,
  });

  final TfArg<String> sourceName;

  final TfArg<String>? sourceVersion;

  Map<String, Object?> encode() => {
    'source_name': sourceName.toTfJson(),
    if (sourceVersion != null) 'source_version': sourceVersion!.toTfJson(),
  };
}

/// Typed helper for the `source.custom_log_source_resource` block of
/// `aws_securitylake_subscriber` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberSourceCustomLogSourceResource {
  const SecuritylakeSubscriberSourceCustomLogSourceResource({
    required this.sourceName,
    this.sourceVersion,
  });

  final TfArg<String> sourceName;

  final TfArg<String>? sourceVersion;

  Map<String, Object?> encode() => {
    'source_name': sourceName.toTfJson(),
    if (sourceVersion != null) 'source_version': sourceVersion!.toTfJson(),
  };
}

/// Typed helper for the `subscriber_identity` block of
/// `aws_securitylake_subscriber` (derived from provider schema).
@immutable
final class SecuritylakeSubscriberSubscriberIdentity {
  const SecuritylakeSubscriberSubscriberIdentity({
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

  AwsSecuritylakeSubscriber({
    required super.localName,
    TfArg<String>? accessType,
    TfArg<String>? region,
    TfArg<String>? subscriberDescription,
    TfArg<String>? subscriberName,
    TfArg<Map<String, String>>? tags,
    List<SecuritylakeSubscriberSource>? source,
    List<SecuritylakeSubscriberSubscriberIdentity>? subscriberIdentity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessType != null) 'access_type': accessType,
           if (region != null) 'region': region,
           if (subscriberDescription != null)
             'subscriber_description': subscriberDescription,
           if (subscriberName != null) 'subscriber_name': subscriberName,
           if (tags != null) 'tags': tags,
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
}
