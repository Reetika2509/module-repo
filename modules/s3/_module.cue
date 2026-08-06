// Module identity for the s3 module.
//
// A module is a delivery + namespace unit that groups the versioned API lines
// of one capability. Per KEP-2.20, the module name becomes spec.module on every
// definition this module ships (for example s3-v1-bucket carries module: "s3").
//
// module  is the module identity (the parser reads this top-level string).
// version is the module's own semver, used as the publish artifact tag.
//
// The module-wide auxiliary (the Crossplane XRD) lives at auxiliary/ and is
// shared across all API lines under this module.
module:      "s3"
version:     "1.0.0"
description: "AWS S3 bucket, Crossplane-backed. Sourced from oam-library (atmos-crossplane-aws-s3)."
owners: ["pod-ajanta"]
