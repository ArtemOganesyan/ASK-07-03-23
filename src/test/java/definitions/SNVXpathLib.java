package definitions;

public class SNVXpathLib {
    public static String ElementXpathForName(String name) {
        switch (name) {
            case ("Email field"):
                return "//input[@formcontrolname='email']";
            case ("Password field"):
                return "//input[@formcontrolname='password']";
        }
        return "";

    }
}

