FROM dtr.cucloud.net/cs/base

# File Author / Maintainer
MAINTAINER Shawn Bower <shawn.bower@gmail.com>

RUN \
  apt-get update && apt-get install -y \
    libmysqlclient-dev && \
  rm -rf /var/lib/apt/lists/*

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem install aws-sdk && \
    gem install mysql

# reown opt to daemon
RUN chown daemon:daemon /opt

# Copy in the program
COPY aws_detail_billing_mysql.rb /opt/aws_detail_billing_mysql.rb

# Set environment variables.
ENV HOME /opt

# Define working directory.
WORKDIR /opt

USER daemon

# Define default command.
CMD ["/opt/aws_detail_billing_mysql.rb"]
