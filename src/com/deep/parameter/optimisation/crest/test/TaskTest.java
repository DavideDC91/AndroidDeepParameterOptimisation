package com.deep.parameter.optimisation.crest.test;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;

import static org.junit.Assert.*;

import java.io.File;
import java.net.URL;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

public class TaskTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		//File app = new File(appDir, "Documents/workspace/AndroidDeepParameterOptimisation/android-timetracker/bin/android-timetracker.apk");
		File app = new File(appDir, "Documents/workspace/android-timetracker/bin/android-timetracker-instrumented.apk");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","0ac20634");
		capabilities.setCapability("platformVersion", "4.4");
		capabilities.setCapability("app", app.getAbsolutePath());
		capabilities.setCapability("appPackage", "com.markuspage.android.atimetracker");
		capabilities.setCapability("appActivity", ".Tasks");
		capabilities.setCapability("noReset", true);
		//capabilities.setCapability("fullReset", false);
		driver = new AndroidDriver<>(new URL("http://127.0.0.1:4725/wd/hub"), capabilities);
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
		WebElement el = driver.findElement(By.name("Test1"));
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
		WebElement el = driver.findElement(By.name("Test2"));
		assertEquals(el.getText(),"Test2");
		el.click();
		WebElement el1 = driver.findElement(By.name("Test2"));
		TouchAction action = new TouchAction(driver);
		action.longPress(el1).release().perform();
		WebElement edit = driver.findElement(By.name("Edit Task"));
		edit.click();
		WebElement task_name1 = driver.findElementById("task_edit_name_edit");
		task_name1.clear();
		task_name1.sendKeys("Test3");
		WebElement confirm1 = driver.findElementById("button1");
		el1 = driver.findElement(By.name("Test3"));
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
		WebElement el = driver.findElement(By.name("Test4"));
		TouchAction action = new TouchAction(driver);
		action.longPress(el).release().perform();
		WebElement show = driver.findElement(By.name("Show Times"));
		show.click();

		WebElement opt1 = driver.findElementByClassName("android.widget.ImageButton");
		opt1.click();
		WebElement el2 = driver.findElementById("title");
		el2.click();
		driver.hideKeyboard();
		//driver.scrollTo("OK");
		//List<AndroidElement> date = driver.findElementsById("title");
		//date.get(0).sendKeys("Apr");
		//date.get(1).sendKeys("17");
		//date.get(2).sendKeys("1972"); 
		//WebElement ok1 = driver.findElementById("accept");
		//ok1.click();
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
		WebElement el = driver.findElement(By.name("Test4"));
		TouchAction action = new TouchAction(driver);
		action.longPress(el).release().perform();
		WebElement show = driver.findElement(By.name("Delete Task"));
		show.click();
		WebElement confirm1 = driver.findElementById("button1");
		confirm1.click();
	}

	
}
