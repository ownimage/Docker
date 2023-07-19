FROM nvidia/cuda:10.2-base

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub && \
	apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub && \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install git curl -y && \
	yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
	echo "Done"

ENV PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin"	
CMD /bin/bash 
