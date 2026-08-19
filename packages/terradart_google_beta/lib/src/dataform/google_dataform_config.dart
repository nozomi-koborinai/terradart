// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_config`.
const Set<String> _googleDataformConfigSensitive = <String>{};

/// Factory wrapper for `google_dataform_config`.
final class GoogleDataformConfig extends Resource {
  static const String tfType = 'google_dataform_config';

  GoogleDataformConfig({
    required super.localName,
    TfArg<String>? defaultKmsKeyName,
    TfArg<String>? project,
    required TfArg<String> region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (defaultKmsKeyName != null)
             'default_kms_key_name': defaultKmsKeyName,
           if (project != null) 'project': project,
           'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformConfigSensitive;
}
