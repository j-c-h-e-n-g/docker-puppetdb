
build base images w/ sshd installed:
`for i in quantal saucy precise lucid; do docker build -t jcheng/sshd:$i .; done;`

Ya, you might not want this.
