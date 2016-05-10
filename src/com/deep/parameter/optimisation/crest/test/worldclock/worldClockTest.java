package com.deep.parameter.optimisation.crest.test.worldclock;

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

public class worldClockTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","0a3500fb");
		capabilities.setCapability("udid","0a3500fb");
		capabilities.setCapability("platformVersion", "4.4");
		capabilities.setCapability("appPackage", "com.irahul.worldclock");
		capabilities.setCapability("appActivity", ".WorldClockActivity");
		capabilities.setCapability("noReset", true);
		driver = new AndroidDriver<>(new URL("http://0.0.0.0:4725/wd/hub"), capabilities);
	}


	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}

	@Test
	public void addZoneTest(){
		if(!driver.findElementsById("dialog_filter_text").isEmpty()) {
			WebElement el = driver.findElementById("dialog_filter_text");
			el.sendKeys("rome");
			el = driver.findElementById("dialog_list_icon");
			el.click();
			el = driver.findElement(By.name("Save"));
			el.click();
		}
		WebElement el1 = driver.findElement(By.name("Add Zone"));
		el1.click();
		el1 = driver.findElementById("dialog_filter_text");
		el1.sendKeys("paris");
		el1 = driver.findElementById("dialog_list_icon");
		el1.click();
		el1 = driver.findElement(By.name("Save"));
		el1.click();
	}

	@Test
	public void cancelAddZoneTest(){
		if(!driver.findElementsById("dialog_filter_text").isEmpty()) {
			WebElement el = driver.findElementById("dialog_filter_text");
			el.sendKeys("rome");
			el = driver.findElementById("dialog_list_icon");
			el.click();
			el = driver.findElement(By.name("Save"));
			el.click();
		}
		WebElement el1 = driver.findElement(By.name("Add Zone"));
		el1.click();
		el1 = driver.findElementById("dialog_filter_text");
		el1.sendKeys("paris");
		el1 = driver.findElementById("dialog_list_icon");
		el1.click();
		el1 = driver.findElement(By.name("Cancel"));
		el1.click();
	}

	@Test
	public void aboutTest(){
		if(!driver.findElementsById("dialog_filter_text").isEmpty()) {
			WebElement el = driver.findElementById("dialog_filter_text");
			el.sendKeys("rome");
			el = driver.findElementById("dialog_list_icon");
			el.click();
			el = driver.findElement(By.name("Save"));
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 =  driver.findElementByXPath("//*[@text='About']");
		el1.click();
		el1 = driver.findElement(By.name("OK"));
		el1.click();
	}

	@Test
	public void AddZoneFromMenuTest(){
		if(!driver.findElementsById("dialog_filter_text").isEmpty()) {
			WebElement el = driver.findElementById("dialog_filter_text");
			el.sendKeys("rome");
			el = driver.findElementById("dialog_list_icon");
			el.click();
			el = driver.findElement(By.name("Save"));
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElement(By.name("Add Zone"));
		el1.click();
		el1 = driver.findElementById("dialog_filter_text");
		el1.sendKeys("london");
		el1 = driver.findElementById("dialog_list_icon");
		el1.click();
		el1 = driver.findElement(By.name("Save"));
		el1.click();
	}

	@Test
	public void removeZoneTest(){
		if(!driver.findElementsById("dialog_filter_text").isEmpty()) {
			WebElement el = driver.findElementById("dialog_filter_text");
			el.sendKeys("rome");
			el = driver.findElementById("dialog_list_icon");
			el.click();
			el = driver.findElement(By.name("Save"));
			el.click();
		}
		//if(!driver.findElementsByName("Europe/Rome (Central European Standard Time)").isEmpty()) {
		WebElement el1 = driver.findElement(By.name("Add Zone"));
		el1.click();
		el1 = driver.findElementById("dialog_filter_text");
		el1.sendKeys("rome");
		el1 = driver.findElementById("dialog_list_icon");
		el1.click();
		el1 = driver.findElement(By.name("Save"));
		el1.click();
		//}
		el1 = driver.findElement(By.name("Europe/Rome (Central European Standard Time)"));
		TouchAction action = new TouchAction(driver);
		action.longPress(el1).release().perform();
		el1 = driver.findElement(By.name("Remove"));
		el1.click();
	}

	@Test
	public void editZoneTest(){
		if(!driver.findElementsById("dialog_filter_text").isEmpty()) {
			WebElement el = driver.findElementById("dialog_filter_text");
			el.sendKeys("rome");
			el = driver.findElementById("dialog_list_icon");
			el.click();
			el = driver.findElement(By.name("Save"));
			el.click();
		}
		//if(!driver.findElementsByName("Europe/Rome (Central European Standard Time)").isEmpty()) {
		WebElement el1 = driver.findElement(By.name("Add Zone"));
		el1.click();
		el1 = driver.findElementById("dialog_filter_text");
		el1.sendKeys("rome");
		el1 = driver.findElementById("dialog_list_icon");
		el1.click();
		el1 = driver.findElement(By.name("Save"));
		el1.click();
		//}
		el1 = driver.findElement(By.name("Europe/Rome (Central European Standard Time)"));
		TouchAction action = new TouchAction(driver);
		action.longPress(el1).release().perform();
		el1 = driver.findElement(By.name("Edit"));
		el1.click();
		el1 = driver.findElementById("button_timezone_edit_list");
		el1.click();
		el1 = driver.findElementById("dialog_filter_text");
		el1.sendKeys("madrid");
		el1 = driver.findElementById("dialog_list_icon");
		el1.click();
		el1 = driver.findElementById("timezone_edit_displayname");
		el1.sendKeys("Madrid Time Zone");
		el1 = driver.findElement(By.name("Save"));
		el1.click();

	}

}
