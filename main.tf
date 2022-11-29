provider "aws" {
  region  = var.region
}

# A chave já deverá estar criada no equipamento e você pode pegá-la em ~/.ssh/id_rsa.pub
resource "aws_key_pair" "jenkins" {
  key_name = "ubuntu"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrsaGpgv1siXJHPaZGzmAOqAGlfIJfT75N69c31f7DTMMAbmkKDSzTGLojtoXz9qkGGhJqdZmP/WROluxYWy/Vl6EVsbqrnwJg7p0Z6L8NiBgXQrrblo5j/FcH4TayMCaTVHXc55qLSSuZ+PtVtiU+gupI1ZTxAr8hFDM5RGMt22rb475+UqBtTv1mIxhLYQlJB8/8NFUJXFT9/FoIbTGcvW4DCv/9XmEM25+duSiG6q8DBVz/A29A5pZxQtZ25qKhGGkja8DG2IpmRDcrwgrpuDzS4fmx+Hyk0JT7q6OykZDfehyiG7QkdHMcCWLNQMs2A3EfAxC0jVTddLIdC7Mzni4pnq23X9A70qYH9pCOCb0p7Rd20P8zXpyVesqUEBeDOksR7q9g9om5GyQxXur+EdlgW3D+xfsW3hqsqlt3WDV2XiUYtpLm6YGSAdavvFoFMm6URdvtA2TWWVmuAx7OuvL4fzaLy9LIzX71M+k/Rj9NMxFRtfdwTcOa+T5nqPU= allan@ubuntu"
}