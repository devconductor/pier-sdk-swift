//
// DocumentoAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class DocumentoAPI: APIBase {
    /**
     
     Altera o tipo de template
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarUsingPUT9(id id: Int, persist: TipoTemplateRequest, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        alterarUsingPUT9WithRequestBuilder(id: id, persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Altera o tipo de template
     
     - PUT /api/tipos-templates/{id}
     - Esse recurso permite alterar os dados do tipo de template.
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 
     - parameter persist: (body) persist 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func alterarUsingPUT9WithRequestBuilder(id id: Int, persist: TipoTemplateRequest) -> RequestBuilder<TipoTemplateResponse> {
        var path = "/api/tipos-templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Atualizar templates dos documentos
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func atualizarUsingPUT(id id: Int, persist: DocumentoTemplatePersist, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        atualizarUsingPUTWithRequestBuilder(id: id, persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Atualizar templates dos documentos
     
     - PUT /api/templates-documentos/{id}
     - Esse recurso permite atualizar templates dos documentos.
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func atualizarUsingPUTWithRequestBuilder(id id: Int, persist: DocumentoTemplatePersist) -> RequestBuilder<DocumentoTemplateResponse> {
        var path = "/api/templates-documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Consultar tipo de template
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET27(id id: Int, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET27WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consultar tipo de template
     
     - GET /api/tipos-templates/{id}
     - Esse recurso permite consultar um determinado tipo de template a partir do id recebido e do id do emissor.
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id). 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func consultarUsingGET27WithRequestBuilder(id id: Int) -> RequestBuilder<TipoTemplateResponse> {
        var path = "/api/tipos-templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Consulta documentos
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET7(id id: Int, completion: ((data: DocumentoDetalhadoResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET7WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consulta documentos
     
     - GET /api/documentos/{id}
     - Esse recurso permite consultar um documento espec\u00C3\u00ADfico a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "extensao" : "aeiou",
  "idTemplateDocumento" : 123456789,
  "documentoDetalhes" : [ {
    "conteudo" : "aeiou",
    "propriedade" : "aeiou",
    "id" : 123456789
  } ],
  "documento" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento (id). 

     - returns: RequestBuilder<DocumentoDetalhadoResponse> 
     */
    public class func consultarUsingGET7WithRequestBuilder(id id: Int) -> RequestBuilder<DocumentoDetalhadoResponse> {
        var path = "/api/documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DocumentoDetalhadoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Consultar templates dos documentos
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET8(id id: Int, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET8WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consultar templates dos documentos
     
     - GET /api/templates-documentos/{id}
     - Esse recurso permite consultar templates dos documentos.
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id). 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func consultarUsingGET8WithRequestBuilder(id id: Int) -> RequestBuilder<DocumentoTemplateResponse> {
        var path = "/api/templates-documentos/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Integra um arquivo a reposit\u00C3\u00B3rios remotos.
     
     - parameter integrarDocumentoRequest: (body) integrarDocumentoRequest 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func integrarUsingPOST(integrarDocumentoRequest integrarDocumentoRequest: IntegrarDocumentoRequest, completion: ((data: String?, error: ErrorType?) -> Void)) {
        integrarUsingPOSTWithRequestBuilder(integrarDocumentoRequest: integrarDocumentoRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Integra um arquivo a reposit\u00C3\u00B3rios remotos.
     
     - POST /api/documentos/integrar
     - Este recurso permite integrar um documento ao reposit\u00C3\u00B3rio pre-configurado.
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter integrarDocumentoRequest: (body) integrarDocumentoRequest 

     - returns: RequestBuilder<String> 
     */
    public class func integrarUsingPOSTWithRequestBuilder(integrarDocumentoRequest integrarDocumentoRequest: IntegrarDocumentoRequest) -> RequestBuilder<String> {
        let path = "/api/documentos/integrar"
        let URLString = PierAPI.basePath + path
        
        let parameters = integrarDocumentoRequest.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<String>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista documentos
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idTemplateDocumento: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do template do documento. (optional)
     - parameter nome: (query) Nome do documento. (optional)
     - parameter extensao: (query) Extensao do documento. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET10(sort sort: [String]?, page: Int?, limit: Int?, idTemplateDocumento: Int?, nome: String?, extensao: String?, completion: ((data: PageDocumentoResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET10WithRequestBuilder(sort: sort, page: page, limit: limit, idTemplateDocumento: idTemplateDocumento, nome: nome, extensao: extensao).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista documentos
     
     - GET /api/documentos
     - Esse recurso permite listar documentos.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "extensao" : "aeiou",
    "idTemplateDocumento" : 123456789,
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
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idTemplateDocumento: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do template do documento. (optional)
     - parameter nome: (query) Nome do documento. (optional)
     - parameter extensao: (query) Extensao do documento. (optional)

     - returns: RequestBuilder<PageDocumentoResponse> 
     */
    public class func listarUsingGET10WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idTemplateDocumento: Int?, nome: String?, extensao: String?) -> RequestBuilder<PageDocumentoResponse> {
        let path = "/api/documentos"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idTemplateDocumento": idTemplateDocumento,
            "nome": nome,
            "extensao": extensao
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageDocumentoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista os templates dos documentos
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idTipoTemplate: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do template. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET11(sort sort: [String]?, page: Int?, limit: Int?, idTipoTemplate: Int?, completion: ((data: PageDocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET11WithRequestBuilder(sort: sort, page: page, limit: limit, idTipoTemplate: idTipoTemplate).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os templates dos documentos
     
     - GET /api/templates-documentos
     - Esse recurso permite listar os templates dos documentos.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "idTipoTemplate" : 123456789,
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
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idTipoTemplate: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do template. (optional)

     - returns: RequestBuilder<PageDocumentoTemplateResponse> 
     */
    public class func listarUsingGET11WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idTipoTemplate: Int?) -> RequestBuilder<PageDocumentoTemplateResponse> {
        let path = "/api/templates-documentos"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idTipoTemplate": idTipoTemplate
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageDocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Lista os tipos de templates
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET31(sort sort: [String]?, page: Int?, limit: Int?, completion: ((data: PageTipoTemplateResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET31WithRequestBuilder(sort: sort, page: page, limit: limit).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os tipos de templates
     
     - GET /api/tipos-templates
     - Esse recurso permite listar os tipos de templates associados ao emissor.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "sigla" : "aeiou",
    "nome" : "aeiou",
    "id" : 123456789,
    "descricao" : "aeiou"
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

     - returns: RequestBuilder<PageTipoTemplateResponse> 
     */
    public class func listarUsingGET31WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?) -> RequestBuilder<PageTipoTemplateResponse> {
        let path = "/api/tipos-templates"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageTipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Cadastra os tipos de templates
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST17(persist persist: TipoTemplateRequest, completion: ((data: TipoTemplateResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST17WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra os tipos de templates
     
     - POST /api/tipos-templates
     - Esse recurso permite cadastrar tipos de templates.
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<TipoTemplateResponse> 
     */
    public class func salvarUsingPOST17WithRequestBuilder(persist persist: TipoTemplateRequest) -> RequestBuilder<TipoTemplateResponse> {
        let path = "/api/tipos-templates"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<TipoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cadastra documentos
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST5(persist persist: DocumentoParametrosRequest, completion: ((data: DocumentoDetalhadoResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST5WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra documentos
     
     - POST /api/documentos
     - Esse recurso permite cadastrar documentos.
     - examples: [{contentType=application/json, example={
  "extensao" : "aeiou",
  "idTemplateDocumento" : 123456789,
  "documentoDetalhes" : [ {
    "conteudo" : "aeiou",
    "propriedade" : "aeiou",
    "id" : 123456789
  } ],
  "documento" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoDetalhadoResponse> 
     */
    public class func salvarUsingPOST5WithRequestBuilder(persist persist: DocumentoParametrosRequest) -> RequestBuilder<DocumentoDetalhadoResponse> {
        let path = "/api/documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoDetalhadoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cadastra os templates dos documentos
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST6(persist persist: DocumentoTemplatePersist, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST6WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra os templates dos documentos
     
     - POST /api/templates-documentos
     - Esse recurso permite cadastrar templates dos documentos.
     - examples: [{contentType=application/json, example={
  "idTipoTemplate" : 123456789,
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func salvarUsingPOST6WithRequestBuilder(persist persist: DocumentoTemplatePersist) -> RequestBuilder<DocumentoTemplateResponse> {
        let path = "/api/templates-documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
