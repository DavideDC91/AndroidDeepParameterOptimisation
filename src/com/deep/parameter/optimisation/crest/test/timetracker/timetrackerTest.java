package com.deep.parameter.optimisation.crest.test.timetracker;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;

import static org.junit.Assert.assertEquals;

import java.io.File;
import java.net.URL;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

import com.deep.parameter.optimisation.crest.manager.CommandManager;

public class timetrackerTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		//File app = new File(appDir, "Documents/workspace/AndroidDeepParameterOptimisation/android-timetracker/bin/android-timetracker.apk");
		//File app = new File(appDir, "Documents/workspace/android-timetracker/bin/android-timetracker-instrumented.apk");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","0ac20634");
		capabilities.setCapability("platformVersion", "4.4");
		//capabilities.setCapability("app", app.getAbsolutePath());
		capabilities.setCapability("appPackage", "com.markuspage.android.atimetracker");
		capabilities.setCapability("appActivity", ".Tasks");
		capabilities.setCapability("noReset", true);
		//capabilities.setCapability("fullReset", false);
		driver = new AndroidDriver<>(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
	}
	
	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}
	
	@Test
	public void addTaskTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement title = driver.findElementById("title");
		title.click();
		WebElement task_name = driver.findElementById("task_edit_name_edit");
		task_name.sendKeys("Test1");
		WebElement confirm = driver.findElementById("button1");
		confirm.click();
		WebElement el = driver.findElementByXPath("//*[@text='Test1']");
		assertEquals(el.getText(),"Test1");
		el.click();
	}

	@Test
	public void updateTaskTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement title = driver.findElementById("title");
		title.click();
		WebElement task_name = driver.findElementById("task_edit_name_edit");
		task_name.sendKeys("Test2");
		WebElement confirm = driver.findElementById("button1");
		confirm.click();
		WebElement el = driver.findElementByXPath("//*[@text='Test2']");
		assertEquals(el.getText(),"Test2");
		el.click();
		WebElement el1 = driver.findElementByXPath("//*[@text='Test2']");
		TouchAction action = new TouchAction(driver);
		action.longPress(el1).release().perform();
		WebElement edit = driver.findElementByXPath("//*[@text='Edit Task']");
		edit.click();
		WebElement task_name1 = driver.findElementById("task_edit_name_edit");
		task_name1.clear();
		task_name1.sendKeys("Test3");
		WebElement confirm1 = driver.findElementById("button1");
		el1 = driver.findElementByXPath("//*[@text='Test3']");
		assertEquals(el1.getText(),"Test3");
		confirm.click();
	}

	@Test
	public void showTimesTaskTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement title = driver.findElementById("title");
		title.click();
		WebElement task_name = driver.findElementById("task_edit_name_edit");
		task_name.sendKeys("Test4");
		WebElement confirm = driver.findElementById("button1");
		confirm.click();
		WebElement el = driver.findElementByXPath("//*[@text='Test4']");
		TouchAction action = new TouchAction(driver);
		action.longPress(el).release().perform();
		WebElement show = driver.findElementByXPath("//*[@text='Show Times']");
		show.click();
		WebElement opt1 = driver.findElementByClassName("android.widget.ImageButton");
		opt1.click();
		WebElement el2 = driver.findElementById("title");
		el2.click();
		driver.hideKeyboard();
		driver.navigate().back();
		driver.navigate().back();
	}

	@Test
	public void removeTaskTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement title = driver.findElementById("title");
		title.click();
		WebElement task_name = driver.findElementById("task_edit_name_edit");
		task_name.sendKeys("Test4");
		WebElement confirm = driver.findElementById("button1");
		confirm.click();
		WebElement el = driver.findElementByXPath("//*[@text='Test4']");
		TouchAction action = new TouchAction(driver);
		action.longPress(el).release().perform();
		WebElement show = driver.findElementByXPath("//*[@text='Delete Task']");
		show.click();
		WebElement confirm1 = driver.findElementById("button1");
		confirm1.click();
	}

	@Test
	public void changeDateTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement more = driver.findElementByXPath("//*[@text='More…']");
		more.click();
		WebElement cdr = driver.findElementByXPath("//*[@text='Change date range']");
		cdr.click();
		WebElement range = driver.findElementByXPath("//*[@text='Today']");
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElementByXPath("//*[@text='This week']");
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElementByXPath("//*[@text='Yesterday']");
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElementByXPath("//*[@text='Last week']");
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElementByXPath("//*[@text='All']");
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElementByXPath("//*[@text='Select range...']");
		range.click();
		WebElement done = driver.findElementById("button1");
		done.click();
		done = driver.findElementById("button1");
		done.click();
		done = driver.findElementById("button1");
		done.click();
	}
	
	@Test
	public void exportCSVTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement more = driver.findElementByXPath("//*[@text='More…']");
		more.click();
		WebElement cdr = driver.findElementByXPath("//*[@text='Export view to CSV']");
		cdr.click();
		WebElement done = driver.findElementById("button1");
		done.click();
	}
	
	@Test
	public void backupTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement more = driver.findElementByXPath("//*[@text='More…']");
		more.click();
		WebElement cdr = driver.findElementByXPath("//*[@text='Back up to SD card']");
		cdr.click();
		WebElement done = driver.findElementById("button1");
		done.click();
	}
	
	@Test
	public void restoreBackupTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement more = driver.findElementByXPath("//*[@text='More…']");
		more.click();
		WebElement cdr = driver.findElementByXPath("//*[@text='Restore from backup']");
		cdr.click();
		WebElement done = driver.findElementById("button1");
		done.click();
	}
	
	@Test
	public void helpTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement more = driver.findElementByXPath("//*[@text='More…']");
		more.click();
		WebElement cdr = driver.findElementByXPath("//*[@text='Help']");
		cdr.click();
		WebElement done = driver.findElementById("button1");
		done.click();
	}

	@Test
	public void settingsTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement more = driver.findElementByXPath("//*[@text='More…']");
		more.click();
		WebElement cdr = driver.findElementByXPath("//*[@text='Settings']");
		cdr.click();
		WebElement e = driver.findElementByXPath("//*[@text='12/24 hour mode']");
		e.click();
		WebElement e1 = driver.findElementByXPath("//*[@text='Multiple concurrently running tasks']");
		e1.click();
		WebElement e2 = driver.findElementByXPath("//*[@text='Sound']");
		e2.click();
		WebElement e3 = driver.findElementByXPath("//*[@text='Vibrate']");
		e3.click();
		WebElement e4 = driver.findElementByXPath("//*[@text='Font size']");
		e4.click();
		WebElement e5 = driver.findElementByXPath("//*[@text='Time display']");
		e5.click();
		WebElement e6 = driver.findElementByXPath("//*[@text='Week start day']");
		e6.click();
		WebElement e7 = driver.findElementByXPath("//*[@text='Sunday']");
		e7.click();
		WebElement e8 = driver.findElementByXPath("//*[@text='Round report times']");
		e8.click();
		WebElement e9 = driver.findElementByXPath("//*[@text='No']");
		e9.click();
		WebElement done = driver.findElementById("pref_accept");
		done.click();
	}
	
	@Test
	public void showReportTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement report = driver.findElementByXPath("//*[@text='Report']");
		report.click();
		WebElement decr = driver.findElementById("decrement_week");
		decr.click();
		WebElement incr = driver.findElementById("increment_week");
		incr.click();
		driver.navigate().back();
	}
	
	@Test
	public void exportTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement report = driver.findElementByXPath("//*[@text='Report']");
		report.click();
		WebElement decr = driver.findElementById("decrement_week");
		decr.click();
		WebElement incr = driver.findElementById("increment_week");
		incr.click();
		WebElement opt1 = driver.findElementByClassName("android.widget.ImageButton");
		opt1.click();
		WebElement export = driver.findElementByXPath("//*[@text='Export']");
		export.click();
		WebElement ok2 = driver.findElementById("button1");
		ok2.click();
		driver.navigate().back();
	}

}

