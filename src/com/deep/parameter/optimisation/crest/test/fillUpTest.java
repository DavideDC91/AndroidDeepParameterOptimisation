package com.deep.parameter.optimisation.crest.test;

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

public class fillUpTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","0ac20634");
		capabilities.setCapability("platformVersion", "4.4");
		capabilities.setCapability("appPackage", "com.github.wdkapps.fillup");
		capabilities.setCapability("appActivity", ".StartupActivity");
		capabilities.setCapability("noReset", true);
		driver = new AndroidDriver<>(new URL("http://127.0.0.1:4725/wd/hub"), capabilities);
	}


	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}

	@Test
	public void addVehicleTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		WebElement el1 = driver.findElementById("buttonVehicleAdd");
		el1.click();
		el1 = driver.findElement(By.name("Cancel"));
		el1.click();
		el1 = driver.findElementById("buttonVehicleAdd");
		el1.click();
		el1 = driver.findElementById("textVehicleName");
		el1.sendKeys("Ferrari");
		el1 = driver.findElement(By.name("OK"));
		el1.click();
	}

	@Test
	public void addVehicleFromMenuTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Add Vehicle");
		el1.click();
		el1 = driver.findElementById("textVehicleName");
		el1.sendKeys("BMW");
		el1 = driver.findElement(By.name("OK"));
		el1.click();
	}

	@Test
	public void editVehicleFromMenuTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Edit Vehicle");
		el1.click();
		el1 = driver.findElementById("textVehicleName");
		el1.sendKeys("BMW");
		el1 = driver.findElement(By.name("OK"));
		el1.click();
	}

	@Test
	public void editVehicleTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		WebElement el1 = driver.findElementById("buttonVehicleEdit");
		el1.click();
		el1 = driver.findElement(By.name("Cancel"));
		el1.click();
		el1 = driver.findElementById("buttonVehicleEdit");
		el1.click();
		el1 = driver.findElementById("textVehicleName");
		el1.sendKeys("Lamborghini");
		el1 = driver.findElement(By.name("OK"));
		el1.click();
	}

	@Test
	public void deleteVehicleTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		WebElement el1 = driver.findElementById("buttonVehicleAdd");
		el1.click();
		el1 = driver.findElementById("textVehicleName");
		el1.sendKeys("Mercedes");
		el1 = driver.findElement(By.name("OK"));
		el1.click();
		el1 = driver.findElementById("buttonVehicleDelete");
		el1.click();
		el1 = driver.findElement(By.name("No"));
		el1.click();
		el1 = driver.findElementById("buttonVehicleDelete");
		el1.click();
		el1 = driver.findElement(By.name("Yes"));
		el1.click();
	}

	@Test
	public void deleteVehicleFromMenuTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Delete Vehicle");
		el1.click();
		el1 = driver.findElement(By.name("No"));
		el1.click();
		el1 = driver.findElementByName("Delete Vehicle");
		el1.click();
		el1 = driver.findElement(By.name("Yes"));
		el1.click();
	}

	@Test
	public void helpTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Help");
		el1.click();
		el1 = driver.findElement(By.name("OK"));
		el1.click();
	}

	@Test
	public void Settings(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el1 = driver.findElementByName("Settings");
		el1.click();
		el1 = driver.findElement(By.name("Units"));
		el1.click();
		el1 = driver.findElementById("text1");
		el1.click();
		el1 = driver.findElement(By.name("Currency"));
		el1.click();
		el1 = driver.findElementById("text1");
		el1.click();
		el1 = driver.findElement(By.name("Require Cost"));
		el1.click();
		el1.click();
		el1 = driver.findElement(By.name("Display Cost in Log"));
		el1.click();
		el1.click();
		el1 = driver.findElement(By.name("Display Notes in Log"));
		el1.click();
		el1.click();
		el1 = driver.findElement(By.name("Font size for plots"));
		el1.click();
		el1 = driver.findElementById("text1");
		el1.click();
		el1 = driver.findElement(By.name("Help"));
		el1.click();
		el1 = driver.findElement(By.name("OK"));
		el1.click();
		el1 = driver.findElement(By.name("About"));
		el1.click();
		driver.navigate().back();
		el1 = driver.findElement(By.name("License"));
		el1.click();
		el1 = driver.findElement(By.name("OK"));
		el1.click();
		driver.navigate().back();
	}

	@Test
	public void addFuelTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		WebElement el1 = driver.findElementByName("Add Fuel");
		el1.click();
		el1 = driver.findElementById("buttonEditDate");
		el1.click();
		el1 = driver.findElementById("amPm");
		el1.click();
		el1.click();
		el1 = driver.findElement(By.name("OK"));
		el1.click();
		el1 = driver.findElementById("editTextOdometer");
		el1.sendKeys("30");
		el1 = driver.findElementById("editTextCost");
		el1.sendKeys("5");
		el1 = driver.findElementById("editTextGallons");
		el1.sendKeys("60");
		el1 = driver.findElementById("checkBoxFullTank");
		el1.click();
		el1 = driver.findElementById("editTextNotes");
		el1.sendKeys("travel fuel");
		el1 = driver.findElement(By.name("OK"));
		el1.click();
		el1 = driver.findElement(By.name("Yes"));
		el1.click();
		el1 = driver.findElementById("imageCloseDialog");
		el1.click();
	}
	
	@Test
	public void logTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		WebElement el1 = driver.findElementByName("Log");
		el1.click();
		driver.navigate().back();
	}
	
	@Test
	public void plotsTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		WebElement el1 = driver.findElementByName("Plots");
		el1.click();
		el1 = driver.findElementByName("6m");
		el1.click();
		el1 = driver.findElementByName("12m");
		el1.click();
		el1 = driver.findElementByName("2016");
		el1.click();
		el1 = driver.findElementByName("All");
		el1.click();
		el1 = driver.findElementByName("1m");
		el1.click();
		driver.navigate().back();
	}
	
	@Test
	public void statisticsTest(){
		if(!driver.findElementsById("title_template").isEmpty()) {
			WebElement el = driver.findElementById("text1");
			el.click();
			el = driver.findElementById("textVehicleName");
			el.sendKeys("Fiat Panda");
			el = driver.findElement(By.name("OK"));
			el.click();
		}
		WebElement el1 = driver.findElementByName("Statistics");
		el1.click();
		el1 = driver.findElementByName("6m");
		el1.click();
		el1 = driver.findElementByName("12m");
		el1.click();
		el1 = driver.findElementByName("2016");
		el1.click();
		el1 = driver.findElementByName("All");
		el1.click();
		el1 = driver.findElementByName("1m");
		el1.click();
		driver.navigate().back();
	}

}
