option java_package = "com.hello.speech.api";

message SpeechResponse {
    optional string url = 1;
    optional string command_text = 2;
    optional string text = 3;
}