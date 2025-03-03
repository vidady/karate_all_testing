package tests.desktop;

import com.intuit.karate.junit5.Karate;

public class DesktopRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run(this.getClass().getPackageName().split("\\.")[1]).relativeTo(getClass());
    }

}


