resource "aws_iam_group" "marketing" {
	name = "marketing"
}

resource "aws_iam_group_membership" "marketing_membership" {
	name = "marketing-membership"
	group = aws_iam_group.marketing.name
	users = [
		aws_iam_user.alice.name,
		aws_iam_user.bob.name
	]
}

resource "aws_iam_group_policy" "all_access_on_marketing" {
	name = "all_access_on_marketing"
	group = aws_iam_group.marketing.name
	policy = jsonencode({
		Version = "2012-10-17"
		Statement = [
		{
			Action = [
			  "s3:*",
			]
			Effect   = "Allow"
			Resource = "arn:aws:s3:::semdiff-test-shared-bucket-marketing*"
		}]
	})
}

