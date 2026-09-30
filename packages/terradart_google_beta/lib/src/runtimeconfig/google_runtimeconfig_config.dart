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
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'name': name,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRuntimeconfigConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRuntimeconfigConfig>`.
  RefTo<GoogleRuntimeconfigConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
