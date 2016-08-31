//
// CartaoOldAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CartaoOldAPI: APIBase {
    /**
     
     Bloqueia um cart\u00C3\u00A3o
     
     - parameter idConta: (path) ID da Conta 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja cancelar 
     - parameter motivo: (query) Motivo do bloqueio 
     - parameter observacao: (query) Alguma observa\u00C3\u00A7\u00C3\u00A3o para o bloqueio (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func bloquearCartaoUsingPOST(idConta idConta: Int, idCartao: Int, motivo: Int, observacao: String?, completion: ((data: CancelarCartaoResponse?, error: ErrorType?) -> Void)) {
        bloquearCartaoUsingPOSTWithRequestBuilder(idConta: idConta, idCartao: idCartao, motivo: motivo, observacao: observacao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Bloqueia um cart\u00C3\u00A3o
     
     - POST /api/contas/{idConta}/cartoes/{idCartao}/bloquear
     - Bloquear um determinado cart\u00C3\u00A3o
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "idCartao" : 123,
  "idConta" : 123,
  "descricaoRetorno" : "aeiou",
  "codigoRetorno" : 123
}}]
     
     - parameter idConta: (path) ID da Conta 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja cancelar 
     - parameter motivo: (query) Motivo do bloqueio 
     - parameter observacao: (query) Alguma observa\u00C3\u00A7\u00C3\u00A3o para o bloqueio (optional)

     - returns: RequestBuilder<CancelarCartaoResponse> 
     */
    public class func bloquearCartaoUsingPOSTWithRequestBuilder(idConta idConta: Int, idCartao: Int, motivo: Int, observacao: String?) -> RequestBuilder<CancelarCartaoResponse> {
        var path = "/api/contas/{idConta}/cartoes/{idCartao}/bloquear"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "motivo": motivo,
            "observacao": observacao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CancelarCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Retorna um cart\u00C3\u00A3o
     
     - parameter idConta: (path) ID da Conta que pertence o cart\u00C3\u00A3o 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja consultar 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarCartaoUsingGET(idConta idConta: Int, idCartao: Int, completion: ((data: ConsultarCartaoResponse?, error: ErrorType?) -> Void)) {
        consultarCartaoUsingGETWithRequestBuilder(idConta: idConta, idCartao: idCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Retorna um cart\u00C3\u00A3o
     
     - GET /api/contas/{idConta}/cartoes/{idCartao}
     - Consultar as informa\u00C3\u00A7\u00C3\u00B5es de um determinado cart\u00C3\u00A3o de uma conta
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "descricaoRetorno" : "aeiou",
  "cartoes" : [ {
    "idCartao" : 123,
    "idConta" : 123,
    "codigoDesbloqueio" : "aeiou",
    "bin" : 123,
    "flagSenha" : true,
    "estagioData" : "2000-01-23T04:56:07.000+0000",
    "flagReversao" : true,
    "numeroCartaoReal" : "aeiou",
    "dataEmissao" : "2000-01-23T04:56:07.000+0000",
    "estagioCartao" : 123,
    "dataVencimentoPadrao" : "aeiou",
    "numeroCartao" : "aeiou",
    "criptografiaHSM" : "aeiou",
    "idProduto" : 123,
    "descricaoRetorno" : "aeiou",
    "dataValidade" : "2000-01-23T04:56:07.000+0000",
    "idPessoaFisica" : 123,
    "codRetorno" : 123,
    "idEmissor" : 123,
    "nomePlastico" : "aeiou",
    "statusCartao" : 123,
    "statusData" : "2000-01-23T04:56:07.000+0000",
    "idLog" : "aeiou"
  } ],
  "codigoRetorno" : 123
}}]
     
     - parameter idConta: (path) ID da Conta que pertence o cart\u00C3\u00A3o 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja consultar 

     - returns: RequestBuilder<ConsultarCartaoResponse> 
     */
    public class func consultarCartaoUsingGETWithRequestBuilder(idConta idConta: Int, idCartao: Int) -> RequestBuilder<ConsultarCartaoResponse> {
        var path = "/api/contas/{idConta}/cartoes/{idCartao}"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ConsultarCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Retorna todos os cart\u00C3\u00B5es
     
     - parameter idConta: (path) ID da Conta 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarCartoesUsingGET(idConta idConta: Int, completion: ((data: ConsultarCartaoResponse?, error: ErrorType?) -> Void)) {
        consultarCartoesUsingGETWithRequestBuilder(idConta: idConta).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Retorna todos os cart\u00C3\u00B5es
     
     - GET /api/contas/{idConta}/cartoes
     - Consultar todos os cart\u00C3\u00B5es de uma determinada conta
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "descricaoRetorno" : "aeiou",
  "cartoes" : [ {
    "idCartao" : 123,
    "idConta" : 123,
    "codigoDesbloqueio" : "aeiou",
    "bin" : 123,
    "flagSenha" : true,
    "estagioData" : "2000-01-23T04:56:07.000+0000",
    "flagReversao" : true,
    "numeroCartaoReal" : "aeiou",
    "dataEmissao" : "2000-01-23T04:56:07.000+0000",
    "estagioCartao" : 123,
    "dataVencimentoPadrao" : "aeiou",
    "numeroCartao" : "aeiou",
    "criptografiaHSM" : "aeiou",
    "idProduto" : 123,
    "descricaoRetorno" : "aeiou",
    "dataValidade" : "2000-01-23T04:56:07.000+0000",
    "idPessoaFisica" : 123,
    "codRetorno" : 123,
    "idEmissor" : 123,
    "nomePlastico" : "aeiou",
    "statusCartao" : 123,
    "statusData" : "2000-01-23T04:56:07.000+0000",
    "idLog" : "aeiou"
  } ],
  "codigoRetorno" : 123
}}]
     
     - parameter idConta: (path) ID da Conta 

     - returns: RequestBuilder<ConsultarCartaoResponse> 
     */
    public class func consultarCartoesUsingGETWithRequestBuilder(idConta idConta: Int) -> RequestBuilder<ConsultarCartaoResponse> {
        var path = "/api/contas/{idConta}/cartoes"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<ConsultarCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Desbloqueia um cart\u00C3\u00A3o
     
     - parameter idConta: (path) ID da Conta 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja consultar o saldo/limite 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func desbloquearCartaoUsingPOST(idConta idConta: Int, idCartao: Int, completion: ((data: DesbloquearCartaoResponse?, error: ErrorType?) -> Void)) {
        desbloquearCartaoUsingPOSTWithRequestBuilder(idConta: idConta, idCartao: idCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Desbloqueia um cart\u00C3\u00A3o
     
     - POST /api/contas/{idConta}/cartoes/{idCartao}/desbloquear
     - Desbloquear cart\u00C3\u00A3o de uma determinada conta
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "descricaoRetorno" : "aeiou",
  "codigoRetorno" : 123
}}]
     
     - parameter idConta: (path) ID da Conta 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja consultar o saldo/limite 

     - returns: RequestBuilder<DesbloquearCartaoResponse> 
     */
    public class func desbloquearCartaoUsingPOSTWithRequestBuilder(idConta idConta: Int, idCartao: Int) -> RequestBuilder<DesbloquearCartaoResponse> {
        var path = "/api/contas/{idConta}/cartoes/{idCartao}/desbloquear"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DesbloquearCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Embossado
     
     - parameter idConta: (path) ID da Conta 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja cancelar 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func embossadoCartaoUsingPUT(idConta idConta: Int, idCartao: Int, completion: ((data: EmbossadoCartaoResponse?, error: ErrorType?) -> Void)) {
        embossadoCartaoUsingPUTWithRequestBuilder(idConta: idConta, idCartao: idCartao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Embossado
     
     - PUT /api/contas/{idConta}/cartoes/{idCartao}/embossado
     - N\u00C3\u00B3s informe caso tenha embossado algum cart\u00C3\u00A3o.
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "idCartao" : 123,
  "idConta" : 123,
  "descricaoRetorno" : "aeiou",
  "codigoRetorno" : 123
}}]
     
     - parameter idConta: (path) ID da Conta 
     - parameter idCartao: (path) ID do Cart\u00C3\u00A3o que deseja cancelar 

     - returns: RequestBuilder<EmbossadoCartaoResponse> 
     */
    public class func embossadoCartaoUsingPUTWithRequestBuilder(idConta idConta: Int, idCartao: Int) -> RequestBuilder<EmbossadoCartaoResponse> {
        var path = "/api/contas/{idConta}/cartoes/{idCartao}/embossado"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{idCartao}", withString: "\(idCartao)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<EmbossadoCartaoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

}