// Module identity for the s3 module.
//
// A module is a delivery + namespace unit that groups the versioned API lines
// of one capability. Per KEP-2.20, the module name becomes spec.module on every
// definition this module ships (for example s3-v1-bucket carries module: "s3").
//
// The module-wide auxiliary (the Crossplane XRD) lives at auxiliary/ and is
// shared across all API lines under this module.
module: {
	name:        "s3"
	description: "AWS S3 bucket, Crossplane-backed. Sourced from oam-library (atmos-crossplane-aws-s3)."
	owners: ["pod-ajanta"]
}
