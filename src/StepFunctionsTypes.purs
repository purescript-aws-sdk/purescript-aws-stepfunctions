
module AWS.StepFunctions.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The specified activity does not exist.</p>
newtype ActivityDoesNotExist = ActivityDoesNotExist 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeActivityDoesNotExist :: Newtype ActivityDoesNotExist _
derive instance repGenericActivityDoesNotExist :: Generic ActivityDoesNotExist _
instance showActivityDoesNotExist :: Show ActivityDoesNotExist where show = genericShow
instance decodeActivityDoesNotExist :: Decode ActivityDoesNotExist where decode = genericDecode options
instance encodeActivityDoesNotExist :: Encode ActivityDoesNotExist where encode = genericEncode options

-- | Constructs ActivityDoesNotExist from required parameters
newActivityDoesNotExist :: ActivityDoesNotExist
newActivityDoesNotExist  = ActivityDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs ActivityDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityDoesNotExist' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ActivityDoesNotExist
newActivityDoesNotExist'  customize = (ActivityDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity which failed during an execution.</p>
newtype ActivityFailedEventDetails = ActivityFailedEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeActivityFailedEventDetails :: Newtype ActivityFailedEventDetails _
derive instance repGenericActivityFailedEventDetails :: Generic ActivityFailedEventDetails _
instance showActivityFailedEventDetails :: Show ActivityFailedEventDetails where show = genericShow
instance decodeActivityFailedEventDetails :: Decode ActivityFailedEventDetails where decode = genericDecode options
instance encodeActivityFailedEventDetails :: Encode ActivityFailedEventDetails where encode = genericEncode options

-- | Constructs ActivityFailedEventDetails from required parameters
newActivityFailedEventDetails :: ActivityFailedEventDetails
newActivityFailedEventDetails  = ActivityFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ActivityFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityFailedEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> ActivityFailedEventDetails
newActivityFailedEventDetails'  customize = (ActivityFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.</p>
newtype ActivityLimitExceeded = ActivityLimitExceeded 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeActivityLimitExceeded :: Newtype ActivityLimitExceeded _
derive instance repGenericActivityLimitExceeded :: Generic ActivityLimitExceeded _
instance showActivityLimitExceeded :: Show ActivityLimitExceeded where show = genericShow
instance decodeActivityLimitExceeded :: Decode ActivityLimitExceeded where decode = genericDecode options
instance encodeActivityLimitExceeded :: Encode ActivityLimitExceeded where encode = genericEncode options

-- | Constructs ActivityLimitExceeded from required parameters
newActivityLimitExceeded :: ActivityLimitExceeded
newActivityLimitExceeded  = ActivityLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs ActivityLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityLimitExceeded' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ActivityLimitExceeded
newActivityLimitExceeded'  customize = (ActivityLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ActivityList = ActivityList (Array ActivityListItem)
derive instance newtypeActivityList :: Newtype ActivityList _
derive instance repGenericActivityList :: Generic ActivityList _
instance showActivityList :: Show ActivityList where show = genericShow
instance decodeActivityList :: Decode ActivityList where decode = genericDecode options
instance encodeActivityList :: Encode ActivityList where encode = genericEncode options



