// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_partner_configuration`.
const Set<String> _azurermEventgridPartnerConfigurationSensitive = <String>{};

/// Typed helper for the `partner_authorization` block of
/// `azurerm_eventgrid_partner_configuration` (derived from provider schema).
@immutable
final class EventgridPartnerConfigurationPartnerAuthorization {
  const EventgridPartnerConfigurationPartnerAuthorization({
    this.authorizationExpirationTimeInUtc,
    required this.partnerName,
    required this.partnerRegistrationId,
  });

  final TfArg<String>? authorizationExpirationTimeInUtc;

  final TfArg<String> partnerName;

  final TfArg<String> partnerRegistrationId;

  @internal
  Map<String, Object?> encode() => {
    'authorization_expiration_time_in_utc': ?authorizationExpirationTimeInUtc
        ?.toTfJson(),
    'partner_name': partnerName.toTfJson(),
    'partner_registration_id': partnerRegistrationId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_eventgrid_partner_configuration`.
final class AzurermEventgridPartnerConfiguration extends Resource {
  static const String tfType = 'azurerm_eventgrid_partner_configuration';

  AzurermEventgridPartnerConfiguration(
    super.localName, {
    TfArg<num>? defaultMaximumExpirationTimeInDays,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<EventgridPartnerConfigurationPartnerAuthorization>?
    partnerAuthorization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_maximum_expiration_time_in_days':
               ?defaultMaximumExpirationTimeInDays,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (partnerAuthorization != null)
             'partner_authorization': TfArg.literal([
               for (final e in partnerAuthorization) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermEventgridPartnerConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventgridPartnerConfiguration>`.
  RefTo<AzurermEventgridPartnerConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_maximum_expiration_time_in_days` attribute.
  TfRef<num> get defaultMaximumExpirationTimeInDays =>
      TfRef.attribute<num>(this, 'default_maximum_expiration_time_in_days');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
