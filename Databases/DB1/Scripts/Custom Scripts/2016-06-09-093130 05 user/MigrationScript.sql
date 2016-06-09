-- Job Name : AgentJobToDoSomething


USE msdb ;
GO

IF EXISTS (SELECT job_id FROM msdb.dbo.sysjobs_view WHERE name = N'AgentJobToDoSomething')
EXEC msdb.dbo.sp_delete_job @job_name=N'AgentJobToDoSomething', @delete_unused_schedule=1
GO

EXEC dbo.sp_add_job
    @job_name = N'AgentJobToDoSomething' ;
GO
EXEC sp_add_jobstep
    @job_name = N'AgentJobToDoSomething',
    @step_name = N'Carry out a step',
    @subsystem = N'TSQL',
    @command = N'SELECT 1', 
    @retry_attempts = 5,
    @retry_interval = 5 ;
GO
EXEC dbo.sp_add_schedule
    @schedule_name = N'AgentJobToDoSomething_Schedule',
    @freq_type = 1,
    @active_start_time = 233000 ;
USE msdb ;
GO
EXEC sp_attach_schedule
   @job_name = N'AgentJobToDoSomething',
   @schedule_name = N'AgentJobToDoSomething_Schedule';
GO
EXEC dbo.sp_add_jobserver
    @job_name = N'AgentJobToDoSomething';
GO
