## Module AWS.StepFunctions

<fullname>AWS Step Functions</fullname> <p>AWS Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows.</p> <p>You can use Step Functions to build applications from individual components, each of which performs a discrete function, or <i>task</i>, allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues.</p> <p>Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on AWS, your own servers, or any system that has access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API. For more information about Step Functions, see the <i> <a href="http://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">AWS Step Functions Developer Guide</a> </i>.</p>

#### `createActivity`

``` purescript
createActivity :: forall eff. CreateActivityInput -> Aff (exception :: EXCEPTION | eff) CreateActivityOutput
```

<p>Creates an activity. An activity is a task which you write in any programming language and host on any machine which has access to AWS Step Functions. Activities must poll Step Functions using the <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.</p>

#### `createStateMachine`

``` purescript
createStateMachine :: forall eff. CreateStateMachineInput -> Aff (exception :: EXCEPTION | eff) CreateStateMachineOutput
```

<p>Creates a state machine. A state machine consists of a collection of states that can do work (<code>Task</code> states), determine to which states to transition next (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states), and so on. State machines are specified using a JSON-based, structured language.</p>

#### `deleteActivity`

``` purescript
deleteActivity :: forall eff. DeleteActivityInput -> Aff (exception :: EXCEPTION | eff) DeleteActivityOutput
```

<p>Deletes an activity.</p>

#### `deleteStateMachine`

``` purescript
deleteStateMachine :: forall eff. DeleteStateMachineInput -> Aff (exception :: EXCEPTION | eff) DeleteStateMachineOutput
```

<p>Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to <code>DELETING</code> and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.</p> <note> <p>The state machine itself is deleted after all executions are completed or deleted.</p> </note>

#### `describeActivity`

``` purescript
describeActivity :: forall eff. DescribeActivityInput -> Aff (exception :: EXCEPTION | eff) DescribeActivityOutput
```

<p>Describes an activity.</p>

#### `describeExecution`

``` purescript
describeExecution :: forall eff. DescribeExecutionInput -> Aff (exception :: EXCEPTION | eff) DescribeExecutionOutput
```

<p>Describes an execution.</p>

#### `describeStateMachine`

``` purescript
describeStateMachine :: forall eff. DescribeStateMachineInput -> Aff (exception :: EXCEPTION | eff) DescribeStateMachineOutput
```

<p>Describes a state machine.</p>

#### `describeStateMachineForExecution`

``` purescript
describeStateMachineForExecution :: forall eff. DescribeStateMachineForExecutionInput -> Aff (exception :: EXCEPTION | eff) DescribeStateMachineForExecutionOutput
```

<p>Describes the state machine associated with a specific execution.</p>

#### `getActivityTask`

``` purescript
getActivityTask :: forall eff. GetActivityTaskInput -> Aff (exception :: EXCEPTION | eff) GetActivityTaskOutput
```

<p>Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a <code>taskToken</code> with a null string.</p> <important> <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).</p> </important>

#### `getExecutionHistory`

``` purescript
getExecutionHistory :: forall eff. GetExecutionHistoryInput -> Aff (exception :: EXCEPTION | eff) GetExecutionHistoryOutput
```

<p>Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the <code>timeStamp</code> of the events. Use the <code>reverseOrder</code> parameter to get the latest events first.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `listActivities`

``` purescript
listActivities :: forall eff. ListActivitiesInput -> Aff (exception :: EXCEPTION | eff) ListActivitiesOutput
```

<p>Lists the existing activities.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `listExecutions`

``` purescript
listExecutions :: forall eff. ListExecutionsInput -> Aff (exception :: EXCEPTION | eff) ListExecutionsOutput
```

<p>Lists the executions of a state machine that meet the filtering criteria.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `listStateMachines`

``` purescript
listStateMachines :: forall eff. ListStateMachinesInput -> Aff (exception :: EXCEPTION | eff) ListStateMachinesOutput
```

<p>Lists the existing state machines.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `sendTaskFailure`

``` purescript
sendTaskFailure :: forall eff. SendTaskFailureInput -> Aff (exception :: EXCEPTION | eff) SendTaskFailureOutput
```

<p>Used by workers to report that the task identified by the <code>taskToken</code> failed.</p>

#### `sendTaskHeartbeat`

``` purescript
sendTaskHeartbeat :: forall eff. SendTaskHeartbeatInput -> Aff (exception :: EXCEPTION | eff) SendTaskHeartbeatOutput
```

<p>Used by workers to report to the service that the task represented by the specified <code>taskToken</code> is still making progress. This action resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an <code>ActivityTimedOut</code> event.</p> <note> <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received.</p> </note> <note> <p>This operation is only useful for long-lived tasks to report the liveliness of the task.</p> </note>

#### `sendTaskSuccess`

``` purescript
sendTaskSuccess :: forall eff. SendTaskSuccessInput -> Aff (exception :: EXCEPTION | eff) SendTaskSuccessOutput
```

<p>Used by workers to report that the task identified by the <code>taskToken</code> completed successfully.</p>

#### `startExecution`

``` purescript
startExecution :: forall eff. StartExecutionInput -> Aff (exception :: EXCEPTION | eff) StartExecutionOutput
```

<p>Starts a state machine execution.</p>

#### `stopExecution`

``` purescript
stopExecution :: forall eff. StopExecutionInput -> Aff (exception :: EXCEPTION | eff) StopExecutionOutput
```

<p>Stops an execution.</p>

#### `updateStateMachine`

``` purescript
updateStateMachine :: forall eff. UpdateStateMachineInput -> Aff (exception :: EXCEPTION | eff) UpdateStateMachineOutput
```

<p>Updates an existing state machine by modifying its <code>definition</code> and/or <code>roleArn</code>. Running executions will continue to use the previous <code>definition</code> and <code>roleArn</code>.</p> <note> <p>All <code>StartExecution</code> calls within a few seconds will use the updated <code>definition</code> and <code>roleArn</code>. Executions started immediately after calling <code>UpdateStateMachine</code> may use the previous state machine <code>definition</code> and <code>roleArn</code>. You must include at least one of <code>definition</code> or <code>roleArn</code> or you will receive a <code>MissingRequiredParameter</code> error.</p> </note>

#### `ActivityDoesNotExist`

``` purescript
newtype ActivityDoesNotExist
  = ActivityDoesNotExist { message :: NullOrUndefined (ErrorMessage) }
```

<p>The specified activity does not exist.</p>

##### Instances
``` purescript
Newtype ActivityDoesNotExist _
Generic ActivityDoesNotExist _
Show ActivityDoesNotExist
Decode ActivityDoesNotExist
Encode ActivityDoesNotExist
```

#### `newActivityDoesNotExist`

``` purescript
newActivityDoesNotExist :: ActivityDoesNotExist
```

Constructs ActivityDoesNotExist from required parameters

#### `newActivityDoesNotExist'`

``` purescript
newActivityDoesNotExist' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ActivityDoesNotExist
```

Constructs ActivityDoesNotExist's fields from required parameters

#### `ActivityFailedEventDetails`

``` purescript
newtype ActivityFailedEventDetails
  = ActivityFailedEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about an activity which failed during an execution.</p>

##### Instances
``` purescript
Newtype ActivityFailedEventDetails _
Generic ActivityFailedEventDetails _
Show ActivityFailedEventDetails
Decode ActivityFailedEventDetails
Encode ActivityFailedEventDetails
```

#### `newActivityFailedEventDetails`

``` purescript
newActivityFailedEventDetails :: ActivityFailedEventDetails
```

Constructs ActivityFailedEventDetails from required parameters

#### `newActivityFailedEventDetails'`

``` purescript
newActivityFailedEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> ActivityFailedEventDetails
```

Constructs ActivityFailedEventDetails's fields from required parameters

#### `ActivityLimitExceeded`

``` purescript
newtype ActivityLimitExceeded
  = ActivityLimitExceeded { message :: NullOrUndefined (ErrorMessage) }
```

<p>The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.</p>

##### Instances
``` purescript
Newtype ActivityLimitExceeded _
Generic ActivityLimitExceeded _
Show ActivityLimitExceeded
Decode ActivityLimitExceeded
Encode ActivityLimitExceeded
```

#### `newActivityLimitExceeded`

``` purescript
newActivityLimitExceeded :: ActivityLimitExceeded
```

Constructs ActivityLimitExceeded from required parameters

#### `newActivityLimitExceeded'`

``` purescript
newActivityLimitExceeded' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ActivityLimitExceeded
```

Constructs ActivityLimitExceeded's fields from required parameters

#### `ActivityList`

``` purescript
newtype ActivityList
  = ActivityList (Array ActivityListItem)
```

##### Instances
``` purescript
Newtype ActivityList _
Generic ActivityList _
Show ActivityList
Decode ActivityList
Encode ActivityList
```

#### `ActivityListItem`

``` purescript
newtype ActivityListItem
  = ActivityListItem { activityArn :: Arn, name :: Name, creationDate :: Timestamp }
```

<p>Contains details about an activity.</p>

##### Instances
``` purescript
Newtype ActivityListItem _
Generic ActivityListItem _
Show ActivityListItem
Decode ActivityListItem
Encode ActivityListItem
```

#### `newActivityListItem`

``` purescript
newActivityListItem :: Arn -> Timestamp -> Name -> ActivityListItem
```

Constructs ActivityListItem from required parameters

#### `newActivityListItem'`

``` purescript
newActivityListItem' :: Arn -> Timestamp -> Name -> ({ activityArn :: Arn, name :: Name, creationDate :: Timestamp } -> { activityArn :: Arn, name :: Name, creationDate :: Timestamp }) -> ActivityListItem
```

Constructs ActivityListItem's fields from required parameters

#### `ActivityScheduleFailedEventDetails`

``` purescript
newtype ActivityScheduleFailedEventDetails
  = ActivityScheduleFailedEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about an activity schedule failure which occurred during an execution.</p>

##### Instances
``` purescript
Newtype ActivityScheduleFailedEventDetails _
Generic ActivityScheduleFailedEventDetails _
Show ActivityScheduleFailedEventDetails
Decode ActivityScheduleFailedEventDetails
Encode ActivityScheduleFailedEventDetails
```

#### `newActivityScheduleFailedEventDetails`

``` purescript
newActivityScheduleFailedEventDetails :: ActivityScheduleFailedEventDetails
```

Constructs ActivityScheduleFailedEventDetails from required parameters

#### `newActivityScheduleFailedEventDetails'`

``` purescript
newActivityScheduleFailedEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> ActivityScheduleFailedEventDetails
```

Constructs ActivityScheduleFailedEventDetails's fields from required parameters

#### `ActivityScheduledEventDetails`

``` purescript
newtype ActivityScheduledEventDetails
  = ActivityScheduledEventDetails { resource :: Arn, input :: NullOrUndefined (Data), timeoutInSeconds :: NullOrUndefined (TimeoutInSeconds), heartbeatInSeconds :: NullOrUndefined (TimeoutInSeconds) }
```

<p>Contains details about an activity scheduled during an execution.</p>

