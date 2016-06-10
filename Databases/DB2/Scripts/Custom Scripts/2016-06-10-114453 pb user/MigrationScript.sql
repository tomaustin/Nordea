-- Job Name : MattsJob


IF EXISTS (SELECT job_id FROM msdb.dbo.sysjobs_view WHERE name = N'MattsJob')
EXEC msdb.dbo.sp_delete_job @job_name=N'MattsJob', @delete_unused_schedule=1
GO

EXEC msdb.dbo.sp_add_job
    @job_name = N'MattsJob' ;
GO
EXEC msdb.dbo.sp_add_jobstep
    @job_name = N'MattsJob',
    @step_name = N'Carry out a step',
    @subsystem = N'TSQL',
    @command = N'SELECT 1', 
    @retry_attempts = 5,
    @retry_interval = 5 ;
GO
EXEC msdb.dbo.sp_add_schedule
    @schedule_name = N'MattsJob_Schedule',
    @freq_type = 1,
    @active_start_time = 233000 ;

EXEC msdb.dbo.sp_attach_schedule
   @job_name = N'MattsJob',
   @schedule_name = N'MattsJob_Schedule';
GO
EXEC msdb.dbo.sp_add_jobserver
    @job_name = N'MattsJob';
GO
