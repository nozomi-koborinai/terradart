// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_shared_directory`.
const Set<String> _awsDirectoryServiceSharedDirectorySensitive = <String>{
  'notes',
};

/// Directory Service Shared Directory enum for `method`.
extension type const DirectoryServiceSharedDirectoryMethod._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryServiceSharedDirectoryMethod.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceSharedDirectoryMethod.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryServiceSharedDirectoryMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const organizations = DirectoryServiceSharedDirectoryMethod._(
    TfArgLiteral('ORGANIZATIONS'),
  );
  static const handshake = DirectoryServiceSharedDirectoryMethod._(
    TfArgLiteral('HANDSHAKE'),
  );

  static const List<DirectoryServiceSharedDirectoryMethod> values = [
    organizations,
    handshake,
  ];
}

/// Typed helper for the `target` block of
/// `aws_directory_service_shared_directory` (derived from provider schema).
@immutable
final class DirectoryServiceSharedDirectoryTarget {
  const DirectoryServiceSharedDirectoryTarget({required this.id, this.type});

  final TfArg<String> id;

  final DirectoryServiceSharedDirectoryType? type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DirectoryServiceSharedDirectoryType._(TfArg<String> _)
    implements TfArg<String> {
  DirectoryServiceSharedDirectoryType.variable(String name)
    : this._(TfArg.variable(name));
  DirectoryServiceSharedDirectoryType.expression(String template)
    : this._(TfArg.expression(template));
  const DirectoryServiceSharedDirectoryType.arg(TfArg<String> arg)
    : this._(arg);

  static const account = DirectoryServiceSharedDirectoryType._(
    TfArgLiteral('ACCOUNT'),
  );

  static const List<DirectoryServiceSharedDirectoryType> values = [account];
}

/// Factory wrapper for `aws_directory_service_shared_directory`.
final class AwsDirectoryServiceSharedDirectory extends Resource {
  static const String tfType = 'aws_directory_service_shared_directory';

  AwsDirectoryServiceSharedDirectory(
    super.localName, {
    required TfArg<String> directoryId,
    DirectoryServiceSharedDirectoryMethod? method,
    TfArg<String>? notes,
    TfArg<String>? region,
    required DirectoryServiceSharedDirectoryTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           'method': ?method,
           'notes': ?notes,
           'region': ?region,
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceSharedDirectorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDirectoryServiceSharedDirectory>`.
  RefTo<AwsDirectoryServiceSharedDirectory> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `shared_directory_id` attribute.
  TfRef<String> get sharedDirectoryId =>
      TfRef.attribute<String>(this, 'shared_directory_id');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
