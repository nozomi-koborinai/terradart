// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmcontacts_contact_channel`.
const Set<String> _awsSsmcontactsContactChannelSensitive = <String>{};

/// Typed helper for the `delivery_address` block of
/// `aws_ssmcontacts_contact_channel` (derived from provider schema).
@immutable
final class SsmcontactsContactChannelDeliveryAddress {
  const SsmcontactsContactChannelDeliveryAddress({required this.simpleAddress});

  final TfArg<String> simpleAddress;

  Map<String, Object?> encode() => {'simple_address': simpleAddress.toTfJson()};
}

/// Factory wrapper for `aws_ssmcontacts_contact_channel`.
final class AwsSsmcontactsContactChannel extends Resource {
  static const String tfType = 'aws_ssmcontacts_contact_channel';

  AwsSsmcontactsContactChannel({
    required super.localName,
    required TfArg<String> contactId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> type,
    required SsmcontactsContactChannelDeliveryAddress deliveryAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_id': contactId,
           'name': name,
           if (region != null) 'region': region,
           'type': type,
           'delivery_address': TfArg.literal(deliveryAddress.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsContactChannelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activation_status` attribute.
  TfRef<String> get activationStatus =>
      TfRef.attribute<String>(this, 'activation_status');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
