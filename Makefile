# Automate our automation

.PHONY: build
build:
	podman build -f Containerfile -t quay.io/btomlins/demo-py:latest

.PHONY: push
push: build
	podman push quay.io/btomlins/demo-py:latest

.PHONY: deploy
deploy:
	ansible-playbook -i '127.0.0.1,' -c local playbook.yaml -e state='present'

.PHONY: remove
remove:
	ansible-playbook -i '127.0.0.1,' -c local playbook.yaml -e state='absent'
