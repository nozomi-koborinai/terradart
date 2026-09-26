// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_domain`.
const Set<String> _awsDatazoneDomainSensitive = <String>{};

/// Typed helper for the `single_sign_on` block of
/// `aws_datazone_domain` (derived from provider schema).
@immutable
final class DatazoneDomainSingleSignOn {
  const DatazoneDomainSingleSignOn({this.type, this.userAssignment});

  final TfArg<String>? type;

  final TfArg<String>? userAssignment;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (userAssignment != null) 'user_assignment': userAssignment!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datazone_domain`.
final class AwsDatazoneDomain extends Resource {
  static const String tfType = 'aws_datazone_domain';

  AwsDatazoneDomain({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> domainExecutionRole,
    TfArg<String>? domainVersion,
    TfArg<String>? kmsKeyIdentifier,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? serviceRole,
    TfArg<bool>? skipDeletionCheck,
    TfArg<Map<String, String>>? tags,
    List<DatazoneDomainSingleSignOn>? singleSignOn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'domain_execution_role': domainExecutionRole,
           if (domainVersion != null) 'domain_version': domainVersion,
           if (kmsKeyIdentifier != null) 'kms_key_identifier': kmsKeyIdentifier,
           'name': name,
           if (region != null) 'region': region,
           if (serviceRole != null) 'service_role': serviceRole,
           if (skipDeletionCheck != null)
             'skip_deletion_check': skipDeletionCheck,
           if (tags != null) 'tags': tags,
           if (singleSignOn != null)
             'single_sign_on': TfArg.literal([
               for (final e in singleSignOn) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `portal_url` attribute.
  TfRef<String> get portalUrl => TfRef.attribute<String>(this, 'portal_url');

  /// Reference to `root_domain_unit_id` attribute.
  TfRef<String> get rootDomainUnitId =>
      TfRef.attribute<String>(this, 'root_domain_unit_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
