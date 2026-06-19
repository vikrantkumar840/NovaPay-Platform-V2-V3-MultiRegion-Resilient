resource "aws_iam_role" "velero_role" {
  name = "novapay-velero-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
          Federated = "arn:aws:iam::187478112406:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/FF776093641E2EC246279870B47FBE48"     
        }
      Condition = {
        StringEquals = {
          "oidc.eks.ap-south-1.amazonaws.com/id/FF776093641E2EC246279870B47FBE48:sub" = "system:serviceaccount:velero:velero"
        }
      }
      Action = "sts:AssumeRole"
    }]
  })
  tags = local.common_tags
}

resource "aws_iam_policy" "velero_policy" {
  name = "novapay-velero-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket"
        ]
        Resource = [
          aws_s3_bucket.velero_primary.arn,
          "${aws_s3_bucket.velero_primary.arn}/*",
          aws_s3_bucket.velero_dr.arn,
          "${aws_s3_bucket.velero_dr.arn}/*"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "velero_policy_attach" {
  role       = aws_iam_role.velero_role.name
  policy_arn = aws_iam_policy.velero_policy.arn
}
