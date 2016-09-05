//
// PessoaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PessoaAPI: APIBase {
    /**
     
     Opera\u00C3\u00A7\u00C3\u00A3o utilizada para consultar uma determinada Origem Comercial 
     
     - parameter idOrigemComercial: (path) ID da Origem Comercial 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET1(idOrigemComercial idOrigemComercial: Int, completion: ((data: OrigemComercial?, error: ErrorType?) -> Void)) {
        consultarUsingGET1WithRequestBuilder(idOrigemComercial: idOrigemComercial).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Opera\u00C3\u00A7\u00C3\u00A3o utilizada para consultar uma determinada Origem Comercial 
     
     - GET /api/pessoas/{idOrigemComercial}
     - Este m\u00C3\u00A9todo permite que sejam listados os registros de uma determinada Origem Comercial existente na base do emissor. Para isso, \u00C3\u00A9 preciso informar o seu respectivo c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id). 
     - API Key:
       - type: apiKey access_token 
       - name: access_token
     - examples: [{contentType=application/json, example={
  "nome" : "aeiou",
  "id" : 123456789,
  "status" : "aeiou"
}}]
     
     - parameter idOrigemComercial: (path) ID da Origem Comercial 

     - returns: RequestBuilder<OrigemComercial> 
     */
    public class func consultarUsingGET1WithRequestBuilder(idOrigemComercial idOrigemComercial: Int) -> RequestBuilder<OrigemComercial> {
        var path = "/api/pessoas/{idOrigemComercial}"
        path = path.stringByReplacingOccurrencesOfString("{idOrigemComercial}", withString: "\(idOrigemComercial)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<OrigemComercial>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista as Pessoas cadastradas no Emissor
     
     - parameter idPessoa: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id). (optional)
     - parameter nome: (query) Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;. (optional)
     - parameter tipo: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica). (optional)
     - parameter cpf: (query) N\u00C3\u00BAmero do CPF, quando PF. (optional)
     - parameter cnpj: (query) N\u00C3\u00BAmero do CNPJ, quando PJ. (optional)
     - parameter dataNascimento: (query) Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. (optional)
     - parameter cnpj2: (query) N\u00C3\u00BAmero do CNPJ, quando PJ. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET1(idPessoa idPessoa: Int?, nome: String?, tipo: String?, cpf: String?, cnpj: String?, dataNascimento: NSDate?, cnpj2: String?, page: Int?, limit: Int?, completion: ((data: PagePessoas?, error: ErrorType?) -> Void)) {
        listarUsingGET1WithRequestBuilder(idPessoa: idPessoa, nome: nome, tipo: tipo, cpf: cpf, cnpj: cnpj, dataNascimento: dataNascimento, cnpj2: cnpj2, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista as Pessoas cadastradas no Emissor
     
     - GET /api/pessoas
     - Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
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
    "tipo" : "aeiou",
    "cpf" : "aeiou",
    "nome" : "aeiou",
    "cnpj" : "aeiou",
    "id" : 123456789,
    "dataNascimento" : "2000-01-23T04:56:07.000+0000",
    "sexo" : "aeiou"
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
     
     - parameter idPessoa: (query) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id). (optional)
     - parameter nome: (query) Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;. (optional)
     - parameter tipo: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\&quot;PF\&quot;: Pessoa F\u00C3\u00ADsica), (\&quot;PJ\&quot;: Pessoa Jur\u00C3\u00ADdica). (optional)
     - parameter cpf: (query) N\u00C3\u00BAmero do CPF, quando PF. (optional)
     - parameter cnpj: (query) N\u00C3\u00BAmero do CNPJ, quando PJ. (optional)
     - parameter dataNascimento: (query) Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. (optional)
     - parameter cnpj2: (query) N\u00C3\u00BAmero do CNPJ, quando PJ. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)

     - returns: RequestBuilder<PagePessoas> 
     */
    public class func listarUsingGET1WithRequestBuilder(idPessoa idPessoa: Int?, nome: String?, tipo: String?, cpf: String?, cnpj: String?, dataNascimento: NSDate?, cnpj2: String?, page: Int?, limit: Int?) -> RequestBuilder<PagePessoas> {
        let path = "/api/pessoas"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "id_pessoa": idPessoa,
            "nome": nome,
            "tipo": tipo,
            "cpf": cpf,
            "cnpj": cnpj,
            "data_nascimento": dataNascimento,
            "cnpj": cnpj2,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PagePessoas>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
