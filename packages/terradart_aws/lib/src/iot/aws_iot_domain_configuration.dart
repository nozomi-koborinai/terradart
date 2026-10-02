// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_domain_configuration`.
const Set<String> _awsIotDomainConfigurationSensitive = <String>{};

/// Iot Domain Configuration Application enum for `application_protocol`.
extension type const IotDomainConfigurationApplicationProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  IotDomainConfigurationApplicationProtocol.variable(String name)
    : this._(TfArg.variable(name));
  IotDomainConfigurationApplicationProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const IotDomainConfigurationApplicationProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const secureMqtt = IotDomainConfigurationApplicationProtocol._(
    TfArgLiteral('SECURE_MQTT'),
  );
  static const mqttWss = IotDomainConfigurationApplicationProtocol._(
    TfArgLiteral('MQTT_WSS'),
  );
  static const https = IotDomainConfigurationApplicationProtocol._(
    TfArgLiteral('HTTPS'),
  );
  static const defaultCase = IotDomainConfigurationApplicationProtocol._(
    TfArgLiteral('DEFAULT'),
  );

  static const List<IotDomainConfigurationApplicationProtocol> values = [
    secureMqtt,
    mqttWss,
    https,
    defaultCase,
  ];
}

/// Iot Domain Configuration Authentication enum for `authentication_type`.
extension type const IotDomainConfigurationAuthenticationType._(TfArg<String> _)
    implements TfArg<String> {
  IotDomainConfigurationAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  IotDomainConfigurationAuthenticationType.expression(String template)
    : this._(TfArg.expression(template));
  const IotDomainConfigurationAuthenticationType.arg(TfArg<String> arg)
    : this._(arg);

  static const customAuthX509 = IotDomainConfigurationAuthenticationType._(
    TfArgLiteral('CUSTOM_AUTH_X509'),
  );
  static const customAuth = IotDomainConfigurationAuthenticationType._(
    TfArgLiteral('CUSTOM_AUTH'),
  );
  static const awsX509 = IotDomainConfigurationAuthenticationType._(
    TfArgLiteral('AWS_X509'),
  );
  static const awsSigv4 = IotDomainConfigurationAuthenticationType._(
    TfArgLiteral('AWS_SIGV4'),
  );
  static const defaultCase = IotDomainConfigurationAuthenticationType._(
    TfArgLiteral('DEFAULT'),
  );

  static const List<IotDomainConfigurationAuthenticationType> values = [
    customAuthX509,
    customAuth,
    awsX509,
    awsSigv4,
    defaultCase,
  ];
}

/// Iot Domain Configuration Service enum for `service_type`.
extension type const IotDomainConfigurationServiceType._(TfArg<String> _)
    implements TfArg<String> {
  IotDomainConfigurationServiceType.variable(String name)
    : this._(TfArg.variable(name));
  IotDomainConfigurationServiceType.expression(String template)
    : this._(TfArg.expression(template));
  const IotDomainConfigurationServiceType.arg(TfArg<String> arg) : this._(arg);

  static const data = IotDomainConfigurationServiceType._(TfArgLiteral('DATA'));
  static const credentialProvider = IotDomainConfigurationServiceType._(
    TfArgLiteral('CREDENTIAL_PROVIDER'),
  );
  static const jobs = IotDomainConfigurationServiceType._(TfArgLiteral('JOBS'));

  static const List<IotDomainConfigurationServiceType> values = [
    data,
    credentialProvider,
    jobs,
  ];
}

/// Iot Domain Configuration enum for `status`.
extension type const IotDomainConfigurationStatus._(TfArg<String> _)
    implements TfArg<String> {
  IotDomainConfigurationStatus.variable(String name)
    : this._(TfArg.variable(name));
  IotDomainConfigurationStatus.expression(String template)
    : this._(TfArg.expression(template));
  const IotDomainConfigurationStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = IotDomainConfigurationStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = IotDomainConfigurationStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<IotDomainConfigurationStatus> values = [enabled, disabled];
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

  @internal
  Map<String, Object?> encode() => {
    'allow_authorizer_override': ?allowAuthorizerOverride?.toTfJson(),
    'default_authorizer_name': ?defaultAuthorizerName?.toTfJson(),
  };
}

/// Typed helper for the `tls_config` block of
/// `aws_iot_domain_configuration` (derived from provider schema).
@immutable
final class IotDomainConfigurationTlsConfig {
  const IotDomainConfigurationTlsConfig({this.securityPolicy});

  final TfArg<String>? securityPolicy;

  @internal
  Map<String, Object?> encode() => {
    'security_policy': ?securityPolicy?.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_domain_configuration`.
final class AwsIotDomainConfiguration extends Resource {
  static const String tfType = 'aws_iot_domain_configuration';

  AwsIotDomainConfiguration(
    super.localName, {
    IotDomainConfigurationApplicationProtocol? applicationProtocol,
    IotDomainConfigurationAuthenticationType? authenticationType,
    TfArg<String>? domainName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<List<String>>? serverCertificateArns,
    IotDomainConfigurationServiceType? serviceType,
    IotDomainConfigurationStatus? status,
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
           'application_protocol': ?applicationProtocol,
           'authentication_type': ?authenticationType,
           'domain_name': ?domainName,
           'name': name,
           'region': ?region,
           'server_certificate_arns': ?serverCertificateArns,
           'service_type': ?serviceType,
           'status': ?status,
           'tags': ?tags,
           'validation_certificate_arn': ?validationCertificateArn,
           if (authorizerConfig != null)
             'authorizer_config': TfArg.literal(authorizerConfig.encode()),
           if (tlsConfig != null)
             'tls_config': TfArg.literal(tlsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotDomainConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotDomainConfiguration>`.
  RefTo<AwsIotDomainConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_type` attribute.
  TfRef<String> get domainType => TfRef.attribute<String>(this, 'domain_type');

  /// Reference to `application_protocol` attribute.
  TfRef<String> get applicationProtocol =>
      TfRef.attribute<String>(this, 'application_protocol');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_certificate_arns` attribute.
  TfRef<List<String>> get serverCertificateArns =>
      TfRef.attribute<List<String>>(this, 'server_certificate_arns');

  /// Reference to `service_type` attribute.
  TfRef<String> get serviceType =>
      TfRef.attribute<String>(this, 'service_type');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `validation_certificate_arn` attribute.
  TfRef<String> get validationCertificateArn =>
      TfRef.attribute<String>(this, 'validation_certificate_arn');
}
