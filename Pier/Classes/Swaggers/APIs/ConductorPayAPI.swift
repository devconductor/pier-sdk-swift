//
// ConductorPayAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ConductorPayAPI: APIBase {
    /**
     
     Atualiza a chave de gera\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarChaveUsingPOST(id id: Int, completion: ((data: CartaoPayAtualizarChaveResponse?, error: ErrorType?) -> Void)) {
        atualizarChaveUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Atualiza a chave de gera\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o
     
     - POST /api/cartoes-tokenizados/{id}/atualizar-chave
     - Este m\u00C3\u00A9todo permite atualizar a chave de gera\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o de um dispositivo a partir do seu identificador (id).
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
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 

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
     
     Atualiza os dados do cart\u00C3\u00A3o
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT(id id: Int, update: CartaoPayUpdate, completion: ((data: CartaoPayResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUTWithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Atualiza os dados do cart\u00C3\u00A3o
     
     - PUT /api/cartoes-tokenizados/{id}
     - Este m\u00C3\u00A9todo permite atualizar os dados do cart\u00C3\u00A3o tokenizados de um dispositivo a partir do seu identificador (id).
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
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 
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
     
     Confirma a atualiza\u00C3\u00A7\u00C3\u00A3o da chave de transa\u00C3\u00A7\u00C3\u00A3o
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func confirmaAtualizacaoChaveUsingPOST(id id: Int, update: CartaoPayKeyUpdate, completion: ((data: CartaoPayConfirmarChaveResponse?, error: ErrorType?) -> Void)) {
        confirmaAtualizacaoChaveUsingPOSTWithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Confirma a atualiza\u00C3\u00A7\u00C3\u00A3o da chave de transa\u00C3\u00A7\u00C3\u00A3o
     
     - POST /api/cartoes-tokenizados/{id}/confirmar-chave
     - Este met\u00C3\u00B3do recebe confirma\u00C3\u00A7\u00C3\u00A3o de atualiza\u00C3\u00A7\u00C3\u00A3o de chave transa\u00C3\u00A7\u00C3\u00A3o.
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
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 
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
     
     Apresenta os dados de um determinado cart\u00C3\u00A3o
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET6(id id: Int, completion: ((data: CartaoPayDetalheResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET6WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado cart\u00C3\u00A3o
     
     - GET /api/cartoes-tokenizados/{id}
     - Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es de um determinado cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
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
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<CartaoPayDetalheResponse> 
     */
    public class func consultarUsingGET6WithRequestBuilder(id id: Int) -> RequestBuilder<CartaoPayDetalheResponse> {
        var path = "/api/cartoes-tokenizados/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CartaoPayDetalheResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista os c\u00C3\u00B3digos de resposta dos recursos de transa\u00C3\u00A7\u00C3\u00A3o e consulta de conta
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarCodigosRespostaUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarCodigosRespostaUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os c\u00C3\u00B3digos de resposta dos recursos de transa\u00C3\u00A7\u00C3\u00A3o e consulta de conta
     
     - GET /api/codigos-resposta
     - Este m\u00C3\u00A9todo retorna a lista dos c\u00C3\u00B3digos de resposta das transa\u00C3\u00A7\u00C3\u00B5es e consulta de saque realizada no Pay.
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
     
     Lista os modos entradas
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarModosEntradaUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarModosEntradaUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os modos entradas
     
     - GET /api/modos-entrada
     - Este recurso permite listar os modos de entrada para transa\u00C3\u00A7\u00C3\u00A3o
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
     
     Lista as opera\u00C3\u00A7\u00C3\u00B5es
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarOperacoesUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarOperacoesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as opera\u00C3\u00A7\u00C3\u00B5es
     
     - GET /api/operacoes
     - Este recurso permite listar as opera\u00C3\u00A7\u00C3\u00B5es disponiveis de transa\u00C3\u00A7\u00C3\u00A3o
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
     
     Lista os tipos de terminais
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarTiposTerminaisUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarTiposTerminaisUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os tipos de terminais
     
     - GET /api/tipos-terminais
     - Este m\u00C3\u00A9todo retorna a lista dos tipos de terminais.
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
     
     Lista os tipos de transa\u00C3\u00A7\u00C3\u00B5es
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarTiposTransacoesUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarTiposTransacoesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os tipos de transa\u00C3\u00A7\u00C3\u00B5es
     
     - GET /api/tipos-transacoes
     - Este m\u00C3\u00A9todo retorna a lista dos tipos de transa\u00C3\u00A7\u00C3\u00B5es realizadas no Pay.
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
     
     Lista os cart\u00C3\u00B5es cadastrados
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter status: (query) Status do cart\u00C3\u00A3o tokenizado (optional)
     - parameter numeroCartao: (query) Numero do cart\u00C3\u00A3o tokenizado (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET6(sort sort: [String]?, page: Int?, limit: Int?, status: String?, numeroCartao: String?, completion: ((data: PageCartaoPayResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET6WithRequestBuilder(sort: sort, page: page, limit: limit, status: status, numeroCartao: numeroCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os cart\u00C3\u00B5es cadastrados
     
     - GET /api/cartoes-tokenizados
     - Este m\u00C3\u00A9todo permite listar os cart\u00C3\u00B5es cadastrado em um dispositivo.
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
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter status: (query) Status do cart\u00C3\u00A3o tokenizado (optional)
     - parameter numeroCartao: (query) Numero do cart\u00C3\u00A3o tokenizado (optional)

     - returns: RequestBuilder<PageCartaoPayResponse> 
     */
    public class func listarUsingGET6WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, status: String?, numeroCartao: String?) -> RequestBuilder<PageCartaoPayResponse> {
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
     
     Cria\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00A3o
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST5(persist persist: CartaoPayPersist, completion: ((data: CartaoPayCadastroResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST5WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cria\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00A3o
     
     - POST /api/cartoes-tokenizados
     - Este met\u00C3\u00B3do permite a tokeniza\u00C3\u00A7\u00C3\u00A3o de um cart\u00C3\u00A3o a partir dos seus dados impressos.
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
