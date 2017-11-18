@isTest
public class mockTest{
    static testMethod void myMethod(){
        test.startTest();
        soapSforceComSchemasClassTelecustom.LogInfo obj1 = new soapSforceComSchemasClassTelecustom.LogInfo();
        soapSforceComSchemasClassTelecustom.DebuggingInfo_element obj2 = new soapSforceComSchemasClassTelecustom.DebuggingInfo_element();
        soapSforceComSchemasClassTelecustom.customerWrap obj3= new soapSforceComSchemasClassTelecustom.customerWrap();
        soapSforceComSchemasClassTelecustom.address obj4= new soapSforceComSchemasClassTelecustom.address();
        soapSforceComSchemasClassTelecustom.SessionHeader_element obj5= new soapSforceComSchemasClassTelecustom.SessionHeader_element();
        soapSforceComSchemasClassTelecustom.newCustomerRegistration_element obj6= new soapSforceComSchemasClassTelecustom.newCustomerRegistration_element();
        soapSforceComSchemasClassTelecustom.newCustomerRegistrationResponse_element obj7= new soapSforceComSchemasClassTelecustom.newCustomerRegistrationResponse_element ();
        soapSforceComSchemasClassTelecustom.CallOptions_element obj8= new soapSforceComSchemasClassTelecustom.CallOptions_element();
        soapSforceComSchemasClassTelecustom.DebuggingHeader_element obj9= new soapSforceComSchemasClassTelecustom.DebuggingHeader_element();
        soapSforceComSchemasClassTelecustom.location obj10= new soapSforceComSchemasClassTelecustom.location();
        soapSforceComSchemasClassTelecustom.AllowFieldTruncationHeader_element obj11= new soapSforceComSchemasClassTelecustom.AllowFieldTruncationHeader_element();          
        List<soapSforceComSchemasClassTelecustom.customerWrap> wrapList = new List<soapSforceComSchemasClassTelecustom.customerWrap>();
        soapSforceComSchemasClassTelecustom.customerWrap objW = new soapSforceComSchemasClassTelecustom.customerWrap();
        objW.customername = 'TestSOAPMOCK';
        objW.customerPhone = '1231231233';
        wrapList.add(objW);
        soapSforceComSchemasClassTelecustom.teleCustomerRegistration obj12= new soapSforceComSchemasClassTelecustom.teleCustomerRegistration();
        Test.setMock(WebServiceMock.class, new webserviceCallouts());        
        obj12.newCustomerRegistration(wrapList);                     
        test.stopTest();
    }
}