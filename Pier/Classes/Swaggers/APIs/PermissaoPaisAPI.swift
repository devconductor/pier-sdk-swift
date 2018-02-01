//
// PermissaoPaisAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PermissaoPaisAPI: APIBase {
    /**
     
     Lista os continentes
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarContinentesUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarContinentesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os continentes
     
     - GET /api/continentes
     - Este recurso permite listar os continentes utilizados no recurso de permiss\u00C3\u00A3o de uso do cart\u00C3\u00A3o no exterior
     - examples: [{contentType=application/json, example=[ "{}" ]}]

     - returns: RequestBuilder<[AnyObject]> 
     */
    public class func listarContinentesUsingGETWithRequestBuilder() -> RequestBuilder<[AnyObject]> {
        let path = "/api/continentes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[AnyObject]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
