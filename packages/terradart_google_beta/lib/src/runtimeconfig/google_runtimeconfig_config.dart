// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_runtimeconfig_config`.
const Set<String> _googleRuntimeconfigConfigSensitive = <String>{};

/// Factory wrapper for `google_runtimeconfig_config`.
final class GoogleRuntimeconfigConfig extends Resource {
  static const String tfType = 'google_runtimeconfig_config';

  GoogleRuntimeconfigConfig({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRuntimeconfigConfigSensitive;
}
