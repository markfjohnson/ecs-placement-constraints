# Test1 - Only deploy 1 task per instance

## ECS Operational characteristics
* runningTaskCount does not get updated until the tasks for a service have been deployed on the instance and are in running status.  As such, there is a risk that using 'runningTaskCount==0' could allow other tasks to run on the instance if a second taskdefinition deployed before the first one is in running status.

## Test1a - Test Steps 'runningTaskCount==0'
* Make certain that cluster name in both 'json' files contains your ECS cluster name.
* Make certain the service name is not currently in a draining state.  If so, then rename the service name specified in the two JSON files.
* Run the script 'test1a.sh' in this directory
* Validate that only the "firstService" service is present in the cluster
* If successful, delete the service and its tasks

runningTaskCount==0 ensures that only 1 instance of any service group is deployed to the instance

## Test1b - Test Steps 'distinctInstance no group specified'
* Make certain that cluster name in both 'json' files contains your ECS cluster name.
* Make certain the service name is not currently in a draining state.  If so, then rename the service name specified in the two JSON files.
* Run the script 'test1b.sh' in this directory
* Validate that Part1 & Part2 services each have the 3 services
* If successful, delete the service and its tasks

The distinctInstance is distinct within a group.

## Test1c - Test Steps 'distinctInstance current group specified'
* Make certain that cluster name in both 'json' files contains your ECS cluster name.
* Make certain the service name is not currently in a draining state.  If so, then rename the service name specified in the two JSON files.
* Run the script 'test1a.sh' in this directory
* Validate that only the "firstService" service is present in the cluster
* If successful, delete the service and its tasks

XXX Describe what happened with the test


