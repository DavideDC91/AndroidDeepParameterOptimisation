package com.deep.parameter.optimisation.crest.manager;

import java.util.List;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

import com.deep.parameter.optimisation.crest.utilities.ClassFinder;
import com.deep.parameter.optimisation.crest.utilities.Logger;
/**
 * This class allows to execute and manage the Tests to be run
 * @author Davide
 *
 */
public class TestManager {

	private List<Class<?>> classes;
	private static long test_failed;
	private Logger log;

	/**
	 * Constructor of the Class
	 * @param pkg package of the Test
	 * @param report_dir path where save the test report
	 */
	public TestManager(String pkg, String report_dir, String fileName){
		classes = ClassFinder.find(pkg);
		test_failed = 0;
		log = new Logger(report_dir+"/"+fileName);
	}

	/**
	 * This method allows to execute the test
	 * @param apk apk name tested
	 */
	@SuppressWarnings("rawtypes")
	public void executeTest(String apk){
		test_failed = 0;
		for (Class testCase : classes)
		{
			log.writeLog(apk+" Class: "+testCase.getName(), "");
			runTestCase(testCase);
		}
	}

	/**
	 * This method allows to run the single test case
	 * @param testCase Test case to be run
	 */
	@SuppressWarnings("rawtypes")
	private void runTestCase(Class testCase)
	{
		Result result = JUnitCore.runClasses(testCase);
		for (Failure failure : result.getFailures())
		{
			test_failed++;
			log.writeLog("failure number: "+test_failed, failure.toString());
		}
	}

	/**
	 * This method get the number of failures of the Tests
	 * @return number of test failed
	 */
	public long getTestFailed(){
		return test_failed;
	}
}
