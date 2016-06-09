/*
Use this migration script to make data changes only. You must commit any additive schema changes first.
Schema changes and migration scripts are deployed in the order they're committed.
*/

-- Job Name : Do a thing


USE msdb ;
GO

IF EXISTS (SELECT job_id FROM msdb.dbo.sysjobs_view WHERE name = N'Do a thing')
EXEC msdb.dbo.sp_delete_job @job_name=N'Do a thing', @delete_unused_schedule=1
GO

EXEC dbo.sp_add_job
    @job_name = N'Do a thing' ;
GO
EXEC sp_add_jobstep
    @job_name = N'Do a thing',
    @step_name = N'Carry out a step',
    @subsystem = N'TSQL',
    @command = N'SELECT 1', 
    @retry_attempts = 5,
    @retry_interval = 5 ;
GO
EXEC dbo.sp_add_schedule
    @schedule_name = N'Do a thing_Schedule',
    @freq_type = 1,
    @active_start_time = 233000 ;
USE msdb ;
GO
EXEC sp_attach_schedule
   @job_name = N'Do a thing',
   @schedule_name = N'Do a thing_Schedule';
GO
EXEC dbo.sp_add_jobserver
    @job_name = N'Do a thing';
GO
