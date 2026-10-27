// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_key_vault_certificate`.
const Set<String> _azurermKeyVaultCertificateSensitive = <String>{
  'certificate.contents',
  'certificate.password',
};

/// Typed helper for the `certificate` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificate {
  const KeyVaultCertificate({required this.contents, this.password});

  final Sensitive<String> contents;

  final Sensitive<String>? password;

  @internal
  Map<String, Object?> encode() => {
    'contents': contents.toTfJson(),
    'password': ?password?.toTfJson(),
  };
}

/// Typed helper for the `certificate_policy` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificatePolicy {
  const KeyVaultCertificatePolicy({
    required this.issuerParameters,
    required this.keyProperties,
    this.lifetimeAction,
    required this.secretProperties,
    this.x509CertificateProperties,
  });

  final KeyVaultCertificateIssuerParameters issuerParameters;

  final KeyVaultCertificateKeyProperties keyProperties;

  final List<KeyVaultCertificateLifetimeAction>? lifetimeAction;

  final KeyVaultCertificateSecretProperties secretProperties;

  final KeyVaultCertificateX509CertificateProperties? x509CertificateProperties;

  @internal
  Map<String, Object?> encode() => {
    'issuer_parameters': issuerParameters.encode(),
    'key_properties': keyProperties.encode(),
    if (lifetimeAction != null)
      'lifetime_action': [for (final e in lifetimeAction!) e.encode()],
    'secret_properties': secretProperties.encode(),
    'x509_certificate_properties': ?x509CertificateProperties?.encode(),
  };
}

/// Typed helper for the `certificate_policy.issuer_parameters` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateIssuerParameters {
  const KeyVaultCertificateIssuerParameters({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `certificate_policy.key_properties` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateKeyProperties {
  const KeyVaultCertificateKeyProperties({
    this.curve,
    required this.exportable,
    this.keySize,
    required this.keyType,
    required this.reuseKey,
  });

  final TfArg<String>? curve;

  final TfArg<bool> exportable;

  final TfArg<num>? keySize;

  final TfArg<String> keyType;

  final TfArg<bool> reuseKey;

  @internal
  Map<String, Object?> encode() => {
    'curve': ?curve?.toTfJson(),
    'exportable': exportable.toTfJson(),
    'key_size': ?keySize?.toTfJson(),
    'key_type': keyType.toTfJson(),
    'reuse_key': reuseKey.toTfJson(),
  };
}

/// Typed helper for the `certificate_policy.lifetime_action` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateLifetimeAction {
  const KeyVaultCertificateLifetimeAction({
    required this.action,
    required this.trigger,
  });

  final KeyVaultCertificateAction action;

  final KeyVaultCertificateTrigger trigger;

  @internal
  Map<String, Object?> encode() => {
    'action': action.encode(),
    'trigger': trigger.encode(),
  };
}

/// Typed helper for the `certificate_policy.lifetime_action.action` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateAction {
  const KeyVaultCertificateAction({required this.actionType});

  final TfArg<String> actionType;

  @internal
  Map<String, Object?> encode() => {'action_type': actionType.toTfJson()};
}

/// Typed helper for the `certificate_policy.lifetime_action.trigger` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateTrigger {
  const KeyVaultCertificateTrigger({
    this.daysBeforeExpiry,
    this.lifetimePercentage,
  });

  final TfArg<num>? daysBeforeExpiry;

  final TfArg<num>? lifetimePercentage;

  @internal
  Map<String, Object?> encode() => {
    'days_before_expiry': ?daysBeforeExpiry?.toTfJson(),
    'lifetime_percentage': ?lifetimePercentage?.toTfJson(),
  };
}

/// Typed helper for the `certificate_policy.secret_properties` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateSecretProperties {
  const KeyVaultCertificateSecretProperties({required this.contentType});

  final TfArg<String> contentType;

  @internal
  Map<String, Object?> encode() => {'content_type': contentType.toTfJson()};
}

/// Typed helper for the `certificate_policy.x509_certificate_properties` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateX509CertificateProperties {
  const KeyVaultCertificateX509CertificateProperties({
    this.extendedKeyUsage,
    required this.keyUsage,
    required this.subject,
    required this.validityInMonths,
    this.subjectAlternativeNames,
  });

  final TfArg<List<String>>? extendedKeyUsage;

  final TfArg<List<String>> keyUsage;

  final TfArg<String> subject;

  final TfArg<num> validityInMonths;

  final KeyVaultCertificateSubjectAlternativeNames? subjectAlternativeNames;

  @internal
  Map<String, Object?> encode() => {
    'extended_key_usage': ?extendedKeyUsage?.toTfJson(),
    'key_usage': keyUsage.toTfJson(),
    'subject': subject.toTfJson(),
    'validity_in_months': validityInMonths.toTfJson(),
    'subject_alternative_names': ?subjectAlternativeNames?.encode(),
  };
}

/// Typed helper for the `certificate_policy.x509_certificate_properties.subject_alternative_names` block of
/// `azurerm_key_vault_certificate` (derived from provider schema).
@immutable
final class KeyVaultCertificateSubjectAlternativeNames {
  const KeyVaultCertificateSubjectAlternativeNames({
    this.dnsNames,
    this.emails,
    this.upns,
  });

  final TfArg<List<String>>? dnsNames;

  final TfArg<List<String>>? emails;

  final TfArg<List<String>>? upns;

  @internal
  Map<String, Object?> encode() => {
    'dns_names': ?dnsNames?.toTfJson(),
    'emails': ?emails?.toTfJson(),
    'upns': ?upns?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_key_vault_certificate`.
final class AzurermKeyVaultCertificate extends Resource {
  static const String tfType = 'azurerm_key_vault_certificate';

  AzurermKeyVaultCertificate(
    super.localName, {
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    KeyVaultCertificate? certificate,
    KeyVaultCertificatePolicy? certificatePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_vault_id': keyVaultId.encodeAs('id'),
           'name': name,
           'tags': ?tags,
           if (certificate != null)
             'certificate': TfArg.literal(certificate.encode()),
           if (certificatePolicy != null)
             'certificate_policy': TfArg.literal(certificatePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultCertificate>`.
  RefTo<AzurermKeyVaultCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_attribute` attribute.
  TfRef<List<Map<String, Object?>>> get certificateAttribute =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_attribute',
      );

  /// Reference to `certificate_data` attribute.
  TfRef<String> get certificateData =>
      TfRef.attribute<String>(this, 'certificate_data');

  /// Reference to `certificate_data_base64` attribute.
  TfRef<String> get certificateDataBase64 =>
      TfRef.attribute<String>(this, 'certificate_data_base64');

  /// Reference to `resource_manager_id` attribute.
  TfRef<String> get resourceManagerId =>
      TfRef.attribute<String>(this, 'resource_manager_id');

  /// Reference to `resource_manager_versionless_id` attribute.
  TfRef<String> get resourceManagerVersionlessId =>
      TfRef.attribute<String>(this, 'resource_manager_versionless_id');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `versionless_id` attribute.
  TfRef<String> get versionlessId =>
      TfRef.attribute<String>(this, 'versionless_id');

  /// Reference to `versionless_secret_id` attribute.
  TfRef<String> get versionlessSecretId =>
      TfRef.attribute<String>(this, 'versionless_secret_id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
