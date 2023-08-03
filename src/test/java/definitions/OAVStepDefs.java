/*
 * Created by Artem Oganesyan on 02.08.2023
 */

package definitions;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cucumber.api.java.en.Then;
import okhttp3.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import support.Helper;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class OAVStepDefs {
    @Then("OAV activate user with email {string}")
    public void oavActivateUserWithEmail(String email) throws SQLException, IOException {
        String activationResult = Helper.getAccessToken(email);
        String[] ar = activationResult.split(";");
        Helper.activateUser(Integer.parseInt(ar[0]), ar[1]);
    }

    @Then("OAV test entire application")
    public void oavTestEntireApplication() {
        getDriver().get("http://ask-stage.portnov.com");
//        getDriver().navigate().to("http://ask-stage.portnov.com");
        boolean logoDisplayed = getDriver()
                .findElement(By.xpath("//img[@class='center-logo']"))
                .isDisplayed();
        assertThat(logoDisplayed).isTrue();

    }

    @Then("OAV authenticate as a teacher")
    public void oavAuthenticateAsATeacher() throws IOException {
        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        MediaType mediaType = MediaType.parse("application/json");
        RequestBody body = RequestBody.create(mediaType, "{\n  \"email\": \"teacher@gmail.com\",\n  \"password\": \"12345Abc\"\n}");
        Request request = new Request.Builder()
                .url("http://ask-stage.portnov.com/api/v1/sign-in")
                .method("POST", body)
                .addHeader("Content-Type", "application/json")
                .build();
        Response response = client.newCall(request).execute();
        System.out.println(response.body().string());
        var json = JsonParser.parseString(response.body().string());
    }
}
