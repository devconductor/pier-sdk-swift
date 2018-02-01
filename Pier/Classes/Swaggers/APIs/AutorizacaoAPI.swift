//
// AutorizacaoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AutorizacaoAPI: APIBase {
    /**
     
     Autoriza transa\u00C3\u00A7\u00C3\u00A3o financeira por idConta
     
     - parameter id: (path) Id Conta 
     - parameter transacaoOnUsPorIdCartaoRequest: (body) transacaoOnUsPorIdCartaoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func autorizarPorContaUsingPOST(id id: Int, transacaoOnUsPorIdCartaoRequest: TransacaoOnUsPorIdCartaoRequest, completion: ((data: TransacaoOnUsResponse?, error: ErrorType?) -> Void)) {
        autorizarPorContaUsingPOSTWithRequestBuilder(id: id, transacaoOnUsPorIdCartaoRequest: transacaoOnUsPorIdCartaoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Autoriza transa\u00C3\u00A7\u00C3\u00A3o financeira por idConta
     
     - POST /api/contas/{id}/autorizar-transacao
     - Este m\u00C3\u00A9todo faz uma autoriza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o financeira com o idConta.
     - examples: [{contentType=application/json, example={
  "codigoAutorizacao" : "aeiou",
  "planoDeParcelamento" : [ { } ],
  "numeroMascaradoCartao" : "aeiou",
  "nsuOrigem" : "aeiou",
  "nomePortadorCartao" : "aeiou",
  "terminalRequisitante" : "aeiou",
  "nsuAutorizacao" : "aeiou"
}}]
     
     - parameter id: (path) Id Conta 
     - parameter transacaoOnUsPorIdCartaoRequest: (body) transacaoOnUsPorIdCartaoRequest 

     - returns: RequestBuilder<TransacaoOnUsResponse> 
     */
    public class func autorizarPorContaUsingPOSTWithRequestBuilder(id id: Int, transacaoOnUsPorIdCartaoRequest: TransacaoOnUsPorIdCartaoRequest) -> RequestBuilder<TransacaoOnUsResponse> {
        var path = "/api/contas/{id}/autorizar-transacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = transacaoOnUsPorIdCartaoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TransacaoOnUsResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Autoriza transa\u00C3\u00A7\u00C3\u00A3o financeira
     
     - parameter autorizacaoOnUsRequest: (body) autorizacaoOnUsRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func autorizarUsingPOST(autorizacaoOnUsRequest autorizacaoOnUsRequest: AutorizacaoOnUsRequest, completion: ((data: TransacaoOnUsResponse?, error: ErrorType?) -> Void)) {
        autorizarUsingPOSTWithRequestBuilder(autorizacaoOnUsRequest: autorizacaoOnUsRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Autoriza transa\u00C3\u00A7\u00C3\u00A3o financeira
     
     - POST /api/autorizar-transacao
     - Este m\u00C3\u00A9todo faz uma autoriza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o financeira.
     - examples: [{contentType=application/json, example={
  "codigoAutorizacao" : "aeiou",
  "planoDeParcelamento" : [ { } ],
  "numeroMascaradoCartao" : "aeiou",
  "nsuOrigem" : "aeiou",
  "nomePortadorCartao" : "aeiou",
  "terminalRequisitante" : "aeiou",
  "nsuAutorizacao" : "aeiou"
}}]
     
     - parameter autorizacaoOnUsRequest: (body) autorizacaoOnUsRequest 

     - returns: RequestBuilder<TransacaoOnUsResponse> 
     */
    public class func autorizarUsingPOSTWithRequestBuilder(autorizacaoOnUsRequest autorizacaoOnUsRequest: AutorizacaoOnUsRequest) -> RequestBuilder<TransacaoOnUsResponse> {
        let path = "/api/autorizar-transacao"
        let URLString = PierAPI.basePath + path
        
        let parameters = autorizacaoOnUsRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TransacaoOnUsResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Autoriza transa\u00C3\u00A7\u00C3\u00A3o financeira por idCartao
     
     - parameter id: (path) Id Cartao 
     - parameter transacaoOnUsPorIdCartaoRequest: (body) transacaoOnUsPorIdCartaoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func autorizarUsingPOST1(id id: Int, transacaoOnUsPorIdCartaoRequest: TransacaoOnUsPorIdCartaoRequest, completion: ((data: TransacaoOnUsResponse?, error: ErrorType?) -> Void)) {
        autorizarUsingPOST1WithRequestBuilder(id: id, transacaoOnUsPorIdCartaoRequest: transacaoOnUsPorIdCartaoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Autoriza transa\u00C3\u00A7\u00C3\u00A3o financeira por idCartao
     
     - POST /api/cartoes/{id}/autorizar-transacao
     - Este m\u00C3\u00A9todo faz uma autoriza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o financeira com o idCartao.
     - examples: [{contentType=application/json, example={
  "codigoAutorizacao" : "aeiou",
  "planoDeParcelamento" : [ { } ],
  "numeroMascaradoCartao" : "aeiou",
  "nsuOrigem" : "aeiou",
  "nomePortadorCartao" : "aeiou",
  "terminalRequisitante" : "aeiou",
  "nsuAutorizacao" : "aeiou"
}}]
     
     - parameter id: (path) Id Cartao 
     - parameter transacaoOnUsPorIdCartaoRequest: (body) transacaoOnUsPorIdCartaoRequest 

     - returns: RequestBuilder<TransacaoOnUsResponse> 
     */
    public class func autorizarUsingPOST1WithRequestBuilder(id id: Int, transacaoOnUsPorIdCartaoRequest: TransacaoOnUsPorIdCartaoRequest) -> RequestBuilder<TransacaoOnUsResponse> {
        var path = "/api/cartoes/{id}/autorizar-transacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = transacaoOnUsPorIdCartaoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TransacaoOnUsResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cancela transa\u00C3\u00A7\u00C3\u00A3o financeira por idConta
     
     - parameter id: (path) Id Conta 
     - parameter cancelamentoRequest: (body) cancelamentoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func cancelarPorIdContaUsingPOST(id id: Int, cancelamentoRequest: CancelamentoTransacaoPorIdCartaoRequest, completion: ((data: TransacaoOnUsResponse?, error: ErrorType?) -> Void)) {
        cancelarPorIdContaUsingPOSTWithRequestBuilder(id: id, cancelamentoRequest: cancelamentoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cancela transa\u00C3\u00A7\u00C3\u00A3o financeira por idConta
     
     - POST /api/contas/{id}/cancelar-transacao
     - Este m\u00C3\u00A9todo permite que seja cancelada uma transa\u00C3\u00A7\u00C3\u00A3o a partir do idConta.
     - examples: [{contentType=application/json, example={
  "codigoAutorizacao" : "aeiou",
  "planoDeParcelamento" : [ { } ],
  "numeroMascaradoCartao" : "aeiou",
  "nsuOrigem" : "aeiou",
  "nomePortadorCartao" : "aeiou",
  "terminalRequisitante" : "aeiou",
  "nsuAutorizacao" : "aeiou"
}}]
     
     - parameter id: (path) Id Conta 
     - parameter cancelamentoRequest: (body) cancelamentoRequest 

     - returns: RequestBuilder<TransacaoOnUsResponse> 
     */
    public class func cancelarPorIdContaUsingPOSTWithRequestBuilder(id id: Int, cancelamentoRequest: CancelamentoTransacaoPorIdCartaoRequest) -> RequestBuilder<TransacaoOnUsResponse> {
        var path = "/api/contas/{id}/cancelar-transacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = cancelamentoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TransacaoOnUsResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cancela transa\u00C3\u00A7\u00C3\u00A3o financeira
     
     - parameter cancelamentoRequest: (body) cancelamentoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func cancelarUsingPOST2(cancelamentoRequest cancelamentoRequest: CancelamentoTransacaoOnUsRequest, completion: ((data: TransacaoOnUsResponse?, error: ErrorType?) -> Void)) {
        cancelarUsingPOST2WithRequestBuilder(cancelamentoRequest: cancelamentoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cancela transa\u00C3\u00A7\u00C3\u00A3o financeira
     
     - POST /api/cancelar-transacao
     - Este m\u00C3\u00A9todo permite que seja cancelada uma transa\u00C3\u00A7\u00C3\u00A3o.
     - examples: [{contentType=application/json, example={
  "codigoAutorizacao" : "aeiou",
  "planoDeParcelamento" : [ { } ],
  "numeroMascaradoCartao" : "aeiou",
  "nsuOrigem" : "aeiou",
  "nomePortadorCartao" : "aeiou",
  "terminalRequisitante" : "aeiou",
  "nsuAutorizacao" : "aeiou"
}}]
     
     - parameter cancelamentoRequest: (body) cancelamentoRequest 

     - returns: RequestBuilder<TransacaoOnUsResponse> 
     */
    public class func cancelarUsingPOST2WithRequestBuilder(cancelamentoRequest cancelamentoRequest: CancelamentoTransacaoOnUsRequest) -> RequestBuilder<TransacaoOnUsResponse> {
        let path = "/api/cancelar-transacao"
        let URLString = PierAPI.basePath + path
        
        let parameters = cancelamentoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TransacaoOnUsResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cancela transa\u00C3\u00A7\u00C3\u00A3o financeira por idCartao
     
     - parameter id: (path) Id Cartao 
     - parameter cancelamentoRequest: (body) cancelamentoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func cancelarUsingPOST3(id id: Int, cancelamentoRequest: CancelamentoTransacaoPorIdCartaoRequest, completion: ((data: TransacaoOnUsResponse?, error: ErrorType?) -> Void)) {
        cancelarUsingPOST3WithRequestBuilder(id: id, cancelamentoRequest: cancelamentoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cancela transa\u00C3\u00A7\u00C3\u00A3o financeira por idCartao
     
     - POST /api/cartoes/{id}/cancelar-transacao
     - Este m\u00C3\u00A9todo permite que seja cancelada uma transa\u00C3\u00A7\u00C3\u00A3o a partir do idCartao.
     - examples: [{contentType=application/json, example={
  "codigoAutorizacao" : "aeiou",
  "planoDeParcelamento" : [ { } ],
  "numeroMascaradoCartao" : "aeiou",
  "nsuOrigem" : "aeiou",
  "nomePortadorCartao" : "aeiou",
  "terminalRequisitante" : "aeiou",
  "nsuAutorizacao" : "aeiou"
}}]
     
     - parameter id: (path) Id Cartao 
     - parameter cancelamentoRequest: (body) cancelamentoRequest 

     - returns: RequestBuilder<TransacaoOnUsResponse> 
     */
    public class func cancelarUsingPOST3WithRequestBuilder(id id: Int, cancelamentoRequest: CancelamentoTransacaoPorIdCartaoRequest) -> RequestBuilder<TransacaoOnUsResponse> {
        var path = "/api/cartoes/{id}/cancelar-transacao"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = cancelamentoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TransacaoOnUsResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Retorna c\u00C3\u00B3digos de processamento de autoriza\u00C3\u00A7\u00C3\u00A3o
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarCodigosProcessamentoAutorizacaoUsingGET(completion: ((data: [AnyObject]?, error: ErrorType?) -> Void)) {
        listarCodigosProcessamentoAutorizacaoUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Retorna c\u00C3\u00B3digos de processamento de autoriza\u00C3\u00A7\u00C3\u00A3o
     
     - GET /api/consultar-codigos-processamento-autorizacao
     - Este m\u00C3\u00A9todo retorna a lista dos c\u00C3\u00B3digos de processamento para autoriza\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00B5es financeiras.
     - examples: [{contentType=application/json, example=[ "{}" ]}]

     - returns: RequestBuilder<[AnyObject]> 
     */
    public class func listarCodigosProcessamentoAutorizacaoUsingGETWithRequestBuilder() -> RequestBuilder<[AnyObject]> {
        let path = "/api/consultar-codigos-processamento-autorizacao"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[AnyObject]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Simula planos de transa\u00C3\u00A7\u00C3\u00B5es
     
     - parameter transacoesRequest: (body) transacoesRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func simularUsingPOST(transacoesRequest transacoesRequest: TransacaoOnUsRequest, completion: ((data: TransacaoOnUsResponse?, error: ErrorType?) -> Void)) {
        simularUsingPOSTWithRequestBuilder(transacoesRequest: transacoesRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Simula planos de transa\u00C3\u00A7\u00C3\u00B5es
     
     - POST /api/simular-transacao
     - Este m\u00C3\u00A9todo permite que seja simulada um plano de transa\u00C3\u00A7\u00C3\u00B5es.
     - examples: [{contentType=application/json, example={
  "codigoAutorizacao" : "aeiou",
  "planoDeParcelamento" : [ { } ],
  "numeroMascaradoCartao" : "aeiou",
  "nsuOrigem" : "aeiou",
  "nomePortadorCartao" : "aeiou",
  "terminalRequisitante" : "aeiou",
  "nsuAutorizacao" : "aeiou"
}}]
     
     - parameter transacoesRequest: (body) transacoesRequest 

     - returns: RequestBuilder<TransacaoOnUsResponse> 
     */
    public class func simularUsingPOSTWithRequestBuilder(transacoesRequest transacoesRequest: TransacaoOnUsRequest) -> RequestBuilder<TransacaoOnUsResponse> {
        let path = "/api/simular-transacao"
        let URLString = PierAPI.basePath + path
        
        let parameters = transacoesRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TransacaoOnUsResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
