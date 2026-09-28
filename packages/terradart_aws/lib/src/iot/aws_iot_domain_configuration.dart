// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_domain_configuration`.
const Set<String> _awsIotDomainConfigurationSensitive = <String>{};

/// Iot Domain Configuration Application enum for `application_protocol`.
enum IotDomainConfigurationApplicationProtocol implements TerraformEnum {
  secureMqtt('SECURE_MQTT'),
  mqttWss('MQTT_WSS'),
  https('HTTPS'),
  defaultCase('DEFAULT');

  const IotDomainConfigurationApplicationProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Iot Domain Configuration Authentication enum for `authentication_type`.
enum IotDomainConfigurationAuthenticationType implements TerraformEnum {
  customAuthX509('CUSTOM_AUTH_X509'),
  customAuth('CUSTOM_AUTH'),
  awsX509('AWS_X509'),
  awsSigv4('AWS_SIGV4'),
  defaultCase('DEFAULT');

  const IotDomainConfigurationAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Iot Domain Configuration Service enum for `service_type`.
enum IotDomainConfigurationServiceType implements TerraformEnum {
  data('DATA'),
  credentialProvider('CREDENTIAL_PROVIDER'),
  jobs('JOBS');

  const IotDomainConfigurationServiceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Iot Domain Configuration enum for `status`.
enum IotDomainConfigurationStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const IotDomainConfigurationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

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
    TfArg<IotDomainConfigurationApplicationProtocol>? applicationProtocol,
    TfArg<IotDomainConfigurationAuthenticationType>? authenticationType,
    TfArg<String>? domainName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<List<String>>? serverCertificateArns,
    TfArg<IotDomainConfigurationServiceType>? serviceType,
    TfArg<IotDomainConfigurationStatus>? status,
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
