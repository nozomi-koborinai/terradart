// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_connector`.
const Set<String> _awsConfigConnectorSensitive = <String>{};

/// Typed helper for the `connector_configuration` block of
/// `aws_config_connector` (derived from provider schema).
@immutable
final class ConfigConnectorConfiguration {
  const ConfigConnectorConfiguration({this.azure});

  final List<ConfigConnectorAzure>? azure;

  @internal
  Map<String, Object?> encode() => {
    if (azure != null) 'azure': [for (final e in azure!) e.encode()],
  };
}

/// Typed helper for the `connector_configuration.azure` block of
/// `aws_config_connector` (derived from provider schema).
@immutable
final class ConfigConnectorAzure {
  const ConfigConnectorAzure({
    required this.clientIdentifier,
    required this.tenantIdentifier,
  });

  final TfArg<String> clientIdentifier;

  final TfArg<String> tenantIdentifier;

  @internal
  Map<String, Object?> encode() => {
    'client_identifier': clientIdentifier.toTfJson(),
    'tenant_identifier': tenantIdentifier.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_connector`.
final class AwsConfigConnector extends Resource {
  static const String tfType = 'aws_config_connector';

  AwsConfigConnector(
    super.localName, {
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<ConfigConnectorConfiguration>? connectorConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'tags': ?tags,
           if (connectorConfiguration != null)
             'connector_configuration': TfArg.literal([
               for (final e in connectorConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigConnector>`.
  RefTo<AwsConfigConnector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
