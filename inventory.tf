resource "local_file" "ansible_inventory" {
  content = templatefile("inventory.tmpl", {
    ip          = aws_instance.masters[0].public_ip
    #  id          = aws_instance.masters[awscount.index].id      
  })
  filename = format("%s/%s", abspath(path.root), "inventory.yaml")
}