##### Instances
``` purescript
Newtype ActivityScheduledEventDetails _
Generic ActivityScheduledEventDetails _
Show ActivityScheduledEventDetails
Decode ActivityScheduledEventDetails
Encode ActivityScheduledEventDetails
```

#### `newActivityScheduledEventDetails`

``` purescript
newActivityScheduledEventDetails :: Arn -> ActivityScheduledEventDetails
```

Constructs ActivityScheduledEventDetails from required parameters

#### `newActivityScheduledEventDetails'`

``` purescript
newActivityScheduledEventDetails' :: Arn -> ({ resource :: Arn, input :: NullOrUndefined (Data), timeoutInSeconds :: NullOrUndefined (TimeoutInSeconds), heartbeatInSeconds :: NullOrUndefined (TimeoutInSeconds) } -> { resource :: Arn, input :: NullOrUndefined (Data), timeoutInSeconds :: NullOrUndefined (TimeoutInSeconds), heartbeatInSeconds :: NullOrUndefined (TimeoutInSeconds) }) -> ActivityScheduledEventDetails
```

Constructs ActivityScheduledEventDetails's fields from required parameters

#### `ActivityStartedEventDetails`

``` purescript
newtype ActivityStartedEventDetails
  = ActivityStartedEventDetails { workerName :: NullOrUndefined (Identity) }
```

<p>Contains details about the start of an activity during an execution.</p>

##### Instances
``` purescript
Newtype ActivityStartedEventDetails _
Generic ActivityStartedEventDetails _
Show ActivityStartedEventDetails
Decode ActivityStartedEventDetails
Encode ActivityStartedEventDetails
```

#### `newActivityStartedEventDetails`

``` purescript
newActivityStartedEventDetails :: ActivityStartedEventDetails
```

Constructs ActivityStartedEventDetails from required parameters

#### `newActivityStartedEventDetails'`

``` purescript
newActivityStartedEventDetails' :: ({ workerName :: NullOrUndefined (Identity) } -> { workerName :: NullOrUndefined (Identity) }) -> ActivityStartedEventDetails
```

Constructs ActivityStartedEventDetails's fields from required parameters

#### `ActivitySucceededEventDetails`

``` purescript
newtype ActivitySucceededEventDetails
  = ActivitySucceededEventDetails { output :: NullOrUndefined (Data) }
```

<p>Contains details about an activity which successfully terminated during an execution.</p>

##### Instances
``` purescript
Newtype ActivitySucceededEventDetails _
Generic ActivitySucceededEventDetails _
Show ActivitySucceededEventDetails
Decode ActivitySucceededEventDetails
Encode ActivitySucceededEventDetails
```

#### `newActivitySucceededEventDetails`

``` purescript
newActivitySucceededEventDetails :: ActivitySucceededEventDetails
```

Constructs ActivitySucceededEventDetails from required parameters

#### `newActivitySucceededEventDetails'`

``` purescript
newActivitySucceededEventDetails' :: ({ output :: NullOrUndefined (Data) } -> { output :: NullOrUndefined (Data) }) -> ActivitySucceededEventDetails
```

Constructs ActivitySucceededEventDetails's fields from required parameters

#### `ActivityTimedOutEventDetails`

``` purescript
newtype ActivityTimedOutEventDetails
  = ActivityTimedOutEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about an activity timeout which occurred during an execution.</p>

##### Instances
``` purescript
Newtype ActivityTimedOutEventDetails _
Generic ActivityTimedOutEventDetails _
Show ActivityTimedOutEventDetails
Decode ActivityTimedOutEventDetails
Encode ActivityTimedOutEventDetails
```

#### `newActivityTimedOutEventDetails`

``` purescript
newActivityTimedOutEventDetails :: ActivityTimedOutEventDetails
```

Constructs ActivityTimedOutEventDetails from required parameters

#### `newActivityTimedOutEventDetails'`

``` purescript
newActivityTimedOutEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> ActivityTimedOutEventDetails
```

Constructs ActivityTimedOutEventDetails's fields from required parameters

#### `ActivityWorkerLimitExceeded`

``` purescript
newtype ActivityWorkerLimitExceeded
  = ActivityWorkerLimitExceeded { message :: NullOrUndefined (ErrorMessage) }
```

<p>The maximum number of workers concurrently polling for activity tasks has been reached.</p>

##### Instances
``` purescript
Newtype ActivityWorkerLimitExceeded _
Generic ActivityWorkerLimitExceeded _
Show ActivityWorkerLimitExceeded
Decode ActivityWorkerLimitExceeded
Encode ActivityWorkerLimitExceeded
```

#### `newActivityWorkerLimitExceeded`

``` purescript
newActivityWorkerLimitExceeded :: ActivityWorkerLimitExceeded
```

Constructs ActivityWorkerLimitExceeded from required parameters

#### `newActivityWorkerLimitExceeded'`

``` purescript
newActivityWorkerLimitExceeded' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ActivityWorkerLimitExceeded
```

Constructs ActivityWorkerLimitExceeded's fields from required parameters

#### `Arn`

``` purescript
newtype Arn
  = Arn String
```

##### Instances
``` purescript
Newtype Arn _
Generic Arn _
Show Arn
Decode Arn
Encode Arn
```

#### `Cause`

``` purescript
newtype Cause
  = Cause String
```

##### Instances
``` purescript
Newtype Cause _
Generic Cause _
Show Cause
Decode Cause
Encode Cause
```

#### `CreateActivityInput`

``` purescript
newtype CreateActivityInput
  = CreateActivityInput { name :: Name }
```

##### Instances
``` purescript
Newtype CreateActivityInput _
Generic CreateActivityInput _
Show CreateActivityInput
Decode CreateActivityInput
Encode CreateActivityInput
```

#### `newCreateActivityInput`

``` purescript
newCreateActivityInput :: Name -> CreateActivityInput
```

Constructs CreateActivityInput from required parameters

#### `newCreateActivityInput'`

``` purescript
newCreateActivityInput' :: Name -> ({ name :: Name } -> { name :: Name }) -> CreateActivityInput
```

Constructs CreateActivityInput's fields from required parameters

#### `CreateActivityOutput`

``` purescript
newtype CreateActivityOutput
  = CreateActivityOutput { activityArn :: Arn, creationDate :: Timestamp }
```

##### Instances
``` purescript
Newtype CreateActivityOutput _
Generic CreateActivityOutput _
Show CreateActivityOutput
Decode CreateActivityOutput
Encode CreateActivityOutput
```

#### `newCreateActivityOutput`

``` purescript
newCreateActivityOutput :: Arn -> Timestamp -> CreateActivityOutput
```

Constructs CreateActivityOutput from required parameters

#### `newCreateActivityOutput'`

``` purescript
newCreateActivityOutput' :: Arn -> Timestamp -> ({ activityArn :: Arn, creationDate :: Timestamp } -> { activityArn :: Arn, creationDate :: Timestamp }) -> CreateActivityOutput
```

Constructs CreateActivityOutput's fields from required parameters

#### `CreateStateMachineInput`

``` purescript
newtype CreateStateMachineInput
  = CreateStateMachineInput { name :: Name, definition :: Definition, roleArn :: Arn }
```

##### Instances
``` purescript
Newtype CreateStateMachineInput _
Generic CreateStateMachineInput _
Show CreateStateMachineInput
Decode CreateStateMachineInput
Encode CreateStateMachineInput
```

#### `newCreateStateMachineInput`

``` purescript
newCreateStateMachineInput :: Definition -> Name -> Arn -> CreateStateMachineInput
```

Constructs CreateStateMachineInput from required parameters

#### `newCreateStateMachineInput'`

``` purescript
newCreateStateMachineInput' :: Definition -> Name -> Arn -> ({ name :: Name, definition :: Definition, roleArn :: Arn } -> { name :: Name, definition :: Definition, roleArn :: Arn }) -> CreateStateMachineInput
```

Constructs CreateStateMachineInput's fields from required parameters

#### `CreateStateMachineOutput`

``` purescript
newtype CreateStateMachineOutput
  = CreateStateMachineOutput { stateMachineArn :: Arn, creationDate :: Timestamp }
```

##### Instances
``` purescript
Newtype CreateStateMachineOutput _
Generic CreateStateMachineOutput _
Show CreateStateMachineOutput
Decode CreateStateMachineOutput
Encode CreateStateMachineOutput
```

#### `newCreateStateMachineOutput`

``` purescript
newCreateStateMachineOutput :: Timestamp -> Arn -> CreateStateMachineOutput
```

Constructs CreateStateMachineOutput from required parameters

#### `newCreateStateMachineOutput'`

``` purescript
newCreateStateMachineOutput' :: Timestamp -> Arn -> ({ stateMachineArn :: Arn, creationDate :: Timestamp } -> { stateMachineArn :: Arn, creationDate :: Timestamp }) -> CreateStateMachineOutput
```

Constructs CreateStateMachineOutput's fields from required parameters

#### `Data`

``` purescript
newtype Data
  = Data String
```

##### Instances
``` purescript
Newtype Data _
Generic Data _
Show Data
Decode Data
Encode Data
```

#### `Definition`

``` purescript
newtype Definition
  = Definition String
```

##### Instances
``` purescript
Newtype Definition _
Generic Definition _
Show Definition
Decode Definition
Encode Definition
```

#### `DeleteActivityInput`

``` purescript
newtype DeleteActivityInput
  = DeleteActivityInput { activityArn :: Arn }
```

##### Instances
``` purescript
Newtype DeleteActivityInput _
Generic DeleteActivityInput _
Show DeleteActivityInput
Decode DeleteActivityInput
Encode DeleteActivityInput
```

#### `newDeleteActivityInput`

``` purescript
newDeleteActivityInput :: Arn -> DeleteActivityInput
```

Constructs DeleteActivityInput from required parameters

#### `newDeleteActivityInput'`

``` purescript
newDeleteActivityInput' :: Arn -> ({ activityArn :: Arn } -> { activityArn :: Arn }) -> DeleteActivityInput
```

Constructs DeleteActivityInput's fields from required parameters

#### `DeleteActivityOutput`

``` purescript
newtype DeleteActivityOutput
  = DeleteActivityOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteActivityOutput _
Generic DeleteActivityOutput _
Show DeleteActivityOutput
Decode DeleteActivityOutput
Encode DeleteActivityOutput
```

#### `DeleteStateMachineInput`

``` purescript
newtype DeleteStateMachineInput
  = DeleteStateMachineInput { stateMachineArn :: Arn }
```

##### Instances
``` purescript
Newtype DeleteStateMachineInput _
Generic DeleteStateMachineInput _
Show DeleteStateMachineInput
Decode DeleteStateMachineInput
Encode DeleteStateMachineInput
```

#### `newDeleteStateMachineInput`

``` purescript
newDeleteStateMachineInput :: Arn -> DeleteStateMachineInput
```

Constructs DeleteStateMachineInput from required parameters

#### `newDeleteStateMachineInput'`

``` purescript
newDeleteStateMachineInput' :: Arn -> ({ stateMachineArn :: Arn } -> { stateMachineArn :: Arn }) -> DeleteStateMachineInput
```

Constructs DeleteStateMachineInput's fields from required parameters

