// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_runtimeconfig_variable`.
const Set<String> _googleRuntimeconfigVariableSensitive = <String>{
  'text',
  'value',
};

/// Factory wrapper for `google_runtimeconfig_variable`.
final class GoogleRuntimeconfigVariable extends Resource {
  static const String tfType = 'google_runtimeconfig_variable';

  GoogleRuntimeconfigVariable({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    required TfArg<String> parent,
    TfArg<String>? project,
    TfArg<String>? text,
    TfArg<String>? value,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'name': name,
           'parent': parent,
           if (project != null) 'project': project,
           if (text != null) 'text': text,
           if (value != null) 'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRuntimeconfigVariableSensitive;
}
