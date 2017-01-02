//
// StatusParametrosAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class StatusParametrosAPI: APIBase {
    /**
     
     Apresenta os dados de um determinado Estagio Cart\u00C3\u00A3o
     
     - parameter idEstagioCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarEstagioCartaoUsingGET(idEstagioCartao idEstagioCartao: Int, completion: ((data: EstagioCartao?, error: ErrorType?) -> Void)) {
        consultarEstagioCartaoUsingGETWithRequestBuilder(idEstagioCartao: idEstagioCartao).execute { (response, error) -> Void in
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
    public class func consultarEstagioCartaoUsingGETWithRequestBuilder(idEstagioCartao idEstagioCartao: Int) -> RequestBuilder<EstagioCartao> {
        var path = "/api/estagios-cartoes/{idEstagioCartao}"
        path = path.stringByReplacingOccurrencesOfString("{idEstagioCartao}", withString: "\(idEstagioCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<EstagioCartao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o
     
     - parameter idStatusCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarStatusCartaoUsingGET(idStatusCartao idStatusCartao: Int, completion: ((data: StatusCartao?, error: ErrorType?) -> Void)) {
        consultarStatusCartaoUsingGETWithRequestBuilder(idStatusCartao: idStatusCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Cart\u00C3\u00A3o
     
     - GET /api/status-cartoes/{idStatusCartao}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "flagCancelaCartao" : 123,
  "flagCancelaNoDesbloqueio" : 123,
  "idStatusDestinoDesbloqueio" : 123456789,
  "nome" : "aeiou",
  "id" : 123456789,
  "idStatusDestinoConta" : 123456789,
  "flagCobraTarifa" : 123
}}]
     
     - parameter idStatusCartao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<StatusCartao> 
     */
    public class func consultarStatusCartaoUsingGETWithRequestBuilder(idStatusCartao idStatusCartao: Int) -> RequestBuilder<StatusCartao> {
        var path = "/api/status-cartoes/{idStatusCartao}"
        path = path.stringByReplacingOccurrencesOfString("{idStatusCartao}", withString: "\(idStatusCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusCartao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Status Conta
     
     - parameter idStatusConta: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET4(idStatusConta idStatusConta: Int, completion: ((data: StatusConta?, error: ErrorType?) -> Void)) {
        consultarUsingGET4WithRequestBuilder(idStatusConta: idStatusConta).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Conta
     
     - GET /api/status-contas/{idStatusConta}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status Conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "mensagemConsultaNegada" : "aeiou",
  "flagAlteraLimite" : 123,
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter idStatusConta: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). 

     - returns: RequestBuilder<StatusConta> 
     */
    public class func consultarUsingGET4WithRequestBuilder(idStatusConta idStatusConta: Int) -> RequestBuilder<StatusConta> {
        var path = "/api/status-contas/{idStatusConta}"
        path = path.stringByReplacingOccurrencesOfString("{idStatusConta}", withString: "\(idStatusConta)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusConta>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Status Impress\u00C3\u00A3o
     
     - parameter idStatusImpressao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET5(idStatusImpressao idStatusImpressao: Int, completion: ((data: StatusImpressao?, error: ErrorType?) -> Void)) {
        consultarUsingGET5WithRequestBuilder(idStatusImpressao: idStatusImpressao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Status Impress\u00C3\u00A3o
     
     - GET /api/status-impressoes/{idStatusImpressao}
     - Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter idStatusImpressao: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 

     - returns: RequestBuilder<StatusImpressao> 
     */
    public class func consultarUsingGET5WithRequestBuilder(idStatusImpressao idStatusImpressao: Int) -> RequestBuilder<StatusImpressao> {
        var path = "/api/status-impressoes/{idStatusImpressao}"
        path = path.stringByReplacingOccurrencesOfString("{idStatusImpressao}", withString: "\(idStatusImpressao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<StatusImpressao>.Type = PierAPI.requestBuilderFactory.getBuilder()

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

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter flagCancelaCartao: (query) Quando ativa, indica que ao ser atribu\u00C3\u00ADdo um idStatusCartao com essa caracter\u00C3\u00ADstica, o cart\u00C3\u00A3o ter\u00C3\u00A1 o seu idStatusCartao alterado para o que fora escolhido. Caso contr\u00C3\u00A1rio, o idStatusCartao s\u00C3\u00B3 ser\u00C3\u00A1 alterado ap\u00C3\u00B3s o desbloqueio de um novo cart\u00C3\u00A3o do mesmo Portador e Conta. (optional)
     - parameter flagCancelaNoDesbloqueio: (query) Quando ativa, indica que o cart\u00C3\u00A3o ativo que o portador possuir na mesma conta do cart\u00C3\u00A3o a ser desbloqueado, e que o status dele possua essa caracter\u00C3\u00ADstica, dever\u00C3\u00A1 ser cancelado quando um novo cart\u00C3\u00A3o for desbloqueado. (optional)
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o. (optional)
     - parameter idStatusDestinoConta: (query) Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo a conta, caso ela seja cancelada devido ao bloqueio de um cart\u00C3\u00A3o quando for utilizado um idStatusCartao no processo de Bloqueio que possua essa caracter\u00C3\u00ADstica. (optional)
     - parameter flagCobraTarifa: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, incluir\u00C3\u00A3o a cobran\u00C3\u00A7a de uma tarifa para a conta de acordo com os valores definidos nos par\u00C3\u00A2metros do emissor. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarStatusCartoesUsingGET(id id: Int?, nome: String?, flagCancelaCartao: Int?, flagCancelaNoDesbloqueio: Int?, idStatusDestinoDesbloqueio: Int?, idStatusDestinoConta: Int?, flagCobraTarifa: Int?, page: Int?, limit: Int?, completion: ((data: PageStatusCartoes?, error: ErrorType?) -> Void)) {
        listarStatusCartoesUsingGETWithRequestBuilder(id: id, nome: nome, flagCancelaCartao: flagCancelaCartao, flagCancelaNoDesbloqueio: flagCancelaNoDesbloqueio, idStatusDestinoDesbloqueio: idStatusDestinoDesbloqueio, idStatusDestinoConta: idStatusDestinoConta, flagCobraTarifa: flagCobraTarifa, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o
     
     - GET /api/status-cartoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
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
    "flagCancelaCartao" : 123,
    "flagCancelaNoDesbloqueio" : 123,
    "idStatusDestinoDesbloqueio" : 123456789,
    "nome" : "aeiou",
    "id" : 123456789,
    "idStatusDestinoConta" : 123456789,
    "flagCobraTarifa" : 123
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
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter flagCancelaCartao: (query) Quando ativa, indica que ao ser atribu\u00C3\u00ADdo um idStatusCartao com essa caracter\u00C3\u00ADstica, o cart\u00C3\u00A3o ter\u00C3\u00A1 o seu idStatusCartao alterado para o que fora escolhido. Caso contr\u00C3\u00A1rio, o idStatusCartao s\u00C3\u00B3 ser\u00C3\u00A1 alterado ap\u00C3\u00B3s o desbloqueio de um novo cart\u00C3\u00A3o do mesmo Portador e Conta. (optional)
     - parameter flagCancelaNoDesbloqueio: (query) Quando ativa, indica que o cart\u00C3\u00A3o ativo que o portador possuir na mesma conta do cart\u00C3\u00A3o a ser desbloqueado, e que o status dele possua essa caracter\u00C3\u00ADstica, dever\u00C3\u00A1 ser cancelado quando um novo cart\u00C3\u00A3o for desbloqueado. (optional)
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o. (optional)
     - parameter idStatusDestinoConta: (query) Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo a conta, caso ela seja cancelada devido ao bloqueio de um cart\u00C3\u00A3o quando for utilizado um idStatusCartao no processo de Bloqueio que possua essa caracter\u00C3\u00ADstica. (optional)
     - parameter flagCobraTarifa: (query) Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, incluir\u00C3\u00A3o a cobran\u00C3\u00A7a de uma tarifa para a conta de acordo com os valores definidos nos par\u00C3\u00A2metros do emissor. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<PageStatusCartoes> 
     */
    public class func listarStatusCartoesUsingGETWithRequestBuilder(id id: Int?, nome: String?, flagCancelaCartao: Int?, flagCancelaNoDesbloqueio: Int?, idStatusDestinoDesbloqueio: Int?, idStatusDestinoConta: Int?, flagCobraTarifa: Int?, page: Int?, limit: Int?) -> RequestBuilder<PageStatusCartoes> {
        let path = "/api/status-cartoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "nome": nome,
            "flagCancelaCartao": flagCancelaCartao,
            "flagCancelaNoDesbloqueio": flagCancelaNoDesbloqueio,
            "idStatusDestinoDesbloqueio": idStatusDestinoDesbloqueio,
            "idStatusDestinoConta": idStatusDestinoConta,
            "flagCobraTarifa": flagCobraTarifa,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageStatusCartoes>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista os Status Contas cadastrados para o Emissor
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status da Conta. (optional)
     - parameter flagAlteraLimite: (query) Par\u00C3\u00A2metro que define se o Status da Conta permite realizar a Altera\u00C3\u00A7\u00C3\u00A3o de Limites do Portador, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter mensagemConsultaNegada: (query) Apresenta o texto com o motivo que ser\u00C3\u00A1 apresentado na resposta as opera\u00C3\u00A7\u00C3\u00B5es de Listar e Consultar LimitesDisponibilidades. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET5(id id: Int?, nome: String?, flagAlteraLimite: Int?, mensagemConsultaNegada: String?, page: Int?, limit: Int?, completion: ((data: PageStatusContas?, error: ErrorType?) -> Void)) {
        listarUsingGET5WithRequestBuilder(id: id, nome: nome, flagAlteraLimite: flagAlteraLimite, mensagemConsultaNegada: mensagemConsultaNegada, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os Status Contas cadastrados para o Emissor
     
     - GET /api/status-contas
     - Este m\u00C3\u00A9todo permite que sejam listados os Status Contas existentes na base de dados do Emissor.
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
    "mensagemConsultaNegada" : "aeiou",
    "flagAlteraLimite" : 123,
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
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status da Conta. (optional)
     - parameter flagAlteraLimite: (query) Par\u00C3\u00A2metro que define se o Status da Conta permite realizar a Altera\u00C3\u00A7\u00C3\u00A3o de Limites do Portador, sendo: 0: Inativo e 1: Ativo. (optional)
     - parameter mensagemConsultaNegada: (query) Apresenta o texto com o motivo que ser\u00C3\u00A1 apresentado na resposta as opera\u00C3\u00A7\u00C3\u00B5es de Listar e Consultar LimitesDisponibilidades. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<PageStatusContas> 
     */
    public class func listarUsingGET5WithRequestBuilder(id id: Int?, nome: String?, flagAlteraLimite: Int?, mensagemConsultaNegada: String?, page: Int?, limit: Int?) -> RequestBuilder<PageStatusContas> {
        let path = "/api/status-contas"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "nome": nome,
            "flagAlteraLimite": flagAlteraLimite,
            "mensagemConsultaNegada": mensagemConsultaNegada,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageStatusContas>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o
     
     - parameter id: (query) Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
     - parameter nome: (query) Nome do status impress\u00C3\u00A3o (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET6(id id: Int?, nome: String?, page: Int?, limit: Int?, completion: ((data: PageStatusImpressao?, error: ErrorType?) -> Void)) {
        listarUsingGET6WithRequestBuilder(id: id, nome: nome, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o
     
     - GET /api/status-impressoes
     - Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
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
     - parameter nome: (query) Nome do status impress\u00C3\u00A3o (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<PageStatusImpressao> 
     */
    public class func listarUsingGET6WithRequestBuilder(id id: Int?, nome: String?, page: Int?, limit: Int?) -> RequestBuilder<PageStatusImpressao> {
        let path = "/api/status-impressoes"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "nome": nome,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageStatusImpressao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
