// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directoryservicedata_group`.
const Set<String> _awsDirectoryservicedataGroupSensitive = <String>{};

/// Directoryservicedata Group enum for `group_scope`.
extension type const DirectoryservicedataGroupScope._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryservicedataGroupScope.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryservicedataGroupScope.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryservicedataGroupScope.arg(TfArg<String> arg) : this._(arg);

  static const domainlocal = DirectoryservicedataGroupScope._(
    TfArgLiteral('DomainLocal'),
  );
  static const global = DirectoryservicedataGroupScope._(
    TfArgLiteral('Global'),
  );
  static const universal = DirectoryservicedataGroupScope._(
    TfArgLiteral('Universal'),
  );
  static const builtinlocal = DirectoryservicedataGroupScope._(
    TfArgLiteral('BuiltinLocal'),
  );

  static const List<DirectoryservicedataGroupScope> values = [
    domainlocal,
    global,
    universal,
    builtinlocal,
  ];
}

/// Directoryservicedata Group enum for `group_type`.
extension type const DirectoryservicedataGroupType._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryservicedataGroupType.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryservicedataGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryservicedataGroupType.arg(TfArg<String> arg) : this._(arg);

  static const distribution = DirectoryservicedataGroupType._(
    TfArgLiteral('Distribution'),
  );
  static const security = DirectoryservicedataGroupType._(
    TfArgLiteral('Security'),
  );

  static const List<DirectoryservicedataGroupType> values = [
    distribution,
    security,
  ];
}

/// Factory wrapper for `aws_directoryservicedata_group`.
final class AwsDirectoryservicedataGroup extends Resource {
  static const String tfType = 'aws_directoryservicedata_group';

  AwsDirectoryservicedataGroup(
    super.localName, {
    required TfArg<String> directoryId,
    DirectoryservicedataGroupScope? groupScope,
    DirectoryservicedataGroupType? groupType,
    TfArg<String>? region,
    required TfArg<String> samAccountName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'group_scope': ?groupScope,
           'group_type': ?groupType,
           'region': ?region,
           'sam_account_name': samAccountName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDirectoryservicedataGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryservicedataGroup>`.
  RefTo<AwsDirectoryservicedataGroup> get ref => RefTo.of(this);

  /// Reference to `distinguished_name` attribute.
  TfRef<String> get distinguishedName =>
      TfRef.attribute<String>(this, 'distinguished_name');

  /// Reference to `sid` attribute.
  TfRef<String> get sid => TfRef.attribute<String>(this, 'sid');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `group_scope` attribute.
  TfRef<String> get groupScope => TfRef.attribute<String>(this, 'group_scope');

  /// Reference to `group_type` attribute.
  TfRef<String> get groupType => TfRef.attribute<String>(this, 'group_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sam_account_name` attribute.
  TfRef<String> get samAccountName =>
      TfRef.attribute<String>(this, 'sam_account_name');
}
