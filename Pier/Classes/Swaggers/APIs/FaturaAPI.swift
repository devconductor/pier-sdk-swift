//
// FaturaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FaturaAPI: APIBase {
    /**
     
     Listar planos de parcelamento
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter dataVencimentoPadrao: (query) Indica a data de vencimento padr\u00C3\u00A3o das faturas 
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarLancamentosFuturosFaturaUsingGET1(id id: Int, dataVencimentoPadrao: String, sort: [String]?, page: Int?, limit: Int?, completion: ((data: PagePlanoParcelamentoResponse?, error: ErrorType?) -> Void)) {
        consultarLancamentosFuturosFaturaUsingGET1WithRequestBuilder(id: id, dataVencimentoPadrao: dataVencimentoPadrao, sort: sort, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Listar planos de parcelamento
     
     - GET /api/contas/{id}/faturas/planos-parcelamento
     - Lista os planos de parcelamento da fatura de uma conta.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "valorEntrada" : 1.3579000000000001069366817318950779736042022705078125,
    "idConta" : 123456789,
    "nomeCampanha" : "aeiou",
    "statusAdesao" : 123,
    "quantidadeParcelas" : 123,
    "dataVencimentoPadrao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "valorParcela" : 1.3579000000000001069366817318950779736042022705078125,
    "valorTAC" : 1.3579000000000001069366817318950779736042022705078125,
    "valorTotalRefinanciamento" : 1.3579000000000001069366817318950779736042022705078125,
    "dataFechamentoFatura" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "taxaRefinanciamento" : 1.3579000000000001069366817318950779736042022705078125,
    "dataInclusao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "id" : 123456789,
    "comEntrada" : false,
    "dataProcessamentoAdesao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "custoEfetivoTotal" : 1.3579000000000001069366817318950779736042022705078125,
    "descricaoServicoTipo" : "aeiou",
    "valorTotalFatura" : 1.3579000000000001069366817318950779736042022705078125,
    "valorIOF" : 1.3579000000000001069366817318950779736042022705078125
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
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
     - parameter dataVencimentoPadrao: (query) Indica a data de vencimento padr\u00C3\u00A3o das faturas 
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)

     - returns: RequestBuilder<PagePlanoParcelamentoResponse> 
     */
    public class func consultarLancamentosFuturosFaturaUsingGET1WithRequestBuilder(id id: Int, dataVencimentoPadrao: String, sort: [String]?, page: Int?, limit: Int?) -> RequestBuilder<PagePlanoParcelamentoResponse> {
        var path = "/api/contas/{id}/faturas/planos-parcelamento"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "dataVencimentoPadrao": dataVencimentoPadrao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PagePlanoParcelamentoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}