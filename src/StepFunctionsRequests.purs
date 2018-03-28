
module AWS.StepFunctions.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.StepFunctions as StepFunctions
import AWS.StepFunctions.Types as StepFunctionsTypes


-- | <p>Creates an activity. An activity is a task which you write in any programming language and host on any machine which has access to AWS Step Functions. Activities must poll Step Functions using the <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.</p>
createActivity :: forall eff. StepFunctions.Service -> StepFunctionsTypes.CreateActivityInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.CreateActivityOutput
createActivity (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createActivity"


-- | <p>Creates a state machine. A state machine consists of a collection of states that can do work (<code>Task</code> states), determine to which states to transition next (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states), and so on. State machines are specified using a JSON-based, structured language.</p>
createStateMachine :: forall eff. StepFunctions.Service -> StepFunctionsTypes.CreateStateMachineInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.CreateStateMachineOutput
createStateMachine (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createStateMachine"


-- | <p>Deletes an activity.</p>
deleteActivity :: forall eff. StepFunctions.Service -> StepFunctionsTypes.DeleteActivityInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.DeleteActivityOutput
deleteActivity (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteActivity"


-- | <p>Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to <code>DELETING</code> and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.</p> <note> <p>The state machine itself is deleted after all executions are completed or deleted.</p> </note>
deleteStateMachine :: forall eff. StepFunctions.Service -> StepFunctionsTypes.DeleteStateMachineInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.DeleteStateMachineOutput
deleteStateMachine (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteStateMachine"


-- | <p>Describes an activity.</p>
describeActivity :: forall eff. StepFunctions.Service -> StepFunctionsTypes.DescribeActivityInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.DescribeActivityOutput
describeActivity (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeActivity"


-- | <p>Describes an execution.</p>
describeExecution :: forall eff. StepFunctions.Service -> StepFunctionsTypes.DescribeExecutionInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.DescribeExecutionOutput
describeExecution (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeExecution"


-- | <p>Describes a state machine.</p>
describeStateMachine :: forall eff. StepFunctions.Service -> StepFunctionsTypes.DescribeStateMachineInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.DescribeStateMachineOutput
describeStateMachine (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStateMachine"


-- | <p>Describes the state machine associated with a specific execution.</p>
describeStateMachineForExecution :: forall eff. StepFunctions.Service -> StepFunctionsTypes.DescribeStateMachineForExecutionInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.DescribeStateMachineForExecutionOutput
describeStateMachineForExecution (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStateMachineForExecution"


-- | <p>Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a <code>taskToken</code> with a null string.</p> <important> <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).</p> </important>
getActivityTask :: forall eff. StepFunctions.Service -> StepFunctionsTypes.GetActivityTaskInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.GetActivityTaskOutput
getActivityTask (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getActivityTask"


-- | <p>Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the <code>timeStamp</code> of the events. Use the <code>reverseOrder</code> parameter to get the latest events first.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
getExecutionHistory :: forall eff. StepFunctions.Service -> StepFunctionsTypes.GetExecutionHistoryInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.GetExecutionHistoryOutput
getExecutionHistory (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getExecutionHistory"


-- | <p>Lists the existing activities.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
listActivities :: forall eff. StepFunctions.Service -> StepFunctionsTypes.ListActivitiesInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.ListActivitiesOutput
listActivities (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listActivities"


-- | <p>Lists the executions of a state machine that meet the filtering criteria.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
listExecutions :: forall eff. StepFunctions.Service -> StepFunctionsTypes.ListExecutionsInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.ListExecutionsOutput
listExecutions (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listExecutions"


-- | <p>Lists the existing state machines.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
listStateMachines :: forall eff. StepFunctions.Service -> StepFunctionsTypes.ListStateMachinesInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.ListStateMachinesOutput
listStateMachines (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listStateMachines"


-- | <p>Used by workers to report that the task identified by the <code>taskToken</code> failed.</p>
sendTaskFailure :: forall eff. StepFunctions.Service -> StepFunctionsTypes.SendTaskFailureInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.SendTaskFailureOutput
sendTaskFailure (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "sendTaskFailure"


-- | <p>Used by workers to report to the service that the task represented by the specified <code>taskToken</code> is still making progress. This action resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an <code>ActivityTimedOut</code> event.</p> <note> <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received.</p> </note> <note> <p>This operation is only useful for long-lived tasks to report the liveliness of the task.</p> </note>
sendTaskHeartbeat :: forall eff. StepFunctions.Service -> StepFunctionsTypes.SendTaskHeartbeatInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.SendTaskHeartbeatOutput
sendTaskHeartbeat (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "sendTaskHeartbeat"


-- | <p>Used by workers to report that the task identified by the <code>taskToken</code> completed successfully.</p>
sendTaskSuccess :: forall eff. StepFunctions.Service -> StepFunctionsTypes.SendTaskSuccessInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.SendTaskSuccessOutput
sendTaskSuccess (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "sendTaskSuccess"


-- | <p>Starts a state machine execution.</p>
startExecution :: forall eff. StepFunctions.Service -> StepFunctionsTypes.StartExecutionInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.StartExecutionOutput
startExecution (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startExecution"


-- | <p>Stops an execution.</p>
stopExecution :: forall eff. StepFunctions.Service -> StepFunctionsTypes.StopExecutionInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.StopExecutionOutput
stopExecution (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopExecution"


-- | <p>Updates an existing state machine by modifying its <code>definition</code> and/or <code>roleArn</code>. Running executions will continue to use the previous <code>definition</code> and <code>roleArn</code>.</p> <note> <p>All <code>StartExecution</code> calls within a few seconds will use the updated <code>definition</code> and <code>roleArn</code>. Executions started immediately after calling <code>UpdateStateMachine</code> may use the previous state machine <code>definition</code> and <code>roleArn</code>. You must include at least one of <code>definition</code> or <code>roleArn</code> or you will receive a <code>MissingRequiredParameter</code> error.</p> </note>
updateStateMachine :: forall eff. StepFunctions.Service -> StepFunctionsTypes.UpdateStateMachineInput -> Aff (exception :: EXCEPTION | eff) StepFunctionsTypes.UpdateStateMachineOutput
updateStateMachine (StepFunctions.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateStateMachine"
