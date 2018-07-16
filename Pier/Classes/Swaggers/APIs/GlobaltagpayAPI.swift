//
// GlobaltagpayAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagpayAPI: APIBase {
    /**
     
     {{{cartao_pay_resource_atualizar_chave}}}
     
     - parameter id: (path) {{{cartao_pay_resource_atualizar_chave_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarChaveUsingPOST(id id: Int, completion: ((data: CartaoPayAtualizarChaveResponse?, error: ErrorType?) -> Void)) {
        atualizarChaveUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{cartao_pay_resource_atualizar_chave}}}
     
     - POST /api/cartoes-tokenizados/{id}/atualizar-chave
     - {{{cartao_pay_resource_atualizar_chave_notes}}}
     - examples: [{contentType=application/json, example={
  "numeroCartao" : "aeiou",
  "idEntidade" : 123456789,
  "id" : 123456789,
  "dataValidadeCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "nomeImpresso" : "aeiou",
  "chaveCriptograma" : "aeiou",
  "nomeEntidade" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) {{{cartao_pay_resource_atualizar_chave_param_id}}} 

     - returns: RequestBuilder<CartaoPayAtualizarChaveResponse> 
     */
    public class func atualizarChaveUsingPOSTWithRequestBuilder(id id: Int) -> RequestBuilder<CartaoPayAtualizarChaveResponse> {
        var path = "/api/cartoes-tokenizados/{id}/atualizar-chave"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CartaoPayAtualizarChaveResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{cartao_pay_resource_atualizar}}}
     
     - parameter id: (path) {{{cartao_pay_resource_atualizar_param_id}}} 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT(id id: Int, update: CartaoPayUpdate, completion: ((data: CartaoPayResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUTWithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{cartao_pay_resource_atualizar}}}
     
     - PUT /api/cartoes-tokenizados/{id}
     - {{{cartao_pay_resource_atualizar_notes}}}
     - examples: [{contentType=application/json, example={
  "numeroCartao" : "aeiou",
  "idEntidade" : 123456789,
  "dataValidadeChaveCriptograma" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "id" : 123456789,
  "dataValidadeCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "nomeImpresso" : "aeiou",
  "nomeEntidade" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) {{{cartao_pay_resource_atualizar_param_id}}} 
     - parameter update: (body) update 

     - returns: RequestBuilder<CartaoPayResponse> 
     */
    public class func atualizarUsingPUTWithRequestBuilder(id id: Int, update: CartaoPayUpdate) -> RequestBuilder<CartaoPayResponse> {
        var path = "/api/cartoes-tokenizados/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = update.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<CartaoPayResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{cartao_pay_resource_confirma_atualizacao_chave}}}
     
     - parameter id: (path) {{{cartao_pay_resource_confirma_atualizacao_chave_param_id}}} 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func confirmaAtualizacaoChaveUsingPOST(id id: Int, update: CartaoPayKeyUpdate, completion: ((data: CartaoPayConfirmarChaveResponse?, error: ErrorType?) -> Void)) {
        confirmaAtualizacaoChaveUsingPOSTWithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{cartao_pay_resource_confirma_atualizacao_chave}}}
     
     - POST /api/cartoes-tokenizados/{id}/confirmar-chave
     - {{{cartao_pay_resource_confirma_atualizacao_chave_notes}}}
     - examples: [{contentType=application/json, example={
  "numeroCartao" : "aeiou",
  "idEntidade" : 123456789,
  "dataValidadeChaveCriptograma" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "id" : 123456789,
  "dataValidadeCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "nomeImpresso" : "aeiou",
  "chaveCriptograma" : "aeiou",
  "nomeEntidade" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) {{{cartao_pay_resource_confirma_atualizacao_chave_param_id}}} 
     - parameter update: (body) update 

     - returns: RequestBuilder<CartaoPayConfirmarChaveResponse> 
     */
    public class func confirmaAtualizacaoChaveUsingPOSTWithRequestBuilder(id id: Int, update: CartaoPayKeyUpdate) -> RequestBuilder<CartaoPayConfirmarChaveResponse> {
        var path = "/api/cartoes-tokenizados/{id}/confirmar-chave"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = update.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<CartaoPayConfirmarChaveResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{cartao_pay_resource_consultar}}}
     
     - parameter id: (path) {{{cartao_pay_resource_consultar_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET9(id id: Int, completion: ((data: CartaoPayDetalheResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET9WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{cartao_pay_resource_consultar}}}
     
     - GET /api/cartoes-tokenizados/{id}
     - {{{cartao_pay_resource_consultar_notes}}}
     - examples: [{contentType=application/json, example={
  "numeroCartao" : "aeiou",
  "cvv" : "aeiou",
  "idEntidade" : 123456789,
  "dataValidadeChaveCriptograma" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "id" : 123456789,
  "dataValidadeCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "nomeImpresso" : "aeiou",
  "nomeEntidade" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) {{{cartao_pay_resource_consultar_param_id}}} 

     - returns: RequestBuilder<CartaoPayDetalheResponse> 
     */
    public class func consultarUsingGET9WithRequestBuilder(id id: Int) -> RequestBuilder<CartaoPayDetalheResponse> {
        var path = "/api/cartoes-tokenizados/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CartaoPayDetalheResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{enum_pay_resource_listar_codigos_resposta}}}
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarCodigosRespostaUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarCodigosRespostaUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{enum_pay_resource_listar_codigos_resposta}}}
     
     - GET /api/codigos-resposta
     - {{{enum_pay_resource_listar_codigos_resposta_notes}}}
     - examples: [{contentType=application/json, example=[ "{}" ]}]

     - returns: RequestBuilder<[AnyObject]> 
     */
    public class func listarCodigosRespostaUsingGETWithRequestBuilder() -> RequestBuilder<[AnyObject]> {
        let path = "/api/codigos-resposta"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[AnyObject]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{enum_pay_resource_listar_modos_entrada}}}
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarModosEntradaUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarModosEntradaUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{enum_pay_resource_listar_modos_entrada}}}
     
     - GET /api/modos-entrada
     - {{{enum_pay_resource_listar_modos_entrada_notes}}}
     - examples: [{contentType=application/json, example=[ "{}" ]}]

     - returns: RequestBuilder<[AnyObject]> 
     */
    public class func listarModosEntradaUsingGETWithRequestBuilder() -> RequestBuilder<[AnyObject]> {
        let path = "/api/modos-entrada"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[AnyObject]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{enum_pay_resource_listar_operacoes}}}
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarOperacoesUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarOperacoesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{enum_pay_resource_listar_operacoes}}}
     
     - GET /api/operacoes
     - {{{enum_pay_resource_listar_operacoes_notes}}}
     - examples: [{contentType=application/json, example=[ "{}" ]}]

     - returns: RequestBuilder<[AnyObject]> 
     */
    public class func listarOperacoesUsingGETWithRequestBuilder() -> RequestBuilder<[AnyObject]> {
        let path = "/api/operacoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[AnyObject]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{enum_pay_resource_listar_tipos_terminais}}}
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarTiposTerminaisUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarTiposTerminaisUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{enum_pay_resource_listar_tipos_terminais}}}
     
     - GET /api/tipos-terminais
     - {{{enum_pay_resource_listar_tipos_terminais_notes}}}
     - examples: [{contentType=application/json, example=[ "{}" ]}]

     - returns: RequestBuilder<[AnyObject]> 
     */
    public class func listarTiposTerminaisUsingGETWithRequestBuilder() -> RequestBuilder<[AnyObject]> {
        let path = "/api/tipos-terminais"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[AnyObject]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{enum_pay_resource_listar_tipos_transacoes}}}
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarTiposTransacoesUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarTiposTransacoesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{enum_pay_resource_listar_tipos_transacoes}}}
     
     - GET /api/tipos-transacoes
     - {{{enum_pay_resource_listar_tipos_transacoes_notes}}}
     - examples: [{contentType=application/json, example=[ "{}" ]}]

     - returns: RequestBuilder<[AnyObject]> 
     */
    public class func listarTiposTransacoesUsingGETWithRequestBuilder() -> RequestBuilder<[AnyObject]> {
        let path = "/api/tipos-transacoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[AnyObject]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{cartao_pay_resource_listar}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter status: (query) {{{cartao_pay_request_status_value}}} (optional)
     - parameter numeroCartao: (query) {{{cartao_pay_request_numero_cartao_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET10(sort sort: [String]?, page: Int?, limit: Int?, status: String?, numeroCartao: String?, completion: ((data: PageCartaoPayResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET10WithRequestBuilder(sort: sort, page: page, limit: limit, status: status, numeroCartao: numeroCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{cartao_pay_resource_listar}}}
     
     - GET /api/cartoes-tokenizados
     - {{{cartao_pay_resource_listar_notes}}}
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "numeroCartao" : "aeiou",
    "idEntidade" : 123456789,
    "dataValidadeChaveCriptograma" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "id" : 123456789,
    "dataValidadeCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "nomeImpresso" : "aeiou",
    "nomeEntidade" : "aeiou",
    "status" : "aeiou"
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
     - parameter status: (query) {{{cartao_pay_request_status_value}}} (optional)
     - parameter numeroCartao: (query) {{{cartao_pay_request_numero_cartao_value}}} (optional)

     - returns: RequestBuilder<PageCartaoPayResponse> 
     */
    public class func listarUsingGET10WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, status: String?, numeroCartao: String?) -> RequestBuilder<PageCartaoPayResponse> {
        let path = "/api/cartoes-tokenizados"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "status": status,
            "numeroCartao": numeroCartao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageCartaoPayResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     {{{cartao_pay_resource_salvar}}}
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST5(persist persist: CartaoPayPersist, completion: ((data: CartaoPayCadastroResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST5WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{cartao_pay_resource_salvar}}}
     
     - POST /api/cartoes-tokenizados
     - {{{cartao_pay_resource_salvar_notes}}}
     - examples: [{contentType=application/json, example={
  "numeroCartao" : "aeiou",
  "cvv" : "aeiou",
  "idEntidade" : 123456789,
  "dataValidadeChaveCriptograma" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "id" : 123456789,
  "dataValidadeCartao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "nomeImpresso" : "aeiou",
  "chaveCriptograma" : "aeiou",
  "nomeEntidade" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<CartaoPayCadastroResponse> 
     */
    public class func salvarUsingPOST5WithRequestBuilder(persist persist: CartaoPayPersist) -> RequestBuilder<CartaoPayCadastroResponse> {
        let path = "/api/cartoes-tokenizados"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<CartaoPayCadastroResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
