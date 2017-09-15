//
// MockAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class MockAPI: APIBase {
    /**
     
     Altera o produto associado \u00C3\u00A0 conta.
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter request: (body) request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarProdutoUsingPOST(id id: Int, request: AlterarProdutoRequest, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        alterarProdutoUsingPOSTWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Altera o produto associado \u00C3\u00A0 conta.
     
     - POST /api/contas/{id}/alterar-produto
     - O recurso permite fazer modifica\u00C3\u00A7\u00C3\u00A3o do produto associado \u00C3\u00A0 conta.
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter request: (body) request 

     - returns: RequestBuilder<AnyObject> 
     */
    public class func alterarProdutoUsingPOSTWithRequestBuilder(id id: Int, request: AlterarProdutoRequest) -> RequestBuilder<AnyObject> {
        var path = "/api/contas/{id}/alterar-produto"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = request.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Envia 2\u00C2\u00AA via de fatura por E-mail
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter dataVencimento: (path) Data de Vencimento da fatura. 
     - parameter email: (query) E-mail para envio da 2\u00C2\u00AA via da fatura, caso n\u00C3\u00A3o seja informado ser\u00C3\u00A1 usado o e-mail cadastrado. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func enviarFaturaEmailUsingPOST(id id: Int, dataVencimento: String, email: String?, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        enviarFaturaEmailUsingPOSTWithRequestBuilder(id: id, dataVencimento: dataVencimento, email: email).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Envia 2\u00C2\u00AA via de fatura por E-mail
     
     - POST /api/contas/{id}/faturas/{dataVencimento}/enviar-email
     - Envia a segunda via da fatura para o e-mail informado/cadastrado.
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter dataVencimento: (path) Data de Vencimento da fatura. 
     - parameter email: (query) E-mail para envio da 2\u00C2\u00AA via da fatura, caso n\u00C3\u00A3o seja informado ser\u00C3\u00A1 usado o e-mail cadastrado. (optional)

     - returns: RequestBuilder<AnyObject> 
     */
    public class func enviarFaturaEmailUsingPOSTWithRequestBuilder(id id: Int, dataVencimento: String, email: String?) -> RequestBuilder<AnyObject> {
        var path = "/api/contas/{id}/faturas/{dataVencimento}/enviar-email"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{dataVencimento}", withString: "\(dataVencimento)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "email": email
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Simula valores de presta\u00C3\u00A7\u00C3\u00B5es de empr\u00C3\u00A9stimos/financiamentos
     
     - parameter request: (body) request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func simularEmprestimoFinanciamentoUsingPOST(request request: EmprestimoPessoalRequest, completion: ((data: EmprestimoPessoalResponse?, error: ErrorType?) -> Void)) {
        simularEmprestimoFinanciamentoUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Simula valores de presta\u00C3\u00A7\u00C3\u00B5es de empr\u00C3\u00A9stimos/financiamentos
     
     - POST /api/simular-emprestimos-financiamentos
     - Esta opera\u00C3\u00A7\u00C3\u00A3o pode ser utilizada para simular opera\u00C3\u00A7\u00C3\u00B5es financeiras a partir de informa\u00C3\u00A7\u00C3\u00B5es fornecidas pelo usu\u00C3\u00A1rio. Os c\u00C3\u00A1lculos gerados devem ser considerados apenas como refer\u00C3\u00AAncia para as situa\u00C3\u00A7\u00C3\u00B5es reais e n\u00C3\u00A3o como valores oficiais.
     - examples: [{contentType=application/json, example={
  "valorSolicitado" : 1.3579000000000001069366817318950779736042022705078125,
  "valorTotal" : 1.3579000000000001069366817318950779736042022705078125,
  "sistemaAmortizacao" : "aeiou",
  "periodoTaxa" : "aeiou",
  "planosParcelamentos" : [ {
    "numeroParcelas" : 123,
    "valorPercentualCET" : 1.3579000000000001069366817318950779736042022705078125,
    "valorParcelas" : 1.3579000000000001069366817318950779736042022705078125,
    "taxaJuros" : 1.3579000000000001069366817318950779736042022705078125,
    "valorTributosIOF" : 1.3579000000000001069366817318950779736042022705078125
  } ],
  "dataPrimeiraParcela" : "2017-10-20"
}}]
     
     - parameter request: (body) request 

     - returns: RequestBuilder<EmprestimoPessoalResponse> 
     */
    public class func simularEmprestimoFinanciamentoUsingPOSTWithRequestBuilder(request request: EmprestimoPessoalRequest) -> RequestBuilder<EmprestimoPessoalResponse> {
        let path = "/api/simular-emprestimos-financiamentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = request.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<EmprestimoPessoalResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Permite visualizar o extrato da fatura em formato PDF
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter dataVencimento: (path) Data de Vencimento da fatura. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func visualizarDocumentoUsingPOST(id id: Int, dataVencimento: String, completion: ((data: [ByteArray]?, error: ErrorType?) -> Void)) {
        visualizarDocumentoUsingPOSTWithRequestBuilder(id: id, dataVencimento: dataVencimento).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Permite visualizar o extrato da fatura em formato PDF
     
     - POST /api/contas/{id}/faturas/{dataVencimento}/arquivo.pdf
     - Esta opera\u00C3\u00A7\u00C3\u00A3o permite visualizar o extrato da fatura de uma determinada conta, em formato PDF. Quando ela for a fatura ativa, ou seja, a do m\u00C3\u00AAs corrente, o pdf ser\u00C3\u00A1 composto pelo extrato de lan\u00C3\u00A7amentos e pela ficha de compensa\u00C3\u00A7\u00C3\u00A3o banc\u00C3\u00A1ria. Quando for de uma fatura do hist\u00C3\u00B3rico do cliente, o PDF ser\u00C3\u00A1 composto apenas pelo extrato de transa\u00C3\u00A7\u00C3\u00B5es.
     - examples: [{output=none}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter dataVencimento: (path) Data de Vencimento da fatura. 

     - returns: RequestBuilder<[ByteArray]> 
     */
    public class func visualizarDocumentoUsingPOSTWithRequestBuilder(id id: Int, dataVencimento: String) -> RequestBuilder<[ByteArray]> {
        var path = "/api/contas/{id}/faturas/{dataVencimento}/arquivo.pdf"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{dataVencimento}", withString: "\(dataVencimento)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<[ByteArray]>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}