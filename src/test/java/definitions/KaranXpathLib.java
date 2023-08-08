package definitions;

public class KaranXpathLib {
    public static String ElementXpathForName(String name){
        switch (name) {
            case ("Email field"):
                return"//input[@formcontrolname='email']";
            case ("Password field"):
                return "//input[@formcontrolname='password']";
            case ("New Password field"):
                return "//input[@formcontrolname='newPassword']";
            case ("Confirm Password field"):
                return "//input[@formcontrolname='confirmPassword']";
            case ("First Name field"):
                return "//input[@formcontrolname='firstName']";
            case ("Last Name field"):
                return "//input[@formcontrolname='lastName']";
            case ("Group field"):
                return "//input[@formcontrolname='group']";
            case ("Question field"):
                return "//textarea[@formcontrolname='question']";
        }
        return "";

    }
}