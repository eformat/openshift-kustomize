FROM quay.io/openshift/origin-cli:latest
ARG KUSTOMIZE_VERSION=4.0.5
RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz | tar -C /usr/local/bin -xzf - && \
    rm -rf /var/cache/yum