#### `DeleteStateMachineOutput`

``` purescript
newtype DeleteStateMachineOutput
  = DeleteStateMachineOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteStateMachineOutput _
Generic DeleteStateMachineOutput _
Show DeleteStateMachineOutput
Decode DeleteStateMachineOutput
Encode DeleteStateMachineOutput
```

#### `DescribeActivityInput`

``` purescript
newtype DescribeActivityInput
  = DescribeActivityInput { activityArn :: Arn }
```

##### Instances
``` purescript
Newtype DescribeActivityInput _
Generic DescribeActivityInput _
Show DescribeActivityInput
Decode DescribeActivityInput
Encode DescribeActivityInput
```

#### `newDescribeActivityInput`

``` purescript
newDescribeActivityInput :: Arn -> DescribeActivityInput
```

Constructs DescribeActivityInput from required parameters

#### `newDescribeActivityInput'`

``` purescript
newDescribeActivityInput' :: Arn -> ({ activityArn :: Arn } -> { activityArn :: Arn }) -> DescribeActivityInput
```

Constructs DescribeActivityInput's fields from required parameters

#### `DescribeActivityOutput`

``` purescript
newtype DescribeActivityOutput
  = DescribeActivityOutput { activityArn :: Arn, name :: Name, creationDate :: Timestamp }
```

##### Instances
``` purescript
Newtype DescribeActivityOutput _
Generic DescribeActivityOutput _
Show DescribeActivityOutput
Decode DescribeActivityOutput
Encode DescribeActivityOutput
```

#### `newDescribeActivityOutput`

``` purescript
newDescribeActivityOutput :: Arn -> Timestamp -> Name -> DescribeActivityOutput
```

Constructs DescribeActivityOutput from required parameters

#### `newDescribeActivityOutput'`

``` purescript
newDescribeActivityOutput' :: Arn -> Timestamp -> Name -> ({ activityArn :: Arn, name :: Name, creationDate :: Timestamp } -> { activityArn :: Arn, name :: Name, creationDate :: Timestamp }) -> DescribeActivityOutput
```

Constructs DescribeActivityOutput's fields from required parameters

#### `DescribeExecutionInput`

``` purescript
newtype DescribeExecutionInput
  = DescribeExecutionInput { executionArn :: Arn }
```

##### Instances
``` purescript
Newtype DescribeExecutionInput _
Generic DescribeExecutionInput _
Show DescribeExecutionInput
Decode DescribeExecutionInput
Encode DescribeExecutionInput
```

#### `newDescribeExecutionInput`

``` purescript
newDescribeExecutionInput :: Arn -> DescribeExecutionInput
```

Constructs DescribeExecutionInput from required parameters

#### `newDescribeExecutionInput'`

``` purescript
newDescribeExecutionInput' :: Arn -> ({ executionArn :: Arn } -> { executionArn :: Arn }) -> DescribeExecutionInput
```

Constructs DescribeExecutionInput's fields from required parameters

#### `DescribeExecutionOutput`

``` purescript
newtype DescribeExecutionOutput
  = DescribeExecutionOutput { executionArn :: Arn, stateMachineArn :: Arn, name :: NullOrUndefined (Name), status :: ExecutionStatus, startDate :: Timestamp, stopDate :: NullOrUndefined (Timestamp), input :: Data, output :: NullOrUndefined (Data) }
```

##### Instances
``` purescript
Newtype DescribeExecutionOutput _
Generic DescribeExecutionOutput _
Show DescribeExecutionOutput
Decode DescribeExecutionOutput
Encode DescribeExecutionOutput
```

#### `newDescribeExecutionOutput`

``` purescript
newDescribeExecutionOutput :: Arn -> Data -> Timestamp -> Arn -> ExecutionStatus -> DescribeExecutionOutput
```

Constructs DescribeExecutionOutput from required parameters

#### `newDescribeExecutionOutput'`

``` purescript
newDescribeExecutionOutput' :: Arn -> Data -> Timestamp -> Arn -> ExecutionStatus -> ({ executionArn :: Arn, stateMachineArn :: Arn, name :: NullOrUndefined (Name), status :: ExecutionStatus, startDate :: Timestamp, stopDate :: NullOrUndefined (Timestamp), input :: Data, output :: NullOrUndefined (Data) } -> { executionArn :: Arn, stateMachineArn :: Arn, name :: NullOrUndefined (Name), status :: ExecutionStatus, startDate :: Timestamp, stopDate :: NullOrUndefined (Timestamp), input :: Data, output :: NullOrUndefined (Data) }) -> DescribeExecutionOutput
```

Constructs DescribeExecutionOutput's fields from required parameters

#### `DescribeStateMachineForExecutionInput`

``` purescript
newtype DescribeStateMachineForExecutionInput
  = DescribeStateMachineForExecutionInput { executionArn :: Arn }
```

##### Instances
``` purescript
Newtype DescribeStateMachineForExecutionInput _
Generic DescribeStateMachineForExecutionInput _
Show DescribeStateMachineForExecutionInput
Decode DescribeStateMachineForExecutionInput
Encode DescribeStateMachineForExecutionInput
```

#### `newDescribeStateMachineForExecutionInput`

``` purescript
newDescribeStateMachineForExecutionInput :: Arn -> DescribeStateMachineForExecutionInput
```

Constructs DescribeStateMachineForExecutionInput from required parameters

#### `newDescribeStateMachineForExecutionInput'`

``` purescript
newDescribeStateMachineForExecutionInput' :: Arn -> ({ executionArn :: Arn } -> { executionArn :: Arn }) -> DescribeStateMachineForExecutionInput
```

Constructs DescribeStateMachineForExecutionInput's fields from required parameters

#### `DescribeStateMachineForExecutionOutput`

``` purescript
newtype DescribeStateMachineForExecutionOutput
  = DescribeStateMachineForExecutionOutput { stateMachineArn :: Arn, name :: Name, definition :: Definition, roleArn :: Arn, updateDate :: Timestamp }
```

##### Instances
``` purescript
Newtype DescribeStateMachineForExecutionOutput _
Generic DescribeStateMachineForExecutionOutput _
Show DescribeStateMachineForExecutionOutput
Decode DescribeStateMachineForExecutionOutput
Encode DescribeStateMachineForExecutionOutput
```

#### `newDescribeStateMachineForExecutionOutput`

``` purescript
newDescribeStateMachineForExecutionOutput :: Definition -> Name -> Arn -> Arn -> Timestamp -> DescribeStateMachineForExecutionOutput
```

Constructs DescribeStateMachineForExecutionOutput from required parameters

#### `newDescribeStateMachineForExecutionOutput'`

``` purescript
newDescribeStateMachineForExecutionOutput' :: Definition -> Name -> Arn -> Arn -> Timestamp -> ({ stateMachineArn :: Arn, name :: Name, definition :: Definition, roleArn :: Arn, updateDate :: Timestamp } -> { stateMachineArn :: Arn, name :: Name, definition :: Definition, roleArn :: Arn, updateDate :: Timestamp }) -> DescribeStateMachineForExecutionOutput
```

Constructs DescribeStateMachineForExecutionOutput's fields from required parameters

#### `DescribeStateMachineInput`

``` purescript
newtype DescribeStateMachineInput
  = DescribeStateMachineInput { stateMachineArn :: Arn }
```

##### Instances
``` purescript
Newtype DescribeStateMachineInput _
Generic DescribeStateMachineInput _
Show DescribeStateMachineInput
Decode DescribeStateMachineInput
Encode DescribeStateMachineInput
```

#### `newDescribeStateMachineInput`

``` purescript
newDescribeStateMachineInput :: Arn -> DescribeStateMachineInput
```

Constructs DescribeStateMachineInput from required parameters

#### `newDescribeStateMachineInput'`

``` purescript
newDescribeStateMachineInput' :: Arn -> ({ stateMachineArn :: Arn } -> { stateMachineArn :: Arn }) -> DescribeStateMachineInput
```

Constructs DescribeStateMachineInput's fields from required parameters

#### `DescribeStateMachineOutput`

``` purescript
newtype DescribeStateMachineOutput
  = DescribeStateMachineOutput { stateMachineArn :: Arn, name :: Name, status :: NullOrUndefined (StateMachineStatus), definition :: Definition, roleArn :: Arn, creationDate :: Timestamp }
```

##### Instances
``` purescript
Newtype DescribeStateMachineOutput _
Generic DescribeStateMachineOutput _
Show DescribeStateMachineOutput
Decode DescribeStateMachineOutput
Encode DescribeStateMachineOutput
```

#### `newDescribeStateMachineOutput`

``` purescript
newDescribeStateMachineOutput :: Timestamp -> Definition -> Name -> Arn -> Arn -> DescribeStateMachineOutput
```

Constructs DescribeStateMachineOutput from required parameters

#### `newDescribeStateMachineOutput'`

``` purescript
newDescribeStateMachineOutput' :: Timestamp -> Definition -> Name -> Arn -> Arn -> ({ stateMachineArn :: Arn, name :: Name, status :: NullOrUndefined (StateMachineStatus), definition :: Definition, roleArn :: Arn, creationDate :: Timestamp } -> { stateMachineArn :: Arn, name :: Name, status :: NullOrUndefined (StateMachineStatus), definition :: Definition, roleArn :: Arn, creationDate :: Timestamp }) -> DescribeStateMachineOutput
```

Constructs DescribeStateMachineOutput's fields from required parameters

#### `Error`

``` purescript
newtype Error
  = Error String
```

##### Instances
``` purescript
Newtype Error _
Generic Error _
Show Error
Decode Error
Encode Error
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `EventId`

``` purescript
newtype EventId
  = EventId Number
```

##### Instances
``` purescript
Newtype EventId _
Generic EventId _
Show EventId
Decode EventId
Encode EventId
```

#### `ExecutionAbortedEventDetails`

``` purescript
newtype ExecutionAbortedEventDetails
  = ExecutionAbortedEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about an abort of an execution.</p>

##### Instances
``` purescript
Newtype ExecutionAbortedEventDetails _
Generic ExecutionAbortedEventDetails _
Show ExecutionAbortedEventDetails
Decode ExecutionAbortedEventDetails
Encode ExecutionAbortedEventDetails
```

#### `newExecutionAbortedEventDetails`

``` purescript
newExecutionAbortedEventDetails :: ExecutionAbortedEventDetails
```

Constructs ExecutionAbortedEventDetails from required parameters

#### `newExecutionAbortedEventDetails'`

``` purescript
newExecutionAbortedEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> ExecutionAbortedEventDetails
```

Constructs ExecutionAbortedEventDetails's fields from required parameters

#### `ExecutionAlreadyExists`

``` purescript
newtype ExecutionAlreadyExists
  = ExecutionAlreadyExists { message :: NullOrUndefined (ErrorMessage) }
```

<p>The execution has the same <code>name</code> as another execution (but a different <code>input</code>).</p> <note> <p>Executions with the same <code>name</code> and <code>input</code> are considered idempotent.</p> </note>

##### Instances
``` purescript
Newtype ExecutionAlreadyExists _
Generic ExecutionAlreadyExists _
Show ExecutionAlreadyExists
Decode ExecutionAlreadyExists
Encode ExecutionAlreadyExists
```

