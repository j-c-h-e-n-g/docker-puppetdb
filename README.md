build base images w/ sshd installed:

`for i in quantal saucy precise lucid; do "cd sshd-$i; docker build -t jcheng/sshd:$i .; cd .."; done;`

Ya, you might not want this.
