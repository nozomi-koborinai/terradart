// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_turnstile_widget`.
const Set<String> _cloudflareTurnstileWidgetSensitive = <String>{'secret'};

/// Factory wrapper for `cloudflare_turnstile_widget`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Turnstile Sites
/// Read` - `Turnstile Sites Write`
final class CloudflareTurnstileWidget extends Resource {
  static const String tfType = 'cloudflare_turnstile_widget';

  CloudflareTurnstileWidget({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? botFightMode,
    TfArg<String>? clearanceLevel,
    required TfArg<List<String>> domains,
    TfArg<bool>? ephemeralId,
    required TfArg<String> mode,
    required TfArg<String> name,
    TfArg<bool>? offlabel,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (botFightMode != null) 'bot_fight_mode': botFightMode,
           if (clearanceLevel != null) 'clearance_level': clearanceLevel,
           'domains': domains,
           if (ephemeralId != null) 'ephemeral_id': ephemeralId,
           'mode': mode,
           'name': name,
           if (offlabel != null) 'offlabel': offlabel,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTurnstileWidgetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `deployed_via` attribute.
  TfRef<String> get deployedVia =>
      TfRef.attribute<String>(this, 'deployed_via');

  /// Reference to `last_modified_via` attribute.
  TfRef<String> get lastModifiedVia =>
      TfRef.attribute<String>(this, 'last_modified_via');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `sitekey` attribute.
  TfRef<String> get sitekey => TfRef.attribute<String>(this, 'sitekey');
}
