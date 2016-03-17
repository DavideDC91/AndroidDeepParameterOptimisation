package com.deep.parameter.optimisation.crest;

import java.util.List;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestManager {

	private List<Class<?>> classes;
	private static long test_failed;
	private Logger log;

	public TestManager(String pkg){
		classes = ClassFinder.find(pkg);
		test_failed = 0;
		log = new Logger("TestFailed");
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
