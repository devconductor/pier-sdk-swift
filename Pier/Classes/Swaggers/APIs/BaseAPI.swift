//
// BaseAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class BaseAPI: APIBase {
    /**
     
     Limpar mapa de bases
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func clearUsingPOST(completion: ((data: BodyAccessToken?, error: ErrorType?) -> Void)) {
        clearUsingPOSTWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Limpar mapa de bases
     
     - POST /api/bases/limpar
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "AuthToken" : {
    "owner" : "aeiou",
    "code" : "aeiou",
    "id" : 123,
    "extraInfo" : {
      "idEmissor" : 123
    },
    "status" : "aeiou"
  },
  "action" : "aeiou",
  "user" : "aeiou"
}}]

     - returns: RequestBuilder<BodyAccessToken> 
     */
    public class func clearUsingPOSTWithRequestBuilder() -> RequestBuilder<BodyAccessToken> {
        let path = "/api/bases/limpar"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<BodyAccessToken>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
