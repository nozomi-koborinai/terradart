// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_config`.
const Set<String> _googleDataformConfigSensitive = <String>{};

/// Factory wrapper for `google_dataform_config`.
///
/// Config is a singleton resource used to configure the default Dataform
/// settings for a specified location.
final class GoogleDataformConfig extends Resource {
  static const String tfType = 'google_dataform_config';

  GoogleDataformConfig(
    super.localName, {
    TfArg<String>? defaultKmsKeyName,
    TfArg<String>? project,
    required TfArg<String> region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_kms_key_name': ?defaultKmsKeyName,
           'project': ?project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformConfigSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformConfig>`.
  RefTo<GoogleDataformConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_kms_key_name` attribute.
  TfRef<String> get defaultKmsKeyName =>
      TfRef.attribute<String>(this, 'default_kms_key_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
