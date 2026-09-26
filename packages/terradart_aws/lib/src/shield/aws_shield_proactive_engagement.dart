// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_proactive_engagement`.
const Set<String> _awsShieldProactiveEngagementSensitive = <String>{};

/// Typed helper for the `emergency_contact` block of
/// `aws_shield_proactive_engagement` (derived from provider schema).
@immutable
final class ShieldProactiveEngagementEmergencyContact {
  const ShieldProactiveEngagementEmergencyContact({
    this.contactNotes,
    required this.emailAddress,
    this.phoneNumber,
  });

  final TfArg<String>? contactNotes;

  final TfArg<String> emailAddress;

  final TfArg<String>? phoneNumber;

  Map<String, Object?> encode() => {
    if (contactNotes != null) 'contact_notes': contactNotes!.toTfJson(),
    'email_address': emailAddress.toTfJson(),
    if (phoneNumber != null) 'phone_number': phoneNumber!.toTfJson(),
  };
}

/// Factory wrapper for `aws_shield_proactive_engagement`.
final class AwsShieldProactiveEngagement extends Resource {
  static const String tfType = 'aws_shield_proactive_engagement';

  AwsShieldProactiveEngagement({
    required super.localName,
    required TfArg<bool> enabled,
    List<ShieldProactiveEngagementEmergencyContact>? emergencyContact,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           if (emergencyContact != null)
             'emergency_contact': TfArg.literal([
               for (final e in emergencyContact) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsShieldProactiveEngagementSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
