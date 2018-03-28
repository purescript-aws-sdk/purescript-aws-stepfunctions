## Module AWS.StepFunctions.Requests

#### `createActivity`

``` purescript
createActivity :: forall eff. Service -> CreateActivityInput -> Aff (exception :: EXCEPTION | eff) CreateActivityOutput
```

<p>Creates an activity. An activity is a task which you write in any programming language and host on any machine which has access to AWS Step Functions. Activities must poll Step Functions using the <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.</p>

#### `createStateMachine`

``` purescript
createStateMachine :: forall eff. Service -> CreateStateMachineInput -> Aff (exception :: EXCEPTION | eff) CreateStateMachineOutput
```

<p>Creates a state machine. A state machine consists of a collection of states that can do work (<code>Task</code> states), determine to which states to transition next (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states), and so on. State machines are specified using a JSON-based, structured language.</p>

#### `deleteActivity`

``` purescript
deleteActivity :: forall eff. Service -> DeleteActivityInput -> Aff (exception :: EXCEPTION | eff) DeleteActivityOutput
```

<p>Deletes an activity.</p>

#### `deleteStateMachine`

``` purescript
deleteStateMachine :: forall eff. Service -> DeleteStateMachineInput -> Aff (exception :: EXCEPTION | eff) DeleteStateMachineOutput
```

<p>Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to <code>DELETING</code> and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.</p> <note> <p>The state machine itself is deleted after all executions are completed or deleted.</p> </note>

#### `describeActivity`

``` purescript
describeActivity :: forall eff. Service -> DescribeActivityInput -> Aff (exception :: EXCEPTION | eff) DescribeActivityOutput
```

<p>Describes an activity.</p>

#### `describeExecution`

``` purescript
describeExecution :: forall eff. Service -> DescribeExecutionInput -> Aff (exception :: EXCEPTION | eff) DescribeExecutionOutput
```

<p>Describes an execution.</p>

#### `describeStateMachine`

``` purescript
describeStateMachine :: forall eff. Service -> DescribeStateMachineInput -> Aff (exception :: EXCEPTION | eff) DescribeStateMachineOutput
```

<p>Describes a state machine.</p>

#### `describeStateMachineForExecution`

``` purescript
describeStateMachineForExecution :: forall eff. Service -> DescribeStateMachineForExecutionInput -> Aff (exception :: EXCEPTION | eff) DescribeStateMachineForExecutionOutput
```

<p>Describes the state machine associated with a specific execution.</p>

#### `getActivityTask`

``` purescript
getActivityTask :: forall eff. Service -> GetActivityTaskInput -> Aff (exception :: EXCEPTION | eff) GetActivityTaskOutput
```

<p>Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a <code>taskToken</code> with a null string.</p> <important> <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).</p> </important>

#### `getExecutionHistory`

``` purescript
getExecutionHistory :: forall eff. Service -> GetExecutionHistoryInput -> Aff (exception :: EXCEPTION | eff) GetExecutionHistoryOutput
```

<p>Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the <code>timeStamp</code> of the events. Use the <code>reverseOrder</code> parameter to get the latest events first.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `listActivities`

``` purescript
listActivities :: forall eff. Service -> ListActivitiesInput -> Aff (exception :: EXCEPTION | eff) ListActivitiesOutput
```

<p>Lists the existing activities.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `listExecutions`

``` purescript
listExecutions :: forall eff. Service -> ListExecutionsInput -> Aff (exception :: EXCEPTION | eff) ListExecutionsOutput
```

<p>Lists the executions of a state machine that meet the filtering criteria.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `listStateMachines`

``` purescript
listStateMachines :: forall eff. Service -> ListStateMachinesInput -> Aff (exception :: EXCEPTION | eff) ListStateMachinesOutput
```

<p>Lists the existing state machines.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>

#### `sendTaskFailure`

``` purescript
sendTaskFailure :: forall eff. Service -> SendTaskFailureInput -> Aff (exception :: EXCEPTION | eff) SendTaskFailureOutput
```

<p>Used by workers to report that the task identified by the <code>taskToken</code> failed.</p>

#### `sendTaskHeartbeat`

``` purescript
sendTaskHeartbeat :: forall eff. Service -> SendTaskHeartbeatInput -> Aff (exception :: EXCEPTION | eff) SendTaskHeartbeatOutput
```

<p>Used by workers to report to the service that the task represented by the specified <code>taskToken</code> is still making progress. This action resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an <code>ActivityTimedOut</code> event.</p> <note> <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received.</p> </note> <note> <p>This operation is only useful for long-lived tasks to report the liveliness of the task.</p> </note>

#### `sendTaskSuccess`

``` purescript
sendTaskSuccess :: forall eff. Service -> SendTaskSuccessInput -> Aff (exception :: EXCEPTION | eff) SendTaskSuccessOutput
```

<p>Used by workers to report that the task identified by the <code>taskToken</code> completed successfully.</p>

#### `startExecution`

``` purescript
startExecution :: forall eff. Service -> StartExecutionInput -> Aff (exception :: EXCEPTION | eff) StartExecutionOutput
```

<p>Starts a state machine execution.</p>

#### `stopExecution`

``` purescript
stopExecution :: forall eff. Service -> StopExecutionInput -> Aff (exception :: EXCEPTION | eff) StopExecutionOutput
```

<p>Stops an execution.</p>

#### `updateStateMachine`

``` purescript
updateStateMachine :: forall eff. Service -> UpdateStateMachineInput -> Aff (exception :: EXCEPTION | eff) UpdateStateMachineOutput
```

<p>Updates an existing state machine by modifying its <code>definition</code> and/or <code>roleArn</code>. Running executions will continue to use the previous <code>definition</code> and <code>roleArn</code>.</p> <note> <p>All <code>StartExecution</code> calls within a few seconds will use the updated <code>definition</code> and <code>roleArn</code>. Executions started immediately after calling <code>UpdateStateMachine</code> may use the previous state machine <code>definition</code> and <code>roleArn</code>. You must include at least one of <code>definition</code> or <code>roleArn</code> or you will receive a <code>MissingRequiredParameter</code> error.</p> </note>


