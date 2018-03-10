

-- | <fullname>AWS Step Functions</fullname> <p>AWS Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows.</p> <p>You can use Step Functions to build applications from individual components, each of which performs a discrete function, or <i>task</i>, allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues.</p> <p>Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on AWS, your own servers, or any system that has access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API. For more information about Step Functions, see the <i> <a href="http://docs.aws.amazon.com/step-functions/latest/dg/welcome.html">AWS Step Functions Developer Guide</a> </i>.</p>
module AWS.StepFunctions where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "StepFunctions" :: String


-- | <p>Creates an activity. An activity is a task which you write in any programming language and host on any machine which has access to AWS Step Functions. Activities must poll Step Functions using the <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.</p>
createActivity :: forall eff. CreateActivityInput -> Aff (exception :: EXCEPTION | eff) CreateActivityOutput
createActivity = Request.request serviceName "createActivity" 


-- | <p>Creates a state machine. A state machine consists of a collection of states that can do work (<code>Task</code> states), determine to which states to transition next (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states), and so on. State machines are specified using a JSON-based, structured language.</p>
createStateMachine :: forall eff. CreateStateMachineInput -> Aff (exception :: EXCEPTION | eff) CreateStateMachineOutput
createStateMachine = Request.request serviceName "createStateMachine" 


-- | <p>Deletes an activity.</p>
deleteActivity :: forall eff. DeleteActivityInput -> Aff (exception :: EXCEPTION | eff) DeleteActivityOutput
deleteActivity = Request.request serviceName "deleteActivity" 


-- | <p>Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to <code>DELETING</code> and begins the deletion process. Each state machine execution is deleted the next time it makes a state transition.</p> <note> <p>The state machine itself is deleted after all executions are completed or deleted.</p> </note>
deleteStateMachine :: forall eff. DeleteStateMachineInput -> Aff (exception :: EXCEPTION | eff) DeleteStateMachineOutput
deleteStateMachine = Request.request serviceName "deleteStateMachine" 


-- | <p>Describes an activity.</p>
describeActivity :: forall eff. DescribeActivityInput -> Aff (exception :: EXCEPTION | eff) DescribeActivityOutput
describeActivity = Request.request serviceName "describeActivity" 


-- | <p>Describes an execution.</p>
describeExecution :: forall eff. DescribeExecutionInput -> Aff (exception :: EXCEPTION | eff) DescribeExecutionOutput
describeExecution = Request.request serviceName "describeExecution" 


-- | <p>Describes a state machine.</p>
describeStateMachine :: forall eff. DescribeStateMachineInput -> Aff (exception :: EXCEPTION | eff) DescribeStateMachineOutput
describeStateMachine = Request.request serviceName "describeStateMachine" 


-- | <p>Describes the state machine associated with a specific execution.</p>
describeStateMachineForExecution :: forall eff. DescribeStateMachineForExecutionInput -> Aff (exception :: EXCEPTION | eff) DescribeStateMachineForExecutionOutput
describeStateMachineForExecution = Request.request serviceName "describeStateMachineForExecution" 


-- | <p>Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a <code>taskToken</code> with a null string.</p> <important> <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).</p> </important>
getActivityTask :: forall eff. GetActivityTaskInput -> Aff (exception :: EXCEPTION | eff) GetActivityTaskOutput
getActivityTask = Request.request serviceName "getActivityTask" 


-- | <p>Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the <code>timeStamp</code> of the events. Use the <code>reverseOrder</code> parameter to get the latest events first.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
getExecutionHistory :: forall eff. GetExecutionHistoryInput -> Aff (exception :: EXCEPTION | eff) GetExecutionHistoryOutput
getExecutionHistory = Request.request serviceName "getExecutionHistory" 


-- | <p>Lists the existing activities.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
listActivities :: forall eff. ListActivitiesInput -> Aff (exception :: EXCEPTION | eff) ListActivitiesOutput
listActivities = Request.request serviceName "listActivities" 


-- | <p>Lists the executions of a state machine that meet the filtering criteria.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
listExecutions :: forall eff. ListExecutionsInput -> Aff (exception :: EXCEPTION | eff) ListExecutionsOutput
listExecutions = Request.request serviceName "listExecutions" 


-- | <p>Lists the existing state machines.</p> <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p>
listStateMachines :: forall eff. ListStateMachinesInput -> Aff (exception :: EXCEPTION | eff) ListStateMachinesOutput
listStateMachines = Request.request serviceName "listStateMachines" 


-- | <p>Used by workers to report that the task identified by the <code>taskToken</code> failed.</p>
sendTaskFailure :: forall eff. SendTaskFailureInput -> Aff (exception :: EXCEPTION | eff) SendTaskFailureOutput
sendTaskFailure = Request.request serviceName "sendTaskFailure" 


-- | <p>Used by workers to report to the service that the task represented by the specified <code>taskToken</code> is still making progress. This action resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an <code>ActivityTimedOut</code> event.</p> <note> <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received.</p> </note> <note> <p>This operation is only useful for long-lived tasks to report the liveliness of the task.</p> </note>
sendTaskHeartbeat :: forall eff. SendTaskHeartbeatInput -> Aff (exception :: EXCEPTION | eff) SendTaskHeartbeatOutput
sendTaskHeartbeat = Request.request serviceName "sendTaskHeartbeat" 


-- | <p>Used by workers to report that the task identified by the <code>taskToken</code> completed successfully.</p>
sendTaskSuccess :: forall eff. SendTaskSuccessInput -> Aff (exception :: EXCEPTION | eff) SendTaskSuccessOutput
sendTaskSuccess = Request.request serviceName "sendTaskSuccess" 


-- | <p>Starts a state machine execution.</p>
startExecution :: forall eff. StartExecutionInput -> Aff (exception :: EXCEPTION | eff) StartExecutionOutput
startExecution = Request.request serviceName "startExecution" 


-- | <p>Stops an execution.</p>
stopExecution :: forall eff. StopExecutionInput -> Aff (exception :: EXCEPTION | eff) StopExecutionOutput
stopExecution = Request.request serviceName "stopExecution" 


-- | <p>Updates an existing state machine by modifying its <code>definition</code> and/or <code>roleArn</code>. Running executions will continue to use the previous <code>definition</code> and <code>roleArn</code>.</p> <note> <p>All <code>StartExecution</code> calls within a few seconds will use the updated <code>definition</code> and <code>roleArn</code>. Executions started immediately after calling <code>UpdateStateMachine</code> may use the previous state machine <code>definition</code> and <code>roleArn</code>. You must include at least one of <code>definition</code> or <code>roleArn</code> or you will receive a <code>MissingRequiredParameter</code> error.</p> </note>
updateStateMachine :: forall eff. UpdateStateMachineInput -> Aff (exception :: EXCEPTION | eff) UpdateStateMachineOutput
updateStateMachine = Request.request serviceName "updateStateMachine" 


-- | <p>The specified activity does not exist.</p>
newtype ActivityDoesNotExist = ActivityDoesNotExist 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeActivityDoesNotExist :: Newtype ActivityDoesNotExist _
derive instance repGenericActivityDoesNotExist :: Generic ActivityDoesNotExist _
instance showActivityDoesNotExist :: Show ActivityDoesNotExist where
  show = genericShow
instance decodeActivityDoesNotExist :: Decode ActivityDoesNotExist where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityDoesNotExist :: Encode ActivityDoesNotExist where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityDoesNotExist from required parameters
newActivityDoesNotExist :: ActivityDoesNotExist
newActivityDoesNotExist  = ActivityDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs ActivityDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityDoesNotExist' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ActivityDoesNotExist
newActivityDoesNotExist'  customize = (ActivityDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity which failed during an execution.</p>
newtype ActivityFailedEventDetails = ActivityFailedEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeActivityFailedEventDetails :: Newtype ActivityFailedEventDetails _
derive instance repGenericActivityFailedEventDetails :: Generic ActivityFailedEventDetails _
instance showActivityFailedEventDetails :: Show ActivityFailedEventDetails where
  show = genericShow
instance decodeActivityFailedEventDetails :: Decode ActivityFailedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityFailedEventDetails :: Encode ActivityFailedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityFailedEventDetails from required parameters
newActivityFailedEventDetails :: ActivityFailedEventDetails
newActivityFailedEventDetails  = ActivityFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ActivityFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityFailedEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> ActivityFailedEventDetails
newActivityFailedEventDetails'  customize = (ActivityFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.</p>
newtype ActivityLimitExceeded = ActivityLimitExceeded 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeActivityLimitExceeded :: Newtype ActivityLimitExceeded _
derive instance repGenericActivityLimitExceeded :: Generic ActivityLimitExceeded _
instance showActivityLimitExceeded :: Show ActivityLimitExceeded where
  show = genericShow
instance decodeActivityLimitExceeded :: Decode ActivityLimitExceeded where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityLimitExceeded :: Encode ActivityLimitExceeded where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityLimitExceeded from required parameters
newActivityLimitExceeded :: ActivityLimitExceeded
newActivityLimitExceeded  = ActivityLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs ActivityLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityLimitExceeded' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ActivityLimitExceeded
newActivityLimitExceeded'  customize = (ActivityLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ActivityList = ActivityList (Array ActivityListItem)
derive instance newtypeActivityList :: Newtype ActivityList _
derive instance repGenericActivityList :: Generic ActivityList _
instance showActivityList :: Show ActivityList where
  show = genericShow
