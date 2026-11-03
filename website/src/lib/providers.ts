export const providers = [
  { id: "google", name: "Google Cloud", package: "terradart_google" },
  { id: "aws", name: "AWS", package: "terradart_aws" },
  { id: "azure", name: "Azure", package: "terradart_azure" },
  { id: "cloudflare", name: "Cloudflare", package: "terradart_cloudflare" },
  { id: "appwrite", name: "Appwrite", package: "terradart_appwrite" },
] as const;

export type ProviderId = (typeof providers)[number]["id"];
