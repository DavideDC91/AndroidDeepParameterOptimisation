package com.deep.parameter.optimisation.crest.att;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import java.io.File;
import java.net.URL;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

public class ReportTest {
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
		driver = new AndroidDriver<>(new URL("http://127.0.0.1:4725/wd/hub"), capabilities);
	}
	
	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}

	@Test
	public void showReportTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement report = driver.findElement(By.name("Report"));
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
		WebElement report = driver.findElement(By.name("Report"));
		report.click();
		WebElement decr = driver.findElementById("decrement_week");
		decr.click();
		WebElement incr = driver.findElementById("increment_week");
		incr.click();
		WebElement opt1 = driver.findElementByClassName("android.widget.ImageButton");
		opt1.click();
		WebElement export = driver.findElement(By.name("Export"));
		export.click();
		WebElement ok2 = driver.findElementById("button1");
		ok2.click();
		driver.navigate().back();
	}

}
