package definitions;

public class MUJXPathLib {
    public static String ElementXpathForName(String name) {
        switch (name) {
            case ("Email field"):
                return "//input[@formcontrolname='email']";
            case ("Password field"):
                return "//input[@formcontrolname='password']";
            case("Logo"):
                return "//img[@class='center-logo']";
        }
        return"";
    }
}
