package com.deep.parameter.optimisation.crest.test.sandwichroulette;

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

public class SandwichRouletteTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","0a2a2496");
		capabilities.setCapability("udid","0a2a2496");
		capabilities.setCapability("platformVersion", "4.4");
		capabilities.setCapability("appPackage", "com.maxfierke.sandwichroulette");
		capabilities.setCapability("appActivity", ".SandwichRoulette");
		capabilities.setCapability("noReset", true);
		driver = new AndroidDriver<>(new URL("http://0.0.0.0:4750/wd/hub"), capabilities);
		try {
			TimeUnit.SECONDS.sleep(5);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}

	@Test
	public void makeSandwichTest(){
		WebElement el1 = driver.findElementById("sammichNameField");
		el1.clear();
		el1.sendKeys("Best Sandwich ever");
		el1 = driver.findElementById("baseSelect");
		el1.click();
		el1 = driver.findElementByName("Chicken");
		el1.click();
		el1 = driver.findElementById("breadSelect");
		el1.click();
		el1 = driver.findElementByName("Wheat");
		el1.click();
		el1 = driver.findElementById("cheeseSelect");
		el1.click();
		el1 = driver.findElementByName("Provolone");
		el1.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Save");
		el1.click();
		if(!driver.findElementsByName("Yes").isEmpty()) {
			WebElement el = driver.findElementByName("Yes");
			el.click();
			el1 = driver.findElementByName("OK");
			el1.click();
		} else {
			el1 = driver.findElementByName("OK");
			el1.click();
		}
	}

	@Test
	public void randomizeTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Randomize");
		el1.click();
	}

	@Test
	public void openTest(){
		WebElement el1 = driver.findElementById("sammichNameField");
		el1.clear();
		el1.sendKeys("Best");
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Save");
		el1.click();
		if(!driver.findElementsByName("Yes").isEmpty()) {
			WebElement el = driver.findElementByName("Yes");
			el.click();
			el1 = driver.findElementByName("OK");
			el1.click();
		} else {
			el1 = driver.findElementByName("OK");
			el1.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Open");
		el1.click();
		el1 = driver.findElementByName("Best");
		el1.click();
	}

	@Test
	public void removeTest(){
		WebElement el1 = driver.findElementById("sammichNameField");
		el1.clear();
		el1.sendKeys("King");
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Save");
		el1.click();
		if(!driver.findElementsByName("Yes").isEmpty()) {
			WebElement el = driver.findElementByName("Yes");
			el.click();
			el1 = driver.findElementByName("OK");
			el1.click();
		} else {
			el1 = driver.findElementByName("OK");
			el1.click();
		}	
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el1 = driver.findElementByName("Remove");
		el1.click();
		el1 = driver.findElementByName("King");
		el1.click();
		el1 = driver.findElementByName("Yes");
		el1.click();
		el1 = driver.findElementByName("OK");
		el1.click();
	}

	@Test
	public void aboutTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("About");
		el1.click();
		el1 = driver.findElementByName("Idea");
		el1.click();
		el1 = driver.findElementByName("License");
		el1.click();
		driver.navigate().back();
	}

	@Test
	public void settingsTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Settings");
		el1.click();
		el1 = driver.findElementByName("Randomize Sandwich Base");
		el1.click();
		el1.click();
		el1 = driver.findElementByName("Randomize Bread");
		el1.click();
		el1.click();
		el1 = driver.findElementByName("Randomize Cheese");
		el1.click();
		el1.click();
		el1 = driver.findElementByName("Randomize by Shake");
		el1.click();
		el1.click();
		el1 = driver.findElementByName("Ingredients");
		el1.click();
		driver.navigate().back();
		el1 = driver.findElementByName("Sauce Settings");
		el1.click();
		driver.navigate().back();
		driver.navigate().back();
	}

}
