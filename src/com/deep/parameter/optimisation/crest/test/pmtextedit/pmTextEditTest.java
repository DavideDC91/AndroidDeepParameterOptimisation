package com.deep.parameter.optimisation.crest.test.pmtextedit;

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

public class pmTextEditTest {
	private static AppiumDriver<AndroidElement> driver;

	@BeforeClass
	public static void  setUp() throws Exception {
		// set up appium 
		File classpathRoot = new File(System.getProperty("user.dir"));
		File appDir = new File(classpathRoot, "../../../");
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("deviceName","091f4245");
		capabilities.setCapability("udid","091f4245");
		capabilities.setCapability("platformVersion", "4.4");
		capabilities.setCapability("newCommandTimeout", "20");
		capabilities.setCapability("appPackage", "org.paulmach.textedit");
		capabilities.setCapability("appActivity", ".pmTextEdit");
		capabilities.setCapability("noReset", true);
		driver = new AndroidDriver<>(new URL("http://0.0.0.0:4729/wd/hub"), capabilities);
	}


	@AfterClass
	public static void tearDown() throws Exception {
		driver.quit();
	}

	@Test
	public void saveTextTest(){ ////rivedere
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("New File"));
		el.click();
		WebElement opt = driver.findElementByClassName("android.widget.EditText");
		opt.click();
		opt.sendKeys("This is a test");
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el = driver.findElement(By.name("Save"));
		el.click();
		WebElement cancel = driver.findElementById("button2");
		cancel.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el = driver.findElement(By.name("Save"));
		el.click();
		if(!driver.findElementsByName("Browser").isEmpty()) {
			el = driver.findElement(By.name("Browser"));
			el.click();
			el = driver.findElementById("fb_usethisdirbutton");
			el.click();
			WebElement edit = driver.findElementById("filename_edit");
			edit.sendKeys("/sdcard/test");
			WebElement confirm = driver.findElementById("button1");
			confirm.click();
		}
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
	}

	
	@Test
	public void saveAsTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("Save As"));
		el.click();
		el = driver.findElement(By.name("Cancel"));
		el.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el = driver.findElement(By.name("Save As"));
		el.click();
		el = driver.findElement(By.name("Browser"));
		el.click();
		el = driver.findElementById("fb_usethisdirbutton");
		el.click();
		WebElement edit = driver.findElementById("filename_edit");
		edit.sendKeys("/sdcard/test");
		WebElement confirm = driver.findElementById("button1");
		confirm.click();
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
		}
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.BACK);
	}

	@Test
	public void openRecentTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("Recent"));
		el.click();
		if(!driver.findElements(By.name("test")).isEmpty()) {
			el = driver.findElement(By.name("test"));
			el.click();
		} else {
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.BACK);
		}
	}

	@Test
	public void openTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("Open"));
		el.click();
		el = driver.findElement(By.name("Cancel"));
		el.click();
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		el = driver.findElement(By.name("Open"));
		el.click();
		el = driver.findElement(By.name("Browser"));
		el.click();
		el = driver.findElementById("fb_usethisdirbutton");
		el.click();
		WebElement edit = driver.findElementById("filename_edit");
		edit.sendKeys("/sdcard/test");
		WebElement confirm = driver.findElementById("button1");
		confirm.click();
		if(!driver.findElementsById("button1").isEmpty()) {
			WebElement ok = driver.findElementById("button1");
			ok.click();
			confirm = driver.findElementById("button2");
			confirm.click();
		}
	}
	
	@Test
	public void searchTextTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("More"));
		el.click();
		el = driver.findElement(By.name("Search Text"));
		el.click();
		WebElement search = driver.findElementById("search_src_text");
		search.sendKeys("test");
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.ENTER);
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.BACK);
	}
	
	@Test
	public void emailAttachTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("More"));
		el.click();
		el = driver.findElement(By.name("Email as Attachment"));
		el.click();
		driver.navigate().back();
	}
	
	@Test
	public void openEmailTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("More"));
		el.click();
		el = driver.findElement(By.name("Email Text"));
		el.click();
		driver.navigate().back();
	}	
	
	@Test
	public void optionsTest(){
		((AndroidDriver) driver).pressKeyCode(AndroidKeyCode.MENU);
		WebElement el = driver.findElement(By.name("More"));
		el.click();
		el = driver.findElement(By.name("Options"));
		el.click();
		el = driver.findElement(By.name("Line Wrap"));
		el.click();
		el.click();
		el = driver.findElement(By.name("Auto Correct"));
		el.click();
		el.click();
		el = driver.findElement(By.name("Sentence Case"));
		el.click();
		el.click();
		el = driver.findElement(By.name("Auto Link"));
		el.click();
		el.click();
		el = driver.findElement(By.name("Clear Search Suggestions"));
		el.click();
		el = driver.findElement(By.name("Default Directory"));
		el.click();
		el = driver.findElementById("fb_usethisdirbutton");
		el.click();
		el = driver.findElement(By.name("Autocomplete Filenames"));
		el.click();
		el.click();
		el = driver.findElement(By.name("Clear Recent File List"));
		el.click();
		el = driver.findElement(By.name("Font"));
		el.click();
		el = driver.findElement(By.name("Serif"));
		el.click();
		el = driver.findElement(By.name("Monospace"));
		el.click();
		el = driver.findElementById("button1");
		el.click();
		el = driver.findElement(By.name("Font Size"));
		el.click();
		el = driver.findElement(By.name("Large"));
		el.click();
		el = driver.findElementById("button1");
		el.click();
		driver.scrollTo("Warranty Information");
		el = driver.findElement(By.name("Font Color"));
		el.click();
		el = driver.findElementById("button1");
		el.click();
		el = driver.findElement(By.name("Background Color"));
		el.click();
		el = driver.findElementById("button1");
		el.click();
		el = driver.findElement(By.name("Hide Filename Bar"));
		el.click();
		el.click();
		el = driver.findElement(By.name("Just a little FYI on the warranty"));
		el.click();
		el = driver.findElementById("button1");
		el.click();
		driver.navigate().back();
	}

}
