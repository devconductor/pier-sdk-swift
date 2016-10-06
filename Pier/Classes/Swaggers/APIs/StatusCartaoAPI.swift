//
// StatusCartaoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class StatusCartaoAPI: APIBase {
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
     
     Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o 
     
     - parameter id: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
     - parameter nome: (query) Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
     - parameter flagCancelaCartao: (query) Quando ativa, indica que ao ser atribu\u00C3\u00ADdo um idStatusCartao com essa caracter\u00C3\u00ADstica, o cart\u00C3\u00A3o ter\u00C3\u00A1 o seu idStatusCartao alterado para o que fora escolhido. Caso contr\u00C3\u00A1rio, o idStatusCartao s\u00C3\u00B3 ser\u00C3\u00A1 alterado ap\u00C3\u00B3s o desbloqueio de um novo cart\u00C3\u00A3o do mesmo Portador e Conta. (optional)
     - parameter flagCancelaNoDesbloqueio: (query) Quando ativa, indica que o cart\u00C3\u00A3o ativo que o portador possuir na mesma conta do cart\u00C3\u00A3o a ser desbloqueado, e que o status dele possua essa caracter\u00C3\u00ADstica, dever\u00C3\u00A1 ser cancelado quando um novo cart\u00C3\u00A3o for desbloqueado. (optional)
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o. (optional)
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
     - parameter idStatusDestinoDesbloqueio: (query) Indica qual o idStatusCartao que que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o. (optional)
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

}
