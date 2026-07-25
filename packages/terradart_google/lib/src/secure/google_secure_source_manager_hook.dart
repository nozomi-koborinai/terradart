// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secure_source_manager_hook`.
const Set<String> _googleSecureSourceManagerHookSensitive = <String>{
  'sensitive_query_string',
};

/// Typed helper for the `push_option` block of
/// `google_secure_source_manager_hook` (derived from provider schema).
@immutable
final class SecureSourceManagerHookPushOption {
  const SecureSourceManagerHookPushOption({this.branchFilter});

  final TfArg<String>? branchFilter;

  Map<String, Object?> encode() => {
    if (branchFilter != null) 'branch_filter': branchFilter!.toTfJson(),
  };
}

/// Factory wrapper for `google_secure_source_manager_hook`.
///
/// Hook is a user-defined HTTP callback triggered by an event.
///
/// Secure Source Manager **webhook hook** — HTTP callback on repository
/// events.
///
/// **Cost / apply:** gcp-cost: no hook SKU under Secure Source Manager
/// `ADD4-3782-815A` (instance Fixed Pricing only, e.g. `9B40-B4AA-D8EE`
/// **$1000/mo**). billing-behavior: requires a never_apply
/// [GoogleSecureSourceManagerInstance] (+ repository). Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleSecureSourceManagerHook extends Resource {
  static const String tfType = 'google_secure_source_manager_hook';

  GoogleSecureSourceManagerHook({
    required super.localName,
    required TfArg<String> hookId,
    required TfArg<String> location,
    required TfArg<String> repositoryId,
    required TfArg<String> targetUri,
    TfArg<List<String>>? events,
    TfArg<bool>? disabled,
    TfArg<String>? sensitiveQueryString,
    SecureSourceManagerHookPushOption? pushOption,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hook_id': hookId,
           'location': location,
           'repository_id': repositoryId,
           'target_uri': targetUri,
           if (events != null) 'events': events,
           if (disabled != null) 'disabled': disabled,
           if (sensitiveQueryString != null)
             'sensitive_query_string': sensitiveQueryString,
           if (pushOption != null)
             'push_option': TfArg.literal(pushOption.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecureSourceManagerHookSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `hook_id` attribute.
  TfRef<String> get hookIdRef => TfRef.attribute<String>(this, 'hook_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
