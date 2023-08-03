/*
 * Created by Artem Oganesyan on 02.08.2023
 */

package definitions;

import cucumber.api.java.en.Then;
import support.Helper;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class OAVStepDefs {
    @Then("OAV activate user with email {string}")
    public void oavActivateUserWithEmail(String email) throws SQLException, IOException {
        String activationResult = Helper.getAccessToken(email);
        String[] ar = activationResult.split(";");
        Helper.activateUser(Integer.parseInt(ar[0]), ar[1]);
    }
}
