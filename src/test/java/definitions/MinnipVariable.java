package definitions;

public class MinnipVariable {
    public static String ElementXpathForText(String name) {
        switch (name) {
            case ("Email Field"):
                return "//input[@formcontrolname='email']";
            case ("Password Field"):
                return "//input[@formcontrolname='password']";
            case ("Logo"):
                return "//img[@class='center-logo']";
        }
        return"";
    }
}
