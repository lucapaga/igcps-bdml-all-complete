# Day 5. Streaming ETL with PubSub and Dataflow
## Step 2. Dataflow Streaming Pipeline

### Stream processing
* Prepare the pipeline:
* In a secondary CloudShell tab, run:
	```
	cd 04_streaming/process
	./run_on_cloud.sh <BUCKET-NAME>
	```
* Go to the GCP web console in the Dataflow section and monitor the job.

### Alternative procedure (if 04_streaming/process/run_on_cloud.sh file is missing)
* Prepare the pipeline:
	```
	- Import project into intellij IDEA
		- File --> New --> Import Project from existing sources
		- Select pom.xml file in the downloaded repository
		- During the importing procedure make sure that "import Maven projects automatically" is checked
	- Make the application run on cloud by adding "options.setRunner(DataflowRunner.class)"
	- Set the "project" parameter by adding the program argument --project=<PROJECT_NAME>
	```
* In CloudShell, follow the OAuth2 workflow so that the java application can run code on cloud:
	```
	gcloud auth application-default login
	```
* Go to the GCP web console in the Dataflow section and monitor the job.

N.B.: Run the 02B-Ingestor python script before, so that the subscription can get data from the created topics
