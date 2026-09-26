// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_domain_configuration`.
const Set<String> _awsIotDomainConfigurationSensitive = <String>{};

/// Typed helper for the `authorizer_config` block of
/// `aws_iot_domain_configuration` (derived from provider schema).
@immutable
final class IotDomainConfigurationAuthorizerConfig {
  const IotDomainConfigurationAuthorizerConfig({
    this.allowAuthorizerOverride,
    this.defaultAuthorizerName,
  });

  final TfArg<bool>? allowAuthorizerOverride;

  final TfArg<String>? defaultAuthorizerName;

  Map<String, Object?> encode() => {
    if (allowAuthorizerOverride != null)
      'allow_authorizer_override': allowAuthorizerOverride!.toTfJson(),
    if (defaultAuthorizerName != null)
      'default_authorizer_name': defaultAuthorizerName!.toTfJson(),
  };
}

/// Typed helper for the `tls_config` block of
/// `aws_iot_domain_configuration` (derived from provider schema).
@immutable
final class IotDomainConfigurationTlsConfig {
  const IotDomainConfigurationTlsConfig({this.securityPolicy});

  final TfArg<String>? securityPolicy;

  Map<String, Object?> encode() => {
    if (securityPolicy != null) 'security_policy': securityPolicy!.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_domain_configuration`.
final class AwsIotDomainConfiguration extends Resource {
  static const String tfType = 'aws_iot_domain_configuration';

  AwsIotDomainConfiguration({
    required super.localName,
    TfArg<String>? applicationProtocol,
    TfArg<String>? authenticationType,
    TfArg<String>? domainName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<List<String>>? serverCertificateArns,
    TfArg<String>? serviceType,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? validationCertificateArn,
    IotDomainConfigurationAuthorizerConfig? authorizerConfig,
    IotDomainConfigurationTlsConfig? tlsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applicationProtocol != null)
             'application_protocol': applicationProtocol,
           if (authenticationType != null)
             'authentication_type': authenticationType,
           if (domainName != null) 'domain_name': domainName,
           'name': name,
           if (region != null) 'region': region,
           if (serverCertificateArns != null)
             'server_certificate_arns': serverCertificateArns,
           if (serviceType != null) 'service_type': serviceType,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (validationCertificateArn != null)
             'validation_certificate_arn': validationCertificateArn,
           if (authorizerConfig != null)
             'authorizer_config': TfArg.literal(authorizerConfig.encode()),
           if (tlsConfig != null)
             'tls_config': TfArg.literal(tlsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotDomainConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_type` attribute.
  TfRef<String> get domainType => TfRef.attribute<String>(this, 'domain_type');
}
