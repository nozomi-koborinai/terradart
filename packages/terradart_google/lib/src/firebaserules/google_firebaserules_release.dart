// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebaserules_release`.
const Set<String> _googleFirebaserulesReleaseSensitive = <String>{};

/// Factory wrapper for `google_firebaserules_release`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleFirebaserulesRelease extends Resource {
  static const String tfType = 'google_firebaserules_release';

  GoogleFirebaserulesRelease({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> rulesetName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'name': name,
           'project': ?project,
           'ruleset_name': rulesetName,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaserulesReleaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaserulesRelease>`.
  RefTo<GoogleFirebaserulesRelease> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `ruleset_name` attribute.
  TfRef<String> get rulesetName =>
      TfRef.attribute<String>(this, 'ruleset_name');
}
