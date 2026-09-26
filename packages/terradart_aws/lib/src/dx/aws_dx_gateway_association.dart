// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_gateway_association`.
const Set<String> _awsDxGatewayAssociationSensitive = <String>{};

/// Factory wrapper for `aws_dx_gateway_association`.
final class AwsDxGatewayAssociation extends Resource {
  static const String tfType = 'aws_dx_gateway_association';

  AwsDxGatewayAssociation({
    required super.localName,
    TfArg<List<String>>? allowedPrefixes,
    TfArg<String>? associatedGatewayId,
    TfArg<String>? associatedGatewayOwnerAccountId,
    required TfArg<String> dxGatewayId,
    TfArg<String>? proposalId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowedPrefixes != null) 'allowed_prefixes': allowedPrefixes,
           if (associatedGatewayId != null)
             'associated_gateway_id': associatedGatewayId,
           if (associatedGatewayOwnerAccountId != null)
             'associated_gateway_owner_account_id':
                 associatedGatewayOwnerAccountId,
           'dx_gateway_id': dxGatewayId,
           if (proposalId != null) 'proposal_id': proposalId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxGatewayAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associated_gateway_type` attribute.
  TfRef<String> get associatedGatewayType =>
      TfRef.attribute<String>(this, 'associated_gateway_type');

  /// Reference to `dx_gateway_association_id` attribute.
  TfRef<String> get dxGatewayAssociationId =>
      TfRef.attribute<String>(this, 'dx_gateway_association_id');

  /// Reference to `dx_gateway_owner_account_id` attribute.
  TfRef<String> get dxGatewayOwnerAccountId =>
      TfRef.attribute<String>(this, 'dx_gateway_owner_account_id');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');
}
