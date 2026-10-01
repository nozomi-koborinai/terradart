// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_server_certificate`.
const Set<String> _awsIamServerCertificateSensitive = <String>{'private_key'};

/// At most one of `name`, `name_prefix` on `aws_iam_server_certificate`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamServerCertificateName {
  const IamServerCertificateName();

  /// Sets `name`.
  const factory IamServerCertificateName.name(TfArg<String> name) =
      IamServerCertificateNameChoice;

  /// Sets `name_prefix`.
  const factory IamServerCertificateName.namePrefix(TfArg<String> namePrefix) =
      IamServerCertificateNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamServerCertificateName.name] choice: sets `name`.
final class IamServerCertificateNameChoice extends IamServerCertificateName {
  const IamServerCertificateNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamServerCertificateName.namePrefix] choice: sets `name_prefix`.
final class IamServerCertificateNamePrefix extends IamServerCertificateName {
  const IamServerCertificateNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_iam_server_certificate`.
final class AwsIamServerCertificate extends Resource {
  static const String tfType = 'aws_iam_server_certificate';

  AwsIamServerCertificate(
    super.localName, {
    required TfArg<String> certificateBody,
    TfArg<String>? certificateChain,
    IamServerCertificateName? name,
    TfArg<String>? path,
    required Sensitive<String> privateKey,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_body': certificateBody,
           'certificate_chain': ?certificateChain,
           ...?name?.argMap,
           'path': ?path,
           'private_key': privateKey,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamServerCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamServerCertificate>`.
  RefTo<AwsIamServerCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `upload_date` attribute.
  TfRef<String> get uploadDate => TfRef.attribute<String>(this, 'upload_date');

  /// Reference to `certificate_body` attribute.
  TfRef<String> get certificateBody =>
      TfRef.attribute<String>(this, 'certificate_body');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
