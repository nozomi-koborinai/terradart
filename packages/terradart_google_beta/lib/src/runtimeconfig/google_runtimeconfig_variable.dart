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

  GoogleRuntimeconfigVariable(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    required TfArg<String> parent,
    TfArg<String>? project,
    Sensitive<String>? text,
    Sensitive<String>? value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'name': name,
           'parent': parent,
           'project': ?project,
           'text': ?text,
           'value': ?value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRuntimeconfigVariableSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRuntimeconfigVariable>`.
  RefTo<GoogleRuntimeconfigVariable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `text` attribute.
  TfRef<String> get text => TfRef.attribute<String>(this, 'text');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