instance decodeActivityList :: Decode ActivityList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityList :: Encode ActivityList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains details about an activity.</p>
newtype ActivityListItem = ActivityListItem 
  { "activityArn" :: (Arn)
  , "name" :: (Name)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeActivityListItem :: Newtype ActivityListItem _
derive instance repGenericActivityListItem :: Generic ActivityListItem _
instance showActivityListItem :: Show ActivityListItem where
  show = genericShow
instance decodeActivityListItem :: Decode ActivityListItem where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityListItem :: Encode ActivityListItem where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityListItem from required parameters
newActivityListItem :: Arn -> Types.Timestamp -> Name -> ActivityListItem
newActivityListItem _activityArn _creationDate _name = ActivityListItem { "activityArn": _activityArn, "creationDate": _creationDate, "name": _name }

-- | Constructs ActivityListItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityListItem' :: Arn -> Types.Timestamp -> Name -> ( { "activityArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } -> {"activityArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } ) -> ActivityListItem
newActivityListItem' _activityArn _creationDate _name customize = (ActivityListItem <<< customize) { "activityArn": _activityArn, "creationDate": _creationDate, "name": _name }



-- | <p>Contains details about an activity schedule failure which occurred during an execution.</p>
newtype ActivityScheduleFailedEventDetails = ActivityScheduleFailedEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeActivityScheduleFailedEventDetails :: Newtype ActivityScheduleFailedEventDetails _
derive instance repGenericActivityScheduleFailedEventDetails :: Generic ActivityScheduleFailedEventDetails _
instance showActivityScheduleFailedEventDetails :: Show ActivityScheduleFailedEventDetails where
  show = genericShow
instance decodeActivityScheduleFailedEventDetails :: Decode ActivityScheduleFailedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityScheduleFailedEventDetails :: Encode ActivityScheduleFailedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityScheduleFailedEventDetails from required parameters
newActivityScheduleFailedEventDetails :: ActivityScheduleFailedEventDetails
newActivityScheduleFailedEventDetails  = ActivityScheduleFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ActivityScheduleFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityScheduleFailedEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> ActivityScheduleFailedEventDetails
newActivityScheduleFailedEventDetails'  customize = (ActivityScheduleFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity scheduled during an execution.</p>
newtype ActivityScheduledEventDetails = ActivityScheduledEventDetails 
  { "resource" :: (Arn)
  , "input" :: NullOrUndefined.NullOrUndefined (Data)
  , "timeoutInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds)
  , "heartbeatInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds)
  }
derive instance newtypeActivityScheduledEventDetails :: Newtype ActivityScheduledEventDetails _
derive instance repGenericActivityScheduledEventDetails :: Generic ActivityScheduledEventDetails _
instance showActivityScheduledEventDetails :: Show ActivityScheduledEventDetails where
  show = genericShow
instance decodeActivityScheduledEventDetails :: Decode ActivityScheduledEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityScheduledEventDetails :: Encode ActivityScheduledEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityScheduledEventDetails from required parameters
newActivityScheduledEventDetails :: Arn -> ActivityScheduledEventDetails
newActivityScheduledEventDetails _resource = ActivityScheduledEventDetails { "resource": _resource, "heartbeatInSeconds": (NullOrUndefined Nothing), "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }

-- | Constructs ActivityScheduledEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityScheduledEventDetails' :: Arn -> ( { "resource" :: (Arn) , "input" :: NullOrUndefined.NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds) , "heartbeatInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds) } -> {"resource" :: (Arn) , "input" :: NullOrUndefined.NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds) , "heartbeatInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds) } ) -> ActivityScheduledEventDetails
newActivityScheduledEventDetails' _resource customize = (ActivityScheduledEventDetails <<< customize) { "resource": _resource, "heartbeatInSeconds": (NullOrUndefined Nothing), "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }



-- | <p>Contains details about the start of an activity during an execution.</p>
newtype ActivityStartedEventDetails = ActivityStartedEventDetails 
  { "workerName" :: NullOrUndefined.NullOrUndefined (Identity)
  }
derive instance newtypeActivityStartedEventDetails :: Newtype ActivityStartedEventDetails _
derive instance repGenericActivityStartedEventDetails :: Generic ActivityStartedEventDetails _
instance showActivityStartedEventDetails :: Show ActivityStartedEventDetails where
  show = genericShow
instance decodeActivityStartedEventDetails :: Decode ActivityStartedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityStartedEventDetails :: Encode ActivityStartedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityStartedEventDetails from required parameters
newActivityStartedEventDetails :: ActivityStartedEventDetails
newActivityStartedEventDetails  = ActivityStartedEventDetails { "workerName": (NullOrUndefined Nothing) }

-- | Constructs ActivityStartedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityStartedEventDetails' :: ( { "workerName" :: NullOrUndefined.NullOrUndefined (Identity) } -> {"workerName" :: NullOrUndefined.NullOrUndefined (Identity) } ) -> ActivityStartedEventDetails
newActivityStartedEventDetails'  customize = (ActivityStartedEventDetails <<< customize) { "workerName": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity which successfully terminated during an execution.</p>
newtype ActivitySucceededEventDetails = ActivitySucceededEventDetails 
  { "output" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeActivitySucceededEventDetails :: Newtype ActivitySucceededEventDetails _
derive instance repGenericActivitySucceededEventDetails :: Generic ActivitySucceededEventDetails _
instance showActivitySucceededEventDetails :: Show ActivitySucceededEventDetails where
  show = genericShow
instance decodeActivitySucceededEventDetails :: Decode ActivitySucceededEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivitySucceededEventDetails :: Encode ActivitySucceededEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivitySucceededEventDetails from required parameters
newActivitySucceededEventDetails :: ActivitySucceededEventDetails
newActivitySucceededEventDetails  = ActivitySucceededEventDetails { "output": (NullOrUndefined Nothing) }

-- | Constructs ActivitySucceededEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivitySucceededEventDetails' :: ( { "output" :: NullOrUndefined.NullOrUndefined (Data) } -> {"output" :: NullOrUndefined.NullOrUndefined (Data) } ) -> ActivitySucceededEventDetails
newActivitySucceededEventDetails'  customize = (ActivitySucceededEventDetails <<< customize) { "output": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity timeout which occurred during an execution.</p>
newtype ActivityTimedOutEventDetails = ActivityTimedOutEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeActivityTimedOutEventDetails :: Newtype ActivityTimedOutEventDetails _
derive instance repGenericActivityTimedOutEventDetails :: Generic ActivityTimedOutEventDetails _
instance showActivityTimedOutEventDetails :: Show ActivityTimedOutEventDetails where
  show = genericShow
instance decodeActivityTimedOutEventDetails :: Decode ActivityTimedOutEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityTimedOutEventDetails :: Encode ActivityTimedOutEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityTimedOutEventDetails from required parameters
newActivityTimedOutEventDetails :: ActivityTimedOutEventDetails
newActivityTimedOutEventDetails  = ActivityTimedOutEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ActivityTimedOutEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTimedOutEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> ActivityTimedOutEventDetails
newActivityTimedOutEventDetails'  customize = (ActivityTimedOutEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The maximum number of workers concurrently polling for activity tasks has been reached.</p>
newtype ActivityWorkerLimitExceeded = ActivityWorkerLimitExceeded 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeActivityWorkerLimitExceeded :: Newtype ActivityWorkerLimitExceeded _
derive instance repGenericActivityWorkerLimitExceeded :: Generic ActivityWorkerLimitExceeded _
instance showActivityWorkerLimitExceeded :: Show ActivityWorkerLimitExceeded where
  show = genericShow
instance decodeActivityWorkerLimitExceeded :: Decode ActivityWorkerLimitExceeded where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActivityWorkerLimitExceeded :: Encode ActivityWorkerLimitExceeded where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ActivityWorkerLimitExceeded from required parameters
newActivityWorkerLimitExceeded :: ActivityWorkerLimitExceeded
newActivityWorkerLimitExceeded  = ActivityWorkerLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs ActivityWorkerLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityWorkerLimitExceeded' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ActivityWorkerLimitExceeded
newActivityWorkerLimitExceeded'  customize = (ActivityWorkerLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where
  show = genericShow
instance decodeArn :: Decode Arn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArn :: Encode Arn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Cause = Cause String
derive instance newtypeCause :: Newtype Cause _
derive instance repGenericCause :: Generic Cause _
instance showCause :: Show Cause where
  show = genericShow
instance decodeCause :: Decode Cause where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCause :: Encode Cause where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateActivityInput = CreateActivityInput 
  { "name" :: (Name)
  }
derive instance newtypeCreateActivityInput :: Newtype CreateActivityInput _
derive instance repGenericCreateActivityInput :: Generic CreateActivityInput _
instance showCreateActivityInput :: Show CreateActivityInput where
  show = genericShow
instance decodeCreateActivityInput :: Decode CreateActivityInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateActivityInput :: Encode CreateActivityInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateActivityInput from required parameters
newCreateActivityInput :: Name -> CreateActivityInput
newCreateActivityInput _name = CreateActivityInput { "name": _name }

-- | Constructs CreateActivityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateActivityInput' :: Name -> ( { "name" :: (Name) } -> {"name" :: (Name) } ) -> CreateActivityInput
newCreateActivityInput' _name customize = (CreateActivityInput <<< customize) { "name": _name }



newtype CreateActivityOutput = CreateActivityOutput 
  { "activityArn" :: (Arn)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeCreateActivityOutput :: Newtype CreateActivityOutput _
derive instance repGenericCreateActivityOutput :: Generic CreateActivityOutput _
instance showCreateActivityOutput :: Show CreateActivityOutput where
  show = genericShow
instance decodeCreateActivityOutput :: Decode CreateActivityOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateActivityOutput :: Encode CreateActivityOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateActivityOutput from required parameters
newCreateActivityOutput :: Arn -> Types.Timestamp -> CreateActivityOutput
newCreateActivityOutput _activityArn _creationDate = CreateActivityOutput { "activityArn": _activityArn, "creationDate": _creationDate }

-- | Constructs CreateActivityOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateActivityOutput' :: Arn -> Types.Timestamp -> ( { "activityArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } -> {"activityArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } ) -> CreateActivityOutput
newCreateActivityOutput' _activityArn _creationDate customize = (CreateActivityOutput <<< customize) { "activityArn": _activityArn, "creationDate": _creationDate }



newtype CreateStateMachineInput = CreateStateMachineInput 
  { "name" :: (Name)
  , "definition" :: (Definition)
  , "roleArn" :: (Arn)
  }
derive instance newtypeCreateStateMachineInput :: Newtype CreateStateMachineInput _
derive instance repGenericCreateStateMachineInput :: Generic CreateStateMachineInput _
instance showCreateStateMachineInput :: Show CreateStateMachineInput where
  show = genericShow
instance decodeCreateStateMachineInput :: Decode CreateStateMachineInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateStateMachineInput :: Encode CreateStateMachineInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateStateMachineInput from required parameters
newCreateStateMachineInput :: Definition -> Name -> Arn -> CreateStateMachineInput
newCreateStateMachineInput _definition _name _roleArn = CreateStateMachineInput { "definition": _definition, "name": _name, "roleArn": _roleArn }

-- | Constructs CreateStateMachineInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStateMachineInput' :: Definition -> Name -> Arn -> ( { "name" :: (Name) , "definition" :: (Definition) , "roleArn" :: (Arn) } -> {"name" :: (Name) , "definition" :: (Definition) , "roleArn" :: (Arn) } ) -> CreateStateMachineInput
newCreateStateMachineInput' _definition _name _roleArn customize = (CreateStateMachineInput <<< customize) { "definition": _definition, "name": _name, "roleArn": _roleArn }



newtype CreateStateMachineOutput = CreateStateMachineOutput 
  { "stateMachineArn" :: (Arn)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeCreateStateMachineOutput :: Newtype CreateStateMachineOutput _
derive instance repGenericCreateStateMachineOutput :: Generic CreateStateMachineOutput _
instance showCreateStateMachineOutput :: Show CreateStateMachineOutput where
  show = genericShow
instance decodeCreateStateMachineOutput :: Decode CreateStateMachineOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateStateMachineOutput :: Encode CreateStateMachineOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateStateMachineOutput from required parameters
newCreateStateMachineOutput :: Types.Timestamp -> Arn -> CreateStateMachineOutput
newCreateStateMachineOutput _creationDate _stateMachineArn = CreateStateMachineOutput { "creationDate": _creationDate, "stateMachineArn": _stateMachineArn }

-- | Constructs CreateStateMachineOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStateMachineOutput' :: Types.Timestamp -> Arn -> ( { "stateMachineArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } -> {"stateMachineArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } ) -> CreateStateMachineOutput
newCreateStateMachineOutput' _creationDate _stateMachineArn customize = (CreateStateMachineOutput <<< customize) { "creationDate": _creationDate, "stateMachineArn": _stateMachineArn }



newtype Data = Data String
derive instance newtypeData :: Newtype Data _
derive instance repGenericData :: Generic Data _
instance showData :: Show Data where
  show = genericShow
instance decodeData :: Decode Data where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeData :: Encode Data where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Definition = Definition String
derive instance newtypeDefinition :: Newtype Definition _
derive instance repGenericDefinition :: Generic Definition _
instance showDefinition :: Show Definition where
  show = genericShow
instance decodeDefinition :: Decode Definition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDefinition :: Encode Definition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteActivityInput = DeleteActivityInput 
  { "activityArn" :: (Arn)
  }
derive instance newtypeDeleteActivityInput :: Newtype DeleteActivityInput _
derive instance repGenericDeleteActivityInput :: Generic DeleteActivityInput _
instance showDeleteActivityInput :: Show DeleteActivityInput where
  show = genericShow
instance decodeDeleteActivityInput :: Decode DeleteActivityInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteActivityInput :: Encode DeleteActivityInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteActivityInput from required parameters
newDeleteActivityInput :: Arn -> DeleteActivityInput
newDeleteActivityInput _activityArn = DeleteActivityInput { "activityArn": _activityArn }

-- | Constructs DeleteActivityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteActivityInput' :: Arn -> ( { "activityArn" :: (Arn) } -> {"activityArn" :: (Arn) } ) -> DeleteActivityInput
newDeleteActivityInput' _activityArn customize = (DeleteActivityInput <<< customize) { "activityArn": _activityArn }



newtype DeleteActivityOutput = DeleteActivityOutput Types.NoArguments
derive instance newtypeDeleteActivityOutput :: Newtype DeleteActivityOutput _
derive instance repGenericDeleteActivityOutput :: Generic DeleteActivityOutput _
instance showDeleteActivityOutput :: Show DeleteActivityOutput where
  show = genericShow
instance decodeDeleteActivityOutput :: Decode DeleteActivityOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteActivityOutput :: Encode DeleteActivityOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteStateMachineInput = DeleteStateMachineInput 
  { "stateMachineArn" :: (Arn)
  }
derive instance newtypeDeleteStateMachineInput :: Newtype DeleteStateMachineInput _
derive instance repGenericDeleteStateMachineInput :: Generic DeleteStateMachineInput _
instance showDeleteStateMachineInput :: Show DeleteStateMachineInput where
  show = genericShow
instance decodeDeleteStateMachineInput :: Decode DeleteStateMachineInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteStateMachineInput :: Encode DeleteStateMachineInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteStateMachineInput from required parameters
newDeleteStateMachineInput :: Arn -> DeleteStateMachineInput
newDeleteStateMachineInput _stateMachineArn = DeleteStateMachineInput { "stateMachineArn": _stateMachineArn }

-- | Constructs DeleteStateMachineInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteStateMachineInput' :: Arn -> ( { "stateMachineArn" :: (Arn) } -> {"stateMachineArn" :: (Arn) } ) -> DeleteStateMachineInput
newDeleteStateMachineInput' _stateMachineArn customize = (DeleteStateMachineInput <<< customize) { "stateMachineArn": _stateMachineArn }



newtype DeleteStateMachineOutput = DeleteStateMachineOutput Types.NoArguments
derive instance newtypeDeleteStateMachineOutput :: Newtype DeleteStateMachineOutput _
derive instance repGenericDeleteStateMachineOutput :: Generic DeleteStateMachineOutput _
instance showDeleteStateMachineOutput :: Show DeleteStateMachineOutput where
  show = genericShow
instance decodeDeleteStateMachineOutput :: Decode DeleteStateMachineOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteStateMachineOutput :: Encode DeleteStateMachineOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeActivityInput = DescribeActivityInput 
  { "activityArn" :: (Arn)
  }
derive instance newtypeDescribeActivityInput :: Newtype DescribeActivityInput _
derive instance repGenericDescribeActivityInput :: Generic DescribeActivityInput _
instance showDescribeActivityInput :: Show DescribeActivityInput where
  show = genericShow
instance decodeDescribeActivityInput :: Decode DescribeActivityInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeActivityInput :: Encode DescribeActivityInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeActivityInput from required parameters
newDescribeActivityInput :: Arn -> DescribeActivityInput
newDescribeActivityInput _activityArn = DescribeActivityInput { "activityArn": _activityArn }

-- | Constructs DescribeActivityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeActivityInput' :: Arn -> ( { "activityArn" :: (Arn) } -> {"activityArn" :: (Arn) } ) -> DescribeActivityInput
newDescribeActivityInput' _activityArn customize = (DescribeActivityInput <<< customize) { "activityArn": _activityArn }



newtype DescribeActivityOutput = DescribeActivityOutput 
  { "activityArn" :: (Arn)
  , "name" :: (Name)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeDescribeActivityOutput :: Newtype DescribeActivityOutput _
derive instance repGenericDescribeActivityOutput :: Generic DescribeActivityOutput _
instance showDescribeActivityOutput :: Show DescribeActivityOutput where
  show = genericShow
instance decodeDescribeActivityOutput :: Decode DescribeActivityOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeActivityOutput :: Encode DescribeActivityOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeActivityOutput from required parameters
newDescribeActivityOutput :: Arn -> Types.Timestamp -> Name -> DescribeActivityOutput
newDescribeActivityOutput _activityArn _creationDate _name = DescribeActivityOutput { "activityArn": _activityArn, "creationDate": _creationDate, "name": _name }

-- | Constructs DescribeActivityOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeActivityOutput' :: Arn -> Types.Timestamp -> Name -> ( { "activityArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } -> {"activityArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } ) -> DescribeActivityOutput
newDescribeActivityOutput' _activityArn _creationDate _name customize = (DescribeActivityOutput <<< customize) { "activityArn": _activityArn, "creationDate": _creationDate, "name": _name }



newtype DescribeExecutionInput = DescribeExecutionInput 
  { "executionArn" :: (Arn)
  }
derive instance newtypeDescribeExecutionInput :: Newtype DescribeExecutionInput _
derive instance repGenericDescribeExecutionInput :: Generic DescribeExecutionInput _
instance showDescribeExecutionInput :: Show DescribeExecutionInput where
  show = genericShow
instance decodeDescribeExecutionInput :: Decode DescribeExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeExecutionInput :: Encode DescribeExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeExecutionInput from required parameters
newDescribeExecutionInput :: Arn -> DescribeExecutionInput
newDescribeExecutionInput _executionArn = DescribeExecutionInput { "executionArn": _executionArn }

-- | Constructs DescribeExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExecutionInput' :: Arn -> ( { "executionArn" :: (Arn) } -> {"executionArn" :: (Arn) } ) -> DescribeExecutionInput
newDescribeExecutionInput' _executionArn customize = (DescribeExecutionInput <<< customize) { "executionArn": _executionArn }



newtype DescribeExecutionOutput = DescribeExecutionOutput 
  { "executionArn" :: (Arn)
  , "stateMachineArn" :: (Arn)
  , "name" :: NullOrUndefined.NullOrUndefined (Name)
  , "status" :: (ExecutionStatus)
  , "startDate" :: (Types.Timestamp)
  , "stopDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "input" :: (Data)
  , "output" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeDescribeExecutionOutput :: Newtype DescribeExecutionOutput _
derive instance repGenericDescribeExecutionOutput :: Generic DescribeExecutionOutput _
instance showDescribeExecutionOutput :: Show DescribeExecutionOutput where
  show = genericShow
instance decodeDescribeExecutionOutput :: Decode DescribeExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeExecutionOutput :: Encode DescribeExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeExecutionOutput from required parameters
newDescribeExecutionOutput :: Arn -> Data -> Types.Timestamp -> Arn -> ExecutionStatus -> DescribeExecutionOutput
newDescribeExecutionOutput _executionArn _input _startDate _stateMachineArn _status = DescribeExecutionOutput { "executionArn": _executionArn, "input": _input, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "name": (NullOrUndefined Nothing), "output": (NullOrUndefined Nothing), "stopDate": (NullOrUndefined Nothing) }

-- | Constructs DescribeExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExecutionOutput' :: Arn -> Data -> Types.Timestamp -> Arn -> ExecutionStatus -> ( { "executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: NullOrUndefined.NullOrUndefined (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "input" :: (Data) , "output" :: NullOrUndefined.NullOrUndefined (Data) } -> {"executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: NullOrUndefined.NullOrUndefined (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "input" :: (Data) , "output" :: NullOrUndefined.NullOrUndefined (Data) } ) -> DescribeExecutionOutput
newDescribeExecutionOutput' _executionArn _input _startDate _stateMachineArn _status customize = (DescribeExecutionOutput <<< customize) { "executionArn": _executionArn, "input": _input, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "name": (NullOrUndefined Nothing), "output": (NullOrUndefined Nothing), "stopDate": (NullOrUndefined Nothing) }



newtype DescribeStateMachineForExecutionInput = DescribeStateMachineForExecutionInput 
  { "executionArn" :: (Arn)
  }
derive instance newtypeDescribeStateMachineForExecutionInput :: Newtype DescribeStateMachineForExecutionInput _
derive instance repGenericDescribeStateMachineForExecutionInput :: Generic DescribeStateMachineForExecutionInput _
instance showDescribeStateMachineForExecutionInput :: Show DescribeStateMachineForExecutionInput where
  show = genericShow
instance decodeDescribeStateMachineForExecutionInput :: Decode DescribeStateMachineForExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStateMachineForExecutionInput :: Encode DescribeStateMachineForExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStateMachineForExecutionInput from required parameters
newDescribeStateMachineForExecutionInput :: Arn -> DescribeStateMachineForExecutionInput
newDescribeStateMachineForExecutionInput _executionArn = DescribeStateMachineForExecutionInput { "executionArn": _executionArn }

-- | Constructs DescribeStateMachineForExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStateMachineForExecutionInput' :: Arn -> ( { "executionArn" :: (Arn) } -> {"executionArn" :: (Arn) } ) -> DescribeStateMachineForExecutionInput
newDescribeStateMachineForExecutionInput' _executionArn customize = (DescribeStateMachineForExecutionInput <<< customize) { "executionArn": _executionArn }



newtype DescribeStateMachineForExecutionOutput = DescribeStateMachineForExecutionOutput 
  { "stateMachineArn" :: (Arn)
  , "name" :: (Name)
  , "definition" :: (Definition)
  , "roleArn" :: (Arn)
  , "updateDate" :: (Types.Timestamp)
  }
derive instance newtypeDescribeStateMachineForExecutionOutput :: Newtype DescribeStateMachineForExecutionOutput _
derive instance repGenericDescribeStateMachineForExecutionOutput :: Generic DescribeStateMachineForExecutionOutput _
instance showDescribeStateMachineForExecutionOutput :: Show DescribeStateMachineForExecutionOutput where
  show = genericShow
instance decodeDescribeStateMachineForExecutionOutput :: Decode DescribeStateMachineForExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStateMachineForExecutionOutput :: Encode DescribeStateMachineForExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStateMachineForExecutionOutput from required parameters
newDescribeStateMachineForExecutionOutput :: Definition -> Name -> Arn -> Arn -> Types.Timestamp -> DescribeStateMachineForExecutionOutput
newDescribeStateMachineForExecutionOutput _definition _name _roleArn _stateMachineArn _updateDate = DescribeStateMachineForExecutionOutput { "definition": _definition, "name": _name, "roleArn": _roleArn, "stateMachineArn": _stateMachineArn, "updateDate": _updateDate }

-- | Constructs DescribeStateMachineForExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStateMachineForExecutionOutput' :: Definition -> Name -> Arn -> Arn -> Types.Timestamp -> ( { "stateMachineArn" :: (Arn) , "name" :: (Name) , "definition" :: (Definition) , "roleArn" :: (Arn) , "updateDate" :: (Types.Timestamp) } -> {"stateMachineArn" :: (Arn) , "name" :: (Name) , "definition" :: (Definition) , "roleArn" :: (Arn) , "updateDate" :: (Types.Timestamp) } ) -> DescribeStateMachineForExecutionOutput
newDescribeStateMachineForExecutionOutput' _definition _name _roleArn _stateMachineArn _updateDate customize = (DescribeStateMachineForExecutionOutput <<< customize) { "definition": _definition, "name": _name, "roleArn": _roleArn, "stateMachineArn": _stateMachineArn, "updateDate": _updateDate }



newtype DescribeStateMachineInput = DescribeStateMachineInput 
  { "stateMachineArn" :: (Arn)
  }
derive instance newtypeDescribeStateMachineInput :: Newtype DescribeStateMachineInput _
derive instance repGenericDescribeStateMachineInput :: Generic DescribeStateMachineInput _
instance showDescribeStateMachineInput :: Show DescribeStateMachineInput where
  show = genericShow
instance decodeDescribeStateMachineInput :: Decode DescribeStateMachineInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStateMachineInput :: Encode DescribeStateMachineInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStateMachineInput from required parameters
newDescribeStateMachineInput :: Arn -> DescribeStateMachineInput
newDescribeStateMachineInput _stateMachineArn = DescribeStateMachineInput { "stateMachineArn": _stateMachineArn }

-- | Constructs DescribeStateMachineInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStateMachineInput' :: Arn -> ( { "stateMachineArn" :: (Arn) } -> {"stateMachineArn" :: (Arn) } ) -> DescribeStateMachineInput
newDescribeStateMachineInput' _stateMachineArn customize = (DescribeStateMachineInput <<< customize) { "stateMachineArn": _stateMachineArn }



newtype DescribeStateMachineOutput = DescribeStateMachineOutput 
  { "stateMachineArn" :: (Arn)
  , "name" :: (Name)
  , "status" :: NullOrUndefined.NullOrUndefined (StateMachineStatus)
  , "definition" :: (Definition)
  , "roleArn" :: (Arn)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeDescribeStateMachineOutput :: Newtype DescribeStateMachineOutput _
derive instance repGenericDescribeStateMachineOutput :: Generic DescribeStateMachineOutput _
instance showDescribeStateMachineOutput :: Show DescribeStateMachineOutput where
  show = genericShow
instance decodeDescribeStateMachineOutput :: Decode DescribeStateMachineOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStateMachineOutput :: Encode DescribeStateMachineOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStateMachineOutput from required parameters
newDescribeStateMachineOutput :: Types.Timestamp -> Definition -> Name -> Arn -> Arn -> DescribeStateMachineOutput
newDescribeStateMachineOutput _creationDate _definition _name _roleArn _stateMachineArn = DescribeStateMachineOutput { "creationDate": _creationDate, "definition": _definition, "name": _name, "roleArn": _roleArn, "stateMachineArn": _stateMachineArn, "status": (NullOrUndefined Nothing) }

-- | Constructs DescribeStateMachineOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStateMachineOutput' :: Types.Timestamp -> Definition -> Name -> Arn -> Arn -> ( { "stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: NullOrUndefined.NullOrUndefined (StateMachineStatus) , "definition" :: (Definition) , "roleArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } -> {"stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: NullOrUndefined.NullOrUndefined (StateMachineStatus) , "definition" :: (Definition) , "roleArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } ) -> DescribeStateMachineOutput
newDescribeStateMachineOutput' _creationDate _definition _name _roleArn _stateMachineArn customize = (DescribeStateMachineOutput <<< customize) { "creationDate": _creationDate, "definition": _definition, "name": _name, "roleArn": _roleArn, "stateMachineArn": _stateMachineArn, "status": (NullOrUndefined Nothing) }



newtype Error = Error String
derive instance newtypeError :: Newtype Error _
derive instance repGenericError :: Generic Error _
instance showError :: Show Error where
  show = genericShow
instance decodeError :: Decode Error where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeError :: Encode Error where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EventId = EventId Number
derive instance newtypeEventId :: Newtype EventId _
derive instance repGenericEventId :: Generic EventId _
instance showEventId :: Show EventId where
  show = genericShow
instance decodeEventId :: Decode EventId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEventId :: Encode EventId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains details about an abort of an execution.</p>
newtype ExecutionAbortedEventDetails = ExecutionAbortedEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeExecutionAbortedEventDetails :: Newtype ExecutionAbortedEventDetails _
derive instance repGenericExecutionAbortedEventDetails :: Generic ExecutionAbortedEventDetails _
instance showExecutionAbortedEventDetails :: Show ExecutionAbortedEventDetails where
  show = genericShow
instance decodeExecutionAbortedEventDetails :: Decode ExecutionAbortedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionAbortedEventDetails :: Encode ExecutionAbortedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionAbortedEventDetails from required parameters
newExecutionAbortedEventDetails :: ExecutionAbortedEventDetails
newExecutionAbortedEventDetails  = ExecutionAbortedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ExecutionAbortedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionAbortedEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> ExecutionAbortedEventDetails
newExecutionAbortedEventDetails'  customize = (ExecutionAbortedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The execution has the same <code>name</code> as another execution (but a different <code>input</code>).</p> <note> <p>Executions with the same <code>name</code> and <code>input</code> are considered idempotent.</p> </note>
newtype ExecutionAlreadyExists = ExecutionAlreadyExists 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExecutionAlreadyExists :: Newtype ExecutionAlreadyExists _
derive instance repGenericExecutionAlreadyExists :: Generic ExecutionAlreadyExists _
instance showExecutionAlreadyExists :: Show ExecutionAlreadyExists where
  show = genericShow
instance decodeExecutionAlreadyExists :: Decode ExecutionAlreadyExists where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionAlreadyExists :: Encode ExecutionAlreadyExists where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionAlreadyExists from required parameters
newExecutionAlreadyExists :: ExecutionAlreadyExists
newExecutionAlreadyExists  = ExecutionAlreadyExists { "message": (NullOrUndefined Nothing) }

-- | Constructs ExecutionAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionAlreadyExists' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ExecutionAlreadyExists
newExecutionAlreadyExists'  customize = (ExecutionAlreadyExists <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified execution does not exist.</p>
newtype ExecutionDoesNotExist = ExecutionDoesNotExist 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExecutionDoesNotExist :: Newtype ExecutionDoesNotExist _
derive instance repGenericExecutionDoesNotExist :: Generic ExecutionDoesNotExist _
instance showExecutionDoesNotExist :: Show ExecutionDoesNotExist where
  show = genericShow
instance decodeExecutionDoesNotExist :: Decode ExecutionDoesNotExist where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionDoesNotExist :: Encode ExecutionDoesNotExist where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionDoesNotExist from required parameters
newExecutionDoesNotExist :: ExecutionDoesNotExist
newExecutionDoesNotExist  = ExecutionDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs ExecutionDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionDoesNotExist' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ExecutionDoesNotExist
newExecutionDoesNotExist'  customize = (ExecutionDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains details about an execution failure event.</p>
newtype ExecutionFailedEventDetails = ExecutionFailedEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeExecutionFailedEventDetails :: Newtype ExecutionFailedEventDetails _
derive instance repGenericExecutionFailedEventDetails :: Generic ExecutionFailedEventDetails _
instance showExecutionFailedEventDetails :: Show ExecutionFailedEventDetails where
  show = genericShow
instance decodeExecutionFailedEventDetails :: Decode ExecutionFailedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionFailedEventDetails :: Encode ExecutionFailedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionFailedEventDetails from required parameters
newExecutionFailedEventDetails :: ExecutionFailedEventDetails
newExecutionFailedEventDetails  = ExecutionFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ExecutionFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionFailedEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> ExecutionFailedEventDetails
newExecutionFailedEventDetails'  customize = (ExecutionFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.</p>
newtype ExecutionLimitExceeded = ExecutionLimitExceeded 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExecutionLimitExceeded :: Newtype ExecutionLimitExceeded _
derive instance repGenericExecutionLimitExceeded :: Generic ExecutionLimitExceeded _
instance showExecutionLimitExceeded :: Show ExecutionLimitExceeded where
  show = genericShow
instance decodeExecutionLimitExceeded :: Decode ExecutionLimitExceeded where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionLimitExceeded :: Encode ExecutionLimitExceeded where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionLimitExceeded from required parameters
newExecutionLimitExceeded :: ExecutionLimitExceeded
newExecutionLimitExceeded  = ExecutionLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs ExecutionLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionLimitExceeded' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ExecutionLimitExceeded
newExecutionLimitExceeded'  customize = (ExecutionLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ExecutionList = ExecutionList (Array ExecutionListItem)
derive instance newtypeExecutionList :: Newtype ExecutionList _
derive instance repGenericExecutionList :: Generic ExecutionList _
instance showExecutionList :: Show ExecutionList where
  show = genericShow
instance decodeExecutionList :: Decode ExecutionList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionList :: Encode ExecutionList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains details about an execution.</p>
newtype ExecutionListItem = ExecutionListItem 
  { "executionArn" :: (Arn)
  , "stateMachineArn" :: (Arn)
  , "name" :: (Name)
  , "status" :: (ExecutionStatus)
  , "startDate" :: (Types.Timestamp)
  , "stopDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeExecutionListItem :: Newtype ExecutionListItem _
derive instance repGenericExecutionListItem :: Generic ExecutionListItem _
instance showExecutionListItem :: Show ExecutionListItem where
  show = genericShow
instance decodeExecutionListItem :: Decode ExecutionListItem where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionListItem :: Encode ExecutionListItem where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionListItem from required parameters
newExecutionListItem :: Arn -> Name -> Types.Timestamp -> Arn -> ExecutionStatus -> ExecutionListItem
newExecutionListItem _executionArn _name _startDate _stateMachineArn _status = ExecutionListItem { "executionArn": _executionArn, "name": _name, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "stopDate": (NullOrUndefined Nothing) }

-- | Constructs ExecutionListItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionListItem' :: Arn -> Name -> Types.Timestamp -> Arn -> ExecutionStatus -> ( { "executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> ExecutionListItem
newExecutionListItem' _executionArn _name _startDate _stateMachineArn _status customize = (ExecutionListItem <<< customize) { "executionArn": _executionArn, "name": _name, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "stopDate": (NullOrUndefined Nothing) }



-- | <p>Contains details about the start of the execution.</p>
newtype ExecutionStartedEventDetails = ExecutionStartedEventDetails 
  { "input" :: NullOrUndefined.NullOrUndefined (Data)
  , "roleArn" :: NullOrUndefined.NullOrUndefined (Arn)
  }
derive instance newtypeExecutionStartedEventDetails :: Newtype ExecutionStartedEventDetails _
derive instance repGenericExecutionStartedEventDetails :: Generic ExecutionStartedEventDetails _
instance showExecutionStartedEventDetails :: Show ExecutionStartedEventDetails where
  show = genericShow
instance decodeExecutionStartedEventDetails :: Decode ExecutionStartedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionStartedEventDetails :: Encode ExecutionStartedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionStartedEventDetails from required parameters
newExecutionStartedEventDetails :: ExecutionStartedEventDetails
newExecutionStartedEventDetails  = ExecutionStartedEventDetails { "input": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }

-- | Constructs ExecutionStartedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionStartedEventDetails' :: ( { "input" :: NullOrUndefined.NullOrUndefined (Data) , "roleArn" :: NullOrUndefined.NullOrUndefined (Arn) } -> {"input" :: NullOrUndefined.NullOrUndefined (Data) , "roleArn" :: NullOrUndefined.NullOrUndefined (Arn) } ) -> ExecutionStartedEventDetails
newExecutionStartedEventDetails'  customize = (ExecutionStartedEventDetails <<< customize) { "input": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }



newtype ExecutionStatus = ExecutionStatus String
derive instance newtypeExecutionStatus :: Newtype ExecutionStatus _
derive instance repGenericExecutionStatus :: Generic ExecutionStatus _
instance showExecutionStatus :: Show ExecutionStatus where
  show = genericShow
instance decodeExecutionStatus :: Decode ExecutionStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionStatus :: Encode ExecutionStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains details about the successful termination of the execution.</p>
newtype ExecutionSucceededEventDetails = ExecutionSucceededEventDetails 
  { "output" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeExecutionSucceededEventDetails :: Newtype ExecutionSucceededEventDetails _
derive instance repGenericExecutionSucceededEventDetails :: Generic ExecutionSucceededEventDetails _
instance showExecutionSucceededEventDetails :: Show ExecutionSucceededEventDetails where
  show = genericShow
instance decodeExecutionSucceededEventDetails :: Decode ExecutionSucceededEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionSucceededEventDetails :: Encode ExecutionSucceededEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionSucceededEventDetails from required parameters
newExecutionSucceededEventDetails :: ExecutionSucceededEventDetails
newExecutionSucceededEventDetails  = ExecutionSucceededEventDetails { "output": (NullOrUndefined Nothing) }

-- | Constructs ExecutionSucceededEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionSucceededEventDetails' :: ( { "output" :: NullOrUndefined.NullOrUndefined (Data) } -> {"output" :: NullOrUndefined.NullOrUndefined (Data) } ) -> ExecutionSucceededEventDetails
newExecutionSucceededEventDetails'  customize = (ExecutionSucceededEventDetails <<< customize) { "output": (NullOrUndefined Nothing) }



-- | <p>Contains details about the execution timeout which occurred during the execution.</p>
newtype ExecutionTimedOutEventDetails = ExecutionTimedOutEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeExecutionTimedOutEventDetails :: Newtype ExecutionTimedOutEventDetails _
derive instance repGenericExecutionTimedOutEventDetails :: Generic ExecutionTimedOutEventDetails _
instance showExecutionTimedOutEventDetails :: Show ExecutionTimedOutEventDetails where
  show = genericShow
instance decodeExecutionTimedOutEventDetails :: Decode ExecutionTimedOutEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExecutionTimedOutEventDetails :: Encode ExecutionTimedOutEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExecutionTimedOutEventDetails from required parameters
newExecutionTimedOutEventDetails :: ExecutionTimedOutEventDetails
newExecutionTimedOutEventDetails  = ExecutionTimedOutEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ExecutionTimedOutEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionTimedOutEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> ExecutionTimedOutEventDetails
newExecutionTimedOutEventDetails'  customize = (ExecutionTimedOutEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype GetActivityTaskInput = GetActivityTaskInput 
  { "activityArn" :: (Arn)
  , "workerName" :: NullOrUndefined.NullOrUndefined (Name)
  }
derive instance newtypeGetActivityTaskInput :: Newtype GetActivityTaskInput _
derive instance repGenericGetActivityTaskInput :: Generic GetActivityTaskInput _
instance showGetActivityTaskInput :: Show GetActivityTaskInput where
  show = genericShow
instance decodeGetActivityTaskInput :: Decode GetActivityTaskInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetActivityTaskInput :: Encode GetActivityTaskInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetActivityTaskInput from required parameters
newGetActivityTaskInput :: Arn -> GetActivityTaskInput
newGetActivityTaskInput _activityArn = GetActivityTaskInput { "activityArn": _activityArn, "workerName": (NullOrUndefined Nothing) }

-- | Constructs GetActivityTaskInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetActivityTaskInput' :: Arn -> ( { "activityArn" :: (Arn) , "workerName" :: NullOrUndefined.NullOrUndefined (Name) } -> {"activityArn" :: (Arn) , "workerName" :: NullOrUndefined.NullOrUndefined (Name) } ) -> GetActivityTaskInput
newGetActivityTaskInput' _activityArn customize = (GetActivityTaskInput <<< customize) { "activityArn": _activityArn, "workerName": (NullOrUndefined Nothing) }



newtype GetActivityTaskOutput = GetActivityTaskOutput 
  { "taskToken" :: NullOrUndefined.NullOrUndefined (TaskToken)
  , "input" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeGetActivityTaskOutput :: Newtype GetActivityTaskOutput _
derive instance repGenericGetActivityTaskOutput :: Generic GetActivityTaskOutput _
instance showGetActivityTaskOutput :: Show GetActivityTaskOutput where
  show = genericShow
instance decodeGetActivityTaskOutput :: Decode GetActivityTaskOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetActivityTaskOutput :: Encode GetActivityTaskOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetActivityTaskOutput from required parameters
newGetActivityTaskOutput :: GetActivityTaskOutput
newGetActivityTaskOutput  = GetActivityTaskOutput { "input": (NullOrUndefined Nothing), "taskToken": (NullOrUndefined Nothing) }

-- | Constructs GetActivityTaskOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetActivityTaskOutput' :: ( { "taskToken" :: NullOrUndefined.NullOrUndefined (TaskToken) , "input" :: NullOrUndefined.NullOrUndefined (Data) } -> {"taskToken" :: NullOrUndefined.NullOrUndefined (TaskToken) , "input" :: NullOrUndefined.NullOrUndefined (Data) } ) -> GetActivityTaskOutput
newGetActivityTaskOutput'  customize = (GetActivityTaskOutput <<< customize) { "input": (NullOrUndefined Nothing), "taskToken": (NullOrUndefined Nothing) }



newtype GetExecutionHistoryInput = GetExecutionHistoryInput 
  { "executionArn" :: (Arn)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize)
  , "reverseOrder" :: NullOrUndefined.NullOrUndefined (ReverseOrder)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeGetExecutionHistoryInput :: Newtype GetExecutionHistoryInput _
derive instance repGenericGetExecutionHistoryInput :: Generic GetExecutionHistoryInput _
instance showGetExecutionHistoryInput :: Show GetExecutionHistoryInput where
  show = genericShow
instance decodeGetExecutionHistoryInput :: Decode GetExecutionHistoryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetExecutionHistoryInput :: Encode GetExecutionHistoryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetExecutionHistoryInput from required parameters
newGetExecutionHistoryInput :: Arn -> GetExecutionHistoryInput
newGetExecutionHistoryInput _executionArn = GetExecutionHistoryInput { "executionArn": _executionArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "reverseOrder": (NullOrUndefined Nothing) }

-- | Constructs GetExecutionHistoryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetExecutionHistoryInput' :: Arn -> ( { "executionArn" :: (Arn) , "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "reverseOrder" :: NullOrUndefined.NullOrUndefined (ReverseOrder) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"executionArn" :: (Arn) , "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "reverseOrder" :: NullOrUndefined.NullOrUndefined (ReverseOrder) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> GetExecutionHistoryInput
newGetExecutionHistoryInput' _executionArn customize = (GetExecutionHistoryInput <<< customize) { "executionArn": _executionArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "reverseOrder": (NullOrUndefined Nothing) }



newtype GetExecutionHistoryOutput = GetExecutionHistoryOutput 
  { "events" :: (HistoryEventList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeGetExecutionHistoryOutput :: Newtype GetExecutionHistoryOutput _
derive instance repGenericGetExecutionHistoryOutput :: Generic GetExecutionHistoryOutput _
instance showGetExecutionHistoryOutput :: Show GetExecutionHistoryOutput where
  show = genericShow
instance decodeGetExecutionHistoryOutput :: Decode GetExecutionHistoryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetExecutionHistoryOutput :: Encode GetExecutionHistoryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetExecutionHistoryOutput from required parameters
newGetExecutionHistoryOutput :: HistoryEventList -> GetExecutionHistoryOutput
newGetExecutionHistoryOutput _events = GetExecutionHistoryOutput { "events": _events, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs GetExecutionHistoryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetExecutionHistoryOutput' :: HistoryEventList -> ( { "events" :: (HistoryEventList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"events" :: (HistoryEventList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> GetExecutionHistoryOutput
newGetExecutionHistoryOutput' _events customize = (GetExecutionHistoryOutput <<< customize) { "events": _events, "nextToken": (NullOrUndefined Nothing) }



-- | <p>Contains details about the events of an execution.</p>
newtype HistoryEvent = HistoryEvent 
  { "timestamp" :: (Types.Timestamp)
  , "type" :: (HistoryEventType)
  , "id" :: (EventId)
  , "previousEventId" :: NullOrUndefined.NullOrUndefined (EventId)
  , "activityFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityFailedEventDetails)
  , "activityScheduleFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityScheduleFailedEventDetails)
  , "activityScheduledEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityScheduledEventDetails)
  , "activityStartedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityStartedEventDetails)
  , "activitySucceededEventDetails" :: NullOrUndefined.NullOrUndefined (ActivitySucceededEventDetails)
  , "activityTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityTimedOutEventDetails)
  , "executionFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionFailedEventDetails)
  , "executionStartedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionStartedEventDetails)
  , "executionSucceededEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionSucceededEventDetails)
  , "executionAbortedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionAbortedEventDetails)
  , "executionTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionTimedOutEventDetails)
  , "lambdaFunctionFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionFailedEventDetails)
  , "lambdaFunctionScheduleFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionScheduleFailedEventDetails)
  , "lambdaFunctionScheduledEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionScheduledEventDetails)
  , "lambdaFunctionStartFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionStartFailedEventDetails)
  , "lambdaFunctionSucceededEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionSucceededEventDetails)
  , "lambdaFunctionTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionTimedOutEventDetails)
  , "stateEnteredEventDetails" :: NullOrUndefined.NullOrUndefined (StateEnteredEventDetails)
  , "stateExitedEventDetails" :: NullOrUndefined.NullOrUndefined (StateExitedEventDetails)
  }
derive instance newtypeHistoryEvent :: Newtype HistoryEvent _
derive instance repGenericHistoryEvent :: Generic HistoryEvent _
instance showHistoryEvent :: Show HistoryEvent where
  show = genericShow
instance decodeHistoryEvent :: Decode HistoryEvent where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHistoryEvent :: Encode HistoryEvent where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HistoryEvent from required parameters
newHistoryEvent :: EventId -> Types.Timestamp -> HistoryEventType -> HistoryEvent
newHistoryEvent _id _timestamp _type = HistoryEvent { "id": _id, "timestamp": _timestamp, "type": _type, "activityFailedEventDetails": (NullOrUndefined Nothing), "activityScheduleFailedEventDetails": (NullOrUndefined Nothing), "activityScheduledEventDetails": (NullOrUndefined Nothing), "activityStartedEventDetails": (NullOrUndefined Nothing), "activitySucceededEventDetails": (NullOrUndefined Nothing), "activityTimedOutEventDetails": (NullOrUndefined Nothing), "executionAbortedEventDetails": (NullOrUndefined Nothing), "executionFailedEventDetails": (NullOrUndefined Nothing), "executionStartedEventDetails": (NullOrUndefined Nothing), "executionSucceededEventDetails": (NullOrUndefined Nothing), "executionTimedOutEventDetails": (NullOrUndefined Nothing), "lambdaFunctionFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduleFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduledEventDetails": (NullOrUndefined Nothing), "lambdaFunctionStartFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionSucceededEventDetails": (NullOrUndefined Nothing), "lambdaFunctionTimedOutEventDetails": (NullOrUndefined Nothing), "previousEventId": (NullOrUndefined Nothing), "stateEnteredEventDetails": (NullOrUndefined Nothing), "stateExitedEventDetails": (NullOrUndefined Nothing) }

-- | Constructs HistoryEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHistoryEvent' :: EventId -> Types.Timestamp -> HistoryEventType -> ( { "timestamp" :: (Types.Timestamp) , "type" :: (HistoryEventType) , "id" :: (EventId) , "previousEventId" :: NullOrUndefined.NullOrUndefined (EventId) , "activityFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityFailedEventDetails) , "activityScheduleFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityScheduleFailedEventDetails) , "activityScheduledEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityScheduledEventDetails) , "activityStartedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityStartedEventDetails) , "activitySucceededEventDetails" :: NullOrUndefined.NullOrUndefined (ActivitySucceededEventDetails) , "activityTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityTimedOutEventDetails) , "executionFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionFailedEventDetails) , "executionStartedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionStartedEventDetails) , "executionSucceededEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionSucceededEventDetails) , "executionAbortedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionAbortedEventDetails) , "executionTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionTimedOutEventDetails) , "lambdaFunctionFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionFailedEventDetails) , "lambdaFunctionScheduleFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionScheduleFailedEventDetails) , "lambdaFunctionScheduledEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionScheduledEventDetails) , "lambdaFunctionStartFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionStartFailedEventDetails) , "lambdaFunctionSucceededEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionSucceededEventDetails) , "lambdaFunctionTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionTimedOutEventDetails) , "stateEnteredEventDetails" :: NullOrUndefined.NullOrUndefined (StateEnteredEventDetails) , "stateExitedEventDetails" :: NullOrUndefined.NullOrUndefined (StateExitedEventDetails) } -> {"timestamp" :: (Types.Timestamp) , "type" :: (HistoryEventType) , "id" :: (EventId) , "previousEventId" :: NullOrUndefined.NullOrUndefined (EventId) , "activityFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityFailedEventDetails) , "activityScheduleFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityScheduleFailedEventDetails) , "activityScheduledEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityScheduledEventDetails) , "activityStartedEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityStartedEventDetails) , "activitySucceededEventDetails" :: NullOrUndefined.NullOrUndefined (ActivitySucceededEventDetails) , "activityTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (ActivityTimedOutEventDetails) , "executionFailedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionFailedEventDetails) , "executionStartedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionStartedEventDetails) , "executionSucceededEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionSucceededEventDetails) , "executionAbortedEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionAbortedEventDetails) , "executionTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (ExecutionTimedOutEventDetails) , "lambdaFunctionFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionFailedEventDetails) , "lambdaFunctionScheduleFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionScheduleFailedEventDetails) , "lambdaFunctionScheduledEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionScheduledEventDetails) , "lambdaFunctionStartFailedEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionStartFailedEventDetails) , "lambdaFunctionSucceededEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionSucceededEventDetails) , "lambdaFunctionTimedOutEventDetails" :: NullOrUndefined.NullOrUndefined (LambdaFunctionTimedOutEventDetails) , "stateEnteredEventDetails" :: NullOrUndefined.NullOrUndefined (StateEnteredEventDetails) , "stateExitedEventDetails" :: NullOrUndefined.NullOrUndefined (StateExitedEventDetails) } ) -> HistoryEvent
newHistoryEvent' _id _timestamp _type customize = (HistoryEvent <<< customize) { "id": _id, "timestamp": _timestamp, "type": _type, "activityFailedEventDetails": (NullOrUndefined Nothing), "activityScheduleFailedEventDetails": (NullOrUndefined Nothing), "activityScheduledEventDetails": (NullOrUndefined Nothing), "activityStartedEventDetails": (NullOrUndefined Nothing), "activitySucceededEventDetails": (NullOrUndefined Nothing), "activityTimedOutEventDetails": (NullOrUndefined Nothing), "executionAbortedEventDetails": (NullOrUndefined Nothing), "executionFailedEventDetails": (NullOrUndefined Nothing), "executionStartedEventDetails": (NullOrUndefined Nothing), "executionSucceededEventDetails": (NullOrUndefined Nothing), "executionTimedOutEventDetails": (NullOrUndefined Nothing), "lambdaFunctionFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduleFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduledEventDetails": (NullOrUndefined Nothing), "lambdaFunctionStartFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionSucceededEventDetails": (NullOrUndefined Nothing), "lambdaFunctionTimedOutEventDetails": (NullOrUndefined Nothing), "previousEventId": (NullOrUndefined Nothing), "stateEnteredEventDetails": (NullOrUndefined Nothing), "stateExitedEventDetails": (NullOrUndefined Nothing) }



-- | <p>Contains details about the events which occurred during an execution.</p>
newtype HistoryEventList = HistoryEventList (Array HistoryEvent)
derive instance newtypeHistoryEventList :: Newtype HistoryEventList _
derive instance repGenericHistoryEventList :: Generic HistoryEventList _
instance showHistoryEventList :: Show HistoryEventList where
  show = genericShow
instance decodeHistoryEventList :: Decode HistoryEventList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHistoryEventList :: Encode HistoryEventList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HistoryEventType = HistoryEventType String
derive instance newtypeHistoryEventType :: Newtype HistoryEventType _
derive instance repGenericHistoryEventType :: Generic HistoryEventType _
instance showHistoryEventType :: Show HistoryEventType where
  show = genericShow
instance decodeHistoryEventType :: Decode HistoryEventType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHistoryEventType :: Encode HistoryEventType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Identity = Identity String
derive instance newtypeIdentity :: Newtype Identity _
derive instance repGenericIdentity :: Generic Identity _
instance showIdentity :: Show Identity where
  show = genericShow
instance decodeIdentity :: Decode Identity where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIdentity :: Encode Identity where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The provided Amazon Resource Name (ARN) is invalid.</p>
newtype InvalidArn = InvalidArn 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidArn :: Newtype InvalidArn _
derive instance repGenericInvalidArn :: Generic InvalidArn _
instance showInvalidArn :: Show InvalidArn where
  show = genericShow
instance decodeInvalidArn :: Decode InvalidArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidArn :: Encode InvalidArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidArn from required parameters
newInvalidArn :: InvalidArn
newInvalidArn  = InvalidArn { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidArn's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArn' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidArn
newInvalidArn'  customize = (InvalidArn <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided Amazon States Language definition is invalid.</p>
newtype InvalidDefinition = InvalidDefinition 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidDefinition :: Newtype InvalidDefinition _
derive instance repGenericInvalidDefinition :: Generic InvalidDefinition _
instance showInvalidDefinition :: Show InvalidDefinition where
  show = genericShow
instance decodeInvalidDefinition :: Decode InvalidDefinition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidDefinition :: Encode InvalidDefinition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidDefinition from required parameters
newInvalidDefinition :: InvalidDefinition
newInvalidDefinition  = InvalidDefinition { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidDefinition' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidDefinition
newInvalidDefinition'  customize = (InvalidDefinition <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided JSON input data is invalid.</p>
newtype InvalidExecutionInput = InvalidExecutionInput 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidExecutionInput :: Newtype InvalidExecutionInput _
derive instance repGenericInvalidExecutionInput :: Generic InvalidExecutionInput _
instance showInvalidExecutionInput :: Show InvalidExecutionInput where
  show = genericShow
instance decodeInvalidExecutionInput :: Decode InvalidExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidExecutionInput :: Encode InvalidExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidExecutionInput from required parameters
newInvalidExecutionInput :: InvalidExecutionInput
newInvalidExecutionInput  = InvalidExecutionInput { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidExecutionInput' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidExecutionInput
newInvalidExecutionInput'  customize = (InvalidExecutionInput <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided name is invalid.</p>
newtype InvalidName = InvalidName 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidName :: Newtype InvalidName _
derive instance repGenericInvalidName :: Generic InvalidName _
instance showInvalidName :: Show InvalidName where
  show = genericShow
instance decodeInvalidName :: Decode InvalidName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidName :: Encode InvalidName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidName from required parameters
newInvalidName :: InvalidName
newInvalidName  = InvalidName { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidName's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidName' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidName
newInvalidName'  customize = (InvalidName <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided JSON output data is invalid.</p>
newtype InvalidOutput = InvalidOutput 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidOutput :: Newtype InvalidOutput _
derive instance repGenericInvalidOutput :: Generic InvalidOutput _
instance showInvalidOutput :: Show InvalidOutput where
  show = genericShow
instance decodeInvalidOutput :: Decode InvalidOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidOutput :: Encode InvalidOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidOutput from required parameters
newInvalidOutput :: InvalidOutput
newInvalidOutput  = InvalidOutput { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidOutput' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidOutput
newInvalidOutput'  customize = (InvalidOutput <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided token is invalid.</p>
newtype InvalidToken = InvalidToken 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidToken :: Newtype InvalidToken _
derive instance repGenericInvalidToken :: Generic InvalidToken _
instance showInvalidToken :: Show InvalidToken where
  show = genericShow
instance decodeInvalidToken :: Decode InvalidToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidToken :: Encode InvalidToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidToken from required parameters
newInvalidToken :: InvalidToken
newInvalidToken  = InvalidToken { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidToken's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidToken' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidToken
newInvalidToken'  customize = (InvalidToken <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function which failed during an execution.</p>
newtype LambdaFunctionFailedEventDetails = LambdaFunctionFailedEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionFailedEventDetails :: Newtype LambdaFunctionFailedEventDetails _
derive instance repGenericLambdaFunctionFailedEventDetails :: Generic LambdaFunctionFailedEventDetails _
instance showLambdaFunctionFailedEventDetails :: Show LambdaFunctionFailedEventDetails where
  show = genericShow
instance decodeLambdaFunctionFailedEventDetails :: Decode LambdaFunctionFailedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaFunctionFailedEventDetails :: Encode LambdaFunctionFailedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LambdaFunctionFailedEventDetails from required parameters
newLambdaFunctionFailedEventDetails :: LambdaFunctionFailedEventDetails
newLambdaFunctionFailedEventDetails  = LambdaFunctionFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionFailedEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> LambdaFunctionFailedEventDetails
newLambdaFunctionFailedEventDetails'  customize = (LambdaFunctionFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about a failed lambda function schedule event which occurred during an execution.</p>
newtype LambdaFunctionScheduleFailedEventDetails = LambdaFunctionScheduleFailedEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionScheduleFailedEventDetails :: Newtype LambdaFunctionScheduleFailedEventDetails _
derive instance repGenericLambdaFunctionScheduleFailedEventDetails :: Generic LambdaFunctionScheduleFailedEventDetails _
instance showLambdaFunctionScheduleFailedEventDetails :: Show LambdaFunctionScheduleFailedEventDetails where
  show = genericShow
instance decodeLambdaFunctionScheduleFailedEventDetails :: Decode LambdaFunctionScheduleFailedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaFunctionScheduleFailedEventDetails :: Encode LambdaFunctionScheduleFailedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LambdaFunctionScheduleFailedEventDetails from required parameters
newLambdaFunctionScheduleFailedEventDetails :: LambdaFunctionScheduleFailedEventDetails
newLambdaFunctionScheduleFailedEventDetails  = LambdaFunctionScheduleFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionScheduleFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionScheduleFailedEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> LambdaFunctionScheduleFailedEventDetails
newLambdaFunctionScheduleFailedEventDetails'  customize = (LambdaFunctionScheduleFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function scheduled during an execution.</p>
newtype LambdaFunctionScheduledEventDetails = LambdaFunctionScheduledEventDetails 
  { "resource" :: (Arn)
  , "input" :: NullOrUndefined.NullOrUndefined (Data)
  , "timeoutInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds)
  }
derive instance newtypeLambdaFunctionScheduledEventDetails :: Newtype LambdaFunctionScheduledEventDetails _
derive instance repGenericLambdaFunctionScheduledEventDetails :: Generic LambdaFunctionScheduledEventDetails _
instance showLambdaFunctionScheduledEventDetails :: Show LambdaFunctionScheduledEventDetails where
  show = genericShow
instance decodeLambdaFunctionScheduledEventDetails :: Decode LambdaFunctionScheduledEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaFunctionScheduledEventDetails :: Encode LambdaFunctionScheduledEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LambdaFunctionScheduledEventDetails from required parameters
newLambdaFunctionScheduledEventDetails :: Arn -> LambdaFunctionScheduledEventDetails
newLambdaFunctionScheduledEventDetails _resource = LambdaFunctionScheduledEventDetails { "resource": _resource, "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionScheduledEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionScheduledEventDetails' :: Arn -> ( { "resource" :: (Arn) , "input" :: NullOrUndefined.NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds) } -> {"resource" :: (Arn) , "input" :: NullOrUndefined.NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined.NullOrUndefined (TimeoutInSeconds) } ) -> LambdaFunctionScheduledEventDetails
newLambdaFunctionScheduledEventDetails' _resource customize = (LambdaFunctionScheduledEventDetails <<< customize) { "resource": _resource, "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function which failed to start during an execution.</p>
newtype LambdaFunctionStartFailedEventDetails = LambdaFunctionStartFailedEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionStartFailedEventDetails :: Newtype LambdaFunctionStartFailedEventDetails _
derive instance repGenericLambdaFunctionStartFailedEventDetails :: Generic LambdaFunctionStartFailedEventDetails _
instance showLambdaFunctionStartFailedEventDetails :: Show LambdaFunctionStartFailedEventDetails where
  show = genericShow
instance decodeLambdaFunctionStartFailedEventDetails :: Decode LambdaFunctionStartFailedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaFunctionStartFailedEventDetails :: Encode LambdaFunctionStartFailedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LambdaFunctionStartFailedEventDetails from required parameters
newLambdaFunctionStartFailedEventDetails :: LambdaFunctionStartFailedEventDetails
newLambdaFunctionStartFailedEventDetails  = LambdaFunctionStartFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionStartFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionStartFailedEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> LambdaFunctionStartFailedEventDetails
newLambdaFunctionStartFailedEventDetails'  customize = (LambdaFunctionStartFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function which successfully terminated during an execution.</p>
newtype LambdaFunctionSucceededEventDetails = LambdaFunctionSucceededEventDetails 
  { "output" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeLambdaFunctionSucceededEventDetails :: Newtype LambdaFunctionSucceededEventDetails _
derive instance repGenericLambdaFunctionSucceededEventDetails :: Generic LambdaFunctionSucceededEventDetails _
instance showLambdaFunctionSucceededEventDetails :: Show LambdaFunctionSucceededEventDetails where
  show = genericShow
instance decodeLambdaFunctionSucceededEventDetails :: Decode LambdaFunctionSucceededEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaFunctionSucceededEventDetails :: Encode LambdaFunctionSucceededEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LambdaFunctionSucceededEventDetails from required parameters
newLambdaFunctionSucceededEventDetails :: LambdaFunctionSucceededEventDetails
newLambdaFunctionSucceededEventDetails  = LambdaFunctionSucceededEventDetails { "output": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionSucceededEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionSucceededEventDetails' :: ( { "output" :: NullOrUndefined.NullOrUndefined (Data) } -> {"output" :: NullOrUndefined.NullOrUndefined (Data) } ) -> LambdaFunctionSucceededEventDetails
newLambdaFunctionSucceededEventDetails'  customize = (LambdaFunctionSucceededEventDetails <<< customize) { "output": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function timeout which occurred during an execution.</p>
newtype LambdaFunctionTimedOutEventDetails = LambdaFunctionTimedOutEventDetails 
  { "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionTimedOutEventDetails :: Newtype LambdaFunctionTimedOutEventDetails _
derive instance repGenericLambdaFunctionTimedOutEventDetails :: Generic LambdaFunctionTimedOutEventDetails _
instance showLambdaFunctionTimedOutEventDetails :: Show LambdaFunctionTimedOutEventDetails where
  show = genericShow
instance decodeLambdaFunctionTimedOutEventDetails :: Decode LambdaFunctionTimedOutEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaFunctionTimedOutEventDetails :: Encode LambdaFunctionTimedOutEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LambdaFunctionTimedOutEventDetails from required parameters
newLambdaFunctionTimedOutEventDetails :: LambdaFunctionTimedOutEventDetails
newLambdaFunctionTimedOutEventDetails  = LambdaFunctionTimedOutEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionTimedOutEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionTimedOutEventDetails' :: ( { "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> LambdaFunctionTimedOutEventDetails
newLambdaFunctionTimedOutEventDetails'  customize = (LambdaFunctionTimedOutEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype ListActivitiesInput = ListActivitiesInput 
  { "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeListActivitiesInput :: Newtype ListActivitiesInput _
derive instance repGenericListActivitiesInput :: Generic ListActivitiesInput _
instance showListActivitiesInput :: Show ListActivitiesInput where
  show = genericShow
instance decodeListActivitiesInput :: Decode ListActivitiesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListActivitiesInput :: Encode ListActivitiesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListActivitiesInput from required parameters
newListActivitiesInput :: ListActivitiesInput
newListActivitiesInput  = ListActivitiesInput { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListActivitiesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListActivitiesInput' :: ( { "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> ListActivitiesInput
newListActivitiesInput'  customize = (ListActivitiesInput <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListActivitiesOutput = ListActivitiesOutput 
  { "activities" :: (ActivityList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeListActivitiesOutput :: Newtype ListActivitiesOutput _
derive instance repGenericListActivitiesOutput :: Generic ListActivitiesOutput _
instance showListActivitiesOutput :: Show ListActivitiesOutput where
  show = genericShow
instance decodeListActivitiesOutput :: Decode ListActivitiesOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListActivitiesOutput :: Encode ListActivitiesOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListActivitiesOutput from required parameters
newListActivitiesOutput :: ActivityList -> ListActivitiesOutput
newListActivitiesOutput _activities = ListActivitiesOutput { "activities": _activities, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListActivitiesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListActivitiesOutput' :: ActivityList -> ( { "activities" :: (ActivityList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"activities" :: (ActivityList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> ListActivitiesOutput
newListActivitiesOutput' _activities customize = (ListActivitiesOutput <<< customize) { "activities": _activities, "nextToken": (NullOrUndefined Nothing) }



newtype ListExecutionsInput = ListExecutionsInput 
  { "stateMachineArn" :: (Arn)
  , "statusFilter" :: NullOrUndefined.NullOrUndefined (ExecutionStatus)
  , "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeListExecutionsInput :: Newtype ListExecutionsInput _
derive instance repGenericListExecutionsInput :: Generic ListExecutionsInput _
instance showListExecutionsInput :: Show ListExecutionsInput where
  show = genericShow
instance decodeListExecutionsInput :: Decode ListExecutionsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListExecutionsInput :: Encode ListExecutionsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListExecutionsInput from required parameters
newListExecutionsInput :: Arn -> ListExecutionsInput
newListExecutionsInput _stateMachineArn = ListExecutionsInput { "stateMachineArn": _stateMachineArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "statusFilter": (NullOrUndefined Nothing) }

-- | Constructs ListExecutionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListExecutionsInput' :: Arn -> ( { "stateMachineArn" :: (Arn) , "statusFilter" :: NullOrUndefined.NullOrUndefined (ExecutionStatus) , "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"stateMachineArn" :: (Arn) , "statusFilter" :: NullOrUndefined.NullOrUndefined (ExecutionStatus) , "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> ListExecutionsInput
newListExecutionsInput' _stateMachineArn customize = (ListExecutionsInput <<< customize) { "stateMachineArn": _stateMachineArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "statusFilter": (NullOrUndefined Nothing) }



newtype ListExecutionsOutput = ListExecutionsOutput 
  { "executions" :: (ExecutionList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeListExecutionsOutput :: Newtype ListExecutionsOutput _
derive instance repGenericListExecutionsOutput :: Generic ListExecutionsOutput _
instance showListExecutionsOutput :: Show ListExecutionsOutput where
  show = genericShow
instance decodeListExecutionsOutput :: Decode ListExecutionsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListExecutionsOutput :: Encode ListExecutionsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListExecutionsOutput from required parameters
newListExecutionsOutput :: ExecutionList -> ListExecutionsOutput
newListExecutionsOutput _executions = ListExecutionsOutput { "executions": _executions, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListExecutionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListExecutionsOutput' :: ExecutionList -> ( { "executions" :: (ExecutionList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"executions" :: (ExecutionList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> ListExecutionsOutput
newListExecutionsOutput' _executions customize = (ListExecutionsOutput <<< customize) { "executions": _executions, "nextToken": (NullOrUndefined Nothing) }



newtype ListStateMachinesInput = ListStateMachinesInput 
  { "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeListStateMachinesInput :: Newtype ListStateMachinesInput _
derive instance repGenericListStateMachinesInput :: Generic ListStateMachinesInput _
instance showListStateMachinesInput :: Show ListStateMachinesInput where
  show = genericShow
instance decodeListStateMachinesInput :: Decode ListStateMachinesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListStateMachinesInput :: Encode ListStateMachinesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListStateMachinesInput from required parameters
newListStateMachinesInput :: ListStateMachinesInput
newListStateMachinesInput  = ListStateMachinesInput { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListStateMachinesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStateMachinesInput' :: ( { "maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"maxResults" :: NullOrUndefined.NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> ListStateMachinesInput
newListStateMachinesInput'  customize = (ListStateMachinesInput <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListStateMachinesOutput = ListStateMachinesOutput 
  { "stateMachines" :: (StateMachineList)
  , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken)
  }
derive instance newtypeListStateMachinesOutput :: Newtype ListStateMachinesOutput _
derive instance repGenericListStateMachinesOutput :: Generic ListStateMachinesOutput _
instance showListStateMachinesOutput :: Show ListStateMachinesOutput where
  show = genericShow
instance decodeListStateMachinesOutput :: Decode ListStateMachinesOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListStateMachinesOutput :: Encode ListStateMachinesOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListStateMachinesOutput from required parameters
newListStateMachinesOutput :: StateMachineList -> ListStateMachinesOutput
newListStateMachinesOutput _stateMachines = ListStateMachinesOutput { "stateMachines": _stateMachines, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListStateMachinesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStateMachinesOutput' :: StateMachineList -> ( { "stateMachines" :: (StateMachineList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } -> {"stateMachines" :: (StateMachineList) , "nextToken" :: NullOrUndefined.NullOrUndefined (PageToken) } ) -> ListStateMachinesOutput
newListStateMachinesOutput' _stateMachines customize = (ListStateMachinesOutput <<< customize) { "stateMachines": _stateMachines, "nextToken": (NullOrUndefined Nothing) }



-- | <p>Request is missing a required parameter. This error occurs if both <code>definition</code> and <code>roleArn</code> are not specified.</p>
newtype MissingRequiredParameter = MissingRequiredParameter 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeMissingRequiredParameter :: Newtype MissingRequiredParameter _
derive instance repGenericMissingRequiredParameter :: Generic MissingRequiredParameter _
instance showMissingRequiredParameter :: Show MissingRequiredParameter where
  show = genericShow
instance decodeMissingRequiredParameter :: Decode MissingRequiredParameter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMissingRequiredParameter :: Encode MissingRequiredParameter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MissingRequiredParameter from required parameters
newMissingRequiredParameter :: MissingRequiredParameter
newMissingRequiredParameter  = MissingRequiredParameter { "message": (NullOrUndefined Nothing) }

-- | Constructs MissingRequiredParameter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingRequiredParameter' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> MissingRequiredParameter
newMissingRequiredParameter'  customize = (MissingRequiredParameter <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Name = Name String
derive instance newtypeName :: Newtype Name _
derive instance repGenericName :: Generic Name _
instance showName :: Show Name where
  show = genericShow
instance decodeName :: Decode Name where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeName :: Encode Name where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PageSize = PageSize Int
derive instance newtypePageSize :: Newtype PageSize _
derive instance repGenericPageSize :: Generic PageSize _
instance showPageSize :: Show PageSize where
  show = genericShow
instance decodePageSize :: Decode PageSize where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePageSize :: Encode PageSize where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PageToken = PageToken String
derive instance newtypePageToken :: Newtype PageToken _
derive instance repGenericPageToken :: Generic PageToken _
instance showPageToken :: Show PageToken where
  show = genericShow
instance decodePageToken :: Decode PageToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePageToken :: Encode PageToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ReverseOrder = ReverseOrder Boolean
derive instance newtypeReverseOrder :: Newtype ReverseOrder _
derive instance repGenericReverseOrder :: Generic ReverseOrder _
instance showReverseOrder :: Show ReverseOrder where
  show = genericShow
instance decodeReverseOrder :: Decode ReverseOrder where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReverseOrder :: Encode ReverseOrder where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SendTaskFailureInput = SendTaskFailureInput 
  { "taskToken" :: (TaskToken)
  , "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeSendTaskFailureInput :: Newtype SendTaskFailureInput _
derive instance repGenericSendTaskFailureInput :: Generic SendTaskFailureInput _
instance showSendTaskFailureInput :: Show SendTaskFailureInput where
  show = genericShow
instance decodeSendTaskFailureInput :: Decode SendTaskFailureInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTaskFailureInput :: Encode SendTaskFailureInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SendTaskFailureInput from required parameters
newSendTaskFailureInput :: TaskToken -> SendTaskFailureInput
newSendTaskFailureInput _taskToken = SendTaskFailureInput { "taskToken": _taskToken, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs SendTaskFailureInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendTaskFailureInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) , "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"taskToken" :: (TaskToken) , "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> SendTaskFailureInput
newSendTaskFailureInput' _taskToken customize = (SendTaskFailureInput <<< customize) { "taskToken": _taskToken, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype SendTaskFailureOutput = SendTaskFailureOutput Types.NoArguments
derive instance newtypeSendTaskFailureOutput :: Newtype SendTaskFailureOutput _
derive instance repGenericSendTaskFailureOutput :: Generic SendTaskFailureOutput _
instance showSendTaskFailureOutput :: Show SendTaskFailureOutput where
  show = genericShow
instance decodeSendTaskFailureOutput :: Decode SendTaskFailureOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTaskFailureOutput :: Encode SendTaskFailureOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SendTaskHeartbeatInput = SendTaskHeartbeatInput 
  { "taskToken" :: (TaskToken)
  }
derive instance newtypeSendTaskHeartbeatInput :: Newtype SendTaskHeartbeatInput _
derive instance repGenericSendTaskHeartbeatInput :: Generic SendTaskHeartbeatInput _
instance showSendTaskHeartbeatInput :: Show SendTaskHeartbeatInput where
  show = genericShow
instance decodeSendTaskHeartbeatInput :: Decode SendTaskHeartbeatInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTaskHeartbeatInput :: Encode SendTaskHeartbeatInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SendTaskHeartbeatInput from required parameters
newSendTaskHeartbeatInput :: TaskToken -> SendTaskHeartbeatInput
newSendTaskHeartbeatInput _taskToken = SendTaskHeartbeatInput { "taskToken": _taskToken }

-- | Constructs SendTaskHeartbeatInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendTaskHeartbeatInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) } -> {"taskToken" :: (TaskToken) } ) -> SendTaskHeartbeatInput
newSendTaskHeartbeatInput' _taskToken customize = (SendTaskHeartbeatInput <<< customize) { "taskToken": _taskToken }



newtype SendTaskHeartbeatOutput = SendTaskHeartbeatOutput Types.NoArguments
derive instance newtypeSendTaskHeartbeatOutput :: Newtype SendTaskHeartbeatOutput _
derive instance repGenericSendTaskHeartbeatOutput :: Generic SendTaskHeartbeatOutput _
instance showSendTaskHeartbeatOutput :: Show SendTaskHeartbeatOutput where
  show = genericShow
instance decodeSendTaskHeartbeatOutput :: Decode SendTaskHeartbeatOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTaskHeartbeatOutput :: Encode SendTaskHeartbeatOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SendTaskSuccessInput = SendTaskSuccessInput 
  { "taskToken" :: (TaskToken)
  , "output" :: (Data)
  }
derive instance newtypeSendTaskSuccessInput :: Newtype SendTaskSuccessInput _
derive instance repGenericSendTaskSuccessInput :: Generic SendTaskSuccessInput _
instance showSendTaskSuccessInput :: Show SendTaskSuccessInput where
  show = genericShow
instance decodeSendTaskSuccessInput :: Decode SendTaskSuccessInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTaskSuccessInput :: Encode SendTaskSuccessInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SendTaskSuccessInput from required parameters
newSendTaskSuccessInput :: Data -> TaskToken -> SendTaskSuccessInput
newSendTaskSuccessInput _output _taskToken = SendTaskSuccessInput { "output": _output, "taskToken": _taskToken }

-- | Constructs SendTaskSuccessInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendTaskSuccessInput' :: Data -> TaskToken -> ( { "taskToken" :: (TaskToken) , "output" :: (Data) } -> {"taskToken" :: (TaskToken) , "output" :: (Data) } ) -> SendTaskSuccessInput
newSendTaskSuccessInput' _output _taskToken customize = (SendTaskSuccessInput <<< customize) { "output": _output, "taskToken": _taskToken }



newtype SendTaskSuccessOutput = SendTaskSuccessOutput Types.NoArguments
derive instance newtypeSendTaskSuccessOutput :: Newtype SendTaskSuccessOutput _
derive instance repGenericSendTaskSuccessOutput :: Generic SendTaskSuccessOutput _
instance showSendTaskSuccessOutput :: Show SendTaskSuccessOutput where
  show = genericShow
instance decodeSendTaskSuccessOutput :: Decode SendTaskSuccessOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSendTaskSuccessOutput :: Encode SendTaskSuccessOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StartExecutionInput = StartExecutionInput 
  { "stateMachineArn" :: (Arn)
  , "name" :: NullOrUndefined.NullOrUndefined (Name)
  , "input" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeStartExecutionInput :: Newtype StartExecutionInput _
derive instance repGenericStartExecutionInput :: Generic StartExecutionInput _
instance showStartExecutionInput :: Show StartExecutionInput where
  show = genericShow
instance decodeStartExecutionInput :: Decode StartExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartExecutionInput :: Encode StartExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartExecutionInput from required parameters
newStartExecutionInput :: Arn -> StartExecutionInput
newStartExecutionInput _stateMachineArn = StartExecutionInput { "stateMachineArn": _stateMachineArn, "input": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs StartExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartExecutionInput' :: Arn -> ( { "stateMachineArn" :: (Arn) , "name" :: NullOrUndefined.NullOrUndefined (Name) , "input" :: NullOrUndefined.NullOrUndefined (Data) } -> {"stateMachineArn" :: (Arn) , "name" :: NullOrUndefined.NullOrUndefined (Name) , "input" :: NullOrUndefined.NullOrUndefined (Data) } ) -> StartExecutionInput
newStartExecutionInput' _stateMachineArn customize = (StartExecutionInput <<< customize) { "stateMachineArn": _stateMachineArn, "input": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



newtype StartExecutionOutput = StartExecutionOutput 
  { "executionArn" :: (Arn)
  , "startDate" :: (Types.Timestamp)
  }
derive instance newtypeStartExecutionOutput :: Newtype StartExecutionOutput _
derive instance repGenericStartExecutionOutput :: Generic StartExecutionOutput _
instance showStartExecutionOutput :: Show StartExecutionOutput where
  show = genericShow
instance decodeStartExecutionOutput :: Decode StartExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartExecutionOutput :: Encode StartExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartExecutionOutput from required parameters
newStartExecutionOutput :: Arn -> Types.Timestamp -> StartExecutionOutput
newStartExecutionOutput _executionArn _startDate = StartExecutionOutput { "executionArn": _executionArn, "startDate": _startDate }

-- | Constructs StartExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartExecutionOutput' :: Arn -> Types.Timestamp -> ( { "executionArn" :: (Arn) , "startDate" :: (Types.Timestamp) } -> {"executionArn" :: (Arn) , "startDate" :: (Types.Timestamp) } ) -> StartExecutionOutput
newStartExecutionOutput' _executionArn _startDate customize = (StartExecutionOutput <<< customize) { "executionArn": _executionArn, "startDate": _startDate }



-- | <p>Contains details about a state entered during an execution.</p>
newtype StateEnteredEventDetails = StateEnteredEventDetails 
  { "name" :: (Name)
  , "input" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeStateEnteredEventDetails :: Newtype StateEnteredEventDetails _
derive instance repGenericStateEnteredEventDetails :: Generic StateEnteredEventDetails _
instance showStateEnteredEventDetails :: Show StateEnteredEventDetails where
  show = genericShow
instance decodeStateEnteredEventDetails :: Decode StateEnteredEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateEnteredEventDetails :: Encode StateEnteredEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StateEnteredEventDetails from required parameters
newStateEnteredEventDetails :: Name -> StateEnteredEventDetails
newStateEnteredEventDetails _name = StateEnteredEventDetails { "name": _name, "input": (NullOrUndefined Nothing) }

-- | Constructs StateEnteredEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateEnteredEventDetails' :: Name -> ( { "name" :: (Name) , "input" :: NullOrUndefined.NullOrUndefined (Data) } -> {"name" :: (Name) , "input" :: NullOrUndefined.NullOrUndefined (Data) } ) -> StateEnteredEventDetails
newStateEnteredEventDetails' _name customize = (StateEnteredEventDetails <<< customize) { "name": _name, "input": (NullOrUndefined Nothing) }



-- | <p>Contains details about an exit from a state during an execution.</p>
newtype StateExitedEventDetails = StateExitedEventDetails 
  { "name" :: (Name)
  , "output" :: NullOrUndefined.NullOrUndefined (Data)
  }
derive instance newtypeStateExitedEventDetails :: Newtype StateExitedEventDetails _
derive instance repGenericStateExitedEventDetails :: Generic StateExitedEventDetails _
instance showStateExitedEventDetails :: Show StateExitedEventDetails where
  show = genericShow
instance decodeStateExitedEventDetails :: Decode StateExitedEventDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateExitedEventDetails :: Encode StateExitedEventDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StateExitedEventDetails from required parameters
newStateExitedEventDetails :: Name -> StateExitedEventDetails
newStateExitedEventDetails _name = StateExitedEventDetails { "name": _name, "output": (NullOrUndefined Nothing) }

-- | Constructs StateExitedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateExitedEventDetails' :: Name -> ( { "name" :: (Name) , "output" :: NullOrUndefined.NullOrUndefined (Data) } -> {"name" :: (Name) , "output" :: NullOrUndefined.NullOrUndefined (Data) } ) -> StateExitedEventDetails
newStateExitedEventDetails' _name customize = (StateExitedEventDetails <<< customize) { "name": _name, "output": (NullOrUndefined Nothing) }



-- | <p>A state machine with the same name but a different definition or role ARN already exists.</p>
newtype StateMachineAlreadyExists = StateMachineAlreadyExists 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineAlreadyExists :: Newtype StateMachineAlreadyExists _
derive instance repGenericStateMachineAlreadyExists :: Generic StateMachineAlreadyExists _
instance showStateMachineAlreadyExists :: Show StateMachineAlreadyExists where
  show = genericShow
instance decodeStateMachineAlreadyExists :: Decode StateMachineAlreadyExists where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateMachineAlreadyExists :: Encode StateMachineAlreadyExists where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StateMachineAlreadyExists from required parameters
newStateMachineAlreadyExists :: StateMachineAlreadyExists
newStateMachineAlreadyExists  = StateMachineAlreadyExists { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineAlreadyExists' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> StateMachineAlreadyExists
newStateMachineAlreadyExists'  customize = (StateMachineAlreadyExists <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified state machine is being deleted.</p>
newtype StateMachineDeleting = StateMachineDeleting 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineDeleting :: Newtype StateMachineDeleting _
derive instance repGenericStateMachineDeleting :: Generic StateMachineDeleting _
instance showStateMachineDeleting :: Show StateMachineDeleting where
  show = genericShow
instance decodeStateMachineDeleting :: Decode StateMachineDeleting where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateMachineDeleting :: Encode StateMachineDeleting where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StateMachineDeleting from required parameters
newStateMachineDeleting :: StateMachineDeleting
newStateMachineDeleting  = StateMachineDeleting { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineDeleting's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineDeleting' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> StateMachineDeleting
newStateMachineDeleting'  customize = (StateMachineDeleting <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified state machine does not exist.</p>
newtype StateMachineDoesNotExist = StateMachineDoesNotExist 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineDoesNotExist :: Newtype StateMachineDoesNotExist _
derive instance repGenericStateMachineDoesNotExist :: Generic StateMachineDoesNotExist _
instance showStateMachineDoesNotExist :: Show StateMachineDoesNotExist where
  show = genericShow
instance decodeStateMachineDoesNotExist :: Decode StateMachineDoesNotExist where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateMachineDoesNotExist :: Encode StateMachineDoesNotExist where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StateMachineDoesNotExist from required parameters
newStateMachineDoesNotExist :: StateMachineDoesNotExist
newStateMachineDoesNotExist  = StateMachineDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineDoesNotExist' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> StateMachineDoesNotExist
newStateMachineDoesNotExist'  customize = (StateMachineDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.</p>
newtype StateMachineLimitExceeded = StateMachineLimitExceeded 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineLimitExceeded :: Newtype StateMachineLimitExceeded _
derive instance repGenericStateMachineLimitExceeded :: Generic StateMachineLimitExceeded _
instance showStateMachineLimitExceeded :: Show StateMachineLimitExceeded where
  show = genericShow
instance decodeStateMachineLimitExceeded :: Decode StateMachineLimitExceeded where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateMachineLimitExceeded :: Encode StateMachineLimitExceeded where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StateMachineLimitExceeded from required parameters
newStateMachineLimitExceeded :: StateMachineLimitExceeded
newStateMachineLimitExceeded  = StateMachineLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineLimitExceeded' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> StateMachineLimitExceeded
newStateMachineLimitExceeded'  customize = (StateMachineLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype StateMachineList = StateMachineList (Array StateMachineListItem)
derive instance newtypeStateMachineList :: Newtype StateMachineList _
derive instance repGenericStateMachineList :: Generic StateMachineList _
instance showStateMachineList :: Show StateMachineList where
  show = genericShow
instance decodeStateMachineList :: Decode StateMachineList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateMachineList :: Encode StateMachineList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains details about the state machine.</p>
newtype StateMachineListItem = StateMachineListItem 
  { "stateMachineArn" :: (Arn)
  , "name" :: (Name)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeStateMachineListItem :: Newtype StateMachineListItem _
derive instance repGenericStateMachineListItem :: Generic StateMachineListItem _
instance showStateMachineListItem :: Show StateMachineListItem where
  show = genericShow
instance decodeStateMachineListItem :: Decode StateMachineListItem where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateMachineListItem :: Encode StateMachineListItem where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StateMachineListItem from required parameters
newStateMachineListItem :: Types.Timestamp -> Name -> Arn -> StateMachineListItem
newStateMachineListItem _creationDate _name _stateMachineArn = StateMachineListItem { "creationDate": _creationDate, "name": _name, "stateMachineArn": _stateMachineArn }

-- | Constructs StateMachineListItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineListItem' :: Types.Timestamp -> Name -> Arn -> ( { "stateMachineArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } -> {"stateMachineArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } ) -> StateMachineListItem
newStateMachineListItem' _creationDate _name _stateMachineArn customize = (StateMachineListItem <<< customize) { "creationDate": _creationDate, "name": _name, "stateMachineArn": _stateMachineArn }



newtype StateMachineStatus = StateMachineStatus String
derive instance newtypeStateMachineStatus :: Newtype StateMachineStatus _
derive instance repGenericStateMachineStatus :: Generic StateMachineStatus _
instance showStateMachineStatus :: Show StateMachineStatus where
  show = genericShow
instance decodeStateMachineStatus :: Decode StateMachineStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStateMachineStatus :: Encode StateMachineStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StopExecutionInput = StopExecutionInput 
  { "executionArn" :: (Arn)
  , "error" :: NullOrUndefined.NullOrUndefined (Error)
  , "cause" :: NullOrUndefined.NullOrUndefined (Cause)
  }
derive instance newtypeStopExecutionInput :: Newtype StopExecutionInput _
derive instance repGenericStopExecutionInput :: Generic StopExecutionInput _
instance showStopExecutionInput :: Show StopExecutionInput where
  show = genericShow
instance decodeStopExecutionInput :: Decode StopExecutionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStopExecutionInput :: Encode StopExecutionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StopExecutionInput from required parameters
newStopExecutionInput :: Arn -> StopExecutionInput
newStopExecutionInput _executionArn = StopExecutionInput { "executionArn": _executionArn, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs StopExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopExecutionInput' :: Arn -> ( { "executionArn" :: (Arn) , "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } -> {"executionArn" :: (Arn) , "error" :: NullOrUndefined.NullOrUndefined (Error) , "cause" :: NullOrUndefined.NullOrUndefined (Cause) } ) -> StopExecutionInput
newStopExecutionInput' _executionArn customize = (StopExecutionInput <<< customize) { "executionArn": _executionArn, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype StopExecutionOutput = StopExecutionOutput 
  { "stopDate" :: (Types.Timestamp)
  }
derive instance newtypeStopExecutionOutput :: Newtype StopExecutionOutput _
derive instance repGenericStopExecutionOutput :: Generic StopExecutionOutput _
instance showStopExecutionOutput :: Show StopExecutionOutput where
  show = genericShow
instance decodeStopExecutionOutput :: Decode StopExecutionOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStopExecutionOutput :: Encode StopExecutionOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StopExecutionOutput from required parameters
newStopExecutionOutput :: Types.Timestamp -> StopExecutionOutput
newStopExecutionOutput _stopDate = StopExecutionOutput { "stopDate": _stopDate }

-- | Constructs StopExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopExecutionOutput' :: Types.Timestamp -> ( { "stopDate" :: (Types.Timestamp) } -> {"stopDate" :: (Types.Timestamp) } ) -> StopExecutionOutput
newStopExecutionOutput' _stopDate customize = (StopExecutionOutput <<< customize) { "stopDate": _stopDate }



newtype TaskDoesNotExist = TaskDoesNotExist 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTaskDoesNotExist :: Newtype TaskDoesNotExist _
derive instance repGenericTaskDoesNotExist :: Generic TaskDoesNotExist _
instance showTaskDoesNotExist :: Show TaskDoesNotExist where
  show = genericShow
instance decodeTaskDoesNotExist :: Decode TaskDoesNotExist where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTaskDoesNotExist :: Encode TaskDoesNotExist where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TaskDoesNotExist from required parameters
newTaskDoesNotExist :: TaskDoesNotExist
newTaskDoesNotExist  = TaskDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs TaskDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskDoesNotExist' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> TaskDoesNotExist
newTaskDoesNotExist'  customize = (TaskDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TaskTimedOut = TaskTimedOut 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTaskTimedOut :: Newtype TaskTimedOut _
derive instance repGenericTaskTimedOut :: Generic TaskTimedOut _
instance showTaskTimedOut :: Show TaskTimedOut where
  show = genericShow
instance decodeTaskTimedOut :: Decode TaskTimedOut where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTaskTimedOut :: Encode TaskTimedOut where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TaskTimedOut from required parameters
newTaskTimedOut :: TaskTimedOut
newTaskTimedOut  = TaskTimedOut { "message": (NullOrUndefined Nothing) }

-- | Constructs TaskTimedOut's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskTimedOut' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> TaskTimedOut
newTaskTimedOut'  customize = (TaskTimedOut <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TaskToken = TaskToken String
derive instance newtypeTaskToken :: Newtype TaskToken _
derive instance repGenericTaskToken :: Generic TaskToken _
instance showTaskToken :: Show TaskToken where
  show = genericShow
instance decodeTaskToken :: Decode TaskToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTaskToken :: Encode TaskToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TimeoutInSeconds = TimeoutInSeconds Number
derive instance newtypeTimeoutInSeconds :: Newtype TimeoutInSeconds _
derive instance repGenericTimeoutInSeconds :: Generic TimeoutInSeconds _
instance showTimeoutInSeconds :: Show TimeoutInSeconds where
  show = genericShow
instance decodeTimeoutInSeconds :: Decode TimeoutInSeconds where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimeoutInSeconds :: Encode TimeoutInSeconds where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateStateMachineInput = UpdateStateMachineInput 
  { "stateMachineArn" :: (Arn)
  , "definition" :: NullOrUndefined.NullOrUndefined (Definition)
  , "roleArn" :: NullOrUndefined.NullOrUndefined (Arn)
  }
derive instance newtypeUpdateStateMachineInput :: Newtype UpdateStateMachineInput _
derive instance repGenericUpdateStateMachineInput :: Generic UpdateStateMachineInput _
instance showUpdateStateMachineInput :: Show UpdateStateMachineInput where
  show = genericShow
instance decodeUpdateStateMachineInput :: Decode UpdateStateMachineInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateStateMachineInput :: Encode UpdateStateMachineInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateStateMachineInput from required parameters
newUpdateStateMachineInput :: Arn -> UpdateStateMachineInput
newUpdateStateMachineInput _stateMachineArn = UpdateStateMachineInput { "stateMachineArn": _stateMachineArn, "definition": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }

-- | Constructs UpdateStateMachineInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStateMachineInput' :: Arn -> ( { "stateMachineArn" :: (Arn) , "definition" :: NullOrUndefined.NullOrUndefined (Definition) , "roleArn" :: NullOrUndefined.NullOrUndefined (Arn) } -> {"stateMachineArn" :: (Arn) , "definition" :: NullOrUndefined.NullOrUndefined (Definition) , "roleArn" :: NullOrUndefined.NullOrUndefined (Arn) } ) -> UpdateStateMachineInput
newUpdateStateMachineInput' _stateMachineArn customize = (UpdateStateMachineInput <<< customize) { "stateMachineArn": _stateMachineArn, "definition": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }



newtype UpdateStateMachineOutput = UpdateStateMachineOutput 
  { "updateDate" :: (Types.Timestamp)
  }
derive instance newtypeUpdateStateMachineOutput :: Newtype UpdateStateMachineOutput _
derive instance repGenericUpdateStateMachineOutput :: Generic UpdateStateMachineOutput _
instance showUpdateStateMachineOutput :: Show UpdateStateMachineOutput where
  show = genericShow
instance decodeUpdateStateMachineOutput :: Decode UpdateStateMachineOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateStateMachineOutput :: Encode UpdateStateMachineOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateStateMachineOutput from required parameters
newUpdateStateMachineOutput :: Types.Timestamp -> UpdateStateMachineOutput
newUpdateStateMachineOutput _updateDate = UpdateStateMachineOutput { "updateDate": _updateDate }

-- | Constructs UpdateStateMachineOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStateMachineOutput' :: Types.Timestamp -> ( { "updateDate" :: (Types.Timestamp) } -> {"updateDate" :: (Types.Timestamp) } ) -> UpdateStateMachineOutput
newUpdateStateMachineOutput' _updateDate customize = (UpdateStateMachineOutput <<< customize) { "updateDate": _updateDate }

