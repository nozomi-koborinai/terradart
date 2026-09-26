// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedpermissions_schema`.
const Set<String> _awsVerifiedpermissionsSchemaSensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_verifiedpermissions_schema` (derived from provider schema).
@immutable
final class VerifiedpermissionsSchemaDefinition {
  const VerifiedpermissionsSchemaDefinition({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Factory wrapper for `aws_verifiedpermissions_schema`.
final class AwsVerifiedpermissionsSchema extends Resource {
  static const String tfType = 'aws_verifiedpermissions_schema';

  AwsVerifiedpermissionsSchema({
    required super.localName,
    required TfArg<String> policyStoreId,
    TfArg<String>? region,
    List<VerifiedpermissionsSchemaDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_store_id': policyStoreId,
           if (region != null) 'region': region,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVerifiedpermissionsSchemaSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `namespaces` attribute.
  TfRef<List<String>> get namespaces =>
      TfRef.attribute<List<String>>(this, 'namespaces');
}
