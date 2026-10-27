// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_job_target_group`.
const Set<String> _azurermMssqlJobTargetGroupSensitive = <String>{};

/// Typed helper for the `job_target` block of
/// `azurerm_mssql_job_target_group` (derived from provider schema).
@immutable
final class MssqlJobTargetGroupJobTarget {
  const MssqlJobTargetGroupJobTarget({
    this.databaseName,
    this.elasticPoolName,
    this.jobCredentialId,
    this.membershipType,
    required this.serverName,
  });

  final TfArg<String>? databaseName;

  final TfArg<String>? elasticPoolName;

  final TfArg<String>? jobCredentialId;

  final MssqlJobTargetGroupMembershipType? membershipType;

  final TfArg<String> serverName;

  @internal
  Map<String, Object?> encode() => {
    'database_name': ?databaseName?.toTfJson(),
    'elastic_pool_name': ?elasticPoolName?.toTfJson(),
    'job_credential_id': ?jobCredentialId?.toTfJson(),
    'membership_type': ?membershipType?.toTfJson(),
    'server_name': serverName.toTfJson(),
  };
}

/// `membership_type` — derived from the provider schema description.
extension type const MssqlJobTargetGroupMembershipType._(TfArg<String> _)
    implements TfArg<String> {
  MssqlJobTargetGroupMembershipType.variable(String name)
    : this._(TfArg.variable(name));
  MssqlJobTargetGroupMembershipType.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlJobTargetGroupMembershipType.arg(TfArg<String> arg) : this._(arg);

  static const exclude = MssqlJobTargetGroupMembershipType._(
    TfArgLiteral('Exclude'),
  );
  static const include = MssqlJobTargetGroupMembershipType._(
    TfArgLiteral('Include'),
  );

  static const List<MssqlJobTargetGroupMembershipType> values = [
    exclude,
    include,
  ];
}

/// Factory wrapper for `azurerm_mssql_job_target_group`.
final class AzurermMssqlJobTargetGroup extends Resource {
  static const String tfType = 'azurerm_mssql_job_target_group';

  AzurermMssqlJobTargetGroup(
    super.localName, {
    required TfArg<String> jobAgentId,
    required TfArg<String> name,
    List<MssqlJobTargetGroupJobTarget>? jobTarget,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_agent_id': jobAgentId,
           'name': name,
           if (jobTarget != null)
             'job_target': TfArg.literal([
               for (final e in jobTarget) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlJobTargetGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlJobTargetGroup>`.
  RefTo<AzurermMssqlJobTargetGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `job_agent_id` attribute.
  TfRef<String> get jobAgentId => TfRef.attribute<String>(this, 'job_agent_id');
}
