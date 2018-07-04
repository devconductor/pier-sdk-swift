//
// GlobaltagboletoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GlobaltagboletoAPI: APIBase {
    /**
     
     {{{boleto_resource_consultar}}}
     
     - parameter id: (path) {{{boleto_resource_consultar_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET33(id id: Int, completion: ((data: BoletoResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET33WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{boleto_resource_consultar}}}
     
     - GET /api/boletos/{id}
     - {{{boleto_resource_consultar_notes}}}
     - examples: [{contentType=application/json, example={
  "codigoBeneficiario" : "aeiou",
  "locaisDePagamento" : [ "aeiou" ],
  "dataDocumento" : "aeiou",
  "dataProcessamento" : "aeiou",
  "instrucoes" : [ "aeiou" ],
  "cidadePagador" : "aeiou",
  "agencia" : "aeiou",
  "especie" : "aeiou",
  "bairroPagador" : "aeiou",
  "valorBoleto" : 1.3579000000000001069366817318950779736042022705078125,
  "especieDoDocumento" : "aeiou",
  "cepPagador" : "aeiou",
  "numeroDoDocumento" : "aeiou",
  "linhaDigitavel" : "aeiou",
  "enderecoCobrancaBeneficiario" : "aeiou",
  "carteira" : "aeiou",
  "digitoCodigoBeneficiario" : "aeiou",
  "ufPagador" : "aeiou",
  "codigoDeBarras" : "aeiou",
  "id" : 123456789,
  "documentoBeneficiario" : "aeiou",
  "aceite" : false,
  "nomeBeneficiario" : "aeiou",
  "idConta" : 123456789,
  "banco" : "aeiou",
  "dataFechamento" : "aeiou",
  "nomePagador" : "aeiou",
  "numeroConvenio" : "aeiou",
  "logradouroPagador" : "aeiou",
  "documentoPagador" : "aeiou",
  "dataVencimento" : "aeiou",
  "digitoNossoNumero" : "aeiou",
  "nossoNumero" : "aeiou",
  "status" : 123456789
}}]
     
     - parameter id: (path) {{{boleto_resource_consultar_param_id}}} 

     - returns: RequestBuilder<BoletoResponse> 
     */
    public class func consultarUsingGET33WithRequestBuilder(id id: Int) -> RequestBuilder<BoletoResponse> {
        var path = "/api/boletos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<BoletoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{boleto_resource_enviar_boleto_email}}}
     
     - parameter id: (path) {{{boleto_resource_enviar_boleto_param_id}}} 
     - parameter request: (body) request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func enviarBoletoEmailUsingPOST(id id: Int, request: BoletoEmailRequest, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        enviarBoletoEmailUsingPOSTWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{boleto_resource_enviar_boleto_email}}}
     
     - POST /api/boletos/{id}/enviar-email
     - {{{boleto_resource_enviar_boleto_email_notes}}}
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter id: (path) {{{boleto_resource_enviar_boleto_param_id}}} 
     - parameter request: (body) request 

     - returns: RequestBuilder<AnyObject> 
     */
    public class func enviarBoletoEmailUsingPOSTWithRequestBuilder(id id: Int, request: BoletoEmailRequest) -> RequestBuilder<AnyObject> {
        var path = "/api/boletos/{id}/enviar-email"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = request.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{boleto_resource_gerar_boleto}}}
     
     - parameter boletoRequest: (body) boletoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func gerarBoletoUsingPOST(boletoRequest boletoRequest: BoletoRequest, completion: ((data: BoletoResponse?, error: ErrorType?) -> Void)) {
        gerarBoletoUsingPOSTWithRequestBuilder(boletoRequest: boletoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{boleto_resource_gerar_boleto}}}
     
     - POST /api/boletos
     - {{{boleto_resource_gerar_boleto_notes}}}
     - examples: [{contentType=application/json, example={
  "codigoBeneficiario" : "aeiou",
  "locaisDePagamento" : [ "aeiou" ],
  "dataDocumento" : "aeiou",
  "dataProcessamento" : "aeiou",
  "instrucoes" : [ "aeiou" ],
  "cidadePagador" : "aeiou",
  "agencia" : "aeiou",
  "especie" : "aeiou",
  "bairroPagador" : "aeiou",
  "valorBoleto" : 1.3579000000000001069366817318950779736042022705078125,
  "especieDoDocumento" : "aeiou",
  "cepPagador" : "aeiou",
  "numeroDoDocumento" : "aeiou",
  "linhaDigitavel" : "aeiou",
  "enderecoCobrancaBeneficiario" : "aeiou",
  "carteira" : "aeiou",
  "digitoCodigoBeneficiario" : "aeiou",
  "ufPagador" : "aeiou",
  "codigoDeBarras" : "aeiou",
  "id" : 123456789,
  "documentoBeneficiario" : "aeiou",
  "aceite" : false,
  "nomeBeneficiario" : "aeiou",
  "idConta" : 123456789,
  "banco" : "aeiou",
  "dataFechamento" : "aeiou",
  "nomePagador" : "aeiou",
  "numeroConvenio" : "aeiou",
  "logradouroPagador" : "aeiou",
  "documentoPagador" : "aeiou",
  "dataVencimento" : "aeiou",
  "digitoNossoNumero" : "aeiou",
  "nossoNumero" : "aeiou",
  "status" : 123456789
}}]
     
     - parameter boletoRequest: (body) boletoRequest 

     - returns: RequestBuilder<BoletoResponse> 
     */
    public class func gerarBoletoUsingPOSTWithRequestBuilder(boletoRequest boletoRequest: BoletoRequest) -> RequestBuilder<BoletoResponse> {
        let path = "/api/boletos"
        let URLString = PierAPI.basePath + path
        
        let parameters = boletoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<BoletoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{boleto_resource_listar}}}
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter idConta: (query) {{{boleto_listar_request_id_conta_value}}} (optional)
     - parameter dataVencimento: (query) {{{boleto_listar_request_data_vencimento_value}}} (optional)
     - parameter valorBoleto: (query) {{{boleto_listar_request_valor_value}}} (optional)
     - parameter idTipoBoleto: (query) {{{boleto_listar_request_id_tipo_boleto_value}}} (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET45(sort sort: [String]?, page: Int?, limit: Int?, idConta: Int?, dataVencimento: String?, valorBoleto: Double?, idTipoBoleto: Int?, completion: ((data: PageBoletoListarResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET45WithRequestBuilder(sort: sort, page: page, limit: limit, idConta: idConta, dataVencimento: dataVencimento, valorBoleto: valorBoleto, idTipoBoleto: idTipoBoleto).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{boleto_resource_listar}}}
     
     - GET /api/boletos
     - {{{boleto_resource_listar_notes}}}
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "valorBoleto" : 1.3579000000000001069366817318950779736042022705078125,
    "idConta" : 123456789,
    "idTipoBoleto" : 123456789,
    "dataVencimento" : "aeiou",
    "nossoNumero" : "aeiou",
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
     
     - parameter sort: (query) {{{global_menssagem_sort_sort}}} (optional)
     - parameter page: (query) {{{global_menssagem_sort_page_value}}} (optional)
     - parameter limit: (query) {{{global_menssagem_sort_limit}}} (optional)
     - parameter idConta: (query) {{{boleto_listar_request_id_conta_value}}} (optional)
     - parameter dataVencimento: (query) {{{boleto_listar_request_data_vencimento_value}}} (optional)
     - parameter valorBoleto: (query) {{{boleto_listar_request_valor_value}}} (optional)
     - parameter idTipoBoleto: (query) {{{boleto_listar_request_id_tipo_boleto_value}}} (optional)

     - returns: RequestBuilder<PageBoletoListarResponse> 
     */
    public class func listarUsingGET45WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idConta: Int?, dataVencimento: String?, valorBoleto: Double?, idTipoBoleto: Int?) -> RequestBuilder<PageBoletoListarResponse> {
        let path = "/api/boletos"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idConta": idConta,
            "dataVencimento": dataVencimento,
            "valorBoleto": valorBoleto,
            "idTipoBoleto": idTipoBoleto
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageBoletoListarResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     {{{registro_cobranca_resource_registrar_boleto}}}
     
     - parameter id: (path) {{{registro_cobranca_resource_registrar_boleto_param_id_boleto}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func registrarBoletoUsingPOST(id id: Int, completion: ((data: BoletoResponse?, error: ErrorType?) -> Void)) {
        registrarBoletoUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{registro_cobranca_resource_registrar_boleto}}}
     
     - POST /api/boletos/{id}/registrar
     - {{{registro_cobranca_resource_registrar_boleto_notes}}}
     - examples: [{contentType=application/json, example={
  "codigoBeneficiario" : "aeiou",
  "locaisDePagamento" : [ "aeiou" ],
  "dataDocumento" : "aeiou",
  "dataProcessamento" : "aeiou",
  "instrucoes" : [ "aeiou" ],
  "cidadePagador" : "aeiou",
  "agencia" : "aeiou",
  "especie" : "aeiou",
  "bairroPagador" : "aeiou",
  "valorBoleto" : 1.3579000000000001069366817318950779736042022705078125,
  "especieDoDocumento" : "aeiou",
  "cepPagador" : "aeiou",
  "numeroDoDocumento" : "aeiou",
  "linhaDigitavel" : "aeiou",
  "enderecoCobrancaBeneficiario" : "aeiou",
  "carteira" : "aeiou",
  "digitoCodigoBeneficiario" : "aeiou",
  "ufPagador" : "aeiou",
  "codigoDeBarras" : "aeiou",
  "id" : 123456789,
  "documentoBeneficiario" : "aeiou",
  "aceite" : false,
  "nomeBeneficiario" : "aeiou",
  "idConta" : 123456789,
  "banco" : "aeiou",
  "dataFechamento" : "aeiou",
  "nomePagador" : "aeiou",
  "numeroConvenio" : "aeiou",
  "logradouroPagador" : "aeiou",
  "documentoPagador" : "aeiou",
  "dataVencimento" : "aeiou",
  "digitoNossoNumero" : "aeiou",
  "nossoNumero" : "aeiou",
  "status" : 123456789
}}]
     
     - parameter id: (path) {{{registro_cobranca_resource_registrar_boleto_param_id_boleto}}} 

     - returns: RequestBuilder<BoletoResponse> 
     */
    public class func registrarBoletoUsingPOSTWithRequestBuilder(id id: Int) -> RequestBuilder<BoletoResponse> {
        var path = "/api/boletos/{id}/registrar"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<BoletoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     {{{boleto_resource_visualizar_boleto}}}
     
     - parameter id: (path) {{{boleto_resource_visualizar_boleto_param_id}}} 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func visualizarBoletoUsingGET(id id: Int, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        visualizarBoletoUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     {{{boleto_resource_visualizar_boleto}}}
     
     - GET /api/boletos/{id}/arquivo.pdf
     - {{{boleto_resource_visualizar_boleto_notes}}}
     - examples: [{output=none}]
     
     - parameter id: (path) {{{boleto_resource_visualizar_boleto_param_id}}} 

     - returns: RequestBuilder<AnyObject> 
     */
    public class func visualizarBoletoUsingGETWithRequestBuilder(id id: Int) -> RequestBuilder<AnyObject> {
        var path = "/api/boletos/{id}/arquivo.pdf"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
