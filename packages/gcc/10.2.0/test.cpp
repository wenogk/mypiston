#include <iostream>
#include "rapidjson/document.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/writer.h"

int main(void) {
    // Create a simple JSON object
    rapidjson::Document d;
    d.SetObject();
    rapidjson::Value message;
    message.SetString("OK", d.GetAllocator());
    d.AddMember("message", message, d.GetAllocator());
    
    // Convert JSON to string and print the message
    rapidjson::StringBuffer buffer;
    rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);
    d.Accept(writer);
    
    std::cout << buffer.GetString();
    
    return 0;
}