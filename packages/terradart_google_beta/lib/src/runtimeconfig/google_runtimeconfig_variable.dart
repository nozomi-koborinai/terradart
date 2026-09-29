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
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRuntimeconfigVariable>`.
  RefTo<GoogleRuntimeconfigVariable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
