# Day 5. Streaming ETL with PubSub and Dataflow
## Step 1. Prepare ingestor

### Stream processing
* In CloudShell, follow the OAuth2 workflow so that the python script can run code on your behalf:
	```
	gcloud auth application-default login
	```
* Run
	```
	python ./simulate.py --startTime '2015-05-01 00:00:00 UTC' --endTime '2015-05-04 00:00:00 UTC' --speedFactor=30 --project $DEVSHELL_PROJECT_ID
  ```
