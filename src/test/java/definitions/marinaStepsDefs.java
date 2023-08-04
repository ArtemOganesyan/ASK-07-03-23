//marinasteps


package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import support.Helper;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.Iterator;
import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;
public class marinaStepsDefs {

    private String xpathForQuestion(String questionID) {
        return "//*[contains(text(), '" + questionID + "')]/../../..//mat-slider";
    }

    @Then("MUJ type {string} into {string}")
    public void mujTypeInto(String text, String element_name) {
        getDriver().findElement(By.xpath(MUJXPathLib.ElementXpathForName(element_name))).sendKeys(text);
    }

    @Then("MUJ move slider with xpath {string} to the {string} for {int} steps")
    public void mujMoveSliderWithXpathToTheForSteps(String xpath, String direction, int steps) {
        WebElement slider = getDriver().findElement(By.xpath(xpath));
        for (int i = 0; i <= steps; i++) {
            if (direction.equals("right")) {
                slider.sendKeys(Keys.ARROW_RIGHT);
            }
            if (direction.equals("left")) {
                slider.sendKeys(Keys.ARROW_LEFT);
            }
        }
    }

    @Then("MUJ element {string} should not contain text {string}")
    public void mujElementShouldNotContainText(String element_name, String text) {
        String actualText = getDriver().findElement(By.xpath(MUJXPathLib.ElementXpathForName(element_name))).getText();
        assertThat(actualText).doesNotContain(text);
    }
    @Then("MUJ activate user with email {string}")
    public void mujActivateUserWithEmail(String email) throws SQLException, IOException {
        String activationResult = Helper.getAccessToken(email);
        String[] ar = activationResult.split(";");
        Helper.activateUser(Integer.parseInt(ar[0]), ar[1]);
    }
}

