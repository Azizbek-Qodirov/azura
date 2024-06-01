prepare:
	go build -o azura ./cmd/azura
	sudo mv azura /usr/local/bin/

# go build -o azura ./cmd/azura
# source ~/.bashrc
# source ~/.bash_completion

commit:
	sudo cp azura_completion.sh /etc/bash_completion.d/azura
	cp azura_completion.sh ~/.bash_completion