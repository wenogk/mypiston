import org.json.JSONObject;

public class Test {
    public static void main(String[] args) {
        // Create a simple JSON object
        JSONObject json = new JSONObject();
        json.put("message", "OK");
        
        // Parse and print the value
        System.out.println(json.getString("message"));
    }
}