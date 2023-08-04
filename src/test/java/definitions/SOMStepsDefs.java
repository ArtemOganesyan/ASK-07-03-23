package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

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


    @Then("I click on element with xpath {string} for {int} times")
    public void iClickOnElementWithXpathForTimes(String xpath, int times) {
        for (int i = 0; i < times; i++){
            getDriver().findElement(By.xpath(xpath)).click();
        }
    }

    @Then("SOM type {string} into {string}")
    public void somTypeInto(String text, String element_name){
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
}
