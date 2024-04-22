package helpers;


import com.github.javafaker.Faker;
import com.oracle.truffle.regex.tregex.util.json.JsonObject;
import net.minidev.json.JSONObject;

public class DataGenerator {

    public static String getRandomEmail(){
        return new Faker().name().firstName().toLowerCase()+"@test.com";
    }

    public static String getRandomArticleTitle(){
        return new Faker().name().title().toLowerCase();
    }

    public static JSONObject getRandomArticleJsonTitle(){
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("title",new Faker().name().title().toLowerCase());
        return jsonObject;
    }
}
