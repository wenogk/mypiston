#include <iostream>
#include <nlohmann/json.hpp>

int main(void) {
    // Create a simple JSON object
    nlohmann::json j;
    j["message"] = "OK";
    
    // Convert JSON to string and print the message
    std::string message = j["message"];
    std::cout << message;
    
    return 0;
}