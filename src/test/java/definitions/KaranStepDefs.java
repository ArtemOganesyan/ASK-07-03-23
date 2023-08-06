package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import support.Helper;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class KaranStepDefs {
    @Then("I move slider with xpath {string}")
    public void iMoveSliderWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(Keys.ARROW_LEFT);
    }

    @Then("I move slider with xpath {string} to the {string} for {int} steps")
    public void IMoveSliderWithXpathToTheForSteps(String xpath, String direction, int steps) {
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

    @Then("Karan type {string} into {string}")
    public void karanTypeInto(String text, String element_name) {
        getDriver().findElement(By.xpath(KaranXpathLib.ElementXpathForName(element_name))).sendKeys(text);
    }

    @Then("Karan register user with email {string}")
    public void karanRegisterUserWithEmail(String userEmail) throws SQLException, IOException {
        String response = Helper.getAccessToken(userEmail);
        String[] respart = response.split(";");
        int userId = Integer.parseInt(respart[0]);
        String activationCode = respart[1];
        Helper.activateUser(userId, activationCode);
    }

    @Then("Karan create {int} questions")
    public void karanCreateQuestions(int numberOfQuestions) throws InterruptedException {
        for(int i=1; i<=numberOfQuestions; i++){
            getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]/../..")).click();
            Thread.sleep(250);
            getDriver().findElement(By.xpath("//mat-panel-title[contains (text(),'Q"+i+"')]/../../..//mat-radio-button[1]")).click();
            Thread.sleep(250);
            getDriver().findElement(By.xpath("//mat-panel-title[contains (text(),'Q"+i+"')]/../../..//textarea"))
                    .sendKeys("Question title");
            Thread.sleep(250);
        }
    }


    @Then("Karan activate user with email {string}")
    public void karanActivateUserWithEmail(String email) throws IOException, SQLException {
        String activationresult = Helper.getAccessToken(email);
        String [] ar = activationresult.split(";");
        Helper.activateUser(Integer.parseInt(ar[0]),ar[1]);
    }
}