#### `newExecutionAlreadyExists`

``` purescript
newExecutionAlreadyExists :: ExecutionAlreadyExists
```

Constructs ExecutionAlreadyExists from required parameters

#### `newExecutionAlreadyExists'`

``` purescript
newExecutionAlreadyExists' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ExecutionAlreadyExists
```

Constructs ExecutionAlreadyExists's fields from required parameters

#### `ExecutionDoesNotExist`

``` purescript
newtype ExecutionDoesNotExist
  = ExecutionDoesNotExist { message :: NullOrUndefined (ErrorMessage) }
```

<p>The specified execution does not exist.</p>

##### Instances
``` purescript
Newtype ExecutionDoesNotExist _
Generic ExecutionDoesNotExist _
Show ExecutionDoesNotExist
Decode ExecutionDoesNotExist
Encode ExecutionDoesNotExist
```

#### `newExecutionDoesNotExist`

``` purescript
newExecutionDoesNotExist :: ExecutionDoesNotExist
```

Constructs ExecutionDoesNotExist from required parameters

#### `newExecutionDoesNotExist'`

``` purescript
newExecutionDoesNotExist' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ExecutionDoesNotExist
```

Constructs ExecutionDoesNotExist's fields from required parameters

#### `ExecutionFailedEventDetails`

``` purescript
newtype ExecutionFailedEventDetails
  = ExecutionFailedEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about an execution failure event.</p>

##### Instances
``` purescript
Newtype ExecutionFailedEventDetails _
Generic ExecutionFailedEventDetails _
Show ExecutionFailedEventDetails
Decode ExecutionFailedEventDetails
Encode ExecutionFailedEventDetails
```

#### `newExecutionFailedEventDetails`

``` purescript
newExecutionFailedEventDetails :: ExecutionFailedEventDetails
```

Constructs ExecutionFailedEventDetails from required parameters

#### `newExecutionFailedEventDetails'`

``` purescript
newExecutionFailedEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> ExecutionFailedEventDetails
```

Constructs ExecutionFailedEventDetails's fields from required parameters

#### `ExecutionLimitExceeded`

``` purescript
newtype ExecutionLimitExceeded
  = ExecutionLimitExceeded { message :: NullOrUndefined (ErrorMessage) }
```

<p>The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.</p>

##### Instances
``` purescript
Newtype ExecutionLimitExceeded _
Generic ExecutionLimitExceeded _
Show ExecutionLimitExceeded
Decode ExecutionLimitExceeded
Encode ExecutionLimitExceeded
```

#### `newExecutionLimitExceeded`

``` purescript
newExecutionLimitExceeded :: ExecutionLimitExceeded
```

Constructs ExecutionLimitExceeded from required parameters

#### `newExecutionLimitExceeded'`

``` purescript
newExecutionLimitExceeded' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ExecutionLimitExceeded
```

Constructs ExecutionLimitExceeded's fields from required parameters

#### `ExecutionList`

``` purescript
newtype ExecutionList
  = ExecutionList (Array ExecutionListItem)
```

##### Instances
``` purescript
Newtype ExecutionList _
Generic ExecutionList _
Show ExecutionList
Decode ExecutionList
Encode ExecutionList
```

#### `ExecutionListItem`

``` purescript
newtype ExecutionListItem
  = ExecutionListItem { executionArn :: Arn, stateMachineArn :: Arn, name :: Name, status :: ExecutionStatus, startDate :: Timestamp, stopDate :: NullOrUndefined (Timestamp) }
```

<p>Contains details about an execution.</p>

##### Instances
``` purescript
Newtype ExecutionListItem _
Generic ExecutionListItem _
Show ExecutionListItem
Decode ExecutionListItem
Encode ExecutionListItem
```

#### `newExecutionListItem`

``` purescript
newExecutionListItem :: Arn -> Name -> Timestamp -> Arn -> ExecutionStatus -> ExecutionListItem
```

Constructs ExecutionListItem from required parameters

#### `newExecutionListItem'`

``` purescript
newExecutionListItem' :: Arn -> Name -> Timestamp -> Arn -> ExecutionStatus -> ({ executionArn :: Arn, stateMachineArn :: Arn, name :: Name, status :: ExecutionStatus, startDate :: Timestamp, stopDate :: NullOrUndefined (Timestamp) } -> { executionArn :: Arn, stateMachineArn :: Arn, name :: Name, status :: ExecutionStatus, startDate :: Timestamp, stopDate :: NullOrUndefined (Timestamp) }) -> ExecutionListItem
```

Constructs ExecutionListItem's fields from required parameters

#### `ExecutionStartedEventDetails`

``` purescript
newtype ExecutionStartedEventDetails
  = ExecutionStartedEventDetails { input :: NullOrUndefined (Data), roleArn :: NullOrUndefined (Arn) }
```

<p>Contains details about the start of the execution.</p>

##### Instances
``` purescript
Newtype ExecutionStartedEventDetails _
Generic ExecutionStartedEventDetails _
Show ExecutionStartedEventDetails
Decode ExecutionStartedEventDetails
Encode ExecutionStartedEventDetails
```

#### `newExecutionStartedEventDetails`

``` purescript
newExecutionStartedEventDetails :: ExecutionStartedEventDetails
```

Constructs ExecutionStartedEventDetails from required parameters

#### `newExecutionStartedEventDetails'`

``` purescript
newExecutionStartedEventDetails' :: ({ input :: NullOrUndefined (Data), roleArn :: NullOrUndefined (Arn) } -> { input :: NullOrUndefined (Data), roleArn :: NullOrUndefined (Arn) }) -> ExecutionStartedEventDetails
```

Constructs ExecutionStartedEventDetails's fields from required parameters

#### `ExecutionStatus`

``` purescript
newtype ExecutionStatus
  = ExecutionStatus String
```

##### Instances
``` purescript
Newtype ExecutionStatus _
Generic ExecutionStatus _
Show ExecutionStatus
Decode ExecutionStatus
Encode ExecutionStatus
```

#### `ExecutionSucceededEventDetails`

``` purescript
newtype ExecutionSucceededEventDetails
  = ExecutionSucceededEventDetails { output :: NullOrUndefined (Data) }
```

<p>Contains details about the successful termination of the execution.</p>

##### Instances
``` purescript
Newtype ExecutionSucceededEventDetails _
Generic ExecutionSucceededEventDetails _
Show ExecutionSucceededEventDetails
Decode ExecutionSucceededEventDetails
Encode ExecutionSucceededEventDetails
```

#### `newExecutionSucceededEventDetails`

``` purescript
newExecutionSucceededEventDetails :: ExecutionSucceededEventDetails
```

Constructs ExecutionSucceededEventDetails from required parameters

#### `newExecutionSucceededEventDetails'`

``` purescript
newExecutionSucceededEventDetails' :: ({ output :: NullOrUndefined (Data) } -> { output :: NullOrUndefined (Data) }) -> ExecutionSucceededEventDetails
```

Constructs ExecutionSucceededEventDetails's fields from required parameters

#### `ExecutionTimedOutEventDetails`

``` purescript
newtype ExecutionTimedOutEventDetails
  = ExecutionTimedOutEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about the execution timeout which occurred during the execution.</p>

##### Instances
``` purescript
Newtype ExecutionTimedOutEventDetails _
Generic ExecutionTimedOutEventDetails _
Show ExecutionTimedOutEventDetails
Decode ExecutionTimedOutEventDetails
Encode ExecutionTimedOutEventDetails
```

#### `newExecutionTimedOutEventDetails`

``` purescript
newExecutionTimedOutEventDetails :: ExecutionTimedOutEventDetails
```

Constructs ExecutionTimedOutEventDetails from required parameters

#### `newExecutionTimedOutEventDetails'`

``` purescript
newExecutionTimedOutEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> ExecutionTimedOutEventDetails
```

Constructs ExecutionTimedOutEventDetails's fields from required parameters

#### `GetActivityTaskInput`

``` purescript
newtype GetActivityTaskInput
  = GetActivityTaskInput { activityArn :: Arn, workerName :: NullOrUndefined (Name) }
```

##### Instances
``` purescript
Newtype GetActivityTaskInput _
Generic GetActivityTaskInput _
Show GetActivityTaskInput
Decode GetActivityTaskInput
Encode GetActivityTaskInput
```

#### `newGetActivityTaskInput`

``` purescript
newGetActivityTaskInput :: Arn -> GetActivityTaskInput
```

Constructs GetActivityTaskInput from required parameters

#### `newGetActivityTaskInput'`

``` purescript
newGetActivityTaskInput' :: Arn -> ({ activityArn :: Arn, workerName :: NullOrUndefined (Name) } -> { activityArn :: Arn, workerName :: NullOrUndefined (Name) }) -> GetActivityTaskInput
```

Constructs GetActivityTaskInput's fields from required parameters

#### `GetActivityTaskOutput`

``` purescript
newtype GetActivityTaskOutput
  = GetActivityTaskOutput { taskToken :: NullOrUndefined (TaskToken), input :: NullOrUndefined (Data) }
```

##### Instances
``` purescript
Newtype GetActivityTaskOutput _
Generic GetActivityTaskOutput _
Show GetActivityTaskOutput
Decode GetActivityTaskOutput
Encode GetActivityTaskOutput
```

#### `newGetActivityTaskOutput`

``` purescript
newGetActivityTaskOutput :: GetActivityTaskOutput
```

Constructs GetActivityTaskOutput from required parameters

#### `newGetActivityTaskOutput'`

``` purescript
newGetActivityTaskOutput' :: ({ taskToken :: NullOrUndefined (TaskToken), input :: NullOrUndefined (Data) } -> { taskToken :: NullOrUndefined (TaskToken), input :: NullOrUndefined (Data) }) -> GetActivityTaskOutput
```

Constructs GetActivityTaskOutput's fields from required parameters

#### `GetExecutionHistoryInput`

``` purescript
newtype GetExecutionHistoryInput
  = GetExecutionHistoryInput { executionArn :: Arn, maxResults :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder), nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype GetExecutionHistoryInput _
Generic GetExecutionHistoryInput _
Show GetExecutionHistoryInput
Decode GetExecutionHistoryInput
Encode GetExecutionHistoryInput
```

#### `newGetExecutionHistoryInput`

``` purescript
newGetExecutionHistoryInput :: Arn -> GetExecutionHistoryInput
```

Constructs GetExecutionHistoryInput from required parameters

#### `newGetExecutionHistoryInput'`

``` purescript
newGetExecutionHistoryInput' :: Arn -> ({ executionArn :: Arn, maxResults :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder), nextToken :: NullOrUndefined (PageToken) } -> { executionArn :: Arn, maxResults :: NullOrUndefined (PageSize), reverseOrder :: NullOrUndefined (ReverseOrder), nextToken :: NullOrUndefined (PageToken) }) -> GetExecutionHistoryInput
```

Constructs GetExecutionHistoryInput's fields from required parameters

#### `GetExecutionHistoryOutput`

