package com.quickstart.services;

import com.quickstart.email.EmailAFriendEmailSender;

import atg.apache.soap.providers.com.Log;
import atg.nucleus.GenericService;
import atg.nucleus.ServiceException;
import atg.service.scheduler.Schedulable;
import atg.service.scheduler.Schedule;
import atg.service.scheduler.ScheduledJob;
import atg.service.scheduler.Scheduler;

public class GenerateItemJob extends GenericService implements Schedulable {
	
	private Scheduler scheduler;
	private Schedule schedule;
	private int jobId;
	private GenerateItems generateItem;

	@Override
	public void performScheduledTask(Scheduler scheduler, ScheduledJob scheduledJob) {
		// TODO Auto-generated method stub
	 generateItem.generateRandomItems();
		//em.sendEmail();
	    logInfo("testt");
		
	}
	
	/**************************** Start method *****************************************************/
	
	public void doStartService() throws ServiceException{
		ScheduledJob job=new ScheduledJob("hello","print hello", getAbsoluteName(), getSchedule(), this, ScheduledJob.SCHEDULER_THREAD);
		jobId=getScheduler().addScheduledJob(job);
		
	}
	
	
	
  /***************************** Stop method ********************************************************/
	
	public void doStopService() throws ServiceException{
		getScheduler().removeScheduledJob(jobId);
	}
	
	
	
	/************************* getters and setters  ****************************************************/
	
	public Scheduler getScheduler() {
		return scheduler;
	}

	public void setScheduler(Scheduler scheduler) {
		this.scheduler = scheduler;
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}

	public GenerateItems getGenerateItem() {
		return generateItem;
	}

	public void setGenerateItem(GenerateItems generateItem) {
		this.generateItem = generateItem;
	}


	
	
	
	

}
