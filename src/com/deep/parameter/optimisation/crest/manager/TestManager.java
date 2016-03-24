package com.deep.parameter.optimisation.crest.manager;

import java.util.List;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

import com.deep.parameter.optimisation.crest.utilities.ClassFinder;
import com.deep.parameter.optimisation.crest.utilities.Logger;

public class TestManager {

	private List<Class<?>> classes;
	private static long test_failed;
	private Logger log;

	public TestManager(String pkg, String report_dir){
		classes = ClassFinder.find(pkg);
		test_failed = 0;
		log = new Logger(report_dir+"/TestFailed");
	}

	public void executeTest(String apk){
		test_failed = 0;
		for (Class testCase : classes)
		{
			log.writeLog(apk+" Class: "+testCase.getName(), "");
			runTestCase(testCase);
		}
	}

	private void runTestCase(Class testCase)
	{
		Result result = JUnitCore.runClasses(testCase);
		for (Failure failure : result.getFailures())
		{
			test_failed++;
			log.writeLog("failure number: "+test_failed, failure.toString());
		}
	}

	public long getTestFailed(){
		return test_failed;
	}
}
