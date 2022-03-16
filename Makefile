BASE:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: deploy clean console send-email clean-jobs

deploy:
	oc apply -f $(BASE)/maildev.yaml

clean: clean-jobs
	-oc delete -f $(BASE)/maildev.yaml

console:
	open https://`oc get route/maildev-web -o jsonpath='{.spec.host}'`

send-email:
	oc create -f $(BASE)/send-email.yaml

clean-jobs:
	oc delete all -l app=send-email
