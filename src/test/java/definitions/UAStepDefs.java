package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import com.google.gson.JsonParser;
import cucumber.api.java.en.Then;
import okhttp3.*;
import org.openqa.selenium.By;
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

public class UAStepDefs {
    @When("^UA type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void uaTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^UA click on element with xpath \"([^\"]*)\"$")
    public void uaClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("UA activate user with email {string}")
    public void uaActivateUserWithEmail(String email) throws SQLException, IOException {
        String activationResult = Helper.getAccessToken(email);
        String[] ar = activationResult.split(";");
        Helper.activateUser(Integer.parseInt(ar[0]), ar[1]);
    }
}
