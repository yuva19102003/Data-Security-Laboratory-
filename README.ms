(devops) yuva@yuva:~/Desktop/Elastic-Cloud-Solution-project /Terraform$ tree > tree.txt
(devops) yuva@yuva:~/Desktop/Elastic-Cloud-Solution-project /Terraform$ awk 'BEGIN { print "digraph DirectoryTree {" } { print "  \"" $0 "\"" } END { print "}" }' tree.txt > tree.dot
(devops) yuva@yuva:~/Desktop/Elastic-Cloud-Solution-project /Terraform$ dot -Tpng -o tree.png tree.dot
(devops) yuva@yuva:~/Desktop/Elastic-Cloud-Solution-project /Terraform$ 