``` purescript
newtype GetExecutionHistoryOutput
  = GetExecutionHistoryOutput { events :: HistoryEventList, nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype GetExecutionHistoryOutput _
Generic GetExecutionHistoryOutput _
Show GetExecutionHistoryOutput
Decode GetExecutionHistoryOutput
Encode GetExecutionHistoryOutput
```

#### `newGetExecutionHistoryOutput`

``` purescript
newGetExecutionHistoryOutput :: HistoryEventList -> GetExecutionHistoryOutput
```

Constructs GetExecutionHistoryOutput from required parameters

#### `newGetExecutionHistoryOutput'`

``` purescript
newGetExecutionHistoryOutput' :: HistoryEventList -> ({ events :: HistoryEventList, nextToken :: NullOrUndefined (PageToken) } -> { events :: HistoryEventList, nextToken :: NullOrUndefined (PageToken) }) -> GetExecutionHistoryOutput
```

Constructs GetExecutionHistoryOutput's fields from required parameters

#### `HistoryEvent`

``` purescript
newtype HistoryEvent
  = HistoryEvent { timestamp :: Timestamp, "type" :: HistoryEventType, id :: EventId, previousEventId :: NullOrUndefined (EventId), activityFailedEventDetails :: NullOrUndefined (ActivityFailedEventDetails), activityScheduleFailedEventDetails :: NullOrUndefined (ActivityScheduleFailedEventDetails), activityScheduledEventDetails :: NullOrUndefined (ActivityScheduledEventDetails), activityStartedEventDetails :: NullOrUndefined (ActivityStartedEventDetails), activitySucceededEventDetails :: NullOrUndefined (ActivitySucceededEventDetails), activityTimedOutEventDetails :: NullOrUndefined (ActivityTimedOutEventDetails), executionFailedEventDetails :: NullOrUndefined (ExecutionFailedEventDetails), executionStartedEventDetails :: NullOrUndefined (ExecutionStartedEventDetails), executionSucceededEventDetails :: NullOrUndefined (ExecutionSucceededEventDetails), executionAbortedEventDetails :: NullOrUndefined (ExecutionAbortedEventDetails), executionTimedOutEventDetails :: NullOrUndefined (ExecutionTimedOutEventDetails), lambdaFunctionFailedEventDetails :: NullOrUndefined (LambdaFunctionFailedEventDetails), lambdaFunctionScheduleFailedEventDetails :: NullOrUndefined (LambdaFunctionScheduleFailedEventDetails), lambdaFunctionScheduledEventDetails :: NullOrUndefined (LambdaFunctionScheduledEventDetails), lambdaFunctionStartFailedEventDetails :: NullOrUndefined (LambdaFunctionStartFailedEventDetails), lambdaFunctionSucceededEventDetails :: NullOrUndefined (LambdaFunctionSucceededEventDetails), lambdaFunctionTimedOutEventDetails :: NullOrUndefined (LambdaFunctionTimedOutEventDetails), stateEnteredEventDetails :: NullOrUndefined (StateEnteredEventDetails), stateExitedEventDetails :: NullOrUndefined (StateExitedEventDetails) }
```

<p>Contains details about the events of an execution.</p>

##### Instances
``` purescript
Newtype HistoryEvent _
Generic HistoryEvent _
Show HistoryEvent
Decode HistoryEvent
Encode HistoryEvent
```

#### `newHistoryEvent`

``` purescript
newHistoryEvent :: EventId -> Timestamp -> HistoryEventType -> HistoryEvent
```

Constructs HistoryEvent from required parameters

#### `newHistoryEvent'`

``` purescript
newHistoryEvent' :: EventId -> Timestamp -> HistoryEventType -> ({ timestamp :: Timestamp, "type" :: HistoryEventType, id :: EventId, previousEventId :: NullOrUndefined (EventId), activityFailedEventDetails :: NullOrUndefined (ActivityFailedEventDetails), activityScheduleFailedEventDetails :: NullOrUndefined (ActivityScheduleFailedEventDetails), activityScheduledEventDetails :: NullOrUndefined (ActivityScheduledEventDetails), activityStartedEventDetails :: NullOrUndefined (ActivityStartedEventDetails), activitySucceededEventDetails :: NullOrUndefined (ActivitySucceededEventDetails), activityTimedOutEventDetails :: NullOrUndefined (ActivityTimedOutEventDetails), executionFailedEventDetails :: NullOrUndefined (ExecutionFailedEventDetails), executionStartedEventDetails :: NullOrUndefined (ExecutionStartedEventDetails), executionSucceededEventDetails :: NullOrUndefined (ExecutionSucceededEventDetails), executionAbortedEventDetails :: NullOrUndefined (ExecutionAbortedEventDetails), executionTimedOutEventDetails :: NullOrUndefined (ExecutionTimedOutEventDetails), lambdaFunctionFailedEventDetails :: NullOrUndefined (LambdaFunctionFailedEventDetails), lambdaFunctionScheduleFailedEventDetails :: NullOrUndefined (LambdaFunctionScheduleFailedEventDetails), lambdaFunctionScheduledEventDetails :: NullOrUndefined (LambdaFunctionScheduledEventDetails), lambdaFunctionStartFailedEventDetails :: NullOrUndefined (LambdaFunctionStartFailedEventDetails), lambdaFunctionSucceededEventDetails :: NullOrUndefined (LambdaFunctionSucceededEventDetails), lambdaFunctionTimedOutEventDetails :: NullOrUndefined (LambdaFunctionTimedOutEventDetails), stateEnteredEventDetails :: NullOrUndefined (StateEnteredEventDetails), stateExitedEventDetails :: NullOrUndefined (StateExitedEventDetails) } -> { timestamp :: Timestamp, "type" :: HistoryEventType, id :: EventId, previousEventId :: NullOrUndefined (EventId), activityFailedEventDetails :: NullOrUndefined (ActivityFailedEventDetails), activityScheduleFailedEventDetails :: NullOrUndefined (ActivityScheduleFailedEventDetails), activityScheduledEventDetails :: NullOrUndefined (ActivityScheduledEventDetails), activityStartedEventDetails :: NullOrUndefined (ActivityStartedEventDetails), activitySucceededEventDetails :: NullOrUndefined (ActivitySucceededEventDetails), activityTimedOutEventDetails :: NullOrUndefined (ActivityTimedOutEventDetails), executionFailedEventDetails :: NullOrUndefined (ExecutionFailedEventDetails), executionStartedEventDetails :: NullOrUndefined (ExecutionStartedEventDetails), executionSucceededEventDetails :: NullOrUndefined (ExecutionSucceededEventDetails), executionAbortedEventDetails :: NullOrUndefined (ExecutionAbortedEventDetails), executionTimedOutEventDetails :: NullOrUndefined (ExecutionTimedOutEventDetails), lambdaFunctionFailedEventDetails :: NullOrUndefined (LambdaFunctionFailedEventDetails), lambdaFunctionScheduleFailedEventDetails :: NullOrUndefined (LambdaFunctionScheduleFailedEventDetails), lambdaFunctionScheduledEventDetails :: NullOrUndefined (LambdaFunctionScheduledEventDetails), lambdaFunctionStartFailedEventDetails :: NullOrUndefined (LambdaFunctionStartFailedEventDetails), lambdaFunctionSucceededEventDetails :: NullOrUndefined (LambdaFunctionSucceededEventDetails), lambdaFunctionTimedOutEventDetails :: NullOrUndefined (LambdaFunctionTimedOutEventDetails), stateEnteredEventDetails :: NullOrUndefined (StateEnteredEventDetails), stateExitedEventDetails :: NullOrUndefined (StateExitedEventDetails) }) -> HistoryEvent
```

Constructs HistoryEvent's fields from required parameters

#### `HistoryEventList`

``` purescript
newtype HistoryEventList
  = HistoryEventList (Array HistoryEvent)
```

<p>Contains details about the events which occurred during an execution.</p>

##### Instances
``` purescript
Newtype HistoryEventList _
Generic HistoryEventList _
Show HistoryEventList
Decode HistoryEventList
Encode HistoryEventList
```

#### `HistoryEventType`

``` purescript
newtype HistoryEventType
  = HistoryEventType String
```

##### Instances
``` purescript
Newtype HistoryEventType _
Generic HistoryEventType _
Show HistoryEventType
Decode HistoryEventType
Encode HistoryEventType
```

#### `Identity`

``` purescript
newtype Identity
  = Identity String
```

##### Instances
``` purescript
Newtype Identity _
Generic Identity _
Show Identity
Decode Identity
Encode Identity
```

#### `InvalidArn`

``` purescript
newtype InvalidArn
  = InvalidArn { message :: NullOrUndefined (ErrorMessage) }
```

<p>The provided Amazon Resource Name (ARN) is invalid.</p>

##### Instances
``` purescript
Newtype InvalidArn _
Generic InvalidArn _
Show InvalidArn
Decode InvalidArn
Encode InvalidArn
```

#### `newInvalidArn`

``` purescript
newInvalidArn :: InvalidArn
```

Constructs InvalidArn from required parameters

#### `newInvalidArn'`

``` purescript
newInvalidArn' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidArn
```

Constructs InvalidArn's fields from required parameters

#### `InvalidDefinition`

``` purescript
newtype InvalidDefinition
  = InvalidDefinition { message :: NullOrUndefined (ErrorMessage) }
```

<p>The provided Amazon States Language definition is invalid.</p>

##### Instances
``` purescript
Newtype InvalidDefinition _
Generic InvalidDefinition _
Show InvalidDefinition
Decode InvalidDefinition
Encode InvalidDefinition
```

#### `newInvalidDefinition`

``` purescript
newInvalidDefinition :: InvalidDefinition
```

Constructs InvalidDefinition from required parameters

#### `newInvalidDefinition'`

``` purescript
newInvalidDefinition' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidDefinition
```

Constructs InvalidDefinition's fields from required parameters

#### `InvalidExecutionInput`

``` purescript
newtype InvalidExecutionInput
  = InvalidExecutionInput { message :: NullOrUndefined (ErrorMessage) }
```

<p>The provided JSON input data is invalid.</p>

##### Instances
``` purescript
Newtype InvalidExecutionInput _
Generic InvalidExecutionInput _
Show InvalidExecutionInput
Decode InvalidExecutionInput
Encode InvalidExecutionInput
```

#### `newInvalidExecutionInput`

``` purescript
newInvalidExecutionInput :: InvalidExecutionInput
```

Constructs InvalidExecutionInput from required parameters

#### `newInvalidExecutionInput'`

``` purescript
newInvalidExecutionInput' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidExecutionInput
```

Constructs InvalidExecutionInput's fields from required parameters

#### `InvalidName`

``` purescript
newtype InvalidName
  = InvalidName { message :: NullOrUndefined (ErrorMessage) }
```

<p>The provided name is invalid.</p>

##### Instances
``` purescript
Newtype InvalidName _
Generic InvalidName _
Show InvalidName
Decode InvalidName
Encode InvalidName
```

#### `newInvalidName`

``` purescript
newInvalidName :: InvalidName
```

Constructs InvalidName from required parameters

#### `newInvalidName'`

``` purescript
newInvalidName' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidName
```