-- | <p>Contains details about an activity.</p>
newtype ActivityListItem = ActivityListItem 
  { "activityArn" :: (Arn)
  , "name" :: (Name)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeActivityListItem :: Newtype ActivityListItem _
derive instance repGenericActivityListItem :: Generic ActivityListItem _
instance showActivityListItem :: Show ActivityListItem where show = genericShow
instance decodeActivityListItem :: Decode ActivityListItem where decode = genericDecode options
instance encodeActivityListItem :: Encode ActivityListItem where encode = genericEncode options

-- | Constructs ActivityListItem from required parameters
newActivityListItem :: Arn -> Types.Timestamp -> Name -> ActivityListItem
newActivityListItem _activityArn _creationDate _name = ActivityListItem { "activityArn": _activityArn, "creationDate": _creationDate, "name": _name }

-- | Constructs ActivityListItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityListItem' :: Arn -> Types.Timestamp -> Name -> ( { "activityArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } -> {"activityArn" :: (Arn) , "name" :: (Name) , "creationDate" :: (Types.Timestamp) } ) -> ActivityListItem
newActivityListItem' _activityArn _creationDate _name customize = (ActivityListItem <<< customize) { "activityArn": _activityArn, "creationDate": _creationDate, "name": _name }



-- | <p>Contains details about an activity schedule failure which occurred during an execution.</p>
newtype ActivityScheduleFailedEventDetails = ActivityScheduleFailedEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeActivityScheduleFailedEventDetails :: Newtype ActivityScheduleFailedEventDetails _
derive instance repGenericActivityScheduleFailedEventDetails :: Generic ActivityScheduleFailedEventDetails _
instance showActivityScheduleFailedEventDetails :: Show ActivityScheduleFailedEventDetails where show = genericShow
instance decodeActivityScheduleFailedEventDetails :: Decode ActivityScheduleFailedEventDetails where decode = genericDecode options
instance encodeActivityScheduleFailedEventDetails :: Encode ActivityScheduleFailedEventDetails where encode = genericEncode options

-- | Constructs ActivityScheduleFailedEventDetails from required parameters
newActivityScheduleFailedEventDetails :: ActivityScheduleFailedEventDetails
newActivityScheduleFailedEventDetails  = ActivityScheduleFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ActivityScheduleFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityScheduleFailedEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> ActivityScheduleFailedEventDetails
newActivityScheduleFailedEventDetails'  customize = (ActivityScheduleFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity scheduled during an execution.</p>
newtype ActivityScheduledEventDetails = ActivityScheduledEventDetails 
  { "resource" :: (Arn)
  , "input" :: NullOrUndefined (Data)
  , "timeoutInSeconds" :: NullOrUndefined (TimeoutInSeconds)
  , "heartbeatInSeconds" :: NullOrUndefined (TimeoutInSeconds)
  }
derive instance newtypeActivityScheduledEventDetails :: Newtype ActivityScheduledEventDetails _
derive instance repGenericActivityScheduledEventDetails :: Generic ActivityScheduledEventDetails _
instance showActivityScheduledEventDetails :: Show ActivityScheduledEventDetails where show = genericShow
instance decodeActivityScheduledEventDetails :: Decode ActivityScheduledEventDetails where decode = genericDecode options
instance encodeActivityScheduledEventDetails :: Encode ActivityScheduledEventDetails where encode = genericEncode options

-- | Constructs ActivityScheduledEventDetails from required parameters
newActivityScheduledEventDetails :: Arn -> ActivityScheduledEventDetails
newActivityScheduledEventDetails _resource = ActivityScheduledEventDetails { "resource": _resource, "heartbeatInSeconds": (NullOrUndefined Nothing), "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }

-- | Constructs ActivityScheduledEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityScheduledEventDetails' :: Arn -> ( { "resource" :: (Arn) , "input" :: NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined (TimeoutInSeconds) , "heartbeatInSeconds" :: NullOrUndefined (TimeoutInSeconds) } -> {"resource" :: (Arn) , "input" :: NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined (TimeoutInSeconds) , "heartbeatInSeconds" :: NullOrUndefined (TimeoutInSeconds) } ) -> ActivityScheduledEventDetails
newActivityScheduledEventDetails' _resource customize = (ActivityScheduledEventDetails <<< customize) { "resource": _resource, "heartbeatInSeconds": (NullOrUndefined Nothing), "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }



-- | <p>Contains details about the start of an activity during an execution.</p>
newtype ActivityStartedEventDetails = ActivityStartedEventDetails 
  { "workerName" :: NullOrUndefined (Identity)
  }
derive instance newtypeActivityStartedEventDetails :: Newtype ActivityStartedEventDetails _
derive instance repGenericActivityStartedEventDetails :: Generic ActivityStartedEventDetails _
instance showActivityStartedEventDetails :: Show ActivityStartedEventDetails where show = genericShow
instance decodeActivityStartedEventDetails :: Decode ActivityStartedEventDetails where decode = genericDecode options
instance encodeActivityStartedEventDetails :: Encode ActivityStartedEventDetails where encode = genericEncode options

-- | Constructs ActivityStartedEventDetails from required parameters
newActivityStartedEventDetails :: ActivityStartedEventDetails
newActivityStartedEventDetails  = ActivityStartedEventDetails { "workerName": (NullOrUndefined Nothing) }

-- | Constructs ActivityStartedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityStartedEventDetails' :: ( { "workerName" :: NullOrUndefined (Identity) } -> {"workerName" :: NullOrUndefined (Identity) } ) -> ActivityStartedEventDetails
newActivityStartedEventDetails'  customize = (ActivityStartedEventDetails <<< customize) { "workerName": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity which successfully terminated during an execution.</p>
newtype ActivitySucceededEventDetails = ActivitySucceededEventDetails 
  { "output" :: NullOrUndefined (Data)
  }
derive instance newtypeActivitySucceededEventDetails :: Newtype ActivitySucceededEventDetails _
derive instance repGenericActivitySucceededEventDetails :: Generic ActivitySucceededEventDetails _
instance showActivitySucceededEventDetails :: Show ActivitySucceededEventDetails where show = genericShow
instance decodeActivitySucceededEventDetails :: Decode ActivitySucceededEventDetails where decode = genericDecode options
instance encodeActivitySucceededEventDetails :: Encode ActivitySucceededEventDetails where encode = genericEncode options

-- | Constructs ActivitySucceededEventDetails from required parameters
newActivitySucceededEventDetails :: ActivitySucceededEventDetails
newActivitySucceededEventDetails  = ActivitySucceededEventDetails { "output": (NullOrUndefined Nothing) }

-- | Constructs ActivitySucceededEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivitySucceededEventDetails' :: ( { "output" :: NullOrUndefined (Data) } -> {"output" :: NullOrUndefined (Data) } ) -> ActivitySucceededEventDetails
newActivitySucceededEventDetails'  customize = (ActivitySucceededEventDetails <<< customize) { "output": (NullOrUndefined Nothing) }



-- | <p>Contains details about an activity timeout which occurred during an execution.</p>
newtype ActivityTimedOutEventDetails = ActivityTimedOutEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeActivityTimedOutEventDetails :: Newtype ActivityTimedOutEventDetails _
derive instance repGenericActivityTimedOutEventDetails :: Generic ActivityTimedOutEventDetails _
instance showActivityTimedOutEventDetails :: Show ActivityTimedOutEventDetails where show = genericShow
instance decodeActivityTimedOutEventDetails :: Decode ActivityTimedOutEventDetails where decode = genericDecode options
instance encodeActivityTimedOutEventDetails :: Encode ActivityTimedOutEventDetails where encode = genericEncode options

-- | Constructs ActivityTimedOutEventDetails from required parameters
newActivityTimedOutEventDetails :: ActivityTimedOutEventDetails
newActivityTimedOutEventDetails  = ActivityTimedOutEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ActivityTimedOutEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityTimedOutEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> ActivityTimedOutEventDetails
newActivityTimedOutEventDetails'  customize = (ActivityTimedOutEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The maximum number of workers concurrently polling for activity tasks has been reached.</p>
newtype ActivityWorkerLimitExceeded = ActivityWorkerLimitExceeded 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeActivityWorkerLimitExceeded :: Newtype ActivityWorkerLimitExceeded _
derive instance repGenericActivityWorkerLimitExceeded :: Generic ActivityWorkerLimitExceeded _
instance showActivityWorkerLimitExceeded :: Show ActivityWorkerLimitExceeded where show = genericShow
instance decodeActivityWorkerLimitExceeded :: Decode ActivityWorkerLimitExceeded where decode = genericDecode options
instance encodeActivityWorkerLimitExceeded :: Encode ActivityWorkerLimitExceeded where encode = genericEncode options

-- | Constructs ActivityWorkerLimitExceeded from required parameters
newActivityWorkerLimitExceeded :: ActivityWorkerLimitExceeded
newActivityWorkerLimitExceeded  = ActivityWorkerLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs ActivityWorkerLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newActivityWorkerLimitExceeded' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ActivityWorkerLimitExceeded
newActivityWorkerLimitExceeded'  customize = (ActivityWorkerLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where show = genericShow
instance decodeArn :: Decode Arn where decode = genericDecode options
instance encodeArn :: Encode Arn where encode = genericEncode options



newtype Cause = Cause String
derive instance newtypeCause :: Newtype Cause _
derive instance repGenericCause :: Generic Cause _
instance showCause :: Show Cause where show = genericShow
instance decodeCause :: Decode Cause where decode = genericDecode options
instance encodeCause :: Encode Cause where encode = genericEncode options



newtype CreateActivityInput = CreateActivityInput 
  { "name" :: (Name)
  }
derive instance newtypeCreateActivityInput :: Newtype CreateActivityInput _
derive instance repGenericCreateActivityInput :: Generic CreateActivityInput _
instance showCreateActivityInput :: Show CreateActivityInput where show = genericShow
instance decodeCreateActivityInput :: Decode CreateActivityInput where decode = genericDecode options
instance encodeCreateActivityInput :: Encode CreateActivityInput where encode = genericEncode options

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
instance showCreateActivityOutput :: Show CreateActivityOutput where show = genericShow
instance decodeCreateActivityOutput :: Decode CreateActivityOutput where decode = genericDecode options
instance encodeCreateActivityOutput :: Encode CreateActivityOutput where encode = genericEncode options

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
instance showCreateStateMachineInput :: Show CreateStateMachineInput where show = genericShow
instance decodeCreateStateMachineInput :: Decode CreateStateMachineInput where decode = genericDecode options
instance encodeCreateStateMachineInput :: Encode CreateStateMachineInput where encode = genericEncode options

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
instance showCreateStateMachineOutput :: Show CreateStateMachineOutput where show = genericShow
instance decodeCreateStateMachineOutput :: Decode CreateStateMachineOutput where decode = genericDecode options
instance encodeCreateStateMachineOutput :: Encode CreateStateMachineOutput where encode = genericEncode options

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
instance showData :: Show Data where show = genericShow
instance decodeData :: Decode Data where decode = genericDecode options
instance encodeData :: Encode Data where encode = genericEncode options



newtype Definition = Definition String
derive instance newtypeDefinition :: Newtype Definition _
derive instance repGenericDefinition :: Generic Definition _
instance showDefinition :: Show Definition where show = genericShow
instance decodeDefinition :: Decode Definition where decode = genericDecode options
instance encodeDefinition :: Encode Definition where encode = genericEncode options



newtype DeleteActivityInput = DeleteActivityInput 
  { "activityArn" :: (Arn)
  }
derive instance newtypeDeleteActivityInput :: Newtype DeleteActivityInput _
derive instance repGenericDeleteActivityInput :: Generic DeleteActivityInput _
instance showDeleteActivityInput :: Show DeleteActivityInput where show = genericShow
instance decodeDeleteActivityInput :: Decode DeleteActivityInput where decode = genericDecode options
instance encodeDeleteActivityInput :: Encode DeleteActivityInput where encode = genericEncode options

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
instance showDeleteActivityOutput :: Show DeleteActivityOutput where show = genericShow
instance decodeDeleteActivityOutput :: Decode DeleteActivityOutput where decode = genericDecode options
instance encodeDeleteActivityOutput :: Encode DeleteActivityOutput where encode = genericEncode options



newtype DeleteStateMachineInput = DeleteStateMachineInput 
  { "stateMachineArn" :: (Arn)
  }
derive instance newtypeDeleteStateMachineInput :: Newtype DeleteStateMachineInput _
derive instance repGenericDeleteStateMachineInput :: Generic DeleteStateMachineInput _
instance showDeleteStateMachineInput :: Show DeleteStateMachineInput where show = genericShow
instance decodeDeleteStateMachineInput :: Decode DeleteStateMachineInput where decode = genericDecode options
instance encodeDeleteStateMachineInput :: Encode DeleteStateMachineInput where encode = genericEncode options

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
instance showDeleteStateMachineOutput :: Show DeleteStateMachineOutput where show = genericShow
instance decodeDeleteStateMachineOutput :: Decode DeleteStateMachineOutput where decode = genericDecode options
instance encodeDeleteStateMachineOutput :: Encode DeleteStateMachineOutput where encode = genericEncode options



newtype DescribeActivityInput = DescribeActivityInput 
  { "activityArn" :: (Arn)
  }
derive instance newtypeDescribeActivityInput :: Newtype DescribeActivityInput _
derive instance repGenericDescribeActivityInput :: Generic DescribeActivityInput _
instance showDescribeActivityInput :: Show DescribeActivityInput where show = genericShow
instance decodeDescribeActivityInput :: Decode DescribeActivityInput where decode = genericDecode options
instance encodeDescribeActivityInput :: Encode DescribeActivityInput where encode = genericEncode options

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
instance showDescribeActivityOutput :: Show DescribeActivityOutput where show = genericShow
instance decodeDescribeActivityOutput :: Decode DescribeActivityOutput where decode = genericDecode options
instance encodeDescribeActivityOutput :: Encode DescribeActivityOutput where encode = genericEncode options

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
instance showDescribeExecutionInput :: Show DescribeExecutionInput where show = genericShow
instance decodeDescribeExecutionInput :: Decode DescribeExecutionInput where decode = genericDecode options
instance encodeDescribeExecutionInput :: Encode DescribeExecutionInput where encode = genericEncode options

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
  , "name" :: NullOrUndefined (Name)
  , "status" :: (ExecutionStatus)
  , "startDate" :: (Types.Timestamp)
  , "stopDate" :: NullOrUndefined (Types.Timestamp)
  , "input" :: (Data)
  , "output" :: NullOrUndefined (Data)
  }
derive instance newtypeDescribeExecutionOutput :: Newtype DescribeExecutionOutput _
derive instance repGenericDescribeExecutionOutput :: Generic DescribeExecutionOutput _
instance showDescribeExecutionOutput :: Show DescribeExecutionOutput where show = genericShow
instance decodeDescribeExecutionOutput :: Decode DescribeExecutionOutput where decode = genericDecode options
instance encodeDescribeExecutionOutput :: Encode DescribeExecutionOutput where encode = genericEncode options

-- | Constructs DescribeExecutionOutput from required parameters
newDescribeExecutionOutput :: Arn -> Data -> Types.Timestamp -> Arn -> ExecutionStatus -> DescribeExecutionOutput
newDescribeExecutionOutput _executionArn _input _startDate _stateMachineArn _status = DescribeExecutionOutput { "executionArn": _executionArn, "input": _input, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "name": (NullOrUndefined Nothing), "output": (NullOrUndefined Nothing), "stopDate": (NullOrUndefined Nothing) }

-- | Constructs DescribeExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExecutionOutput' :: Arn -> Data -> Types.Timestamp -> Arn -> ExecutionStatus -> ( { "executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: NullOrUndefined (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined (Types.Timestamp) , "input" :: (Data) , "output" :: NullOrUndefined (Data) } -> {"executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: NullOrUndefined (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined (Types.Timestamp) , "input" :: (Data) , "output" :: NullOrUndefined (Data) } ) -> DescribeExecutionOutput
newDescribeExecutionOutput' _executionArn _input _startDate _stateMachineArn _status customize = (DescribeExecutionOutput <<< customize) { "executionArn": _executionArn, "input": _input, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "name": (NullOrUndefined Nothing), "output": (NullOrUndefined Nothing), "stopDate": (NullOrUndefined Nothing) }



newtype DescribeStateMachineForExecutionInput = DescribeStateMachineForExecutionInput 
  { "executionArn" :: (Arn)
  }
derive instance newtypeDescribeStateMachineForExecutionInput :: Newtype DescribeStateMachineForExecutionInput _
derive instance repGenericDescribeStateMachineForExecutionInput :: Generic DescribeStateMachineForExecutionInput _
instance showDescribeStateMachineForExecutionInput :: Show DescribeStateMachineForExecutionInput where show = genericShow
instance decodeDescribeStateMachineForExecutionInput :: Decode DescribeStateMachineForExecutionInput where decode = genericDecode options
instance encodeDescribeStateMachineForExecutionInput :: Encode DescribeStateMachineForExecutionInput where encode = genericEncode options

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
instance showDescribeStateMachineForExecutionOutput :: Show DescribeStateMachineForExecutionOutput where show = genericShow
instance decodeDescribeStateMachineForExecutionOutput :: Decode DescribeStateMachineForExecutionOutput where decode = genericDecode options
instance encodeDescribeStateMachineForExecutionOutput :: Encode DescribeStateMachineForExecutionOutput where encode = genericEncode options

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
instance showDescribeStateMachineInput :: Show DescribeStateMachineInput where show = genericShow
instance decodeDescribeStateMachineInput :: Decode DescribeStateMachineInput where decode = genericDecode options
instance encodeDescribeStateMachineInput :: Encode DescribeStateMachineInput where encode = genericEncode options

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
  , "status" :: NullOrUndefined (StateMachineStatus)
  , "definition" :: (Definition)
  , "roleArn" :: (Arn)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeDescribeStateMachineOutput :: Newtype DescribeStateMachineOutput _
derive instance repGenericDescribeStateMachineOutput :: Generic DescribeStateMachineOutput _
instance showDescribeStateMachineOutput :: Show DescribeStateMachineOutput where show = genericShow
instance decodeDescribeStateMachineOutput :: Decode DescribeStateMachineOutput where decode = genericDecode options
instance encodeDescribeStateMachineOutput :: Encode DescribeStateMachineOutput where encode = genericEncode options

-- | Constructs DescribeStateMachineOutput from required parameters
newDescribeStateMachineOutput :: Types.Timestamp -> Definition -> Name -> Arn -> Arn -> DescribeStateMachineOutput
newDescribeStateMachineOutput _creationDate _definition _name _roleArn _stateMachineArn = DescribeStateMachineOutput { "creationDate": _creationDate, "definition": _definition, "name": _name, "roleArn": _roleArn, "stateMachineArn": _stateMachineArn, "status": (NullOrUndefined Nothing) }

-- | Constructs DescribeStateMachineOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStateMachineOutput' :: Types.Timestamp -> Definition -> Name -> Arn -> Arn -> ( { "stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: NullOrUndefined (StateMachineStatus) , "definition" :: (Definition) , "roleArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } -> {"stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: NullOrUndefined (StateMachineStatus) , "definition" :: (Definition) , "roleArn" :: (Arn) , "creationDate" :: (Types.Timestamp) } ) -> DescribeStateMachineOutput
newDescribeStateMachineOutput' _creationDate _definition _name _roleArn _stateMachineArn customize = (DescribeStateMachineOutput <<< customize) { "creationDate": _creationDate, "definition": _definition, "name": _name, "roleArn": _roleArn, "stateMachineArn": _stateMachineArn, "status": (NullOrUndefined Nothing) }



newtype Error = Error String
derive instance newtypeError :: Newtype Error _
derive instance repGenericError :: Generic Error _
instance showError :: Show Error where show = genericShow
instance decodeError :: Decode Error where decode = genericDecode options
instance encodeError :: Encode Error where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype EventId = EventId Number
derive instance newtypeEventId :: Newtype EventId _
derive instance repGenericEventId :: Generic EventId _
instance showEventId :: Show EventId where show = genericShow
instance decodeEventId :: Decode EventId where decode = genericDecode options
instance encodeEventId :: Encode EventId where encode = genericEncode options



-- | <p>Contains details about an abort of an execution.</p>
newtype ExecutionAbortedEventDetails = ExecutionAbortedEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeExecutionAbortedEventDetails :: Newtype ExecutionAbortedEventDetails _
derive instance repGenericExecutionAbortedEventDetails :: Generic ExecutionAbortedEventDetails _
instance showExecutionAbortedEventDetails :: Show ExecutionAbortedEventDetails where show = genericShow
instance decodeExecutionAbortedEventDetails :: Decode ExecutionAbortedEventDetails where decode = genericDecode options
instance encodeExecutionAbortedEventDetails :: Encode ExecutionAbortedEventDetails where encode = genericEncode options

-- | Constructs ExecutionAbortedEventDetails from required parameters
newExecutionAbortedEventDetails :: ExecutionAbortedEventDetails
newExecutionAbortedEventDetails  = ExecutionAbortedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ExecutionAbortedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionAbortedEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> ExecutionAbortedEventDetails
newExecutionAbortedEventDetails'  customize = (ExecutionAbortedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The execution has the same <code>name</code> as another execution (but a different <code>input</code>).</p> <note> <p>Executions with the same <code>name</code> and <code>input</code> are considered idempotent.</p> </note>
newtype ExecutionAlreadyExists = ExecutionAlreadyExists 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExecutionAlreadyExists :: Newtype ExecutionAlreadyExists _
derive instance repGenericExecutionAlreadyExists :: Generic ExecutionAlreadyExists _
instance showExecutionAlreadyExists :: Show ExecutionAlreadyExists where show = genericShow
instance decodeExecutionAlreadyExists :: Decode ExecutionAlreadyExists where decode = genericDecode options
instance encodeExecutionAlreadyExists :: Encode ExecutionAlreadyExists where encode = genericEncode options

-- | Constructs ExecutionAlreadyExists from required parameters
newExecutionAlreadyExists :: ExecutionAlreadyExists
newExecutionAlreadyExists  = ExecutionAlreadyExists { "message": (NullOrUndefined Nothing) }

-- | Constructs ExecutionAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionAlreadyExists' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ExecutionAlreadyExists
newExecutionAlreadyExists'  customize = (ExecutionAlreadyExists <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified execution does not exist.</p>
newtype ExecutionDoesNotExist = ExecutionDoesNotExist 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExecutionDoesNotExist :: Newtype ExecutionDoesNotExist _
derive instance repGenericExecutionDoesNotExist :: Generic ExecutionDoesNotExist _
instance showExecutionDoesNotExist :: Show ExecutionDoesNotExist where show = genericShow
instance decodeExecutionDoesNotExist :: Decode ExecutionDoesNotExist where decode = genericDecode options
instance encodeExecutionDoesNotExist :: Encode ExecutionDoesNotExist where encode = genericEncode options

-- | Constructs ExecutionDoesNotExist from required parameters
newExecutionDoesNotExist :: ExecutionDoesNotExist
newExecutionDoesNotExist  = ExecutionDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs ExecutionDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionDoesNotExist' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ExecutionDoesNotExist
newExecutionDoesNotExist'  customize = (ExecutionDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains details about an execution failure event.</p>
newtype ExecutionFailedEventDetails = ExecutionFailedEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeExecutionFailedEventDetails :: Newtype ExecutionFailedEventDetails _
derive instance repGenericExecutionFailedEventDetails :: Generic ExecutionFailedEventDetails _
instance showExecutionFailedEventDetails :: Show ExecutionFailedEventDetails where show = genericShow
instance decodeExecutionFailedEventDetails :: Decode ExecutionFailedEventDetails where decode = genericDecode options
instance encodeExecutionFailedEventDetails :: Encode ExecutionFailedEventDetails where encode = genericEncode options

-- | Constructs ExecutionFailedEventDetails from required parameters
newExecutionFailedEventDetails :: ExecutionFailedEventDetails
newExecutionFailedEventDetails  = ExecutionFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ExecutionFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionFailedEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> ExecutionFailedEventDetails
newExecutionFailedEventDetails'  customize = (ExecutionFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.</p>
newtype ExecutionLimitExceeded = ExecutionLimitExceeded 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExecutionLimitExceeded :: Newtype ExecutionLimitExceeded _
derive instance repGenericExecutionLimitExceeded :: Generic ExecutionLimitExceeded _
instance showExecutionLimitExceeded :: Show ExecutionLimitExceeded where show = genericShow
instance decodeExecutionLimitExceeded :: Decode ExecutionLimitExceeded where decode = genericDecode options
instance encodeExecutionLimitExceeded :: Encode ExecutionLimitExceeded where encode = genericEncode options

-- | Constructs ExecutionLimitExceeded from required parameters
newExecutionLimitExceeded :: ExecutionLimitExceeded
newExecutionLimitExceeded  = ExecutionLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs ExecutionLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionLimitExceeded' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ExecutionLimitExceeded
newExecutionLimitExceeded'  customize = (ExecutionLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ExecutionList = ExecutionList (Array ExecutionListItem)
derive instance newtypeExecutionList :: Newtype ExecutionList _
derive instance repGenericExecutionList :: Generic ExecutionList _
instance showExecutionList :: Show ExecutionList where show = genericShow
instance decodeExecutionList :: Decode ExecutionList where decode = genericDecode options
instance encodeExecutionList :: Encode ExecutionList where encode = genericEncode options



-- | <p>Contains details about an execution.</p>
newtype ExecutionListItem = ExecutionListItem 
  { "executionArn" :: (Arn)
  , "stateMachineArn" :: (Arn)
  , "name" :: (Name)
  , "status" :: (ExecutionStatus)
  , "startDate" :: (Types.Timestamp)
  , "stopDate" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeExecutionListItem :: Newtype ExecutionListItem _
derive instance repGenericExecutionListItem :: Generic ExecutionListItem _
instance showExecutionListItem :: Show ExecutionListItem where show = genericShow
instance decodeExecutionListItem :: Decode ExecutionListItem where decode = genericDecode options
instance encodeExecutionListItem :: Encode ExecutionListItem where encode = genericEncode options

-- | Constructs ExecutionListItem from required parameters
newExecutionListItem :: Arn -> Name -> Types.Timestamp -> Arn -> ExecutionStatus -> ExecutionListItem
newExecutionListItem _executionArn _name _startDate _stateMachineArn _status = ExecutionListItem { "executionArn": _executionArn, "name": _name, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "stopDate": (NullOrUndefined Nothing) }

-- | Constructs ExecutionListItem's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionListItem' :: Arn -> Name -> Types.Timestamp -> Arn -> ExecutionStatus -> ( { "executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined (Types.Timestamp) } -> {"executionArn" :: (Arn) , "stateMachineArn" :: (Arn) , "name" :: (Name) , "status" :: (ExecutionStatus) , "startDate" :: (Types.Timestamp) , "stopDate" :: NullOrUndefined (Types.Timestamp) } ) -> ExecutionListItem
newExecutionListItem' _executionArn _name _startDate _stateMachineArn _status customize = (ExecutionListItem <<< customize) { "executionArn": _executionArn, "name": _name, "startDate": _startDate, "stateMachineArn": _stateMachineArn, "status": _status, "stopDate": (NullOrUndefined Nothing) }



-- | <p>Contains details about the start of the execution.</p>
newtype ExecutionStartedEventDetails = ExecutionStartedEventDetails 
  { "input" :: NullOrUndefined (Data)
  , "roleArn" :: NullOrUndefined (Arn)
  }
derive instance newtypeExecutionStartedEventDetails :: Newtype ExecutionStartedEventDetails _
derive instance repGenericExecutionStartedEventDetails :: Generic ExecutionStartedEventDetails _
instance showExecutionStartedEventDetails :: Show ExecutionStartedEventDetails where show = genericShow
instance decodeExecutionStartedEventDetails :: Decode ExecutionStartedEventDetails where decode = genericDecode options
instance encodeExecutionStartedEventDetails :: Encode ExecutionStartedEventDetails where encode = genericEncode options

-- | Constructs ExecutionStartedEventDetails from required parameters
newExecutionStartedEventDetails :: ExecutionStartedEventDetails
newExecutionStartedEventDetails  = ExecutionStartedEventDetails { "input": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }

-- | Constructs ExecutionStartedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionStartedEventDetails' :: ( { "input" :: NullOrUndefined (Data) , "roleArn" :: NullOrUndefined (Arn) } -> {"input" :: NullOrUndefined (Data) , "roleArn" :: NullOrUndefined (Arn) } ) -> ExecutionStartedEventDetails
newExecutionStartedEventDetails'  customize = (ExecutionStartedEventDetails <<< customize) { "input": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }



newtype ExecutionStatus = ExecutionStatus String
derive instance newtypeExecutionStatus :: Newtype ExecutionStatus _
derive instance repGenericExecutionStatus :: Generic ExecutionStatus _
instance showExecutionStatus :: Show ExecutionStatus where show = genericShow
instance decodeExecutionStatus :: Decode ExecutionStatus where decode = genericDecode options
instance encodeExecutionStatus :: Encode ExecutionStatus where encode = genericEncode options



-- | <p>Contains details about the successful termination of the execution.</p>
newtype ExecutionSucceededEventDetails = ExecutionSucceededEventDetails 
  { "output" :: NullOrUndefined (Data)
  }
derive instance newtypeExecutionSucceededEventDetails :: Newtype ExecutionSucceededEventDetails _
derive instance repGenericExecutionSucceededEventDetails :: Generic ExecutionSucceededEventDetails _
instance showExecutionSucceededEventDetails :: Show ExecutionSucceededEventDetails where show = genericShow
instance decodeExecutionSucceededEventDetails :: Decode ExecutionSucceededEventDetails where decode = genericDecode options
instance encodeExecutionSucceededEventDetails :: Encode ExecutionSucceededEventDetails where encode = genericEncode options

-- | Constructs ExecutionSucceededEventDetails from required parameters
newExecutionSucceededEventDetails :: ExecutionSucceededEventDetails
newExecutionSucceededEventDetails  = ExecutionSucceededEventDetails { "output": (NullOrUndefined Nothing) }

-- | Constructs ExecutionSucceededEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionSucceededEventDetails' :: ( { "output" :: NullOrUndefined (Data) } -> {"output" :: NullOrUndefined (Data) } ) -> ExecutionSucceededEventDetails
newExecutionSucceededEventDetails'  customize = (ExecutionSucceededEventDetails <<< customize) { "output": (NullOrUndefined Nothing) }



-- | <p>Contains details about the execution timeout which occurred during the execution.</p>
newtype ExecutionTimedOutEventDetails = ExecutionTimedOutEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeExecutionTimedOutEventDetails :: Newtype ExecutionTimedOutEventDetails _
derive instance repGenericExecutionTimedOutEventDetails :: Generic ExecutionTimedOutEventDetails _
instance showExecutionTimedOutEventDetails :: Show ExecutionTimedOutEventDetails where show = genericShow
instance decodeExecutionTimedOutEventDetails :: Decode ExecutionTimedOutEventDetails where decode = genericDecode options
instance encodeExecutionTimedOutEventDetails :: Encode ExecutionTimedOutEventDetails where encode = genericEncode options

-- | Constructs ExecutionTimedOutEventDetails from required parameters
newExecutionTimedOutEventDetails :: ExecutionTimedOutEventDetails
newExecutionTimedOutEventDetails  = ExecutionTimedOutEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs ExecutionTimedOutEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExecutionTimedOutEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> ExecutionTimedOutEventDetails
newExecutionTimedOutEventDetails'  customize = (ExecutionTimedOutEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype GetActivityTaskInput = GetActivityTaskInput 
  { "activityArn" :: (Arn)
  , "workerName" :: NullOrUndefined (Name)
  }
derive instance newtypeGetActivityTaskInput :: Newtype GetActivityTaskInput _
derive instance repGenericGetActivityTaskInput :: Generic GetActivityTaskInput _
instance showGetActivityTaskInput :: Show GetActivityTaskInput where show = genericShow
instance decodeGetActivityTaskInput :: Decode GetActivityTaskInput where decode = genericDecode options
instance encodeGetActivityTaskInput :: Encode GetActivityTaskInput where encode = genericEncode options

-- | Constructs GetActivityTaskInput from required parameters
newGetActivityTaskInput :: Arn -> GetActivityTaskInput
newGetActivityTaskInput _activityArn = GetActivityTaskInput { "activityArn": _activityArn, "workerName": (NullOrUndefined Nothing) }

-- | Constructs GetActivityTaskInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetActivityTaskInput' :: Arn -> ( { "activityArn" :: (Arn) , "workerName" :: NullOrUndefined (Name) } -> {"activityArn" :: (Arn) , "workerName" :: NullOrUndefined (Name) } ) -> GetActivityTaskInput
newGetActivityTaskInput' _activityArn customize = (GetActivityTaskInput <<< customize) { "activityArn": _activityArn, "workerName": (NullOrUndefined Nothing) }



newtype GetActivityTaskOutput = GetActivityTaskOutput 
  { "taskToken" :: NullOrUndefined (TaskToken)
  , "input" :: NullOrUndefined (Data)
  }
derive instance newtypeGetActivityTaskOutput :: Newtype GetActivityTaskOutput _
derive instance repGenericGetActivityTaskOutput :: Generic GetActivityTaskOutput _
instance showGetActivityTaskOutput :: Show GetActivityTaskOutput where show = genericShow
instance decodeGetActivityTaskOutput :: Decode GetActivityTaskOutput where decode = genericDecode options
instance encodeGetActivityTaskOutput :: Encode GetActivityTaskOutput where encode = genericEncode options

-- | Constructs GetActivityTaskOutput from required parameters
newGetActivityTaskOutput :: GetActivityTaskOutput
newGetActivityTaskOutput  = GetActivityTaskOutput { "input": (NullOrUndefined Nothing), "taskToken": (NullOrUndefined Nothing) }

-- | Constructs GetActivityTaskOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetActivityTaskOutput' :: ( { "taskToken" :: NullOrUndefined (TaskToken) , "input" :: NullOrUndefined (Data) } -> {"taskToken" :: NullOrUndefined (TaskToken) , "input" :: NullOrUndefined (Data) } ) -> GetActivityTaskOutput
newGetActivityTaskOutput'  customize = (GetActivityTaskOutput <<< customize) { "input": (NullOrUndefined Nothing), "taskToken": (NullOrUndefined Nothing) }



newtype GetExecutionHistoryInput = GetExecutionHistoryInput 
  { "executionArn" :: (Arn)
  , "maxResults" :: NullOrUndefined (PageSize)
  , "reverseOrder" :: NullOrUndefined (ReverseOrder)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeGetExecutionHistoryInput :: Newtype GetExecutionHistoryInput _
derive instance repGenericGetExecutionHistoryInput :: Generic GetExecutionHistoryInput _
instance showGetExecutionHistoryInput :: Show GetExecutionHistoryInput where show = genericShow
instance decodeGetExecutionHistoryInput :: Decode GetExecutionHistoryInput where decode = genericDecode options
instance encodeGetExecutionHistoryInput :: Encode GetExecutionHistoryInput where encode = genericEncode options

-- | Constructs GetExecutionHistoryInput from required parameters
newGetExecutionHistoryInput :: Arn -> GetExecutionHistoryInput
newGetExecutionHistoryInput _executionArn = GetExecutionHistoryInput { "executionArn": _executionArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "reverseOrder": (NullOrUndefined Nothing) }

-- | Constructs GetExecutionHistoryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetExecutionHistoryInput' :: Arn -> ( { "executionArn" :: (Arn) , "maxResults" :: NullOrUndefined (PageSize) , "reverseOrder" :: NullOrUndefined (ReverseOrder) , "nextToken" :: NullOrUndefined (PageToken) } -> {"executionArn" :: (Arn) , "maxResults" :: NullOrUndefined (PageSize) , "reverseOrder" :: NullOrUndefined (ReverseOrder) , "nextToken" :: NullOrUndefined (PageToken) } ) -> GetExecutionHistoryInput
newGetExecutionHistoryInput' _executionArn customize = (GetExecutionHistoryInput <<< customize) { "executionArn": _executionArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "reverseOrder": (NullOrUndefined Nothing) }



newtype GetExecutionHistoryOutput = GetExecutionHistoryOutput 
  { "events" :: (HistoryEventList)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeGetExecutionHistoryOutput :: Newtype GetExecutionHistoryOutput _
derive instance repGenericGetExecutionHistoryOutput :: Generic GetExecutionHistoryOutput _
instance showGetExecutionHistoryOutput :: Show GetExecutionHistoryOutput where show = genericShow
instance decodeGetExecutionHistoryOutput :: Decode GetExecutionHistoryOutput where decode = genericDecode options
instance encodeGetExecutionHistoryOutput :: Encode GetExecutionHistoryOutput where encode = genericEncode options

-- | Constructs GetExecutionHistoryOutput from required parameters
newGetExecutionHistoryOutput :: HistoryEventList -> GetExecutionHistoryOutput
newGetExecutionHistoryOutput _events = GetExecutionHistoryOutput { "events": _events, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs GetExecutionHistoryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetExecutionHistoryOutput' :: HistoryEventList -> ( { "events" :: (HistoryEventList) , "nextToken" :: NullOrUndefined (PageToken) } -> {"events" :: (HistoryEventList) , "nextToken" :: NullOrUndefined (PageToken) } ) -> GetExecutionHistoryOutput
newGetExecutionHistoryOutput' _events customize = (GetExecutionHistoryOutput <<< customize) { "events": _events, "nextToken": (NullOrUndefined Nothing) }



-- | <p>Contains details about the events of an execution.</p>
newtype HistoryEvent = HistoryEvent 
  { "timestamp" :: (Types.Timestamp)
  , "type" :: (HistoryEventType)
  , "id" :: (EventId)
  , "previousEventId" :: NullOrUndefined (EventId)
  , "activityFailedEventDetails" :: NullOrUndefined (ActivityFailedEventDetails)
  , "activityScheduleFailedEventDetails" :: NullOrUndefined (ActivityScheduleFailedEventDetails)
  , "activityScheduledEventDetails" :: NullOrUndefined (ActivityScheduledEventDetails)
  , "activityStartedEventDetails" :: NullOrUndefined (ActivityStartedEventDetails)
  , "activitySucceededEventDetails" :: NullOrUndefined (ActivitySucceededEventDetails)
  , "activityTimedOutEventDetails" :: NullOrUndefined (ActivityTimedOutEventDetails)
  , "executionFailedEventDetails" :: NullOrUndefined (ExecutionFailedEventDetails)
  , "executionStartedEventDetails" :: NullOrUndefined (ExecutionStartedEventDetails)
  , "executionSucceededEventDetails" :: NullOrUndefined (ExecutionSucceededEventDetails)
  , "executionAbortedEventDetails" :: NullOrUndefined (ExecutionAbortedEventDetails)
  , "executionTimedOutEventDetails" :: NullOrUndefined (ExecutionTimedOutEventDetails)
  , "lambdaFunctionFailedEventDetails" :: NullOrUndefined (LambdaFunctionFailedEventDetails)
  , "lambdaFunctionScheduleFailedEventDetails" :: NullOrUndefined (LambdaFunctionScheduleFailedEventDetails)
  , "lambdaFunctionScheduledEventDetails" :: NullOrUndefined (LambdaFunctionScheduledEventDetails)
  , "lambdaFunctionStartFailedEventDetails" :: NullOrUndefined (LambdaFunctionStartFailedEventDetails)
  , "lambdaFunctionSucceededEventDetails" :: NullOrUndefined (LambdaFunctionSucceededEventDetails)
  , "lambdaFunctionTimedOutEventDetails" :: NullOrUndefined (LambdaFunctionTimedOutEventDetails)
  , "stateEnteredEventDetails" :: NullOrUndefined (StateEnteredEventDetails)
  , "stateExitedEventDetails" :: NullOrUndefined (StateExitedEventDetails)
  }
derive instance newtypeHistoryEvent :: Newtype HistoryEvent _
derive instance repGenericHistoryEvent :: Generic HistoryEvent _
instance showHistoryEvent :: Show HistoryEvent where show = genericShow
instance decodeHistoryEvent :: Decode HistoryEvent where decode = genericDecode options
instance encodeHistoryEvent :: Encode HistoryEvent where encode = genericEncode options

-- | Constructs HistoryEvent from required parameters
newHistoryEvent :: EventId -> Types.Timestamp -> HistoryEventType -> HistoryEvent
newHistoryEvent _id _timestamp _type = HistoryEvent { "id": _id, "timestamp": _timestamp, "type": _type, "activityFailedEventDetails": (NullOrUndefined Nothing), "activityScheduleFailedEventDetails": (NullOrUndefined Nothing), "activityScheduledEventDetails": (NullOrUndefined Nothing), "activityStartedEventDetails": (NullOrUndefined Nothing), "activitySucceededEventDetails": (NullOrUndefined Nothing), "activityTimedOutEventDetails": (NullOrUndefined Nothing), "executionAbortedEventDetails": (NullOrUndefined Nothing), "executionFailedEventDetails": (NullOrUndefined Nothing), "executionStartedEventDetails": (NullOrUndefined Nothing), "executionSucceededEventDetails": (NullOrUndefined Nothing), "executionTimedOutEventDetails": (NullOrUndefined Nothing), "lambdaFunctionFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduleFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduledEventDetails": (NullOrUndefined Nothing), "lambdaFunctionStartFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionSucceededEventDetails": (NullOrUndefined Nothing), "lambdaFunctionTimedOutEventDetails": (NullOrUndefined Nothing), "previousEventId": (NullOrUndefined Nothing), "stateEnteredEventDetails": (NullOrUndefined Nothing), "stateExitedEventDetails": (NullOrUndefined Nothing) }

-- | Constructs HistoryEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHistoryEvent' :: EventId -> Types.Timestamp -> HistoryEventType -> ( { "timestamp" :: (Types.Timestamp) , "type" :: (HistoryEventType) , "id" :: (EventId) , "previousEventId" :: NullOrUndefined (EventId) , "activityFailedEventDetails" :: NullOrUndefined (ActivityFailedEventDetails) , "activityScheduleFailedEventDetails" :: NullOrUndefined (ActivityScheduleFailedEventDetails) , "activityScheduledEventDetails" :: NullOrUndefined (ActivityScheduledEventDetails) , "activityStartedEventDetails" :: NullOrUndefined (ActivityStartedEventDetails) , "activitySucceededEventDetails" :: NullOrUndefined (ActivitySucceededEventDetails) , "activityTimedOutEventDetails" :: NullOrUndefined (ActivityTimedOutEventDetails) , "executionFailedEventDetails" :: NullOrUndefined (ExecutionFailedEventDetails) , "executionStartedEventDetails" :: NullOrUndefined (ExecutionStartedEventDetails) , "executionSucceededEventDetails" :: NullOrUndefined (ExecutionSucceededEventDetails) , "executionAbortedEventDetails" :: NullOrUndefined (ExecutionAbortedEventDetails) , "executionTimedOutEventDetails" :: NullOrUndefined (ExecutionTimedOutEventDetails) , "lambdaFunctionFailedEventDetails" :: NullOrUndefined (LambdaFunctionFailedEventDetails) , "lambdaFunctionScheduleFailedEventDetails" :: NullOrUndefined (LambdaFunctionScheduleFailedEventDetails) , "lambdaFunctionScheduledEventDetails" :: NullOrUndefined (LambdaFunctionScheduledEventDetails) , "lambdaFunctionStartFailedEventDetails" :: NullOrUndefined (LambdaFunctionStartFailedEventDetails) , "lambdaFunctionSucceededEventDetails" :: NullOrUndefined (LambdaFunctionSucceededEventDetails) , "lambdaFunctionTimedOutEventDetails" :: NullOrUndefined (LambdaFunctionTimedOutEventDetails) , "stateEnteredEventDetails" :: NullOrUndefined (StateEnteredEventDetails) , "stateExitedEventDetails" :: NullOrUndefined (StateExitedEventDetails) } -> {"timestamp" :: (Types.Timestamp) , "type" :: (HistoryEventType) , "id" :: (EventId) , "previousEventId" :: NullOrUndefined (EventId) , "activityFailedEventDetails" :: NullOrUndefined (ActivityFailedEventDetails) , "activityScheduleFailedEventDetails" :: NullOrUndefined (ActivityScheduleFailedEventDetails) , "activityScheduledEventDetails" :: NullOrUndefined (ActivityScheduledEventDetails) , "activityStartedEventDetails" :: NullOrUndefined (ActivityStartedEventDetails) , "activitySucceededEventDetails" :: NullOrUndefined (ActivitySucceededEventDetails) , "activityTimedOutEventDetails" :: NullOrUndefined (ActivityTimedOutEventDetails) , "executionFailedEventDetails" :: NullOrUndefined (ExecutionFailedEventDetails) , "executionStartedEventDetails" :: NullOrUndefined (ExecutionStartedEventDetails) , "executionSucceededEventDetails" :: NullOrUndefined (ExecutionSucceededEventDetails) , "executionAbortedEventDetails" :: NullOrUndefined (ExecutionAbortedEventDetails) , "executionTimedOutEventDetails" :: NullOrUndefined (ExecutionTimedOutEventDetails) , "lambdaFunctionFailedEventDetails" :: NullOrUndefined (LambdaFunctionFailedEventDetails) , "lambdaFunctionScheduleFailedEventDetails" :: NullOrUndefined (LambdaFunctionScheduleFailedEventDetails) , "lambdaFunctionScheduledEventDetails" :: NullOrUndefined (LambdaFunctionScheduledEventDetails) , "lambdaFunctionStartFailedEventDetails" :: NullOrUndefined (LambdaFunctionStartFailedEventDetails) , "lambdaFunctionSucceededEventDetails" :: NullOrUndefined (LambdaFunctionSucceededEventDetails) , "lambdaFunctionTimedOutEventDetails" :: NullOrUndefined (LambdaFunctionTimedOutEventDetails) , "stateEnteredEventDetails" :: NullOrUndefined (StateEnteredEventDetails) , "stateExitedEventDetails" :: NullOrUndefined (StateExitedEventDetails) } ) -> HistoryEvent
newHistoryEvent' _id _timestamp _type customize = (HistoryEvent <<< customize) { "id": _id, "timestamp": _timestamp, "type": _type, "activityFailedEventDetails": (NullOrUndefined Nothing), "activityScheduleFailedEventDetails": (NullOrUndefined Nothing), "activityScheduledEventDetails": (NullOrUndefined Nothing), "activityStartedEventDetails": (NullOrUndefined Nothing), "activitySucceededEventDetails": (NullOrUndefined Nothing), "activityTimedOutEventDetails": (NullOrUndefined Nothing), "executionAbortedEventDetails": (NullOrUndefined Nothing), "executionFailedEventDetails": (NullOrUndefined Nothing), "executionStartedEventDetails": (NullOrUndefined Nothing), "executionSucceededEventDetails": (NullOrUndefined Nothing), "executionTimedOutEventDetails": (NullOrUndefined Nothing), "lambdaFunctionFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduleFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionScheduledEventDetails": (NullOrUndefined Nothing), "lambdaFunctionStartFailedEventDetails": (NullOrUndefined Nothing), "lambdaFunctionSucceededEventDetails": (NullOrUndefined Nothing), "lambdaFunctionTimedOutEventDetails": (NullOrUndefined Nothing), "previousEventId": (NullOrUndefined Nothing), "stateEnteredEventDetails": (NullOrUndefined Nothing), "stateExitedEventDetails": (NullOrUndefined Nothing) }



-- | <p>Contains details about the events which occurred during an execution.</p>
newtype HistoryEventList = HistoryEventList (Array HistoryEvent)
derive instance newtypeHistoryEventList :: Newtype HistoryEventList _
derive instance repGenericHistoryEventList :: Generic HistoryEventList _
instance showHistoryEventList :: Show HistoryEventList where show = genericShow
instance decodeHistoryEventList :: Decode HistoryEventList where decode = genericDecode options
instance encodeHistoryEventList :: Encode HistoryEventList where encode = genericEncode options



newtype HistoryEventType = HistoryEventType String
derive instance newtypeHistoryEventType :: Newtype HistoryEventType _
derive instance repGenericHistoryEventType :: Generic HistoryEventType _
instance showHistoryEventType :: Show HistoryEventType where show = genericShow
instance decodeHistoryEventType :: Decode HistoryEventType where decode = genericDecode options
instance encodeHistoryEventType :: Encode HistoryEventType where encode = genericEncode options



newtype Identity = Identity String
derive instance newtypeIdentity :: Newtype Identity _
derive instance repGenericIdentity :: Generic Identity _
instance showIdentity :: Show Identity where show = genericShow
instance decodeIdentity :: Decode Identity where decode = genericDecode options
instance encodeIdentity :: Encode Identity where encode = genericEncode options



-- | <p>The provided Amazon Resource Name (ARN) is invalid.</p>
newtype InvalidArn = InvalidArn 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidArn :: Newtype InvalidArn _
derive instance repGenericInvalidArn :: Generic InvalidArn _
instance showInvalidArn :: Show InvalidArn where show = genericShow
instance decodeInvalidArn :: Decode InvalidArn where decode = genericDecode options
instance encodeInvalidArn :: Encode InvalidArn where encode = genericEncode options

-- | Constructs InvalidArn from required parameters
newInvalidArn :: InvalidArn
newInvalidArn  = InvalidArn { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidArn's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArn' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidArn
newInvalidArn'  customize = (InvalidArn <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided Amazon States Language definition is invalid.</p>
newtype InvalidDefinition = InvalidDefinition 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidDefinition :: Newtype InvalidDefinition _
derive instance repGenericInvalidDefinition :: Generic InvalidDefinition _
instance showInvalidDefinition :: Show InvalidDefinition where show = genericShow
instance decodeInvalidDefinition :: Decode InvalidDefinition where decode = genericDecode options
instance encodeInvalidDefinition :: Encode InvalidDefinition where encode = genericEncode options

-- | Constructs InvalidDefinition from required parameters
newInvalidDefinition :: InvalidDefinition
newInvalidDefinition  = InvalidDefinition { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidDefinition' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidDefinition
newInvalidDefinition'  customize = (InvalidDefinition <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided JSON input data is invalid.</p>
newtype InvalidExecutionInput = InvalidExecutionInput 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidExecutionInput :: Newtype InvalidExecutionInput _
derive instance repGenericInvalidExecutionInput :: Generic InvalidExecutionInput _
instance showInvalidExecutionInput :: Show InvalidExecutionInput where show = genericShow
instance decodeInvalidExecutionInput :: Decode InvalidExecutionInput where decode = genericDecode options
instance encodeInvalidExecutionInput :: Encode InvalidExecutionInput where encode = genericEncode options

-- | Constructs InvalidExecutionInput from required parameters
newInvalidExecutionInput :: InvalidExecutionInput
newInvalidExecutionInput  = InvalidExecutionInput { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidExecutionInput' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidExecutionInput
newInvalidExecutionInput'  customize = (InvalidExecutionInput <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided name is invalid.</p>
newtype InvalidName = InvalidName 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidName :: Newtype InvalidName _
derive instance repGenericInvalidName :: Generic InvalidName _
instance showInvalidName :: Show InvalidName where show = genericShow
instance decodeInvalidName :: Decode InvalidName where decode = genericDecode options
instance encodeInvalidName :: Encode InvalidName where encode = genericEncode options

-- | Constructs InvalidName from required parameters
newInvalidName :: InvalidName
newInvalidName  = InvalidName { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidName's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidName' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidName
newInvalidName'  customize = (InvalidName <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided JSON output data is invalid.</p>
newtype InvalidOutput = InvalidOutput 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidOutput :: Newtype InvalidOutput _
derive instance repGenericInvalidOutput :: Generic InvalidOutput _
instance showInvalidOutput :: Show InvalidOutput where show = genericShow
instance decodeInvalidOutput :: Decode InvalidOutput where decode = genericDecode options
instance encodeInvalidOutput :: Encode InvalidOutput where encode = genericEncode options

-- | Constructs InvalidOutput from required parameters
newInvalidOutput :: InvalidOutput
newInvalidOutput  = InvalidOutput { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidOutput' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidOutput
newInvalidOutput'  customize = (InvalidOutput <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The provided token is invalid.</p>
newtype InvalidToken = InvalidToken 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidToken :: Newtype InvalidToken _
derive instance repGenericInvalidToken :: Generic InvalidToken _
instance showInvalidToken :: Show InvalidToken where show = genericShow
instance decodeInvalidToken :: Decode InvalidToken where decode = genericDecode options
instance encodeInvalidToken :: Encode InvalidToken where encode = genericEncode options

-- | Constructs InvalidToken from required parameters
newInvalidToken :: InvalidToken
newInvalidToken  = InvalidToken { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidToken's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidToken' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidToken
newInvalidToken'  customize = (InvalidToken <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function which failed during an execution.</p>
newtype LambdaFunctionFailedEventDetails = LambdaFunctionFailedEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionFailedEventDetails :: Newtype LambdaFunctionFailedEventDetails _
derive instance repGenericLambdaFunctionFailedEventDetails :: Generic LambdaFunctionFailedEventDetails _
instance showLambdaFunctionFailedEventDetails :: Show LambdaFunctionFailedEventDetails where show = genericShow
instance decodeLambdaFunctionFailedEventDetails :: Decode LambdaFunctionFailedEventDetails where decode = genericDecode options
instance encodeLambdaFunctionFailedEventDetails :: Encode LambdaFunctionFailedEventDetails where encode = genericEncode options

-- | Constructs LambdaFunctionFailedEventDetails from required parameters
newLambdaFunctionFailedEventDetails :: LambdaFunctionFailedEventDetails
newLambdaFunctionFailedEventDetails  = LambdaFunctionFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionFailedEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> LambdaFunctionFailedEventDetails
newLambdaFunctionFailedEventDetails'  customize = (LambdaFunctionFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about a failed lambda function schedule event which occurred during an execution.</p>
newtype LambdaFunctionScheduleFailedEventDetails = LambdaFunctionScheduleFailedEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionScheduleFailedEventDetails :: Newtype LambdaFunctionScheduleFailedEventDetails _
derive instance repGenericLambdaFunctionScheduleFailedEventDetails :: Generic LambdaFunctionScheduleFailedEventDetails _
instance showLambdaFunctionScheduleFailedEventDetails :: Show LambdaFunctionScheduleFailedEventDetails where show = genericShow
instance decodeLambdaFunctionScheduleFailedEventDetails :: Decode LambdaFunctionScheduleFailedEventDetails where decode = genericDecode options
instance encodeLambdaFunctionScheduleFailedEventDetails :: Encode LambdaFunctionScheduleFailedEventDetails where encode = genericEncode options

-- | Constructs LambdaFunctionScheduleFailedEventDetails from required parameters
newLambdaFunctionScheduleFailedEventDetails :: LambdaFunctionScheduleFailedEventDetails
newLambdaFunctionScheduleFailedEventDetails  = LambdaFunctionScheduleFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionScheduleFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionScheduleFailedEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> LambdaFunctionScheduleFailedEventDetails
newLambdaFunctionScheduleFailedEventDetails'  customize = (LambdaFunctionScheduleFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function scheduled during an execution.</p>
newtype LambdaFunctionScheduledEventDetails = LambdaFunctionScheduledEventDetails 
  { "resource" :: (Arn)
  , "input" :: NullOrUndefined (Data)
  , "timeoutInSeconds" :: NullOrUndefined (TimeoutInSeconds)
  }
derive instance newtypeLambdaFunctionScheduledEventDetails :: Newtype LambdaFunctionScheduledEventDetails _
derive instance repGenericLambdaFunctionScheduledEventDetails :: Generic LambdaFunctionScheduledEventDetails _
instance showLambdaFunctionScheduledEventDetails :: Show LambdaFunctionScheduledEventDetails where show = genericShow
instance decodeLambdaFunctionScheduledEventDetails :: Decode LambdaFunctionScheduledEventDetails where decode = genericDecode options
instance encodeLambdaFunctionScheduledEventDetails :: Encode LambdaFunctionScheduledEventDetails where encode = genericEncode options

-- | Constructs LambdaFunctionScheduledEventDetails from required parameters
newLambdaFunctionScheduledEventDetails :: Arn -> LambdaFunctionScheduledEventDetails
newLambdaFunctionScheduledEventDetails _resource = LambdaFunctionScheduledEventDetails { "resource": _resource, "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionScheduledEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionScheduledEventDetails' :: Arn -> ( { "resource" :: (Arn) , "input" :: NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined (TimeoutInSeconds) } -> {"resource" :: (Arn) , "input" :: NullOrUndefined (Data) , "timeoutInSeconds" :: NullOrUndefined (TimeoutInSeconds) } ) -> LambdaFunctionScheduledEventDetails
newLambdaFunctionScheduledEventDetails' _resource customize = (LambdaFunctionScheduledEventDetails <<< customize) { "resource": _resource, "input": (NullOrUndefined Nothing), "timeoutInSeconds": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function which failed to start during an execution.</p>
newtype LambdaFunctionStartFailedEventDetails = LambdaFunctionStartFailedEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionStartFailedEventDetails :: Newtype LambdaFunctionStartFailedEventDetails _
derive instance repGenericLambdaFunctionStartFailedEventDetails :: Generic LambdaFunctionStartFailedEventDetails _
instance showLambdaFunctionStartFailedEventDetails :: Show LambdaFunctionStartFailedEventDetails where show = genericShow
instance decodeLambdaFunctionStartFailedEventDetails :: Decode LambdaFunctionStartFailedEventDetails where decode = genericDecode options
instance encodeLambdaFunctionStartFailedEventDetails :: Encode LambdaFunctionStartFailedEventDetails where encode = genericEncode options

-- | Constructs LambdaFunctionStartFailedEventDetails from required parameters
newLambdaFunctionStartFailedEventDetails :: LambdaFunctionStartFailedEventDetails
newLambdaFunctionStartFailedEventDetails  = LambdaFunctionStartFailedEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionStartFailedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionStartFailedEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> LambdaFunctionStartFailedEventDetails
newLambdaFunctionStartFailedEventDetails'  customize = (LambdaFunctionStartFailedEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function which successfully terminated during an execution.</p>
newtype LambdaFunctionSucceededEventDetails = LambdaFunctionSucceededEventDetails 
  { "output" :: NullOrUndefined (Data)
  }
derive instance newtypeLambdaFunctionSucceededEventDetails :: Newtype LambdaFunctionSucceededEventDetails _
derive instance repGenericLambdaFunctionSucceededEventDetails :: Generic LambdaFunctionSucceededEventDetails _
instance showLambdaFunctionSucceededEventDetails :: Show LambdaFunctionSucceededEventDetails where show = genericShow
instance decodeLambdaFunctionSucceededEventDetails :: Decode LambdaFunctionSucceededEventDetails where decode = genericDecode options
instance encodeLambdaFunctionSucceededEventDetails :: Encode LambdaFunctionSucceededEventDetails where encode = genericEncode options

-- | Constructs LambdaFunctionSucceededEventDetails from required parameters
newLambdaFunctionSucceededEventDetails :: LambdaFunctionSucceededEventDetails
newLambdaFunctionSucceededEventDetails  = LambdaFunctionSucceededEventDetails { "output": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionSucceededEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionSucceededEventDetails' :: ( { "output" :: NullOrUndefined (Data) } -> {"output" :: NullOrUndefined (Data) } ) -> LambdaFunctionSucceededEventDetails
newLambdaFunctionSucceededEventDetails'  customize = (LambdaFunctionSucceededEventDetails <<< customize) { "output": (NullOrUndefined Nothing) }



-- | <p>Contains details about a lambda function timeout which occurred during an execution.</p>
newtype LambdaFunctionTimedOutEventDetails = LambdaFunctionTimedOutEventDetails 
  { "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeLambdaFunctionTimedOutEventDetails :: Newtype LambdaFunctionTimedOutEventDetails _
derive instance repGenericLambdaFunctionTimedOutEventDetails :: Generic LambdaFunctionTimedOutEventDetails _
instance showLambdaFunctionTimedOutEventDetails :: Show LambdaFunctionTimedOutEventDetails where show = genericShow
instance decodeLambdaFunctionTimedOutEventDetails :: Decode LambdaFunctionTimedOutEventDetails where decode = genericDecode options
instance encodeLambdaFunctionTimedOutEventDetails :: Encode LambdaFunctionTimedOutEventDetails where encode = genericEncode options

-- | Constructs LambdaFunctionTimedOutEventDetails from required parameters
newLambdaFunctionTimedOutEventDetails :: LambdaFunctionTimedOutEventDetails
newLambdaFunctionTimedOutEventDetails  = LambdaFunctionTimedOutEventDetails { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs LambdaFunctionTimedOutEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaFunctionTimedOutEventDetails' :: ( { "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> LambdaFunctionTimedOutEventDetails
newLambdaFunctionTimedOutEventDetails'  customize = (LambdaFunctionTimedOutEventDetails <<< customize) { "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype ListActivitiesInput = ListActivitiesInput 
  { "maxResults" :: NullOrUndefined (PageSize)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeListActivitiesInput :: Newtype ListActivitiesInput _
derive instance repGenericListActivitiesInput :: Generic ListActivitiesInput _
instance showListActivitiesInput :: Show ListActivitiesInput where show = genericShow
instance decodeListActivitiesInput :: Decode ListActivitiesInput where decode = genericDecode options
instance encodeListActivitiesInput :: Encode ListActivitiesInput where encode = genericEncode options

-- | Constructs ListActivitiesInput from required parameters
newListActivitiesInput :: ListActivitiesInput
newListActivitiesInput  = ListActivitiesInput { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListActivitiesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListActivitiesInput' :: ( { "maxResults" :: NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined (PageToken) } -> {"maxResults" :: NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined (PageToken) } ) -> ListActivitiesInput
newListActivitiesInput'  customize = (ListActivitiesInput <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListActivitiesOutput = ListActivitiesOutput 
  { "activities" :: (ActivityList)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeListActivitiesOutput :: Newtype ListActivitiesOutput _
derive instance repGenericListActivitiesOutput :: Generic ListActivitiesOutput _
instance showListActivitiesOutput :: Show ListActivitiesOutput where show = genericShow
instance decodeListActivitiesOutput :: Decode ListActivitiesOutput where decode = genericDecode options
instance encodeListActivitiesOutput :: Encode ListActivitiesOutput where encode = genericEncode options

-- | Constructs ListActivitiesOutput from required parameters
newListActivitiesOutput :: ActivityList -> ListActivitiesOutput
newListActivitiesOutput _activities = ListActivitiesOutput { "activities": _activities, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListActivitiesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListActivitiesOutput' :: ActivityList -> ( { "activities" :: (ActivityList) , "nextToken" :: NullOrUndefined (PageToken) } -> {"activities" :: (ActivityList) , "nextToken" :: NullOrUndefined (PageToken) } ) -> ListActivitiesOutput
newListActivitiesOutput' _activities customize = (ListActivitiesOutput <<< customize) { "activities": _activities, "nextToken": (NullOrUndefined Nothing) }



newtype ListExecutionsInput = ListExecutionsInput 
  { "stateMachineArn" :: (Arn)
  , "statusFilter" :: NullOrUndefined (ExecutionStatus)
  , "maxResults" :: NullOrUndefined (PageSize)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeListExecutionsInput :: Newtype ListExecutionsInput _
derive instance repGenericListExecutionsInput :: Generic ListExecutionsInput _
instance showListExecutionsInput :: Show ListExecutionsInput where show = genericShow
instance decodeListExecutionsInput :: Decode ListExecutionsInput where decode = genericDecode options
instance encodeListExecutionsInput :: Encode ListExecutionsInput where encode = genericEncode options

-- | Constructs ListExecutionsInput from required parameters
newListExecutionsInput :: Arn -> ListExecutionsInput
newListExecutionsInput _stateMachineArn = ListExecutionsInput { "stateMachineArn": _stateMachineArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "statusFilter": (NullOrUndefined Nothing) }

-- | Constructs ListExecutionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListExecutionsInput' :: Arn -> ( { "stateMachineArn" :: (Arn) , "statusFilter" :: NullOrUndefined (ExecutionStatus) , "maxResults" :: NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined (PageToken) } -> {"stateMachineArn" :: (Arn) , "statusFilter" :: NullOrUndefined (ExecutionStatus) , "maxResults" :: NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined (PageToken) } ) -> ListExecutionsInput
newListExecutionsInput' _stateMachineArn customize = (ListExecutionsInput <<< customize) { "stateMachineArn": _stateMachineArn, "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "statusFilter": (NullOrUndefined Nothing) }



newtype ListExecutionsOutput = ListExecutionsOutput 
  { "executions" :: (ExecutionList)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeListExecutionsOutput :: Newtype ListExecutionsOutput _
derive instance repGenericListExecutionsOutput :: Generic ListExecutionsOutput _
instance showListExecutionsOutput :: Show ListExecutionsOutput where show = genericShow
instance decodeListExecutionsOutput :: Decode ListExecutionsOutput where decode = genericDecode options
instance encodeListExecutionsOutput :: Encode ListExecutionsOutput where encode = genericEncode options

-- | Constructs ListExecutionsOutput from required parameters
newListExecutionsOutput :: ExecutionList -> ListExecutionsOutput
newListExecutionsOutput _executions = ListExecutionsOutput { "executions": _executions, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListExecutionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListExecutionsOutput' :: ExecutionList -> ( { "executions" :: (ExecutionList) , "nextToken" :: NullOrUndefined (PageToken) } -> {"executions" :: (ExecutionList) , "nextToken" :: NullOrUndefined (PageToken) } ) -> ListExecutionsOutput
newListExecutionsOutput' _executions customize = (ListExecutionsOutput <<< customize) { "executions": _executions, "nextToken": (NullOrUndefined Nothing) }



newtype ListStateMachinesInput = ListStateMachinesInput 
  { "maxResults" :: NullOrUndefined (PageSize)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeListStateMachinesInput :: Newtype ListStateMachinesInput _
derive instance repGenericListStateMachinesInput :: Generic ListStateMachinesInput _
instance showListStateMachinesInput :: Show ListStateMachinesInput where show = genericShow
instance decodeListStateMachinesInput :: Decode ListStateMachinesInput where decode = genericDecode options
instance encodeListStateMachinesInput :: Encode ListStateMachinesInput where encode = genericEncode options

-- | Constructs ListStateMachinesInput from required parameters
newListStateMachinesInput :: ListStateMachinesInput
newListStateMachinesInput  = ListStateMachinesInput { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListStateMachinesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStateMachinesInput' :: ( { "maxResults" :: NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined (PageToken) } -> {"maxResults" :: NullOrUndefined (PageSize) , "nextToken" :: NullOrUndefined (PageToken) } ) -> ListStateMachinesInput
newListStateMachinesInput'  customize = (ListStateMachinesInput <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListStateMachinesOutput = ListStateMachinesOutput 
  { "stateMachines" :: (StateMachineList)
  , "nextToken" :: NullOrUndefined (PageToken)
  }
derive instance newtypeListStateMachinesOutput :: Newtype ListStateMachinesOutput _
derive instance repGenericListStateMachinesOutput :: Generic ListStateMachinesOutput _
instance showListStateMachinesOutput :: Show ListStateMachinesOutput where show = genericShow
instance decodeListStateMachinesOutput :: Decode ListStateMachinesOutput where decode = genericDecode options
instance encodeListStateMachinesOutput :: Encode ListStateMachinesOutput where encode = genericEncode options

-- | Constructs ListStateMachinesOutput from required parameters
newListStateMachinesOutput :: StateMachineList -> ListStateMachinesOutput
newListStateMachinesOutput _stateMachines = ListStateMachinesOutput { "stateMachines": _stateMachines, "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListStateMachinesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStateMachinesOutput' :: StateMachineList -> ( { "stateMachines" :: (StateMachineList) , "nextToken" :: NullOrUndefined (PageToken) } -> {"stateMachines" :: (StateMachineList) , "nextToken" :: NullOrUndefined (PageToken) } ) -> ListStateMachinesOutput
newListStateMachinesOutput' _stateMachines customize = (ListStateMachinesOutput <<< customize) { "stateMachines": _stateMachines, "nextToken": (NullOrUndefined Nothing) }



-- | <p>Request is missing a required parameter. This error occurs if both <code>definition</code> and <code>roleArn</code> are not specified.</p>
newtype MissingRequiredParameter = MissingRequiredParameter 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeMissingRequiredParameter :: Newtype MissingRequiredParameter _
derive instance repGenericMissingRequiredParameter :: Generic MissingRequiredParameter _
instance showMissingRequiredParameter :: Show MissingRequiredParameter where show = genericShow
instance decodeMissingRequiredParameter :: Decode MissingRequiredParameter where decode = genericDecode options
instance encodeMissingRequiredParameter :: Encode MissingRequiredParameter where encode = genericEncode options

-- | Constructs MissingRequiredParameter from required parameters
newMissingRequiredParameter :: MissingRequiredParameter
newMissingRequiredParameter  = MissingRequiredParameter { "message": (NullOrUndefined Nothing) }

-- | Constructs MissingRequiredParameter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingRequiredParameter' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> MissingRequiredParameter
newMissingRequiredParameter'  customize = (MissingRequiredParameter <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Name = Name String
derive instance newtypeName :: Newtype Name _
derive instance repGenericName :: Generic Name _
instance showName :: Show Name where show = genericShow
instance decodeName :: Decode Name where decode = genericDecode options
instance encodeName :: Encode Name where encode = genericEncode options



newtype PageSize = PageSize Int
derive instance newtypePageSize :: Newtype PageSize _
derive instance repGenericPageSize :: Generic PageSize _
instance showPageSize :: Show PageSize where show = genericShow
instance decodePageSize :: Decode PageSize where decode = genericDecode options
instance encodePageSize :: Encode PageSize where encode = genericEncode options



newtype PageToken = PageToken String
derive instance newtypePageToken :: Newtype PageToken _
derive instance repGenericPageToken :: Generic PageToken _
instance showPageToken :: Show PageToken where show = genericShow
instance decodePageToken :: Decode PageToken where decode = genericDecode options
instance encodePageToken :: Encode PageToken where encode = genericEncode options



newtype ReverseOrder = ReverseOrder Boolean
derive instance newtypeReverseOrder :: Newtype ReverseOrder _
derive instance repGenericReverseOrder :: Generic ReverseOrder _
instance showReverseOrder :: Show ReverseOrder where show = genericShow
instance decodeReverseOrder :: Decode ReverseOrder where decode = genericDecode options
instance encodeReverseOrder :: Encode ReverseOrder where encode = genericEncode options



newtype SendTaskFailureInput = SendTaskFailureInput 
  { "taskToken" :: (TaskToken)
  , "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeSendTaskFailureInput :: Newtype SendTaskFailureInput _
derive instance repGenericSendTaskFailureInput :: Generic SendTaskFailureInput _
instance showSendTaskFailureInput :: Show SendTaskFailureInput where show = genericShow
instance decodeSendTaskFailureInput :: Decode SendTaskFailureInput where decode = genericDecode options
instance encodeSendTaskFailureInput :: Encode SendTaskFailureInput where encode = genericEncode options

-- | Constructs SendTaskFailureInput from required parameters
newSendTaskFailureInput :: TaskToken -> SendTaskFailureInput
newSendTaskFailureInput _taskToken = SendTaskFailureInput { "taskToken": _taskToken, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs SendTaskFailureInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendTaskFailureInput' :: TaskToken -> ( { "taskToken" :: (TaskToken) , "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"taskToken" :: (TaskToken) , "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> SendTaskFailureInput
newSendTaskFailureInput' _taskToken customize = (SendTaskFailureInput <<< customize) { "taskToken": _taskToken, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype SendTaskFailureOutput = SendTaskFailureOutput Types.NoArguments
derive instance newtypeSendTaskFailureOutput :: Newtype SendTaskFailureOutput _
derive instance repGenericSendTaskFailureOutput :: Generic SendTaskFailureOutput _
instance showSendTaskFailureOutput :: Show SendTaskFailureOutput where show = genericShow
instance decodeSendTaskFailureOutput :: Decode SendTaskFailureOutput where decode = genericDecode options
instance encodeSendTaskFailureOutput :: Encode SendTaskFailureOutput where encode = genericEncode options



newtype SendTaskHeartbeatInput = SendTaskHeartbeatInput 
  { "taskToken" :: (TaskToken)
  }
derive instance newtypeSendTaskHeartbeatInput :: Newtype SendTaskHeartbeatInput _
derive instance repGenericSendTaskHeartbeatInput :: Generic SendTaskHeartbeatInput _
instance showSendTaskHeartbeatInput :: Show SendTaskHeartbeatInput where show = genericShow
instance decodeSendTaskHeartbeatInput :: Decode SendTaskHeartbeatInput where decode = genericDecode options
instance encodeSendTaskHeartbeatInput :: Encode SendTaskHeartbeatInput where encode = genericEncode options

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
instance showSendTaskHeartbeatOutput :: Show SendTaskHeartbeatOutput where show = genericShow
instance decodeSendTaskHeartbeatOutput :: Decode SendTaskHeartbeatOutput where decode = genericDecode options
instance encodeSendTaskHeartbeatOutput :: Encode SendTaskHeartbeatOutput where encode = genericEncode options



newtype SendTaskSuccessInput = SendTaskSuccessInput 
  { "taskToken" :: (TaskToken)
  , "output" :: (Data)
  }
derive instance newtypeSendTaskSuccessInput :: Newtype SendTaskSuccessInput _
derive instance repGenericSendTaskSuccessInput :: Generic SendTaskSuccessInput _
instance showSendTaskSuccessInput :: Show SendTaskSuccessInput where show = genericShow
instance decodeSendTaskSuccessInput :: Decode SendTaskSuccessInput where decode = genericDecode options
instance encodeSendTaskSuccessInput :: Encode SendTaskSuccessInput where encode = genericEncode options

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
instance showSendTaskSuccessOutput :: Show SendTaskSuccessOutput where show = genericShow
instance decodeSendTaskSuccessOutput :: Decode SendTaskSuccessOutput where decode = genericDecode options
instance encodeSendTaskSuccessOutput :: Encode SendTaskSuccessOutput where encode = genericEncode options



newtype StartExecutionInput = StartExecutionInput 
  { "stateMachineArn" :: (Arn)
  , "name" :: NullOrUndefined (Name)
  , "input" :: NullOrUndefined (Data)
  }
derive instance newtypeStartExecutionInput :: Newtype StartExecutionInput _
derive instance repGenericStartExecutionInput :: Generic StartExecutionInput _
instance showStartExecutionInput :: Show StartExecutionInput where show = genericShow
instance decodeStartExecutionInput :: Decode StartExecutionInput where decode = genericDecode options
instance encodeStartExecutionInput :: Encode StartExecutionInput where encode = genericEncode options

-- | Constructs StartExecutionInput from required parameters
newStartExecutionInput :: Arn -> StartExecutionInput
newStartExecutionInput _stateMachineArn = StartExecutionInput { "stateMachineArn": _stateMachineArn, "input": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs StartExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartExecutionInput' :: Arn -> ( { "stateMachineArn" :: (Arn) , "name" :: NullOrUndefined (Name) , "input" :: NullOrUndefined (Data) } -> {"stateMachineArn" :: (Arn) , "name" :: NullOrUndefined (Name) , "input" :: NullOrUndefined (Data) } ) -> StartExecutionInput
newStartExecutionInput' _stateMachineArn customize = (StartExecutionInput <<< customize) { "stateMachineArn": _stateMachineArn, "input": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



newtype StartExecutionOutput = StartExecutionOutput 
  { "executionArn" :: (Arn)
  , "startDate" :: (Types.Timestamp)
  }
derive instance newtypeStartExecutionOutput :: Newtype StartExecutionOutput _
derive instance repGenericStartExecutionOutput :: Generic StartExecutionOutput _
instance showStartExecutionOutput :: Show StartExecutionOutput where show = genericShow
instance decodeStartExecutionOutput :: Decode StartExecutionOutput where decode = genericDecode options
instance encodeStartExecutionOutput :: Encode StartExecutionOutput where encode = genericEncode options

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
  , "input" :: NullOrUndefined (Data)
  }
derive instance newtypeStateEnteredEventDetails :: Newtype StateEnteredEventDetails _
derive instance repGenericStateEnteredEventDetails :: Generic StateEnteredEventDetails _
instance showStateEnteredEventDetails :: Show StateEnteredEventDetails where show = genericShow
instance decodeStateEnteredEventDetails :: Decode StateEnteredEventDetails where decode = genericDecode options
instance encodeStateEnteredEventDetails :: Encode StateEnteredEventDetails where encode = genericEncode options

-- | Constructs StateEnteredEventDetails from required parameters
newStateEnteredEventDetails :: Name -> StateEnteredEventDetails
newStateEnteredEventDetails _name = StateEnteredEventDetails { "name": _name, "input": (NullOrUndefined Nothing) }

-- | Constructs StateEnteredEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateEnteredEventDetails' :: Name -> ( { "name" :: (Name) , "input" :: NullOrUndefined (Data) } -> {"name" :: (Name) , "input" :: NullOrUndefined (Data) } ) -> StateEnteredEventDetails
newStateEnteredEventDetails' _name customize = (StateEnteredEventDetails <<< customize) { "name": _name, "input": (NullOrUndefined Nothing) }



-- | <p>Contains details about an exit from a state during an execution.</p>
newtype StateExitedEventDetails = StateExitedEventDetails 
  { "name" :: (Name)
  , "output" :: NullOrUndefined (Data)
  }
derive instance newtypeStateExitedEventDetails :: Newtype StateExitedEventDetails _
derive instance repGenericStateExitedEventDetails :: Generic StateExitedEventDetails _
instance showStateExitedEventDetails :: Show StateExitedEventDetails where show = genericShow
instance decodeStateExitedEventDetails :: Decode StateExitedEventDetails where decode = genericDecode options
instance encodeStateExitedEventDetails :: Encode StateExitedEventDetails where encode = genericEncode options

-- | Constructs StateExitedEventDetails from required parameters
newStateExitedEventDetails :: Name -> StateExitedEventDetails
newStateExitedEventDetails _name = StateExitedEventDetails { "name": _name, "output": (NullOrUndefined Nothing) }

-- | Constructs StateExitedEventDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateExitedEventDetails' :: Name -> ( { "name" :: (Name) , "output" :: NullOrUndefined (Data) } -> {"name" :: (Name) , "output" :: NullOrUndefined (Data) } ) -> StateExitedEventDetails
newStateExitedEventDetails' _name customize = (StateExitedEventDetails <<< customize) { "name": _name, "output": (NullOrUndefined Nothing) }



-- | <p>A state machine with the same name but a different definition or role ARN already exists.</p>
newtype StateMachineAlreadyExists = StateMachineAlreadyExists 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineAlreadyExists :: Newtype StateMachineAlreadyExists _
derive instance repGenericStateMachineAlreadyExists :: Generic StateMachineAlreadyExists _
instance showStateMachineAlreadyExists :: Show StateMachineAlreadyExists where show = genericShow
instance decodeStateMachineAlreadyExists :: Decode StateMachineAlreadyExists where decode = genericDecode options
instance encodeStateMachineAlreadyExists :: Encode StateMachineAlreadyExists where encode = genericEncode options

-- | Constructs StateMachineAlreadyExists from required parameters
newStateMachineAlreadyExists :: StateMachineAlreadyExists
newStateMachineAlreadyExists  = StateMachineAlreadyExists { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineAlreadyExists' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> StateMachineAlreadyExists
newStateMachineAlreadyExists'  customize = (StateMachineAlreadyExists <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified state machine is being deleted.</p>
newtype StateMachineDeleting = StateMachineDeleting 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineDeleting :: Newtype StateMachineDeleting _
derive instance repGenericStateMachineDeleting :: Generic StateMachineDeleting _
instance showStateMachineDeleting :: Show StateMachineDeleting where show = genericShow
instance decodeStateMachineDeleting :: Decode StateMachineDeleting where decode = genericDecode options
instance encodeStateMachineDeleting :: Encode StateMachineDeleting where encode = genericEncode options

-- | Constructs StateMachineDeleting from required parameters
newStateMachineDeleting :: StateMachineDeleting
newStateMachineDeleting  = StateMachineDeleting { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineDeleting's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineDeleting' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> StateMachineDeleting
newStateMachineDeleting'  customize = (StateMachineDeleting <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified state machine does not exist.</p>
newtype StateMachineDoesNotExist = StateMachineDoesNotExist 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineDoesNotExist :: Newtype StateMachineDoesNotExist _
derive instance repGenericStateMachineDoesNotExist :: Generic StateMachineDoesNotExist _
instance showStateMachineDoesNotExist :: Show StateMachineDoesNotExist where show = genericShow
instance decodeStateMachineDoesNotExist :: Decode StateMachineDoesNotExist where decode = genericDecode options
instance encodeStateMachineDoesNotExist :: Encode StateMachineDoesNotExist where encode = genericEncode options

-- | Constructs StateMachineDoesNotExist from required parameters
newStateMachineDoesNotExist :: StateMachineDoesNotExist
newStateMachineDoesNotExist  = StateMachineDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineDoesNotExist' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> StateMachineDoesNotExist
newStateMachineDoesNotExist'  customize = (StateMachineDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.</p>
newtype StateMachineLimitExceeded = StateMachineLimitExceeded 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeStateMachineLimitExceeded :: Newtype StateMachineLimitExceeded _
derive instance repGenericStateMachineLimitExceeded :: Generic StateMachineLimitExceeded _
instance showStateMachineLimitExceeded :: Show StateMachineLimitExceeded where show = genericShow
instance decodeStateMachineLimitExceeded :: Decode StateMachineLimitExceeded where decode = genericDecode options
instance encodeStateMachineLimitExceeded :: Encode StateMachineLimitExceeded where encode = genericEncode options

-- | Constructs StateMachineLimitExceeded from required parameters
newStateMachineLimitExceeded :: StateMachineLimitExceeded
newStateMachineLimitExceeded  = StateMachineLimitExceeded { "message": (NullOrUndefined Nothing) }

-- | Constructs StateMachineLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStateMachineLimitExceeded' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> StateMachineLimitExceeded
newStateMachineLimitExceeded'  customize = (StateMachineLimitExceeded <<< customize) { "message": (NullOrUndefined Nothing) }



newtype StateMachineList = StateMachineList (Array StateMachineListItem)
derive instance newtypeStateMachineList :: Newtype StateMachineList _
derive instance repGenericStateMachineList :: Generic StateMachineList _
instance showStateMachineList :: Show StateMachineList where show = genericShow
instance decodeStateMachineList :: Decode StateMachineList where decode = genericDecode options
instance encodeStateMachineList :: Encode StateMachineList where encode = genericEncode options



-- | <p>Contains details about the state machine.</p>
newtype StateMachineListItem = StateMachineListItem 
  { "stateMachineArn" :: (Arn)
  , "name" :: (Name)
  , "creationDate" :: (Types.Timestamp)
  }
derive instance newtypeStateMachineListItem :: Newtype StateMachineListItem _
derive instance repGenericStateMachineListItem :: Generic StateMachineListItem _
instance showStateMachineListItem :: Show StateMachineListItem where show = genericShow
instance decodeStateMachineListItem :: Decode StateMachineListItem where decode = genericDecode options
instance encodeStateMachineListItem :: Encode StateMachineListItem where encode = genericEncode options

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
instance showStateMachineStatus :: Show StateMachineStatus where show = genericShow
instance decodeStateMachineStatus :: Decode StateMachineStatus where decode = genericDecode options
instance encodeStateMachineStatus :: Encode StateMachineStatus where encode = genericEncode options



newtype StopExecutionInput = StopExecutionInput 
  { "executionArn" :: (Arn)
  , "error" :: NullOrUndefined (Error)
  , "cause" :: NullOrUndefined (Cause)
  }
derive instance newtypeStopExecutionInput :: Newtype StopExecutionInput _
derive instance repGenericStopExecutionInput :: Generic StopExecutionInput _
instance showStopExecutionInput :: Show StopExecutionInput where show = genericShow
instance decodeStopExecutionInput :: Decode StopExecutionInput where decode = genericDecode options
instance encodeStopExecutionInput :: Encode StopExecutionInput where encode = genericEncode options

-- | Constructs StopExecutionInput from required parameters
newStopExecutionInput :: Arn -> StopExecutionInput
newStopExecutionInput _executionArn = StopExecutionInput { "executionArn": _executionArn, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }

-- | Constructs StopExecutionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopExecutionInput' :: Arn -> ( { "executionArn" :: (Arn) , "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } -> {"executionArn" :: (Arn) , "error" :: NullOrUndefined (Error) , "cause" :: NullOrUndefined (Cause) } ) -> StopExecutionInput
newStopExecutionInput' _executionArn customize = (StopExecutionInput <<< customize) { "executionArn": _executionArn, "cause": (NullOrUndefined Nothing), "error": (NullOrUndefined Nothing) }



newtype StopExecutionOutput = StopExecutionOutput 
  { "stopDate" :: (Types.Timestamp)
  }
derive instance newtypeStopExecutionOutput :: Newtype StopExecutionOutput _
derive instance repGenericStopExecutionOutput :: Generic StopExecutionOutput _
instance showStopExecutionOutput :: Show StopExecutionOutput where show = genericShow
instance decodeStopExecutionOutput :: Decode StopExecutionOutput where decode = genericDecode options
instance encodeStopExecutionOutput :: Encode StopExecutionOutput where encode = genericEncode options

-- | Constructs StopExecutionOutput from required parameters
newStopExecutionOutput :: Types.Timestamp -> StopExecutionOutput
newStopExecutionOutput _stopDate = StopExecutionOutput { "stopDate": _stopDate }

-- | Constructs StopExecutionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopExecutionOutput' :: Types.Timestamp -> ( { "stopDate" :: (Types.Timestamp) } -> {"stopDate" :: (Types.Timestamp) } ) -> StopExecutionOutput
newStopExecutionOutput' _stopDate customize = (StopExecutionOutput <<< customize) { "stopDate": _stopDate }



newtype TaskDoesNotExist = TaskDoesNotExist 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTaskDoesNotExist :: Newtype TaskDoesNotExist _
derive instance repGenericTaskDoesNotExist :: Generic TaskDoesNotExist _
instance showTaskDoesNotExist :: Show TaskDoesNotExist where show = genericShow
instance decodeTaskDoesNotExist :: Decode TaskDoesNotExist where decode = genericDecode options
instance encodeTaskDoesNotExist :: Encode TaskDoesNotExist where encode = genericEncode options

-- | Constructs TaskDoesNotExist from required parameters
newTaskDoesNotExist :: TaskDoesNotExist
newTaskDoesNotExist  = TaskDoesNotExist { "message": (NullOrUndefined Nothing) }

-- | Constructs TaskDoesNotExist's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskDoesNotExist' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> TaskDoesNotExist
newTaskDoesNotExist'  customize = (TaskDoesNotExist <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TaskTimedOut = TaskTimedOut 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTaskTimedOut :: Newtype TaskTimedOut _
derive instance repGenericTaskTimedOut :: Generic TaskTimedOut _
instance showTaskTimedOut :: Show TaskTimedOut where show = genericShow
instance decodeTaskTimedOut :: Decode TaskTimedOut where decode = genericDecode options
instance encodeTaskTimedOut :: Encode TaskTimedOut where encode = genericEncode options

-- | Constructs TaskTimedOut from required parameters
newTaskTimedOut :: TaskTimedOut
newTaskTimedOut  = TaskTimedOut { "message": (NullOrUndefined Nothing) }

-- | Constructs TaskTimedOut's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskTimedOut' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> TaskTimedOut
newTaskTimedOut'  customize = (TaskTimedOut <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TaskToken = TaskToken String
derive instance newtypeTaskToken :: Newtype TaskToken _
derive instance repGenericTaskToken :: Generic TaskToken _
instance showTaskToken :: Show TaskToken where show = genericShow
instance decodeTaskToken :: Decode TaskToken where decode = genericDecode options
instance encodeTaskToken :: Encode TaskToken where encode = genericEncode options



newtype TimeoutInSeconds = TimeoutInSeconds Number
derive instance newtypeTimeoutInSeconds :: Newtype TimeoutInSeconds _
derive instance repGenericTimeoutInSeconds :: Generic TimeoutInSeconds _
instance showTimeoutInSeconds :: Show TimeoutInSeconds where show = genericShow
instance decodeTimeoutInSeconds :: Decode TimeoutInSeconds where decode = genericDecode options
instance encodeTimeoutInSeconds :: Encode TimeoutInSeconds where encode = genericEncode options



newtype UpdateStateMachineInput = UpdateStateMachineInput 
  { "stateMachineArn" :: (Arn)
  , "definition" :: NullOrUndefined (Definition)
  , "roleArn" :: NullOrUndefined (Arn)
  }
derive instance newtypeUpdateStateMachineInput :: Newtype UpdateStateMachineInput _
derive instance repGenericUpdateStateMachineInput :: Generic UpdateStateMachineInput _
instance showUpdateStateMachineInput :: Show UpdateStateMachineInput where show = genericShow
instance decodeUpdateStateMachineInput :: Decode UpdateStateMachineInput where decode = genericDecode options
instance encodeUpdateStateMachineInput :: Encode UpdateStateMachineInput where encode = genericEncode options

-- | Constructs UpdateStateMachineInput from required parameters
newUpdateStateMachineInput :: Arn -> UpdateStateMachineInput
newUpdateStateMachineInput _stateMachineArn = UpdateStateMachineInput { "stateMachineArn": _stateMachineArn, "definition": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }

-- | Constructs UpdateStateMachineInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStateMachineInput' :: Arn -> ( { "stateMachineArn" :: (Arn) , "definition" :: NullOrUndefined (Definition) , "roleArn" :: NullOrUndefined (Arn) } -> {"stateMachineArn" :: (Arn) , "definition" :: NullOrUndefined (Definition) , "roleArn" :: NullOrUndefined (Arn) } ) -> UpdateStateMachineInput
newUpdateStateMachineInput' _stateMachineArn customize = (UpdateStateMachineInput <<< customize) { "stateMachineArn": _stateMachineArn, "definition": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing) }



newtype UpdateStateMachineOutput = UpdateStateMachineOutput 
  { "updateDate" :: (Types.Timestamp)
  }
derive instance newtypeUpdateStateMachineOutput :: Newtype UpdateStateMachineOutput _
derive instance repGenericUpdateStateMachineOutput :: Generic UpdateStateMachineOutput _
instance showUpdateStateMachineOutput :: Show UpdateStateMachineOutput where show = genericShow
instance decodeUpdateStateMachineOutput :: Decode UpdateStateMachineOutput where decode = genericDecode options
instance encodeUpdateStateMachineOutput :: Encode UpdateStateMachineOutput where encode = genericEncode options

-- | Constructs UpdateStateMachineOutput from required parameters
newUpdateStateMachineOutput :: Types.Timestamp -> UpdateStateMachineOutput
newUpdateStateMachineOutput _updateDate = UpdateStateMachineOutput { "updateDate": _updateDate }

-- | Constructs UpdateStateMachineOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateStateMachineOutput' :: Types.Timestamp -> ( { "updateDate" :: (Types.Timestamp) } -> {"updateDate" :: (Types.Timestamp) } ) -> UpdateStateMachineOutput
newUpdateStateMachineOutput' _updateDate customize = (UpdateStateMachineOutput <<< customize) { "updateDate": _updateDate }

