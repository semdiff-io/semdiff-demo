resource "aws_iam_user" "alice" {
	name = "alice"
	tags = {
		tf_env = "demo"
	}
}

resource "aws_iam_user" "bob" {
	name = "bob"
	tags = {
		tf_env = "demo"
	}
}

#resource "aws_iam_user_policy_attachment" "alice_public_only" {
#	user = aws_iam_user.alice.name
#	policy_arn = aws_iam_policy.public_only.arn
#}
