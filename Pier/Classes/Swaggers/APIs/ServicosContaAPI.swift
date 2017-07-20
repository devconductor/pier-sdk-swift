//
// ServicosContaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ServicosContaAPI: APIBase {
    /**
     
     Atribuir Anuidade
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter idAnuidade: (query) Identificador da anuidade 
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter DDD: (query) DDD do celular (optional)
     - parameter celular: (query) N\u00C3\u00BAmero do celular (optional)
     - parameter idOperadora: (query) Identificador da operadora do celular (optional)
     - parameter idOrigemComercial: (query) Identificador da origem comercial (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func ativarAnuidadeUsingPOST(id id: Int, idAnuidade: Int, page: Int?, limit: Int?, DDD: String?, celular: String?, idOperadora: Int?, idOrigemComercial: Int?, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        ativarAnuidadeUsingPOSTWithRequestBuilder(id: id, idAnuidade: idAnuidade, page: page, limit: limit, DDD: DDD, celular: celular, idOperadora: idOperadora, idOrigemComercial: idOrigemComercial).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Atribuir Anuidade
     
     - POST /api/contas/{id}/atribuir-anuidade
     - Esse recurso permite configurar qual a regra de Anuidade que ser\u00C3\u00A1 atribu\u00C3\u00ADda a uma determinada Conta.
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter idAnuidade: (query) Identificador da anuidade 
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter DDD: (query) DDD do celular (optional)
     - parameter celular: (query) N\u00C3\u00BAmero do celular (optional)
     - parameter idOperadora: (query) Identificador da operadora do celular (optional)
     - parameter idOrigemComercial: (query) Identificador da origem comercial (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func ativarAnuidadeUsingPOSTWithRequestBuilder(id id: Int, idAnuidade: Int, page: Int?, limit: Int?, DDD: String?, celular: String?, idOperadora: Int?, idOrigemComercial: Int?) -> RequestBuilder<AnyObject> {
        var path = "/api/contas/{id}/atribuir-anuidade"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "page": page,
            "limit": limit,
            "idAnuidade": idAnuidade,
            "DDD": DDD,
            "celular": celular,
            "idOperadora": idOperadora,
            "idOrigemComercial": idOrigemComercial
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
      Ativa o servi\u00C3\u00A7o de envio de fatura por email
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func ativarEnvioFaturaEmailUsingPOST(id id: Int, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        ativarEnvioFaturaEmailUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
      Ativa o servi\u00C3\u00A7o de envio de fatura por email
     
     - POST /api/contas/{id}/ativar-fatura-email
     - Este recurso ativa o servi\u00C3\u00A7o de envio de fatura por email
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 

     - returns: RequestBuilder<AnyObject> 
     */
    public class func ativarEnvioFaturaEmailUsingPOSTWithRequestBuilder(id id: Int) -> RequestBuilder<AnyObject> {
        var path = "/api/contas/{id}/ativar-fatura-email"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Desativa o servi\u00C3\u00A7o de envio de fatura por email
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func desativarEnvioFaturaEmailUsingPOST(id id: Int, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        desativarEnvioFaturaEmailUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Desativa o servi\u00C3\u00A7o de envio de fatura por email
     
     - POST /api/contas/{id}/desativar-fatura-email
     - Este recurso desativa o servi\u00C3\u00A7o de envio de fatura por email
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 

     - returns: RequestBuilder<AnyObject> 
     */
    public class func desativarEnvioFaturaEmailUsingPOSTWithRequestBuilder(id id: Int) -> RequestBuilder<AnyObject> {
        var path = "/api/contas/{id}/desativar-fatura-email"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Listar Anuidades
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarAnuidadesUsingGET(page page: Int?, limit: Int?, completion: ((data: PageAnuidadeResponse?, error: ErrorType?) -> Void)) {
        listarAnuidadesUsingGETWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Listar Anuidades
     
     - GET /api/api/anuidades
     - Lista as anuidades
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "flagAnuidadeBonificada" : false,
    "valor" : 1.3579000000000001069366817318950779736042022705078125,
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

     - returns: RequestBuilder<PageAnuidadeResponse> 
     */
    public class func listarAnuidadesUsingGETWithRequestBuilder(page page: Int?, limit: Int?) -> RequestBuilder<PageAnuidadeResponse> {
        let path = "/api/api/anuidades"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageAnuidadeResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Listar Operadoras
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarOperadorasTelefonicasUsingGET(page page: Int?, limit: Int?, completion: ((data: PageOperadoraResponse?, error: ErrorType?) -> Void)) {
        listarOperadorasTelefonicasUsingGETWithRequestBuilder(page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Listar Operadoras
     
     - GET /api/operadoras-telefonicas
     - Lista as operadoras.
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
     
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)

     - returns: RequestBuilder<PageOperadoraResponse> 
     */
    public class func listarOperadorasTelefonicasUsingGETWithRequestBuilder(page page: Int?, limit: Int?) -> RequestBuilder<PageOperadoraResponse> {
        let path = "/api/operadoras-telefonicas"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageOperadoraResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
