// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_space`.
const Set<String> _googleApigeeSpaceSensitive = <String>{};

/// Factory wrapper for `google_apigee_space`.
///
/// A Space in Apigee
///
/// Apigee **space** — isolation boundary for API products inside an org.
///
/// **Cost / apply:** gcp-cost: no Space SKU under Apigee `1C2D-8C78-EC58`
/// (list_skus keyword Space → 0). billing-behavior: requires a never_apply
/// [GoogleApigeeOrganization] (Gateway Node Hours `0136-18C1-DD41`
/// **$1.025/h**). Debt-only on `terradart-validate`. **Never** wire into
/// apply-smoke.
final class GoogleApigeeSpace extends Resource {
  static const String tfType = 'google_apigee_space';

  GoogleApigeeSpace({
    required super.localName,
    required TfArg<String> spaceId,
    required TfArg<String> orgId,
    required TfArg<String> displayName,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'space_id': spaceId,
           'org_id': orgId,
           'display_name': displayName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSpaceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceIdRef => TfRef.attribute<String>(this, 'space_id');
}
