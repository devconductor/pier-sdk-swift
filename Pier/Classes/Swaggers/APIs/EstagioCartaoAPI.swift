//
// EstagioCartaoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class EstagioCartaoAPI: APIBase {
    /**
     
     Apresenta os dados de um determinado Estagio Cart\u00C3\u00A3o
     
     - parameter idEstagioCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarEstagioCartaoUsingGET1(idEstagioCartao idEstagioCartao: Int, completion: ((data: EstagioCartao?, error: ErrorType?) -> Void)) {
        consultarEstagioCartaoUsingGET1WithRequestBuilder(idEstagioCartao: idEstagioCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Estagio Cart\u00C3\u00A3o
     
     - GET /api/estagios-cartoes/{idEstagioCartao}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter idEstagioCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<EstagioCartao> 
     */
    public class func consultarEstagioCartaoUsingGET1WithRequestBuilder(idEstagioCartao idEstagioCartao: Int) -> RequestBuilder<EstagioCartao> {
        var path = "/api/estagios-cartoes/{idEstagioCartao}"
        path = path.stringByReplacingOccurrencesOfString("{idEstagioCartao}", withString: "\(idEstagioCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<EstagioCartao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gios do Cart\u00C3\u00A3o
     
     - parameter id: (query) Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter nome: (query) Nome do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarEstagiosCartoesUsingGET(id id: Int?, nome: String?, page: Int?, limit: Int?, completion: ((data: PageEstagiosCartoes?, error: ErrorType?) -> Void)) {
        listarEstagiosCartoesUsingGETWithRequestBuilder(id: id, nome: nome, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gios do Cart\u00C3\u00A3o
     
     - GET /api/estagios-cartoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gio de Entrega que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "nome" : "aeiou",
    "id" : 123456789
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
     
     - parameter id: (query) Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter nome: (query) Nome do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<PageEstagiosCartoes> 
     */
    public class func listarEstagiosCartoesUsingGETWithRequestBuilder(id id: Int?, nome: String?, page: Int?, limit: Int?) -> RequestBuilder<PageEstagiosCartoes> {
        let path = "/api/estagios-cartoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "nome": nome,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageEstagiosCartoes>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
