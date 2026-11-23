// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_dlp_proximity_validator.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dlp_proximity_validator`.
const Set<String> _cloudflareZeroTrustDlpProximityValidatorSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dlp_proximity_validator`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDlpProximityValidator extends Data {
  static const String tfType = 'cloudflare_zero_trust_dlp_proximity_validator';

  DataCloudflareZeroTrustDlpProximityValidator(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> validatorId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'validator_id': validatorId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDlpProximityValidatorSensitive;

  /// A reference to the `cloudflare_zero_trust_dlp_proximity_validator` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDlpProximityValidator>`.
  RefTo<CloudflareZeroTrustDlpProximityValidator> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `validator_id` attribute.
  TfRef<String> get validatorId =>
      TfRef.attribute<String>(this, 'validator_id');
}
