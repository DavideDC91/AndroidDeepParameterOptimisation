package com.deep.parameter.optimisation.crest.test.anstop;


import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import io.appium.java_client.android.AndroidKeyCode;

import static org.junit.Assert.*;

import java.io.File;
import java.net.URL;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

public class AnstopTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","0ac20634");
		capabilities.setCapability("udid","0ac20634");
		capabilities.setCapability("newCommandTimeout", "20");
		capabilities.setCapability("platformVersion", "4.4");
		capabilities.setCapability("appPackage", "An.stop");
		capabilities.setCapability("appActivity", ".Anstop");
		capabilities.setCapability("noReset", true);
		driver = new AndroidDriver<>(new URL("http://0.0.0.0:4723/wd/hub"), capabilities);
	}


	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}

	@Test
	public void stopWatchTest(){
		if(!driver.findElementsByName("Ok").isEmpty()) {
			WebElement el = driver.findElementByName("Ok");
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Mode");
		el1.click();
		el1 = driver.findElementByName("Stopwatch");
		el1.click();
		el1 = driver.findElementById("startButton");
		el1.click();
		el1 = driver.findElementById("lapButton");
		el1.click();
		el1 = driver.findElementById("startButton");
		el1.click();
		el1 = driver.findElementById("resetButton");
		el1.click();
		el1 = driver.findElementById("button2");
		el1.click();
		el1 = driver.findElementById("resetButton");
		el1.click();
		el1 = driver.findElementById("button1");
		el1.click();
	}

	@Test
	public void countdownTest(){
		if(!driver.findElementsByName("Ok").isEmpty()) {
			WebElement el = driver.findElementByName("Ok");
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Mode");
		el1.click();
		el1 = driver.findElementByName("Countdown");
		el1.click();
		el1 = driver.findElementById("hourSpinner");
		el1.click();
		el1 = driver.findElement(By.name("01"));
		el1.click();
		el1 = driver.findElementById("minSpinner");
		el1.click();
		el1 = driver.findElement(By.name("01"));
		el1.click();
		el1 = driver.findElementById("secSpinner");
		el1.click();
		el1 = driver.findElement(By.name("01"));
		el1.click();
		el1 = driver.findElementById("startButton");
		el1.click();
		el1.click();
		el1 = driver.findElementById("refreshButton");
		el1.click();
		el1 = driver.findElementById("button2");
		el1.click();
		el1 = driver.findElementById("refreshButton");
		el1.click();
		el1 = driver.findElementById("button1");
		el1.click();
	}

	@Test
	public void saveTest(){
		if(!driver.findElementsByName("Ok").isEmpty()) {
			WebElement el = driver.findElementByName("Ok");
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Save");
		el1.click();
		el1 = driver.findElementById("button2");
		el1.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Save");
		el1.click();
		el1 = driver.findElementByClassName("android.widget.EditText");
		el1.sendKeys("test");
		el1 = driver.findElementById("button1");
		el1.click();
	}

	@Test
	public void sendTest(){
		if(!driver.findElementsByName("Ok").isEmpty()) {
			WebElement el = driver.findElementByName("Ok");
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Send...");
		el1.click();
		driver.navigate().back();
	}

	@Test
	public void aboutTest(){
		if(!driver.findElementsByName("Ok").isEmpty()) {
			WebElement el = driver.findElementByName("Ok");
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("About");
		el1.click();
		el1 = driver.findElementById("button1");
		el1.click();	
	}

	@Test
	public void loadTest(){
		if(!driver.findElementsByName("Ok").isEmpty()) {
			WebElement el = driver.findElementByName("Ok");
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Save");
		el1.click();
		el1 = driver.findElementByClassName("android.widget.EditText");
		el1.clear();
		el1.sendKeys("test2");
		el1 = driver.findElementById("button1");
		el1.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Load");
		el1.click();
		el1 = driver.findElementByName("test2");
		el1.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Send...");
		el1.click();
		driver.navigate().back();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Export ...");
		el1.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Delete");
		el1.click();
		driver.navigate().back();
	}
	
	@Test
	public void settingsTest(){
		if(!driver.findElementsByName("Ok").isEmpty()) {
			WebElement el = driver.findElementByName("Ok");
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Settings");
		el1.click();
		el1 = driver.findElementByName("Motion Sensor");
		el1.click();
		el1.click();
		el1 = driver.findElementByName("Vibrate");
		el1.click();
		el1.click();
		el1 = driver.findElementByName("Mode at Startup");
		el1.click();
		el1 = driver.findElementById("button2");
		el1.click();
		el1 = driver.findElementByName("Mode at Startup");
		el1.click();
		el1 = driver.findElementByName("Stopwatch");
		el1.click();
		el1 = driver.findElementByName("Mode at Startup");
		el1.click();
		el1 = driver.findElementByName("Countdown");
		el1.click();
		el1 = driver.findElementByName("Split: h mm:ss:d");
		el1.click();
		el1 = driver.findElementByName("Lap: (+ h:mm:ss:d)");
		el1.click();
		el1.click();
		el1 = driver.findElementByName("Wall clock: @ hh:mm");
		el1.click();
		el1.click();
		driver.navigate().back();
	}
}