Constructs InvalidName's fields from required parameters

#### `InvalidOutput`

``` purescript
newtype InvalidOutput
  = InvalidOutput { message :: NullOrUndefined (ErrorMessage) }
```

<p>The provided JSON output data is invalid.</p>

##### Instances
``` purescript
Newtype InvalidOutput _
Generic InvalidOutput _
Show InvalidOutput
Decode InvalidOutput
Encode InvalidOutput
```

#### `newInvalidOutput`

``` purescript
newInvalidOutput :: InvalidOutput
```

Constructs InvalidOutput from required parameters

#### `newInvalidOutput'`

``` purescript
newInvalidOutput' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidOutput
```

Constructs InvalidOutput's fields from required parameters

#### `InvalidToken`

``` purescript
newtype InvalidToken
  = InvalidToken { message :: NullOrUndefined (ErrorMessage) }
```

<p>The provided token is invalid.</p>

##### Instances
``` purescript
Newtype InvalidToken _
Generic InvalidToken _
Show InvalidToken
Decode InvalidToken
Encode InvalidToken
```

#### `newInvalidToken`

``` purescript
newInvalidToken :: InvalidToken
```

Constructs InvalidToken from required parameters

#### `newInvalidToken'`

``` purescript
newInvalidToken' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidToken
```

Constructs InvalidToken's fields from required parameters

#### `LambdaFunctionFailedEventDetails`

``` purescript
newtype LambdaFunctionFailedEventDetails
  = LambdaFunctionFailedEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about a lambda function which failed during an execution.</p>

##### Instances
``` purescript
Newtype LambdaFunctionFailedEventDetails _
Generic LambdaFunctionFailedEventDetails _
Show LambdaFunctionFailedEventDetails
Decode LambdaFunctionFailedEventDetails
Encode LambdaFunctionFailedEventDetails
```

#### `newLambdaFunctionFailedEventDetails`

``` purescript
newLambdaFunctionFailedEventDetails :: LambdaFunctionFailedEventDetails
```

Constructs LambdaFunctionFailedEventDetails from required parameters

#### `newLambdaFunctionFailedEventDetails'`

``` purescript
newLambdaFunctionFailedEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> LambdaFunctionFailedEventDetails
```

Constructs LambdaFunctionFailedEventDetails's fields from required parameters

#### `LambdaFunctionScheduleFailedEventDetails`

``` purescript
newtype LambdaFunctionScheduleFailedEventDetails
  = LambdaFunctionScheduleFailedEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about a failed lambda function schedule event which occurred during an execution.</p>

##### Instances
``` purescript
Newtype LambdaFunctionScheduleFailedEventDetails _
Generic LambdaFunctionScheduleFailedEventDetails _
Show LambdaFunctionScheduleFailedEventDetails
Decode LambdaFunctionScheduleFailedEventDetails
Encode LambdaFunctionScheduleFailedEventDetails
```

#### `newLambdaFunctionScheduleFailedEventDetails`

``` purescript
newLambdaFunctionScheduleFailedEventDetails :: LambdaFunctionScheduleFailedEventDetails
```

Constructs LambdaFunctionScheduleFailedEventDetails from required parameters

#### `newLambdaFunctionScheduleFailedEventDetails'`

``` purescript
newLambdaFunctionScheduleFailedEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> LambdaFunctionScheduleFailedEventDetails
```

Constructs LambdaFunctionScheduleFailedEventDetails's fields from required parameters

#### `LambdaFunctionScheduledEventDetails`

``` purescript
newtype LambdaFunctionScheduledEventDetails
  = LambdaFunctionScheduledEventDetails { resource :: Arn, input :: NullOrUndefined (Data), timeoutInSeconds :: NullOrUndefined (TimeoutInSeconds) }
```

<p>Contains details about a lambda function scheduled during an execution.</p>

##### Instances
``` purescript
Newtype LambdaFunctionScheduledEventDetails _
Generic LambdaFunctionScheduledEventDetails _
Show LambdaFunctionScheduledEventDetails
Decode LambdaFunctionScheduledEventDetails
Encode LambdaFunctionScheduledEventDetails
```

#### `newLambdaFunctionScheduledEventDetails`

``` purescript
newLambdaFunctionScheduledEventDetails :: Arn -> LambdaFunctionScheduledEventDetails
```

Constructs LambdaFunctionScheduledEventDetails from required parameters

#### `newLambdaFunctionScheduledEventDetails'`

``` purescript
newLambdaFunctionScheduledEventDetails' :: Arn -> ({ resource :: Arn, input :: NullOrUndefined (Data), timeoutInSeconds :: NullOrUndefined (TimeoutInSeconds) } -> { resource :: Arn, input :: NullOrUndefined (Data), timeoutInSeconds :: NullOrUndefined (TimeoutInSeconds) }) -> LambdaFunctionScheduledEventDetails
```

Constructs LambdaFunctionScheduledEventDetails's fields from required parameters

#### `LambdaFunctionStartFailedEventDetails`

``` purescript
newtype LambdaFunctionStartFailedEventDetails
  = LambdaFunctionStartFailedEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about a lambda function which failed to start during an execution.</p>

##### Instances
``` purescript
Newtype LambdaFunctionStartFailedEventDetails _
Generic LambdaFunctionStartFailedEventDetails _
Show LambdaFunctionStartFailedEventDetails
Decode LambdaFunctionStartFailedEventDetails
Encode LambdaFunctionStartFailedEventDetails
```

#### `newLambdaFunctionStartFailedEventDetails`

``` purescript
newLambdaFunctionStartFailedEventDetails :: LambdaFunctionStartFailedEventDetails
```

Constructs LambdaFunctionStartFailedEventDetails from required parameters

#### `newLambdaFunctionStartFailedEventDetails'`

``` purescript
newLambdaFunctionStartFailedEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> LambdaFunctionStartFailedEventDetails
```

Constructs LambdaFunctionStartFailedEventDetails's fields from required parameters

#### `LambdaFunctionSucceededEventDetails`

``` purescript
newtype LambdaFunctionSucceededEventDetails
  = LambdaFunctionSucceededEventDetails { output :: NullOrUndefined (Data) }
```

<p>Contains details about a lambda function which successfully terminated during an execution.</p>

##### Instances
``` purescript
Newtype LambdaFunctionSucceededEventDetails _
Generic LambdaFunctionSucceededEventDetails _
Show LambdaFunctionSucceededEventDetails
Decode LambdaFunctionSucceededEventDetails
Encode LambdaFunctionSucceededEventDetails
```

#### `newLambdaFunctionSucceededEventDetails`

``` purescript
newLambdaFunctionSucceededEventDetails :: LambdaFunctionSucceededEventDetails
```

Constructs LambdaFunctionSucceededEventDetails from required parameters

#### `newLambdaFunctionSucceededEventDetails'`

``` purescript
newLambdaFunctionSucceededEventDetails' :: ({ output :: NullOrUndefined (Data) } -> { output :: NullOrUndefined (Data) }) -> LambdaFunctionSucceededEventDetails
```

Constructs LambdaFunctionSucceededEventDetails's fields from required parameters

#### `LambdaFunctionTimedOutEventDetails`

``` purescript
newtype LambdaFunctionTimedOutEventDetails
  = LambdaFunctionTimedOutEventDetails { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

<p>Contains details about a lambda function timeout which occurred during an execution.</p>

##### Instances
``` purescript
Newtype LambdaFunctionTimedOutEventDetails _
Generic LambdaFunctionTimedOutEventDetails _
Show LambdaFunctionTimedOutEventDetails
Decode LambdaFunctionTimedOutEventDetails
Encode LambdaFunctionTimedOutEventDetails
```

#### `newLambdaFunctionTimedOutEventDetails`

``` purescript
newLambdaFunctionTimedOutEventDetails :: LambdaFunctionTimedOutEventDetails
```

Constructs LambdaFunctionTimedOutEventDetails from required parameters

#### `newLambdaFunctionTimedOutEventDetails'`

``` purescript
newLambdaFunctionTimedOutEventDetails' :: ({ error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> LambdaFunctionTimedOutEventDetails
```

Constructs LambdaFunctionTimedOutEventDetails's fields from required parameters

#### `ListActivitiesInput`

``` purescript
newtype ListActivitiesInput
  = ListActivitiesInput { maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype ListActivitiesInput _
Generic ListActivitiesInput _
Show ListActivitiesInput
Decode ListActivitiesInput
Encode ListActivitiesInput
```

#### `newListActivitiesInput`

``` purescript
newListActivitiesInput :: ListActivitiesInput
```

Constructs ListActivitiesInput from required parameters

#### `newListActivitiesInput'`

``` purescript
newListActivitiesInput' :: ({ maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) } -> { maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) }) -> ListActivitiesInput
```

Constructs ListActivitiesInput's fields from required parameters

#### `ListActivitiesOutput`

``` purescript
newtype ListActivitiesOutput
  = ListActivitiesOutput { activities :: ActivityList, nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype ListActivitiesOutput _
Generic ListActivitiesOutput _
Show ListActivitiesOutput
Decode ListActivitiesOutput
Encode ListActivitiesOutput
```

#### `newListActivitiesOutput`

``` purescript
newListActivitiesOutput :: ActivityList -> ListActivitiesOutput
```

Constructs ListActivitiesOutput from required parameters

#### `newListActivitiesOutput'`

``` purescript
newListActivitiesOutput' :: ActivityList -> ({ activities :: ActivityList, nextToken :: NullOrUndefined (PageToken) } -> { activities :: ActivityList, nextToken :: NullOrUndefined (PageToken) }) -> ListActivitiesOutput
```

Constructs ListActivitiesOutput's fields from required parameters

#### `ListExecutionsInput`

``` purescript
newtype ListExecutionsInput
  = ListExecutionsInput { stateMachineArn :: Arn, statusFilter :: NullOrUndefined (ExecutionStatus), maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype ListExecutionsInput _
Generic ListExecutionsInput _
Show ListExecutionsInput
Decode ListExecutionsInput
Encode ListExecutionsInput
```

#### `newListExecutionsInput`

``` purescript
newListExecutionsInput :: Arn -> ListExecutionsInput
```

Constructs ListExecutionsInput from required parameters

#### `newListExecutionsInput'`

``` purescript
newListExecutionsInput' :: Arn -> ({ stateMachineArn :: Arn, statusFilter :: NullOrUndefined (ExecutionStatus), maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) } -> { stateMachineArn :: Arn, statusFilter :: NullOrUndefined (ExecutionStatus), maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) }) -> ListExecutionsInput
```

Constructs ListExecutionsInput's fields from required parameters

#### `ListExecutionsOutput`

``` purescript
newtype ListExecutionsOutput
  = ListExecutionsOutput { executions :: ExecutionList, nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype ListExecutionsOutput _
Generic ListExecutionsOutput _
Show ListExecutionsOutput
Decode ListExecutionsOutput
Encode ListExecutionsOutput
```

#### `newListExecutionsOutput`

``` purescript
newListExecutionsOutput :: ExecutionList -> ListExecutionsOutput
```

Constructs ListExecutionsOutput from required parameters

