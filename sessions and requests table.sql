USE DBAAdmin
GO
DROP TABLE 
--this syntax is 2016 only
IF EXISTS 
[dbo].[SessionsAndRequestsLog]
go
CREATE TABLE [dbo].[SessionsAndRequestsLog](
	[timestamp] [datetime] NOT NULL INDEX IDX_NC_SessionsAndRequestsLog_timestamp CLUSTERED,
	[session_id] [smallint] NOT NULL INDEX IDX_NC_SessionsAndRequestsLog_session_id NONCLUSTERED,
	[host_name] [nvarchar](256) NULL,
	[program_name] [nvarchar](256) NULL,
	[session_status] [nvarchar](60) NULL,
	[request_status] [nvarchar](60) NULL,
	[blocking_these] [varchar](1000) NULL,
	[blocked_by] [smallint] NULL,
	[wait_type] [nvarchar](120) NULL,
	[wait_resource] [nvarchar](120) NULL,
	[last_wait_type] [nvarchar](120) NULL,
	[DBName] [nvarchar](128) NULL,
	[objectid] [int] NULL,
	[command] [nvarchar](32) NULL,
	[login_time] [datetime] NOT NULL,
	[login_name] [nvarchar](256) NULL,
	[client_interface_name] [nvarchar](64) NULL,
	[request_start_time] [datetime] NULL,
	[tot_time_s] [int] NULL,
	[wait_time_s] [int] NULL,
	[cpu_time_s] [int] NULL,
	[reads] [bigint] NULL,
	[writes] [bigint] NULL,
	[logical_reads] [bigint] NULL,
	[offsettext] [nvarchar](max) NULL,
	[statement_start_offset] [int] NULL,
	[statement_end_offset] [int] NULL,
	[cacheobjtype] [nvarchar](35) NULL,
	[QueryPlan] [xml] NULL,
	[request_transaction_isolation_level] [varchar](15) NULL,
	[session_transaction_isolation_level] [varchar](15) NULL,
	[plan_handle] [varbinary](64) NULL,
	[execution_count] [bigint] NULL,
	[total_worker_time_s] [numeric](30, 11) NULL,
	[last_worker_time_s] [numeric](30, 11) NULL,
	[total_elapsed_time_s] [numeric](30, 11) NULL,
	[last_elapsed_time_s] [numeric](30, 11) NULL,
	[total_physical_reads] [bigint] NULL,
	[total_logical_writes] [bigint] NULL,
	[total_logical_reads] [bigint] NULL,
	[Governor_Group_Name] [sysname] NULL,
	[Governor_Group_ID] [int] NULL,
	[Governor_Pool_Name] [sysname] NULL,
	[Governor_Pool_ID] [int] NULL,
	[total_rows] [bigint] NULL,
	[last_rows] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


