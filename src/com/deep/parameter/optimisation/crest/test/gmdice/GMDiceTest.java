package com.deep.parameter.optimisation.crest.test.gmdice;


import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import io.appium.java_client.android.AndroidKeyCode;

import static org.junit.Assert.*;

import java.io.File;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

public class GMDiceTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","0ac20634");
		capabilities.setCapability("udid","0ac20634");
		capabilities.setCapability("platformVersion", "4.4");
		capabilities.setCapability("newCommandTimeout", "20");
		capabilities.setCapability("appPackage", "de.duenndns.gmdice");
		capabilities.setCapability("appActivity", ".GameMasterDice");
		capabilities.setCapability("noReset", true);
		driver = new AndroidDriver<>(new URL("http://0.0.0.0:4723/wd/hub"), capabilities);
	}


	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}

	@Test
	public void rollTest(){
		WebElement el1 = driver.findElementById("die0");
		el1.click();
		el1 = driver.findElementById("die1");
		el1.click();
		el1 = driver.findElementById("die2");
		el1.click();
		el1 = driver.findElementById("die3");
		el1.click();
	}

	@Test
	public void moreTest(){
		WebElement el1 = driver.findElementById("more");
		el1.click();
		el1 = driver.findElementByName("Cancel");
		el1.click();
		el1 = driver.findElementById("more");
		el1.click();
		el1 = driver.findElementByName("1d10");
		el1.click();
		el1 = driver.findElementById("more");
		el1.click();
		java.util.List<AndroidElement> el2 = driver.findElementsById("text1");
		el1 = el2.get(el2.size()-1);
		el1.click();
		el1 = driver.findElementByName("Cancel");
		el1.click();
		el1 = driver.findElementById("more");
		el1.click();
		el2 = driver.findElementsById("text1");
		el1 = el2.get(el2.size()-1);
		el1.click();
		el1 = driver.findElementById("timepicker_input");
		el1.clear();
		el1.sendKeys("4");
		el1 = driver.findElementById("spin_sides");
		el1.click();
		el1 = driver.findElementByName("8");
		el1.click();
		el1 = driver.findElementByName("OK");
		el1.click();
	}

	@Test
	public void keepScreenOnTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Keep screen on");
		el1.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Keep screen on");
		el1.click();
	}
	
	@Test
	public void clearLogTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Clear log");
		el1.click();
	}
	
	@Test
	public void devAboutTest(){
		try {
			TimeUnit.SECONDS.sleep(5);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("About...");
		el1.click();
		el1 = driver.findElementByName("OK");
		el1.click();
	}

	@Test
	public void setButtonTest(){
		WebElement el1 = driver.findElementById("die1");
		TouchAction action = new TouchAction(driver);
		action.longPress(el1).release().perform();
		el1 = driver.findElementByName("Cancel");
		el1.click();
		el1 = driver.findElementById("die1");
		action = new TouchAction(driver);
		action.longPress(el1).release().perform();
		java.util.List<AndroidElement> el2 = driver.findElementsById("text1");
		el1 = el2.get(8);
		el1.click();
	}

}
