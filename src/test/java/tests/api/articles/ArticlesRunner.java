package tests.articles;

import com.intuit.karate.junit5.Karate;

public class ArticlesRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run(this.getClass().getPackageName().split("\\.")[1]).relativeTo(getClass());
    }

}


