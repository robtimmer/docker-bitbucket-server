FROM atlassian/bitbucket-server
MAINTAINER rob@robtimmer.com

# Environment variables
ENV BITBUCKET_INSTALL_DIR /opt/atlassian/bitbucket

# Install the JDBC driver
RUN wget -O ${BITBUCKET_INSTALL_DIR}/mysql-connector-java-5.1.39.tar.gz http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz && \
    tar xzf ${BITBUCKET_INSTALL_DIR}/mysql-connector-java-5.1.39.tar.gz -C ${BITBUCKET_INSTALL_DIR} && \
    mv ${BITBUCKET_INSTALL_DIR}/mysql-connector-java-5.1.39/mysql-connector-java-5.1.39-bin.jar ${BITBUCKET_INSTALL_DIR}/lib/ && \
    rm -rf ${BITBUCKET_INSTALL_DIR}/mysql-connector-java-5.1.39.tar.gz ${BITBUCKET_INSTALL_DIR}/mysql-connector-java-5.1.39