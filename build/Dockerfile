FROM quay.io/operator-framework/ansible-operator:master

LABEL name="Conjur Operator"\
      vendor=""\
      version="v0.0.1"\
      release="1"\
      summary="Example Conjur operator"\
      description="This operator deploys Conjur"

COPY licenses /licenses

COPY watches.yaml ${HOME}/watches.yaml

COPY roles/ ${HOME}/roles/