#### `newListExecutionsOutput'`

``` purescript
newListExecutionsOutput' :: ExecutionList -> ({ executions :: ExecutionList, nextToken :: NullOrUndefined (PageToken) } -> { executions :: ExecutionList, nextToken :: NullOrUndefined (PageToken) }) -> ListExecutionsOutput
```

Constructs ListExecutionsOutput's fields from required parameters

#### `ListStateMachinesInput`

``` purescript
newtype ListStateMachinesInput
  = ListStateMachinesInput { maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype ListStateMachinesInput _
Generic ListStateMachinesInput _
Show ListStateMachinesInput
Decode ListStateMachinesInput
Encode ListStateMachinesInput
```

#### `newListStateMachinesInput`

``` purescript
newListStateMachinesInput :: ListStateMachinesInput
```

Constructs ListStateMachinesInput from required parameters

#### `newListStateMachinesInput'`

``` purescript
newListStateMachinesInput' :: ({ maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) } -> { maxResults :: NullOrUndefined (PageSize), nextToken :: NullOrUndefined (PageToken) }) -> ListStateMachinesInput
```

Constructs ListStateMachinesInput's fields from required parameters

#### `ListStateMachinesOutput`

``` purescript
newtype ListStateMachinesOutput
  = ListStateMachinesOutput { stateMachines :: StateMachineList, nextToken :: NullOrUndefined (PageToken) }
```

##### Instances
``` purescript
Newtype ListStateMachinesOutput _
Generic ListStateMachinesOutput _
Show ListStateMachinesOutput
Decode ListStateMachinesOutput
Encode ListStateMachinesOutput
```

#### `newListStateMachinesOutput`

``` purescript
newListStateMachinesOutput :: StateMachineList -> ListStateMachinesOutput
```

Constructs ListStateMachinesOutput from required parameters

#### `newListStateMachinesOutput'`

``` purescript
newListStateMachinesOutput' :: StateMachineList -> ({ stateMachines :: StateMachineList, nextToken :: NullOrUndefined (PageToken) } -> { stateMachines :: StateMachineList, nextToken :: NullOrUndefined (PageToken) }) -> ListStateMachinesOutput
```

Constructs ListStateMachinesOutput's fields from required parameters

#### `MissingRequiredParameter`

``` purescript
newtype MissingRequiredParameter
  = MissingRequiredParameter { message :: NullOrUndefined (ErrorMessage) }
```

<p>Request is missing a required parameter. This error occurs if both <code>definition</code> and <code>roleArn</code> are not specified.</p>

##### Instances
``` purescript
Newtype MissingRequiredParameter _
Generic MissingRequiredParameter _
Show MissingRequiredParameter
Decode MissingRequiredParameter
Encode MissingRequiredParameter
```

#### `newMissingRequiredParameter`

``` purescript
newMissingRequiredParameter :: MissingRequiredParameter
```

Constructs MissingRequiredParameter from required parameters

#### `newMissingRequiredParameter'`

``` purescript
newMissingRequiredParameter' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> MissingRequiredParameter
```

Constructs MissingRequiredParameter's fields from required parameters

#### `Name`

``` purescript
newtype Name
  = Name String
```

##### Instances
``` purescript
Newtype Name _
Generic Name _
Show Name
Decode Name
Encode Name
```

#### `PageSize`

``` purescript
newtype PageSize
  = PageSize Int
```

##### Instances
``` purescript
Newtype PageSize _
Generic PageSize _
Show PageSize
Decode PageSize
Encode PageSize
```

#### `PageToken`

``` purescript
newtype PageToken
  = PageToken String
```

##### Instances
``` purescript
Newtype PageToken _
Generic PageToken _
Show PageToken
Decode PageToken
Encode PageToken
```

#### `ReverseOrder`

``` purescript
newtype ReverseOrder
  = ReverseOrder Boolean
```

##### Instances
``` purescript
Newtype ReverseOrder _
Generic ReverseOrder _
Show ReverseOrder
Decode ReverseOrder
Encode ReverseOrder
```

#### `SendTaskFailureInput`

``` purescript
newtype SendTaskFailureInput
  = SendTaskFailureInput { taskToken :: TaskToken, error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

##### Instances
``` purescript
Newtype SendTaskFailureInput _
Generic SendTaskFailureInput _
Show SendTaskFailureInput
Decode SendTaskFailureInput
Encode SendTaskFailureInput
```

#### `newSendTaskFailureInput`

``` purescript
newSendTaskFailureInput :: TaskToken -> SendTaskFailureInput
```

Constructs SendTaskFailureInput from required parameters

#### `newSendTaskFailureInput'`

``` purescript
newSendTaskFailureInput' :: TaskToken -> ({ taskToken :: TaskToken, error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { taskToken :: TaskToken, error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> SendTaskFailureInput
```

Constructs SendTaskFailureInput's fields from required parameters

#### `SendTaskFailureOutput`

``` purescript
newtype SendTaskFailureOutput
  = SendTaskFailureOutput NoArguments
```

##### Instances
``` purescript
Newtype SendTaskFailureOutput _
Generic SendTaskFailureOutput _
Show SendTaskFailureOutput
Decode SendTaskFailureOutput
Encode SendTaskFailureOutput
```

#### `SendTaskHeartbeatInput`

``` purescript
newtype SendTaskHeartbeatInput
  = SendTaskHeartbeatInput { taskToken :: TaskToken }
```

##### Instances
``` purescript
Newtype SendTaskHeartbeatInput _
Generic SendTaskHeartbeatInput _
Show SendTaskHeartbeatInput
Decode SendTaskHeartbeatInput
Encode SendTaskHeartbeatInput
```

#### `newSendTaskHeartbeatInput`

``` purescript
newSendTaskHeartbeatInput :: TaskToken -> SendTaskHeartbeatInput
```

Constructs SendTaskHeartbeatInput from required parameters

#### `newSendTaskHeartbeatInput'`

``` purescript
newSendTaskHeartbeatInput' :: TaskToken -> ({ taskToken :: TaskToken } -> { taskToken :: TaskToken }) -> SendTaskHeartbeatInput
```

Constructs SendTaskHeartbeatInput's fields from required parameters

#### `SendTaskHeartbeatOutput`

``` purescript
newtype SendTaskHeartbeatOutput
  = SendTaskHeartbeatOutput NoArguments
```

##### Instances
``` purescript
Newtype SendTaskHeartbeatOutput _
Generic SendTaskHeartbeatOutput _
Show SendTaskHeartbeatOutput
Decode SendTaskHeartbeatOutput
Encode SendTaskHeartbeatOutput
```

#### `SendTaskSuccessInput`

``` purescript
newtype SendTaskSuccessInput
  = SendTaskSuccessInput { taskToken :: TaskToken, output :: Data }
```

##### Instances
``` purescript
Newtype SendTaskSuccessInput _
Generic SendTaskSuccessInput _
Show SendTaskSuccessInput
Decode SendTaskSuccessInput
Encode SendTaskSuccessInput
```

#### `newSendTaskSuccessInput`

``` purescript
newSendTaskSuccessInput :: Data -> TaskToken -> SendTaskSuccessInput
```

Constructs SendTaskSuccessInput from required parameters

#### `newSendTaskSuccessInput'`

``` purescript
newSendTaskSuccessInput' :: Data -> TaskToken -> ({ taskToken :: TaskToken, output :: Data } -> { taskToken :: TaskToken, output :: Data }) -> SendTaskSuccessInput
```

Constructs SendTaskSuccessInput's fields from required parameters

#### `SendTaskSuccessOutput`

``` purescript
newtype SendTaskSuccessOutput
  = SendTaskSuccessOutput NoArguments
```

##### Instances
``` purescript
Newtype SendTaskSuccessOutput _
Generic SendTaskSuccessOutput _
Show SendTaskSuccessOutput
Decode SendTaskSuccessOutput
Encode SendTaskSuccessOutput
```

#### `StartExecutionInput`

``` purescript
newtype StartExecutionInput
  = StartExecutionInput { stateMachineArn :: Arn, name :: NullOrUndefined (Name), input :: NullOrUndefined (Data) }
```

##### Instances
``` purescript
Newtype StartExecutionInput _
Generic StartExecutionInput _
Show StartExecutionInput
Decode StartExecutionInput
Encode StartExecutionInput
```

#### `newStartExecutionInput`

``` purescript
newStartExecutionInput :: Arn -> StartExecutionInput
```

Constructs StartExecutionInput from required parameters

#### `newStartExecutionInput'`

``` purescript
newStartExecutionInput' :: Arn -> ({ stateMachineArn :: Arn, name :: NullOrUndefined (Name), input :: NullOrUndefined (Data) } -> { stateMachineArn :: Arn, name :: NullOrUndefined (Name), input :: NullOrUndefined (Data) }) -> StartExecutionInput
```

Constructs StartExecutionInput's fields from required parameters

#### `StartExecutionOutput`

``` purescript
newtype StartExecutionOutput
  = StartExecutionOutput { executionArn :: Arn, startDate :: Timestamp }
```

##### Instances
``` purescript
Newtype StartExecutionOutput _
Generic StartExecutionOutput _
Show StartExecutionOutput
Decode StartExecutionOutput
Encode StartExecutionOutput
```

#### `newStartExecutionOutput`

``` purescript
newStartExecutionOutput :: Arn -> Timestamp -> StartExecutionOutput
```

Constructs StartExecutionOutput from required parameters

#### `newStartExecutionOutput'`

``` purescript
newStartExecutionOutput' :: Arn -> Timestamp -> ({ executionArn :: Arn, startDate :: Timestamp } -> { executionArn :: Arn, startDate :: Timestamp }) -> StartExecutionOutput
```

Constructs StartExecutionOutput's fields from required parameters

#### `StateEnteredEventDetails`

``` purescript
newtype StateEnteredEventDetails
  = StateEnteredEventDetails { name :: Name, input :: NullOrUndefined (Data) }
```

<p>Contains details about a state entered during an execution.</p>

##### Instances
``` purescript
Newtype StateEnteredEventDetails _
Generic StateEnteredEventDetails _
Show StateEnteredEventDetails
Decode StateEnteredEventDetails
Encode StateEnteredEventDetails
```

#### `newStateEnteredEventDetails`

``` purescript
newStateEnteredEventDetails :: Name -> StateEnteredEventDetails
```

Constructs StateEnteredEventDetails from required parameters

#### `newStateEnteredEventDetails'`

``` purescript
newStateEnteredEventDetails' :: Name -> ({ name :: Name, input :: NullOrUndefined (Data) } -> { name :: Name, input :: NullOrUndefined (Data) }) -> StateEnteredEventDetails
```

Constructs StateEnteredEventDetails's fields from required parameters

#### `StateExitedEventDetails`

``` purescript
newtype StateExitedEventDetails
  = StateExitedEventDetails { name :: Name, output :: NullOrUndefined (Data) }
```

<p>Contains details about an exit from a state during an execution.</p>

##### Instances
``` purescript
Newtype StateExitedEventDetails _
Generic StateExitedEventDetails _
Show StateExitedEventDetails
Decode StateExitedEventDetails
Encode StateExitedEventDetails
```

