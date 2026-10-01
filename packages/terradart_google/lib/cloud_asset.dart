// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Cloud Asset Inventory — project feeds that publish asset updates
/// to Pub/Sub. Creating a feed does not scan or export existing
/// assets; messages fire only when matching resources change.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/cloud_asset/google_cloud_asset_folder_feed.dart'
    show
        CloudAssetFolderFeedCondition,
        CloudAssetFolderFeedContentType,
        CloudAssetFolderFeedOutputConfig,
        CloudAssetFolderFeedPubsubDestination,
        GoogleCloudAssetFolderFeed;
export 'src/cloud_asset/google_cloud_asset_organization_feed.dart'
    show
        CloudAssetOrganizationFeedCondition,
        CloudAssetOrganizationFeedContentType,
        CloudAssetOrganizationFeedOutputConfig,
        CloudAssetOrganizationFeedPubsubDestination,
        GoogleCloudAssetOrganizationFeed;
export 'src/cloud_asset/google_cloud_asset_project_feed.dart'
    show
        CloudAssetProjectFeedCondition,
        CloudAssetProjectFeedContentType,
        CloudAssetProjectFeedOutputConfig,
        CloudAssetProjectFeedPubsubDestination,
        GoogleCloudAssetProjectFeed;
export 'src/data/google_cloud_asset_search_all_resources.dart'
    show DataGoogleCloudAssetSearchAllResources;
