# maildev on OpenShift

This repo deploys [`maildev`](https://github.com/maildev/maildev) on OpenShift.

To deploy `maildev` in the current project, run

	make deploy

A `maildev-smtp` Kubernetes Service will also be created. You can send email to `maildev` via SMTP using this service.

After the `maildev` has come up, open a browser to the web console with

	make console

You can also send a test email by creating a Job

	make send-email

To delete all jobs, run

	make clean-jobs

