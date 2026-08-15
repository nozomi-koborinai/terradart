// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_application`.
const Set<String> _googleApphubApplicationSensitive = <String>{};

/// Factory wrapper for `google_apphub_application`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleApphubApplication extends Data {
  static const String tfType = 'google_apphub_application';

  DataGoogleApphubApplication({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> location,
    required TfArg<String> project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'location': location,
           'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attributes` attribute.
  TfRef<List<Map<String, Object?>>> get attributes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attributes');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `scope` attribute.
  TfRef<List<Map<String, Object?>>> get scope =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scope');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
