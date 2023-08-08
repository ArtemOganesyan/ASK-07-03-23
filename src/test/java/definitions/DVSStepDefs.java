package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import support.Helper;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class DVSStepDefs {
//    @Then("I move slider with xpath {string}")
//    public void iMoveSliderWithXpath(String xpath) {
//        getDriver().findElement(By.xpath(xpath)).sendKeys(Keys.ARROW_LEFT);
//    }

    @Then("Svistunov move slider for {string} question to the {string} for {int} steps")
    public void iMoveSliderForQuestionToTheForSteps(String questionID, String direction, int steps) {
        WebElement slider = getDriver().findElement(By.xpath(xpathForQuestion(questionID)));
        for (int i = 0; i < steps; i++) {
            if (direction.equals("right")) {
                slider.sendKeys(Keys.ARROW_RIGHT);
            }
            if (direction.equals("left")) {
                slider.sendKeys(Keys.ARROW_LEFT);
            }
        }
    }

    private String xpathForQuestion(String questionID) {
        return "//*[contains(text(), '"+questionID+"')]/../../..//mat-slider";
    }

    @Then("DVS type {string} into {string}")
    public void dvsTypeInto(String text, String element_name) {
        getDriver().findElement(By.xpath(DVSXPathLib.ElementXpathForName(element_name))).sendKeys(text);
    }

    @Then("DVS register user with email {string}")
    public void dvsRegisterUserWithEmail(String userEmail) throws SQLException, IOException {
        String response = Helper.getAccessToken(userEmail);
        String[] respart = response.split(";");
        int userId = Integer.parseInt(respart[0]);
        String activationCode = respart [1];
        Helper.activateUser(userId, activationCode);
    }

    @Then("DVS click on element with xpath \"([^\"]*)\"$")
    public void dvsClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("DVS click on element using JavaScript with xpath \"([^\"]*)\"$")
    public void dvsClickOnElementUsingJavaScriptWithXpath(String xpath) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
    }

    @Then("DVS type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void dvsTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("DVS wait for element with xpath \"([^\"]*)\" to be present$")
    public void dvsWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @Then("DVS wait for element with xpath \"([^\"]*)\" to not be present$")
    public void dvsWaitForElementWithXpathToNotBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.not(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath))));
    }

    @Given("DVS open url \"([^\"]*)\"$")
    public void dvsOpenUrl(String url) {
        getDriver().get(url);
    }
}
