// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appconfig_extension_association`.
const Set<String> _awsAppconfigExtensionAssociationSensitive = <String>{};

/// Factory wrapper for `aws_appconfig_extension_association`.
final class AwsAppconfigExtensionAssociation extends Resource {
  static const String tfType = 'aws_appconfig_extension_association';

  AwsAppconfigExtensionAssociation({
    required super.localName,
    required TfArg<String> extensionArn,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'extension_arn': extensionArn,
           'parameters': ?parameters,
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppconfigExtensionAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppconfigExtensionAssociation>`.
  RefTo<AwsAppconfigExtensionAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `extension_version` attribute.
  TfRef<num> get extensionVersion =>
      TfRef.attribute<num>(this, 'extension_version');

  /// Reference to `extension_arn` attribute.
  TfRef<String> get extensionArn =>
      TfRef.attribute<String>(this, 'extension_arn');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
