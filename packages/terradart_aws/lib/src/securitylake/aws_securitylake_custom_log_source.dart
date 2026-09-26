// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securitylake_custom_log_source`.
const Set<String> _awsSecuritylakeCustomLogSourceSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_securitylake_custom_log_source` (derived from provider schema).
@immutable
final class SecuritylakeCustomLogSourceConfiguration {
  const SecuritylakeCustomLogSourceConfiguration({
    this.crawlerConfiguration,
    this.providerIdentity,
  });

  final List<SecuritylakeCustomLogSourceConfigurationCrawlerConfiguration>?
  crawlerConfiguration;

  final List<SecuritylakeCustomLogSourceConfigurationProviderIdentity>?
  providerIdentity;

  Map<String, Object?> encode() => {
    if (crawlerConfiguration != null)
      'crawler_configuration': [
        for (final e in crawlerConfiguration!) e.encode(),
      ],
    if (providerIdentity != null)
      'provider_identity': [for (final e in providerIdentity!) e.encode()],
  };
}

/// Typed helper for the `configuration.crawler_configuration` block of
/// `aws_securitylake_custom_log_source` (derived from provider schema).
@immutable
final class SecuritylakeCustomLogSourceConfigurationCrawlerConfiguration {
  const SecuritylakeCustomLogSourceConfigurationCrawlerConfiguration({
    required this.roleArn,
  });

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {'role_arn': roleArn.toTfJson()};
}

/// Typed helper for the `configuration.provider_identity` block of
/// `aws_securitylake_custom_log_source` (derived from provider schema).
@immutable
final class SecuritylakeCustomLogSourceConfigurationProviderIdentity {
  const SecuritylakeCustomLogSourceConfigurationProviderIdentity({
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

/// Factory wrapper for `aws_securitylake_custom_log_source`.
final class AwsSecuritylakeCustomLogSource extends Resource {
  static const String tfType = 'aws_securitylake_custom_log_source';

  AwsSecuritylakeCustomLogSource({
    required super.localName,
    TfArg<List<String>>? eventClasses,
    TfArg<String>? region,
    required TfArg<String> sourceName,
    TfArg<String>? sourceVersion,
    List<SecuritylakeCustomLogSourceConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (eventClasses != null) 'event_classes': eventClasses,
           if (region != null) 'region': region,
           'source_name': sourceName,
           if (sourceVersion != null) 'source_version': sourceVersion,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecuritylakeCustomLogSourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attributes` attribute.
  TfRef<List<Map<String, Object?>>> get attributes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attributes');

  /// Reference to `provider_details` attribute.
  TfRef<List<Map<String, Object?>>> get providerDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'provider_details');
}
