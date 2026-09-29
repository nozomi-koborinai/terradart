// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_server_certificate`.
const Set<String> _awsIamServerCertificateSensitive = <String>{'private_key'};

/// At most one of `name`, `name_prefix` on `aws_iam_server_certificate`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class IamServerCertificateNameOrNamePrefix {
  const IamServerCertificateNameOrNamePrefix();

  /// Sets `name`.
  const factory IamServerCertificateNameOrNamePrefix.name(TfArg<String> name) =
      IamServerCertificateNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory IamServerCertificateNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = IamServerCertificateNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [IamServerCertificateNameOrNamePrefix.name] choice: sets `name`.
final class IamServerCertificateNameOrNamePrefixName
    extends IamServerCertificateNameOrNamePrefix {
  const IamServerCertificateNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [IamServerCertificateNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class IamServerCertificateNameOrNamePrefixNamePrefix
    extends IamServerCertificateNameOrNamePrefix {
  const IamServerCertificateNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_iam_server_certificate`.
final class AwsIamServerCertificate extends Resource {
  static const String tfType = 'aws_iam_server_certificate';

  AwsIamServerCertificate({
    required super.localName,
    required TfArg<String> certificateBody,
    TfArg<String>? certificateChain,
    IamServerCertificateNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? path,
    required TfArg<String> privateKey,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_body': certificateBody,
           if (certificateChain != null) 'certificate_chain': certificateChain,
           ...?nameOrNamePrefix?.argMap,
           if (path != null) 'path': path,
           'private_key': privateKey,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamServerCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamServerCertificate>`.
  RefTo<AwsIamServerCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `upload_date` attribute.
  TfRef<String> get uploadDate => TfRef.attribute<String>(this, 'upload_date');
}
