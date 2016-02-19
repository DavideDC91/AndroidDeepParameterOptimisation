package com.deep.parameter.optimisation.crest.test;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;

import static org.junit.Assert.*;

import java.io.File;
import java.net.URL;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

public class TimeTrackerTest {
    private static AppiumDriver<AndroidElement> driver;

    @BeforeClass
    public static void  setUp() throws Exception {
        // set up appium
        File classpathRoot = new File(System.getProperty("user.dir"));
        File appDir = new File(classpathRoot, "../../../");
        File app = new File(appDir, "Documents/workspace/AndroidDeepParameterOptimisation/android-timetracker/bin/android-timetracker-debug.apk");
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability("deviceName","0ac20634");
        capabilities.setCapability("platformVersion", "4.4");
        capabilities.setCapability("app", app.getAbsolutePath());
        capabilities.setCapability("appPackage", "com.markuspage.android.atimetracker");
        capabilities.setCapability("appActivity", ".Tasks");
        driver = new AndroidDriver<>(new URL("http://127.0.0.1:4725/wd/hub"), capabilities);
    }
    
    
    @AfterClass
    public static void tearDown() throws Exception {
        driver.quit();
    }

    @Test
    public void addTask(){
        WebElement ok = driver.findElementById("button1");
        assertNotNull(ok);
        ok.click();
    	WebElement opt = driver.findElementByClassName("android.widget.ImageButton");
        assertNotNull(opt);
    	opt.click();
    	WebElement title = driver.findElementById("title");
        assertNotNull(title);
    	title.click();
    	WebElement task_name = driver.findElementById("task_edit_name_edit");
        assertNotNull(task_name);
    	task_name.sendKeys("Test1");
    	WebElement confirm = driver.findElementById("button1");
        assertNotNull(confirm);
        confirm.click();
        WebElement el = driver.findElement(By.name("Test1"));
        assertNotNull(el);
        assertEquals(el.getText(),"Test1");
        el.click();
    }
    
    @Test
    public void updateTask(){
        WebElement el = driver.findElement(By.name("Test1"));
        assertNotNull(el);
        TouchAction action = new TouchAction(driver);
        action.longPress(el).release().perform();
        WebElement edit = driver.findElement(By.name("Edit Task"));
        assertNotNull(edit);
        edit.click();
        WebElement task_name = driver.findElementById("task_edit_name_edit");
        assertNotNull(task_name);
    	task_name.clear();
    	task_name.sendKeys("Test2");
    	WebElement confirm = driver.findElementById("button1");
        assertNotNull(confirm);
        el = driver.findElement(By.name("Test2"));
        assertEquals(el.getText(),"Test2");
        confirm.click();
    }
    
    @Test
    public void removeTask(){
        WebElement el = driver.findElement(By.name("Test2"));
        assertNotNull(el);
        TouchAction action = new TouchAction(driver);
        action.longPress(el).release().perform();
        WebElement delete = driver.findElement(By.name("Delete Task"));
        assertNotNull(delete);
        delete.click();
    	WebElement confirm = driver.findElementById("button1");
        assertNotNull(confirm);
        confirm.click();
    }

}
