// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_hl7_v2_store.dart'
    show GoogleHealthcareHl7V2Store;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_healthcare_hl7_v2_store_iam_member`.
const Set<String> _googleHealthcareHl7V2StoreIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_healthcare_hl7_v2_store_iam_member` (derived from provider schema).
@immutable
final class HealthcareHl7V2StoreIamMemberCondition {
  const HealthcareHl7V2StoreIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_hl7_v2_store_iam_member`.
final class GoogleHealthcareHl7V2StoreIamMember extends Resource {
  static const String tfType = 'google_healthcare_hl7_v2_store_iam_member';

  GoogleHealthcareHl7V2StoreIamMember(
    super.localName, {
    required RefTo<GoogleHealthcareHl7V2Store> hl7V2Store,
    required TfArg<String> role,
    required IamPrincipal member,
    HealthcareHl7V2StoreIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hl7_v2_store_id': hl7V2Store.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareHl7V2StoreIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareHl7V2StoreIamMember>`.
  RefTo<GoogleHealthcareHl7V2StoreIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `hl7_v2_store_id` attribute.
  TfRef<String> get hl7V2StoreId =>
      TfRef.attribute<String>(this, 'hl7_v2_store_id');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
