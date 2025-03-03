package tests.homepage;

import com.intuit.karate.junit5.Karate;

public class HomePageRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run(this.getClass().getPackageName().split("\\.")[1]).relativeTo(getClass());
    }

}


