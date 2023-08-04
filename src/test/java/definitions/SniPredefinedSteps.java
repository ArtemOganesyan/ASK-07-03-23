package definitions;

import cucumber.api.java.en.Then;
import static support.TestContext.getDriver;
import org.openqa.selenium.By;


public class SniPredefinedSteps {
    @Then("I create {int} questions")
    public void iCreateQuestions(int numberofQuestions)throws InterruptedException {
        for (int i = 1; i <= numberofQuestions; i++) {
            getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
            Thread.sleep(250);
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), 'Q" + i + "')]/../../..//mat-radio-button[1]")).click();
            Thread.sleep(250);
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), 'Q" + i + "')]/../../..//textarea"))
                    .sendKeys("Question title");
            Thread.sleep(250);

        }
    }
}
