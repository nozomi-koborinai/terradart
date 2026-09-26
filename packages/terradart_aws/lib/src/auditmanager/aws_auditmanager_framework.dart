// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_framework`.
const Set<String> _awsAuditmanagerFrameworkSensitive = <String>{};

/// Typed helper for the `control_sets` block of
/// `aws_auditmanager_framework` (derived from provider schema).
@immutable
final class AuditmanagerFrameworkControlSets {
  const AuditmanagerFrameworkControlSets({required this.name, this.controls});

  final TfArg<String> name;

  final List<AuditmanagerFrameworkControlSetsControls>? controls;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (controls != null) 'controls': [for (final e in controls!) e.encode()],
  };
}

/// Typed helper for the `control_sets.controls` block of
/// `aws_auditmanager_framework` (derived from provider schema).
@immutable
final class AuditmanagerFrameworkControlSetsControls {
  const AuditmanagerFrameworkControlSetsControls({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Factory wrapper for `aws_auditmanager_framework`.
final class AwsAuditmanagerFramework extends Resource {
  static const String tfType = 'aws_auditmanager_framework';

  AwsAuditmanagerFramework({
    required super.localName,
    TfArg<String>? complianceType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AuditmanagerFrameworkControlSets>? controlSets,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (complianceType != null) 'compliance_type': complianceType,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (controlSets != null)
             'control_sets': TfArg.literal([
               for (final e in controlSets) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAuditmanagerFrameworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `framework_type` attribute.
  TfRef<String> get frameworkType =>
      TfRef.attribute<String>(this, 'framework_type');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
