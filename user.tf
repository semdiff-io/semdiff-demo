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

