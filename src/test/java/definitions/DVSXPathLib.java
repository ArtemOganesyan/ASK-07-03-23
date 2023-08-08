package definitions;

public class DVSXPathLib {
    public static String ElementXpathForName(String name){
        switch (name) {
            case ("Email field"):
                return "//input[@formcontrolname='email']";
            case ("Password field"):
                return "//input[@formcontrolname='password']";
        }
        return "";
    }
}
