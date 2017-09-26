//
// DocumentosAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class DocumentosAPI: APIBase {
    /**
     
     Cadastra documentos
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST5(persist persist: DocumentoParametrosRequest, completion: ((data: DocumentoResponse?, error: ErrorType?) -> Void)) {
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
  "idDocumentoTemplate" : 123456789,
  "documentoDetalhes" : [ {
    "conteudo" : "aeiou",
    "propriedade" : "aeiou",
    "id" : 123456789
  } ],
  "idDocumentoTipo" : 123456789,
  "documento" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoResponse> 
     */
    public class func salvarUsingPOST5WithRequestBuilder(persist persist: DocumentoParametrosRequest) -> RequestBuilder<DocumentoResponse> {
        let path = "/api/documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cadastra os templates dos documentos
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST6(persist persist: DocumentoTemplateRequest, completion: ((data: DocumentoTemplateResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST6WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra os templates dos documentos
     
     - POST /api/templates-documentos
     - Esse recurso permite cadastrar templates dos documentos.
     - examples: [{contentType=application/json, example={
  "idTipoDocumento" : 123456789,
  "id" : 123456789
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTemplateResponse> 
     */
    public class func salvarUsingPOST6WithRequestBuilder(persist persist: DocumentoTemplateRequest) -> RequestBuilder<DocumentoTemplateResponse> {
        let path = "/api/templates-documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTemplateResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cadastra os tipos de documentos
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST7(persist persist: DocumentoTipoRequest, completion: ((data: DocumentoTipoResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST7WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra os tipos de documentos
     
     - POST /api/tipos-documentos
     - Esse recurso permite cadastrar tipos de documentos.
     - examples: [{contentType=application/json, example={
  "sigla" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "descricao" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<DocumentoTipoResponse> 
     */
    public class func salvarUsingPOST7WithRequestBuilder(persist persist: DocumentoTipoRequest) -> RequestBuilder<DocumentoTipoResponse> {
        let path = "/api/tipos-documentos"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<DocumentoTipoResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

}
