FROM quay.io/openshift/origin-cli:latest
ARG KUSTOMIZE_VERSION=4.1.3
ADD ubi8.repo /tmp/ubi8.repo
RUN rm -f /etc/yum.repos.d/*.repo && \
    mv /tmp/ubi8.repo /etc/yum.repos.d && \
    dnf -y install gettext && \
    dnf clean all && \
    curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz | tar -C /usr/local/bin -xzf - && \
    rm -rf /var/cache/yum
