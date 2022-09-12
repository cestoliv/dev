FROM debian:bullseye

RUN apt update
RUN apt install -y zsh \
	curl \
	git \
	build-essential \
	clang \
	gcc \
	make \
	valgrind \
	lldb \
	cloc

# ZSH configuration
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

WORKDIR /work

ENTRYPOINT ["/bin/zsh"]
