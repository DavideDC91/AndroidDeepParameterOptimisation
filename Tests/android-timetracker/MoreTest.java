package com.deep.parameter.optimisation.crest.test;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import java.io.File;
import java.net.URL;
import java.util.List;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

public class MoreTest {
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
	public void changeDateTest(){
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
		opt.click();
		WebElement more = driver.findElement(By.name("More…"));
		more.click();
		WebElement cdr = driver.findElement(By.name("Change date range"));
		cdr.click();
		WebElement range = driver.findElement(By.name("Today"));
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElement(By.name("This week"));
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElement(By.name("Yesterday"));
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElement(By.name("Last week"));
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElement(By.name("All"));
		range.click();
		opt.click();
		more.click();
		cdr.click();
		range = driver.findElement(By.name("Select range..."));
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
		WebElement more = driver.findElement(By.name("More…"));
		more.click();
		WebElement cdr = driver.findElement(By.name("Export view to CSV"));
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
		WebElement more = driver.findElement(By.name("More…"));
		more.click();
		WebElement cdr = driver.findElement(By.name("Back up to SD card"));
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
		WebElement more = driver.findElement(By.name("More…"));
		more.click();
		WebElement cdr = driver.findElement(By.name("Restore from backup"));
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
		WebElement more = driver.findElement(By.name("More…"));
		more.click();
		WebElement cdr = driver.findElement(By.name("Help"));
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
		WebElement more = driver.findElement(By.name("More…"));
		more.click();
		WebElement cdr = driver.findElement(By.name("Settings"));
		cdr.click();
		WebElement e = driver.findElement(By.name("12/24 hour mode"));
		e.click();
		WebElement e1 = driver.findElement(By.name("Multiple concurrently running tasks"));
		e1.click();
		WebElement e2 = driver.findElement(By.name("Sound"));
		e2.click();
		WebElement e3 = driver.findElement(By.name("Vibrate"));
		e3.click();
		WebElement e4 = driver.findElement(By.name("Font size"));
		e4.click();
		WebElement e5 = driver.findElement(By.name("Time display"));
		e5.click();
		WebElement e6 = driver.findElement(By.name("Week start day"));
		e6.click();
		WebElement e7 = driver.findElement(By.name("Monday"));
		e7.click();
		WebElement e8 = driver.findElement(By.name("Round report times"));
		e8.click();
		WebElement e9 = driver.findElement(By.name("No"));
		e9.click();
		WebElement done = driver.findElementById("pref_accept");
		done.click();
	}
}

