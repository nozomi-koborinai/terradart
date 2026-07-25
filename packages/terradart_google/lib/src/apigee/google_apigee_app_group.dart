// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_app_group`.
const Set<String> _googleApigeeAppGroupSensitive = <String>{};

/// Apigee App Group enum for `status`.
enum ApigeeAppGroupStatus implements TerraformEnum {
  active('active'),
  inactive('inactive');

  const ApigeeAppGroupStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes` block of
/// `google_apigee_app_group` (derived from provider schema).
@immutable
final class ApigeeAppGroupAttributes {
  const ApigeeAppGroupAttributes({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_app_group`.
///
/// An `AppGroup` in Apigee.
///
/// Apigee **app group** — grouping of developer apps in an organization.
///
/// **Cost / apply:** gcp-cost: no Group SKU under Apigee `1C2D-8C78-EC58`
/// (list_skus keyword Group → 0). billing-behavior: requires a never_apply
/// [GoogleApigeeOrganization] (Gateway Node Hours `0136-18C1-DD41`
/// **$1.025/h**). Debt-only on `terradart-validate`. **Never** wire into
/// apply-smoke.
final class GoogleApigeeAppGroup extends Resource {
  static const String tfType = 'google_apigee_app_group';

  GoogleApigeeAppGroup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> orgId,
    TfArg<String>? displayName,
    TfArg<String>? channelId,
    TfArg<String>? channelUri,
    TfArg<ApigeeAppGroupStatus>? status,
    List<ApigeeAppGroupAttributes>? attributes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           if (displayName != null) 'display_name': displayName,
           if (channelId != null) 'channel_id': channelId,
           if (channelUri != null) 'channel_uri': channelUri,
           if (status != null) 'status': status,
           if (attributes != null)
             'attributes': TfArg.literal([
               for (final e in attributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeAppGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_group_id` attribute.
  TfRef<String> get appGroupId => TfRef.attribute<String>(this, 'app_group_id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
