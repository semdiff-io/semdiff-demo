resource "aws_iam_policy" "public_only"  {
	name = "public-only"
	path = "/"
	description = "limits access to *public S3 buckets"

	policy = jsonencode({
		Version = "2012-10-17"
		Statement = [
		  {
			Action = [
			  "*",
			]
			NotResource = "arn:aws:s3:::*public"
			Effect   = "Allow" #this is supposed to be Deny
		  },
		]
	})
	tags = {
		tf_env = "demo"
	}
}

