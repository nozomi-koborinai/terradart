// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_palo_alto_local_rulestack_certificate`.
const Set<String> _azurermPaloAltoLocalRulestackCertificateSensitive =
    <String>{};

/// Exactly one of `key_vault_certificate_id`, `self_signed` on `azurerm_palo_alto_local_rulestack_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.keyVaultCertificateId(...)`.
sealed class PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned {
  const PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned();

  /// Sets `key_vault_certificate_id`.
  const factory PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned.keyVaultCertificateId(
    TfArg<String> keyVaultCertificateId,
  ) = PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSignedKeyVaultCertificateId;

  /// Sets `self_signed`.
  const factory PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned.selfSigned(
    TfArg<bool> selfSigned,
  ) = PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSignedChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned.keyVaultCertificateId] choice: sets `key_vault_certificate_id`.
final class PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSignedKeyVaultCertificateId
    extends PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned {
  const PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSignedKeyVaultCertificateId(
    this.keyVaultCertificateId,
  );

  final TfArg<String> keyVaultCertificateId;

  @internal
  @override
  String get blockKey => 'key_vault_certificate_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'key_vault_certificate_id': keyVaultCertificateId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_certificate_id': keyVaultCertificateId,
  };
}

/// The [PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned.selfSigned] choice: sets `self_signed`.
final class PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSignedChoice
    extends PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned {
  const PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSignedChoice(
    this.selfSigned,
  );

  final TfArg<bool> selfSigned;

  @internal
  @override
  String get blockKey => 'self_signed';

  @internal
  @override
  Map<String, Object?> encode() => {'self_signed': selfSigned.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'self_signed': selfSigned};
}

/// Factory wrapper for `azurerm_palo_alto_local_rulestack_certificate`.
final class AzurermPaloAltoLocalRulestackCertificate extends Resource {
  static const String tfType = 'azurerm_palo_alto_local_rulestack_certificate';

  AzurermPaloAltoLocalRulestackCertificate(
    super.localName, {
    TfArg<String>? auditComment,
    TfArg<String>? description,
    required PaloAltoLocalRulestackCertificateKeyVaultCertificateIdOrSelfSigned
    keyVaultCertificateIdOrSelfSigned,
    required TfArg<String> name,
    required TfArg<String> rulestackId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'audit_comment': ?auditComment,
           'description': ?description,
           ...keyVaultCertificateIdOrSelfSigned.argMap,
           'name': name,
           'rulestack_id': rulestackId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPaloAltoLocalRulestackCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoLocalRulestackCertificate>`.
  RefTo<AzurermPaloAltoLocalRulestackCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `audit_comment` attribute.
  TfRef<String> get auditComment =>
      TfRef.attribute<String>(this, 'audit_comment');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `key_vault_certificate_id` attribute.
  TfRef<String> get keyVaultCertificateId =>
      TfRef.attribute<String>(this, 'key_vault_certificate_id');

  /// Reference to `rulestack_id` attribute.
  TfRef<String> get rulestackId =>
      TfRef.attribute<String>(this, 'rulestack_id');

  /// Reference to `self_signed` attribute.
  TfRef<bool> get selfSigned => TfRef.attribute<bool>(this, 'self_signed');
}
