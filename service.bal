import ballerina/http;
import ballerina/log;


public type VerificationStatus record {
    string accountId;
    string status;
    string description;
    string verifiedOn;
};

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for storing customer verifications
    # + status - verificaiton status of a customer
    # + return - an eror or nothiing
    resource function post customer/verification(@http:Payload VerificationStatus status) returns error? {
        log:printInfo("varification status recieved", status = status);
    }
}
