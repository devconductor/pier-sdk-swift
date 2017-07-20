//
// PermissaoPaisesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PermissaoPaisesAPI: APIBase {
    /**
     
     Apresenta dados de um determinado pa\u00C3\u00ADs
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do pa\u00C3\u00ADs (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarPaisUsingGET(id id: Int, completion: ((data: PaisResponse?, error: ErrorType?) -> Void)) {
        consultarPaisUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta dados de um determinado pa\u00C3\u00ADs
     
     - GET /api/paises/{id}
     - Este m\u00C3\u00A9todo permite consultar dados de um determinado pa\u00C3\u00ADs a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "continente" : "aeiou",
  "codigo" : "aeiou",
  "sigla" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do pa\u00C3\u00ADs (id). 

     - returns: RequestBuilder<PaisResponse> 
     */
    public class func consultarPaisUsingGETWithRequestBuilder(id id: Int) -> RequestBuilder<PaisResponse> {
        var path = "/api/paises/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PaisResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

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

    /**
     
     Lista os pa\u00C3\u00ADses
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter codigo: (query) C\u00C3\u00B3digo do pa\u00C3\u00ADs (optional)
     - parameter sigla: (query) Sigla do pa\u00C3\u00ADs (optional)
     - parameter descricao: (query) Nome do pa\u00C3\u00ADs (optional)
     - parameter continente: (query) Continente no qual o pa\u00C3\u00ADs faz parte (optional)
     - parameter flagAtivo: (query) Atributo que representa se o pa\u00C3\u00ADs est\u00C3\u00A1 ativo (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarPaisesUsingGET(page page: Int?, limit: Int?, codigo: String?, sigla: String?, descricao: String?, continente: String?, flagAtivo: Bool?, completion: ((data: PagePaisResponse?, error: ErrorType?) -> Void)) {
        listarPaisesUsingGETWithRequestBuilder(page: page, limit: limit, codigo: codigo, sigla: sigla, descricao: descricao, continente: continente, flagAtivo: flagAtivo).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os pa\u00C3\u00ADses
     
     - GET /api/paises
     - Este recurso permite listar os pa\u00C3\u00ADses.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "continente" : "aeiou",
    "codigo" : "aeiou",
    "sigla" : "aeiou",
    "id" : 123456789,
    "descricao" : "aeiou"
  } ],
  "totalElements" : 123456789,
  "number" : 123,
  "firstPage" : true,
  "numberOfElements" : 123,
  "size" : 123,
  "totalPages" : 123,
  "hasPreviousPage" : true,
  "first" : true
}}]
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter codigo: (query) C\u00C3\u00B3digo do pa\u00C3\u00ADs (optional)
     - parameter sigla: (query) Sigla do pa\u00C3\u00ADs (optional)
     - parameter descricao: (query) Nome do pa\u00C3\u00ADs (optional)
     - parameter continente: (query) Continente no qual o pa\u00C3\u00ADs faz parte (optional)
     - parameter flagAtivo: (query) Atributo que representa se o pa\u00C3\u00ADs est\u00C3\u00A1 ativo (optional)

     - returns: RequestBuilder<PagePaisResponse> 
     */
    public class func listarPaisesUsingGETWithRequestBuilder(page page: Int?, limit: Int?, codigo: String?, sigla: String?, descricao: String?, continente: String?, flagAtivo: Bool?) -> RequestBuilder<PagePaisResponse> {
        let path = "/api/paises"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "page": page,
            "limit": limit,
            "codigo": codigo,
            "sigla": sigla,
            "descricao": descricao,
            "continente": continente,
            "flagAtivo": flagAtivo
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PagePaisResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}