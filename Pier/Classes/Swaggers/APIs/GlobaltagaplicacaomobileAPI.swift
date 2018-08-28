//
// GlobaltagaplicacaomobileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagaplicacaomobileAPI: APIBase {
    /**
     
     {{{aplicacao_mobile_resource_atualizar}}}
     
     - parameter id: (path) {{{aplicacao_mobile_resource_atualizar_param_id}}} 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT(id id: Int, update: AplicacaoMobileUpdateValue, completion: ((data: AplicacaoMobileResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUTWithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{aplicacao_mobile_resource_atualizar}}}
     
     - PUT /api/aplicacoes-mobile/{id}
     - {{{aplicacao_mobile_resource_atualizar_notes}}}
     - examples: [{contentType=application/json, example={
  "som" : "aeiou",
  "senha" : "aeiou",
  "idPlataformaMobile" : 123456789,
  "cor" : "aeiou",
  "icone" : "aeiou",
  "id" : 123456789,
  "token" : "aeiou",
  "certificadoBase64" : "aeiou"
}}]
     
     - parameter id: (path) {{{aplicacao_mobile_resource_atualizar_param_id}}} 
     - parameter update: (body) update 

     - returns: RequestBuilder<AplicacaoMobileResponse> 
     */
    public class func atualizarUsingPUTWithRequestBuilder(id id: Int, update: AplicacaoMobileUpdateValue) -> RequestBuilder<AplicacaoMobileResponse> {
        var path = "/api/aplicacoes-mobile/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = update.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<AplicacaoMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{aplicacao_mobile_resource_listar}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter id: (query) {{{aplicacao_mobile_request_id_value}}} (optional)
     - parameter idPlataformaMobile: (query) {{{aplicacao_mobile_request_id_plataforma_mobile_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET3(sort sort: [String]?, page: Int?, limit: Int?, id: String?, idPlataformaMobile: Int?, completion: ((data: PageAplicacaoMobileResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET3WithRequestBuilder(sort: sort, page: page, limit: limit, id: id, idPlataformaMobile: idPlataformaMobile).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{aplicacao_mobile_resource_listar}}}
     
     - GET /api/aplicacoes-mobile
     - {{{aplicacao_mobile_resource_listar_notes}}}
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "som" : "aeiou",
    "senha" : "aeiou",
    "idPlataformaMobile" : 123456789,
    "cor" : "aeiou",
    "icone" : "aeiou",
    "id" : 123456789,
    "token" : "aeiou",
    "certificadoBase64" : "aeiou"
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
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter id: (query) {{{aplicacao_mobile_request_id_value}}} (optional)
     - parameter idPlataformaMobile: (query) {{{aplicacao_mobile_request_id_plataforma_mobile_value}}} (optional)

     - returns: RequestBuilder<PageAplicacaoMobileResponse> 
     */
    public class func listarUsingGET3WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, id: String?, idPlataformaMobile: Int?) -> RequestBuilder<PageAplicacaoMobileResponse> {
        let path = "/api/aplicacoes-mobile"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "id": id,
            "idPlataformaMobile": idPlataformaMobile
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageAplicacaoMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     {{{aplicacao_mobile_resource_salvar}}}
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST(persist persist: AplicacaoMobilePersistValue, completion: ((data: AplicacaoMobileResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOSTWithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{aplicacao_mobile_resource_salvar}}}
     
     - POST /api/aplicacoes-mobile
     - {{{aplicacao_mobile_resource_salvar_notes}}}
     - examples: [{contentType=application/json, example={
  "som" : "aeiou",
  "senha" : "aeiou",
  "idPlataformaMobile" : 123456789,
  "cor" : "aeiou",
  "icone" : "aeiou",
  "id" : 123456789,
  "token" : "aeiou",
  "certificadoBase64" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<AplicacaoMobileResponse> 
     */
    public class func salvarUsingPOSTWithRequestBuilder(persist persist: AplicacaoMobilePersistValue) -> RequestBuilder<AplicacaoMobileResponse> {
        let path = "/api/aplicacoes-mobile"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<AplicacaoMobileResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}