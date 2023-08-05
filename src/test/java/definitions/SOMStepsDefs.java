package definitions;

import com.google.gson.JsonParser;
import cucumber.api.java.en.Then;
import okhttp3.*;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import static support.TestContext.getDriver;

public class SOMStepsDefs {

    public static String ElementXpathForName(String name) {
        switch (name) {
            case ("Email field"):
                return "//input[@formcontrolname='email']";
            case ("Password field"):
                return "//input [@formcontrolname='password']";
        }
        return "";
    }

    @Then("I move slider with xpath {string} to the {string} for {int} steps")
    public void iMoveSliderWithXpathToTheForSteps(String xpath, String direction, int steps) {
        WebElement slider = getDriver().findElement(By.xpath(xpath));
        for (int i = 0; i < steps; i++) {
            if (direction.equals("right")) {
                slider.sendKeys(Keys.ARROW_RIGHT);
            }
            if (direction.equals("left")) {
                slider.sendKeys(Keys.ARROW_LEFT);
            }
        }
    }


    @Then("SOM click on element with xpath {string} for {int} times")
    public void iClickOnElementWithXpathForTimes(String xpath, int times) {
        for (int i = 0; i < times; i++) {
            getDriver().findElement(By.xpath(xpath)).click();
        }
    }

    @Then("SOM type {string} into {string}")
    public void somTypeInto(String text, String element_name) {
        getDriver().findElement(By.xpath(SOMStepsDefs.ElementXpathForName(element_name))).sendKeys(text);
    }


    @Then("SOM click on {string} button")
    public void iClickOnElementUsersManagement(String xpath) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Management')]")).click();
    }

    @Then("SOM {string}")
    public void iClickOnElementSignIn(String xpath) {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @Then("SOM click on {string}S account")
    public void iClickOnElementStudAcc(String xpath) {
        getDriver().findElement(By.xpath("//h4[contains(text(),'Oleg ShagS')]")).click();
    }

    @Then("SOM click on {string}T account")
    public void iClickOnElementTeachAcc(String xpath) {
        getDriver().findElement(By.xpath("//h4[contains(text(),'Oleg ShagT')]")).click();
    }

    @Then("SOM select {string}")
    public void iClickOnElementOptions(String xpath) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'settings')]/../../..//button")).click();
    }

    @Then("SOM {string} user")
    public void somClickOnElementDeleteUser(String xpath) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'delete')]")).click();
    }

    @Then("SOM {string} deletion")
    public void iClickOnElementConfirmDeletion(String xpath) {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Delete')]")).click();
    }

    @Then("^SOM wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000L);
    }

    @Then("SOM go to {string} tab")
    public void iClickOnElementGoToTeach(String xpath) {
        getDriver().findElement(By.xpath("//div[contains(text(), 'Teachers')]")).click();
    }

    @Then("^SOM take screenshot$")
    public void somTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + new Date() + ".png"));
    }

}
