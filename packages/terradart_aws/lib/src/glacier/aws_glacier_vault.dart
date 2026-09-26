// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glacier_vault`.
const Set<String> _awsGlacierVaultSensitive = <String>{};

/// Typed helper for the `notification` block of
/// `aws_glacier_vault` (derived from provider schema).
@immutable
final class GlacierVaultNotification {
  const GlacierVaultNotification({
    required this.events,
    required this.snsTopic,
  });

  final TfArg<List<Object?>> events;

  final TfArg<String> snsTopic;

  Map<String, Object?> encode() => {
    'events': events.toTfJson(),
    'sns_topic': snsTopic.toTfJson(),
  };
}

/// Factory wrapper for `aws_glacier_vault`.
final class AwsGlacierVault extends Resource {
  static const String tfType = 'aws_glacier_vault';

  AwsGlacierVault({
    required super.localName,
    TfArg<String>? accessPolicy,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    GlacierVaultNotification? notification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accessPolicy != null) 'access_policy': accessPolicy,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (notification != null)
             'notification': TfArg.literal(notification.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlacierVaultSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');
}
