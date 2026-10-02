import googleCloud from "../../assets/providers/google-cloud.svg?raw";
import aws from "../../assets/providers/aws.svg?raw";
import cloudflare from "../../assets/providers/cloudflare.svg?raw";
import appwrite from "../../assets/providers/appwrite.svg?raw";

/**
 * The providers TerraDart ships a package for. The logos are each vendor's
 * published lockup (source in the SVG's first line), shown only to say which
 * services the packages work with.
 */
export const providers = [
  { id: "google", name: "Google Cloud", logo: googleCloud, href: "/docs/providers/google/" },
  { id: "aws", name: "AWS", logo: aws, href: "/docs/providers/aws/" },
  { id: "cloudflare", name: "Cloudflare", logo: cloudflare, href: "/docs/providers/cloudflare/" },
  { id: "appwrite", name: "Appwrite", logo: appwrite, href: "/docs/providers/appwrite/" },
].map((p) => ({ ...p, logo: p.logo.replace(/<!--[\s\S]*?-->\s*/, "").replace("<svg ", `<svg aria-label="${p.name}" `) }));
