// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_billing_group`.
const Set<String> _awsIotBillingGroupSensitive = <String>{};

/// Typed helper for the `properties` block of
/// `aws_iot_billing_group` (derived from provider schema).
@immutable
final class IotBillingGroupProperties {
  const IotBillingGroupProperties({this.description});

  final TfArg<String>? description;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_billing_group`.
final class AwsIotBillingGroup extends Resource {
  static const String tfType = 'aws_iot_billing_group';

  AwsIotBillingGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<IotBillingGroupProperties>? properties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (properties != null)
             'properties': TfArg.literal([
               for (final e in properties) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotBillingGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metadata` attribute.
  TfRef<List<Map<String, Object?>>> get metadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
