package definitions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class SNVStepdefs {
    @Then("SNV type {string} into {string}")
    public void snvTypeInto(String text, String elementName) {
        getDriver().findElement(By.xpath(SNVXpathLib.ElementXpathForName(elementName))).sendKeys(text);
    }

    @Then("SNV type {string} as quiz title")
    public void snvTypeAsQuizTitle(String text) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(text);

    }

    @When("SNV select {string} question type")
    public void snvSelectQuestionType(String question) {
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]/..")).click();
    }

    @Then("SNV move slider with xpath {string}")
    public void snvMoveSliderWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(Keys.ARROW_RIGHT);
    }

    @Then("SNV move slider with xpath {string} to the {string} for {int} steps")
    public void snvMoveSliderWithXpathToTheForSteps(String xpath, String direction, int steps) {
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

    @Then("I delete {string} from the list of quizzes")
    public void iDeleteFromTheListOfQuizzes(String quizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizTitle + "')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizTitle + "')]/../../..//span[text()='Delete']")).click();
        getDriver().findElement(By.xpath("//ac-modal-confirmation//span[text()='Delete']")).click();
        Thread.sleep(1000);
    }

    @Then("SNV verify error message with xpath {string}")
    public void snvVerifyErrorMessageWithXpath(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed());
    }
}
