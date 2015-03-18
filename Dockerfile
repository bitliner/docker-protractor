FROM google/nodejs

RUN echo "deb http://ftp.debian.org/debian jessie main" >> /etc/apt/sources.list 
RUN apt-get update 

RUN apt-get -y -t jessie install libc6 libc6-dev libc6-dbg
RUN apt-get install -y libcairo2
RUN apt-get install -y libjpeg8

RUN npm install -g grunt grunt-cli
RUN npm install -g protractor
RUN webdriver-manager update