#### `newStateExitedEventDetails`

``` purescript
newStateExitedEventDetails :: Name -> StateExitedEventDetails
```

Constructs StateExitedEventDetails from required parameters

#### `newStateExitedEventDetails'`

``` purescript
newStateExitedEventDetails' :: Name -> ({ name :: Name, output :: NullOrUndefined (Data) } -> { name :: Name, output :: NullOrUndefined (Data) }) -> StateExitedEventDetails
```

Constructs StateExitedEventDetails's fields from required parameters

#### `StateMachineAlreadyExists`

``` purescript
newtype StateMachineAlreadyExists
  = StateMachineAlreadyExists { message :: NullOrUndefined (ErrorMessage) }
```

<p>A state machine with the same name but a different definition or role ARN already exists.</p>

##### Instances
``` purescript
Newtype StateMachineAlreadyExists _
Generic StateMachineAlreadyExists _
Show StateMachineAlreadyExists
Decode StateMachineAlreadyExists
Encode StateMachineAlreadyExists
```

#### `newStateMachineAlreadyExists`

``` purescript
newStateMachineAlreadyExists :: StateMachineAlreadyExists
```

Constructs StateMachineAlreadyExists from required parameters

#### `newStateMachineAlreadyExists'`

``` purescript
newStateMachineAlreadyExists' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> StateMachineAlreadyExists
```

Constructs StateMachineAlreadyExists's fields from required parameters

#### `StateMachineDeleting`

``` purescript
newtype StateMachineDeleting
  = StateMachineDeleting { message :: NullOrUndefined (ErrorMessage) }
```

<p>The specified state machine is being deleted.</p>

##### Instances
``` purescript
Newtype StateMachineDeleting _
Generic StateMachineDeleting _
Show StateMachineDeleting
Decode StateMachineDeleting
Encode StateMachineDeleting
```

#### `newStateMachineDeleting`

``` purescript
newStateMachineDeleting :: StateMachineDeleting
```

Constructs StateMachineDeleting from required parameters

#### `newStateMachineDeleting'`

``` purescript
newStateMachineDeleting' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> StateMachineDeleting
```

Constructs StateMachineDeleting's fields from required parameters

#### `StateMachineDoesNotExist`

``` purescript
newtype StateMachineDoesNotExist
  = StateMachineDoesNotExist { message :: NullOrUndefined (ErrorMessage) }
```

<p>The specified state machine does not exist.</p>

##### Instances
``` purescript
Newtype StateMachineDoesNotExist _
Generic StateMachineDoesNotExist _
Show StateMachineDoesNotExist
Decode StateMachineDoesNotExist
Encode StateMachineDoesNotExist
```

#### `newStateMachineDoesNotExist`

``` purescript
newStateMachineDoesNotExist :: StateMachineDoesNotExist
```

Constructs StateMachineDoesNotExist from required parameters

#### `newStateMachineDoesNotExist'`

``` purescript
newStateMachineDoesNotExist' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> StateMachineDoesNotExist
```

Constructs StateMachineDoesNotExist's fields from required parameters

#### `StateMachineLimitExceeded`

``` purescript
newtype StateMachineLimitExceeded
  = StateMachineLimitExceeded { message :: NullOrUndefined (ErrorMessage) }
```

<p>The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.</p>

##### Instances
``` purescript
Newtype StateMachineLimitExceeded _
Generic StateMachineLimitExceeded _
Show StateMachineLimitExceeded
Decode StateMachineLimitExceeded
Encode StateMachineLimitExceeded
```

#### `newStateMachineLimitExceeded`

``` purescript
newStateMachineLimitExceeded :: StateMachineLimitExceeded
```

Constructs StateMachineLimitExceeded from required parameters

#### `newStateMachineLimitExceeded'`

``` purescript
newStateMachineLimitExceeded' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> StateMachineLimitExceeded
```

Constructs StateMachineLimitExceeded's fields from required parameters

#### `StateMachineList`

``` purescript
newtype StateMachineList
  = StateMachineList (Array StateMachineListItem)
```

##### Instances
``` purescript
Newtype StateMachineList _
Generic StateMachineList _
Show StateMachineList
Decode StateMachineList
Encode StateMachineList
```

#### `StateMachineListItem`

``` purescript
newtype StateMachineListItem
  = StateMachineListItem { stateMachineArn :: Arn, name :: Name, creationDate :: Timestamp }
```

<p>Contains details about the state machine.</p>

##### Instances
``` purescript
Newtype StateMachineListItem _
Generic StateMachineListItem _
Show StateMachineListItem
Decode StateMachineListItem
Encode StateMachineListItem
```

#### `newStateMachineListItem`

``` purescript
newStateMachineListItem :: Timestamp -> Name -> Arn -> StateMachineListItem
```

Constructs StateMachineListItem from required parameters

#### `newStateMachineListItem'`

``` purescript
newStateMachineListItem' :: Timestamp -> Name -> Arn -> ({ stateMachineArn :: Arn, name :: Name, creationDate :: Timestamp } -> { stateMachineArn :: Arn, name :: Name, creationDate :: Timestamp }) -> StateMachineListItem
```

Constructs StateMachineListItem's fields from required parameters

#### `StateMachineStatus`

``` purescript
newtype StateMachineStatus
  = StateMachineStatus String
```

##### Instances
``` purescript
Newtype StateMachineStatus _
Generic StateMachineStatus _
Show StateMachineStatus
Decode StateMachineStatus
Encode StateMachineStatus
```

#### `StopExecutionInput`

``` purescript
newtype StopExecutionInput
  = StopExecutionInput { executionArn :: Arn, error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }
```

##### Instances
``` purescript
Newtype StopExecutionInput _
Generic StopExecutionInput _
Show StopExecutionInput
Decode StopExecutionInput
Encode StopExecutionInput
```

#### `newStopExecutionInput`

``` purescript
newStopExecutionInput :: Arn -> StopExecutionInput
```

Constructs StopExecutionInput from required parameters

#### `newStopExecutionInput'`

``` purescript
newStopExecutionInput' :: Arn -> ({ executionArn :: Arn, error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) } -> { executionArn :: Arn, error :: NullOrUndefined (Error), cause :: NullOrUndefined (Cause) }) -> StopExecutionInput
```

Constructs StopExecutionInput's fields from required parameters

#### `StopExecutionOutput`

``` purescript
newtype StopExecutionOutput
  = StopExecutionOutput { stopDate :: Timestamp }
```

##### Instances
``` purescript
Newtype StopExecutionOutput _
Generic StopExecutionOutput _
Show StopExecutionOutput
Decode StopExecutionOutput
Encode StopExecutionOutput
```

#### `newStopExecutionOutput`

``` purescript
newStopExecutionOutput :: Timestamp -> StopExecutionOutput
```

Constructs StopExecutionOutput from required parameters

#### `newStopExecutionOutput'`

``` purescript
newStopExecutionOutput' :: Timestamp -> ({ stopDate :: Timestamp } -> { stopDate :: Timestamp }) -> StopExecutionOutput
```

Constructs StopExecutionOutput's fields from required parameters

#### `TaskDoesNotExist`

``` purescript
newtype TaskDoesNotExist
  = TaskDoesNotExist { message :: NullOrUndefined (ErrorMessage) }
```

##### Instances
``` purescript
Newtype TaskDoesNotExist _
Generic TaskDoesNotExist _
Show TaskDoesNotExist
Decode TaskDoesNotExist
Encode TaskDoesNotExist
```

#### `newTaskDoesNotExist`

``` purescript
newTaskDoesNotExist :: TaskDoesNotExist
```

Constructs TaskDoesNotExist from required parameters

#### `newTaskDoesNotExist'`

``` purescript
newTaskDoesNotExist' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> TaskDoesNotExist
```

Constructs TaskDoesNotExist's fields from required parameters

#### `TaskTimedOut`

``` purescript
newtype TaskTimedOut
  = TaskTimedOut { message :: NullOrUndefined (ErrorMessage) }
```

##### Instances
``` purescript
Newtype TaskTimedOut _
Generic TaskTimedOut _
Show TaskTimedOut
Decode TaskTimedOut
Encode TaskTimedOut
```

#### `newTaskTimedOut`

``` purescript
newTaskTimedOut :: TaskTimedOut
```

Constructs TaskTimedOut from required parameters

#### `newTaskTimedOut'`

``` purescript
newTaskTimedOut' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> TaskTimedOut
```

Constructs TaskTimedOut's fields from required parameters

#### `TaskToken`

``` purescript
newtype TaskToken
  = TaskToken String
```

##### Instances
``` purescript
Newtype TaskToken _
Generic TaskToken _
Show TaskToken
Decode TaskToken
Encode TaskToken
```

#### `TimeoutInSeconds`

``` purescript
newtype TimeoutInSeconds
  = TimeoutInSeconds Number
```

##### Instances
``` purescript
Newtype TimeoutInSeconds _
Generic TimeoutInSeconds _
Show TimeoutInSeconds
Decode TimeoutInSeconds
Encode TimeoutInSeconds
```

#### `UpdateStateMachineInput`

``` purescript
newtype UpdateStateMachineInput
  = UpdateStateMachineInput { stateMachineArn :: Arn, definition :: NullOrUndefined (Definition), roleArn :: NullOrUndefined (Arn) }
```

##### Instances
``` purescript
Newtype UpdateStateMachineInput _
Generic UpdateStateMachineInput _
Show UpdateStateMachineInput
Decode UpdateStateMachineInput
Encode UpdateStateMachineInput
```

#### `newUpdateStateMachineInput`

``` purescript
newUpdateStateMachineInput :: Arn -> UpdateStateMachineInput
```

Constructs UpdateStateMachineInput from required parameters

#### `newUpdateStateMachineInput'`

``` purescript
newUpdateStateMachineInput' :: Arn -> ({ stateMachineArn :: Arn, definition :: NullOrUndefined (Definition), roleArn :: NullOrUndefined (Arn) } -> { stateMachineArn :: Arn, definition :: NullOrUndefined (Definition), roleArn :: NullOrUndefined (Arn) }) -> UpdateStateMachineInput
```

Constructs UpdateStateMachineInput's fields from required parameters

#### `UpdateStateMachineOutput`

``` purescript
newtype UpdateStateMachineOutput
  = UpdateStateMachineOutput { updateDate :: Timestamp }
```

##### Instances
``` purescript
Newtype UpdateStateMachineOutput _
Generic UpdateStateMachineOutput _
Show UpdateStateMachineOutput
Decode UpdateStateMachineOutput
Encode UpdateStateMachineOutput
```

#### `newUpdateStateMachineOutput`

``` purescript
newUpdateStateMachineOutput :: Timestamp -> UpdateStateMachineOutput
```

Constructs UpdateStateMachineOutput from required parameters

#### `newUpdateStateMachineOutput'`

``` purescript
newUpdateStateMachineOutput' :: Timestamp -> ({ updateDate :: Timestamp } -> { updateDate :: Timestamp }) -> UpdateStateMachineOutput
```

Constructs UpdateStateMachineOutput's fields from required parameters


