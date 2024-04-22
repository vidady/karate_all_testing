package tests.homepage;

import com.intuit.karate.junit5.Karate;

import java.io.File;
import java.lang.reflect.Method;
import java.nio.file.FileSystem;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;

public class HomePageRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run(this.getClass().getPackageName().split("\\.")[1]).relativeTo(getClass());
    }

}


