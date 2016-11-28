//
// ContaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ContaAPI: APIBase {
    /**
     
     Alterar vencimento
     
     - parameter idConta: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter novoDiaVencimento: (query) Novo dia de vencimento. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarVencimentoUsingPUT(idConta idConta: Int, novoDiaVencimento: Int, completion: ((data: Conta?, error: ErrorType?) -> Void)) {
        alterarVencimentoUsingPUTWithRequestBuilder(idConta: idConta, novoDiaVencimento: novoDiaVencimento).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Alterar vencimento
     
     - PUT /api/contas/{idConta}/alterar-vencimento
     - Esse recurso permite alterar o vencimento de uma conta especifica.
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "idPessoa" : 123456789,
  "idStatusConta" : 123456789,
  "idOrigemComercial" : 123456789,
  "idProduto" : 123456789,
  "dataUltimaAlteracaoVencimento" : "2000-01-23T04:56:07.000+0000",
  "melhorDiaCompra" : 123,
  "dataStatusConta" : "2000-01-23T04:56:07.000+0000",
  "id" : 123456789,
  "dataCadastro" : "2000-01-23T04:56:07.000+0000",
  "diaVencimento" : 123
}}]
     
     - parameter idConta: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter novoDiaVencimento: (query) Novo dia de vencimento. 

     - returns: RequestBuilder<Conta> 
     */
    public class func alterarVencimentoUsingPUTWithRequestBuilder(idConta idConta: Int, novoDiaVencimento: Int) -> RequestBuilder<Conta> {
        var path = "/api/contas/{idConta}/alterar-vencimento"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "novo_dia_vencimento": novoDiaVencimento
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Conta>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Apresenta dados de uma determinada conta
     
     - parameter idConta: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET1(idConta idConta: Int, completion: ((data: Conta?, error: ErrorType?) -> Void)) {
        consultarUsingGET1WithRequestBuilder(idConta: idConta).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta dados de uma determinada conta
     
     - GET /api/contas/{idConta}
     - Este m\u00C3\u00A9todo permite consultar dados de uma determinada conta a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "idPessoa" : 123456789,
  "idStatusConta" : 123456789,
  "idOrigemComercial" : 123456789,
  "idProduto" : 123456789,
  "dataUltimaAlteracaoVencimento" : "2000-01-23T04:56:07.000+0000",
  "melhorDiaCompra" : 123,
  "dataStatusConta" : "2000-01-23T04:56:07.000+0000",
  "id" : 123456789,
  "dataCadastro" : "2000-01-23T04:56:07.000+0000",
  "diaVencimento" : 123
}}]
     
     - parameter idConta: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 

     - returns: RequestBuilder<Conta> 
     */
    public class func consultarUsingGET1WithRequestBuilder(idConta idConta: Int) -> RequestBuilder<Conta> {
        var path = "/api/contas/{idConta}"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Conta>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Realiza a gera\u00C3\u00A7\u00C3\u00A3o de um novo cart\u00C3\u00A3o para impress\u00C3\u00A3o avulsa
     
     - parameter idConta: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter idPessoa: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func gerarCartaoUsingPUT(idConta idConta: Int, idPessoa: Int, completion: ((data: CartaoImpressao?, error: ErrorType?) -> Void)) {
        gerarCartaoUsingPUTWithRequestBuilder(idConta: idConta, idPessoa: idPessoa).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Realiza a gera\u00C3\u00A7\u00C3\u00A3o de um novo cart\u00C3\u00A3o para impress\u00C3\u00A3o avulsa
     
     - PUT /api/contas/{idConta}/pessoas/{idPessoa}/gerar-cartao
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "cvv2" : "aeiou",
  "idCartao" : 123456789,
  "trilha1" : "aeiou",
  "trilhaCVV2" : "aeiou",
  "idConta" : 123456789,
  "trilhaCVV1" : "aeiou",
  "idTipoCartao" : 123456789,
  "idBandeira" : 123456789,
  "centroCustoConta" : "aeiou",
  "trilha2" : "aeiou",
  "nomeEmpregador" : "aeiou",
  "numeroCartao" : "aeiou",
  "numeroContaCorente" : "aeiou",
  "idPessoa" : 123456789,
  "nomeEmpresa" : "aeiou",
  "dataValidade" : "2000-01-23T04:56:07.000+0000",
  "nomeOrigemComercial" : "aeiou",
  "cpf" : "aeiou",
  "nomePlastico" : "aeiou",
  "nomeEmpresaBeneficio" : "aeiou",
  "numeroAgencia" : 123,
  "dataGeracao" : "2000-01-23T04:56:07.000+0000",
  "tipoPortador" : "aeiou"
}}]
     
     - parameter idConta: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter idPessoa: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id). 

     - returns: RequestBuilder<CartaoImpressao> 
     */
    public class func gerarCartaoUsingPUTWithRequestBuilder(idConta idConta: Int, idPessoa: Int) -> RequestBuilder<CartaoImpressao> {
        var path = "/api/contas/{idConta}/pessoas/{idPessoa}/gerar-cartao"
        path = path.stringByReplacingOccurrencesOfString("{idConta}", withString: "\(idConta)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{idPessoa}", withString: "\(idPessoa)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<CartaoImpressao>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista contas existentes na base de dados do Emissor
     
     - parameter id: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de conta (id). (optional)
     - parameter idProduto: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do produto ao qual a conta faz parte. (id). (optional)
     - parameter idOrigemComercial: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id) que deu origem a Conta. (optional)
     - parameter idPessoa: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa Titular da Conta (id). (optional)
     - parameter idStatusConta: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). (optional)
     - parameter diaVencimento: (query) Apresenta o dia de vencimento. (optional)
     - parameter melhorDiaCompra: (query) Apresenta o melhor dia de compra. (optional)
     - parameter dataStatusConta: (query) Apresenta a data em que o idStatusConta atual fora atribu\u00C3\u00ADdo para ela. (optional)
     - parameter dataCadastro: (query) Apresenta a data em que o cart\u00C3\u00A3o foi gerado. (optional)
     - parameter dataUltimaAlteracaoVencimento: (query) Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET1(id id: Int?, idProduto: Int?, idOrigemComercial: Int?, idPessoa: Int?, idStatusConta: Int?, diaVencimento: Int?, melhorDiaCompra: Int?, dataStatusConta: NSDate?, dataCadastro: NSDate?, dataUltimaAlteracaoVencimento: NSDate?, page: Int?, limit: Int?, completion: ((data: Conta?, error: ErrorType?) -> Void)) {
        listarUsingGET1WithRequestBuilder(id: id, idProduto: idProduto, idOrigemComercial: idOrigemComercial, idPessoa: idPessoa, idStatusConta: idStatusConta, diaVencimento: diaVencimento, melhorDiaCompra: melhorDiaCompra, dataStatusConta: dataStatusConta, dataCadastro: dataCadastro, dataUltimaAlteracaoVencimento: dataUltimaAlteracaoVencimento, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista contas existentes na base de dados do Emissor
     
     - GET /api/contas
     - Este recurso permite listar contas existentes na base de dados do Emissor.
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "idPessoa" : 123456789,
  "idStatusConta" : 123456789,
  "idOrigemComercial" : 123456789,
  "idProduto" : 123456789,
  "dataUltimaAlteracaoVencimento" : "2000-01-23T04:56:07.000+0000",
  "melhorDiaCompra" : 123,
  "dataStatusConta" : "2000-01-23T04:56:07.000+0000",
  "id" : 123456789,
  "dataCadastro" : "2000-01-23T04:56:07.000+0000",
  "diaVencimento" : 123
}}]
     
     - parameter id: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de conta (id). (optional)
     - parameter idProduto: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do produto ao qual a conta faz parte. (id). (optional)
     - parameter idOrigemComercial: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id) que deu origem a Conta. (optional)
     - parameter idPessoa: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa Titular da Conta (id). (optional)
     - parameter idStatusConta: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). (optional)
     - parameter diaVencimento: (query) Apresenta o dia de vencimento. (optional)
     - parameter melhorDiaCompra: (query) Apresenta o melhor dia de compra. (optional)
     - parameter dataStatusConta: (query) Apresenta a data em que o idStatusConta atual fora atribu\u00C3\u00ADdo para ela. (optional)
     - parameter dataCadastro: (query) Apresenta a data em que o cart\u00C3\u00A3o foi gerado. (optional)
     - parameter dataUltimaAlteracaoVencimento: (query) Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<Conta> 
     */
    public class func listarUsingGET1WithRequestBuilder(id id: Int?, idProduto: Int?, idOrigemComercial: Int?, idPessoa: Int?, idStatusConta: Int?, diaVencimento: Int?, melhorDiaCompra: Int?, dataStatusConta: NSDate?, dataCadastro: NSDate?, dataUltimaAlteracaoVencimento: NSDate?, page: Int?, limit: Int?) -> RequestBuilder<Conta> {
        let path = "/api/contas"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id": id,
            "idProduto": idProduto,
            "idOrigemComercial": idOrigemComercial,
            "idPessoa": idPessoa,
            "idStatusConta": idStatusConta,
            "diaVencimento": diaVencimento,
            "melhorDiaCompra": melhorDiaCompra,
            "dataStatusConta": dataStatusConta,
            "dataCadastro": dataCadastro,
            "dataUltimaAlteracaoVencimento": dataUltimaAlteracaoVencimento,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<Conta>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
