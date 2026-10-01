// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

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

  final List<GlacierVaultEvents> events;

  final RefTo<AwsSnsTopic> snsTopic;

  Map<String, Object?> encode() => {
    'events': [for (final e in events) e.toTfJson()],
    'sns_topic': snsTopic.encodeAs('arn').toTfJson(),
  };
}

/// `events` — derived from the provider schema description.
extension type const GlacierVaultEvents._(TfArg<String> _)
    implements TfArg<String> {
  GlacierVaultEvents.variable(String name) : this._(TfArg.variable(name));
  GlacierVaultEvents.expression(String template)
    : this._(TfArg.expression(template));
  const GlacierVaultEvents.arg(TfArg<String> arg) : this._(arg);

  static const archiveretrievalcompleted = GlacierVaultEvents._(
    TfArgLiteral('ArchiveRetrievalCompleted'),
  );
  static const inventoryretrievalcompleted = GlacierVaultEvents._(
    TfArgLiteral('InventoryRetrievalCompleted'),
  );

  static const List<GlacierVaultEvents> values = [
    archiveretrievalcompleted,
    inventoryretrievalcompleted,
  ];
}

/// Factory wrapper for `aws_glacier_vault`.
final class AwsGlacierVault extends Resource {
  static const String tfType = 'aws_glacier_vault';

  AwsGlacierVault(
    super.localName, {
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
           'access_policy': ?accessPolicy,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (notification != null)
             'notification': TfArg.literal(notification.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlacierVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlacierVault>`.
  RefTo<AwsGlacierVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `access_policy` attribute.
  TfRef<String> get accessPolicy =>
      TfRef.attribute<String>(this, 'access_policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
