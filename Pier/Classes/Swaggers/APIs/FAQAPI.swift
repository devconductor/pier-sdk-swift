//
// FAQAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FAQAPI: APIBase {
    /**
     
     Adiciona uma nova FAQ
     
     - parameter pergunta: (query) Conte\u00C3\u00BAdo da pergunta. 
     - parameter resposta: (query) Conte\u00C3\u00BAdo da resposta. 
     - parameter relevancia: (query) N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
     - parameter plataforma: (query) Plataforma em que a FAQ se encaixa. (optional)
     - parameter categoria: (query) Categoria de assunto do qual a FAQ se trata. (optional)
     - parameter status: (query) Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func adicionarUsingPOST(pergunta pergunta: String, resposta: String, relevancia: Int?, plataforma: String?, categoria: String?, status: String?, completion: ((data: FaqResponse?, error: ErrorType?) -> Void)) {
        adicionarUsingPOSTWithRequestBuilder(pergunta: pergunta, resposta: resposta, relevancia: relevancia, plataforma: plataforma, categoria: categoria, status: status).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Adiciona uma nova FAQ
     
     - POST /api/faqs
     - Adiciona uma nova FAQ
     - examples: [{contentType=application/json, example={
  "pergunta" : "aeiou",
  "resposta" : "aeiou",
  "plataforma" : "aeiou",
  "categoria" : "aeiou",
  "relevancia" : 123,
  "id" : 123456789,
  "status" : "aeiou"
}}]
     
     - parameter pergunta: (query) Conte\u00C3\u00BAdo da pergunta. 
     - parameter resposta: (query) Conte\u00C3\u00BAdo da resposta. 
     - parameter relevancia: (query) N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
     - parameter plataforma: (query) Plataforma em que a FAQ se encaixa. (optional)
     - parameter categoria: (query) Categoria de assunto do qual a FAQ se trata. (optional)
     - parameter status: (query) Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)

     - returns: RequestBuilder<FaqResponse> 
     */
    public class func adicionarUsingPOSTWithRequestBuilder(pergunta pergunta: String, resposta: String, relevancia: Int?, plataforma: String?, categoria: String?, status: String?) -> RequestBuilder<FaqResponse> {
        let path = "/api/faqs"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "pergunta": pergunta,
            "resposta": resposta,
            "relevancia": relevancia,
            "plataforma": plataforma,
            "categoria": categoria,
            "status": status
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<FaqResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Alterar FAQ
     
     - parameter id: (path) Id 
     - parameter pergunta: (query) Conte\u00C3\u00BAdo da pergunta. 
     - parameter resposta: (query) Conte\u00C3\u00BAdo da resposta. 
     - parameter relevancia: (query) N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
     - parameter plataforma: (query) Plataforma em que a FAQ se encaixa. (optional)
     - parameter categoria: (query) Categoria de assunto do qual a FAQ se trata. (optional)
     - parameter status: (query) Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarUsingPUT3(id id: Int, pergunta: String, resposta: String, relevancia: Int?, plataforma: String?, categoria: String?, status: String?, completion: ((data: FaqResponse?, error: ErrorType?) -> Void)) {
        alterarUsingPUT3WithRequestBuilder(id: id, pergunta: pergunta, resposta: resposta, relevancia: relevancia, plataforma: plataforma, categoria: categoria, status: status).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Alterar FAQ
     
     - PUT /api/faqs/{id}
     - Alterar FAQ
     - examples: [{contentType=application/json, example={
  "pergunta" : "aeiou",
  "resposta" : "aeiou",
  "plataforma" : "aeiou",
  "categoria" : "aeiou",
  "relevancia" : 123,
  "id" : 123456789,
  "status" : "aeiou"
}}]
     
     - parameter id: (path) Id 
     - parameter pergunta: (query) Conte\u00C3\u00BAdo da pergunta. 
     - parameter resposta: (query) Conte\u00C3\u00BAdo da resposta. 
     - parameter relevancia: (query) N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
     - parameter plataforma: (query) Plataforma em que a FAQ se encaixa. (optional)
     - parameter categoria: (query) Categoria de assunto do qual a FAQ se trata. (optional)
     - parameter status: (query) Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)

     - returns: RequestBuilder<FaqResponse> 
     */
    public class func alterarUsingPUT3WithRequestBuilder(id id: Int, pergunta: String, resposta: String, relevancia: Int?, plataforma: String?, categoria: String?, status: String?) -> RequestBuilder<FaqResponse> {
        var path = "/api/faqs/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "pergunta": pergunta,
            "resposta": resposta,
            "relevancia": relevancia,
            "plataforma": plataforma,
            "categoria": categoria,
            "status": status
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<FaqResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Consultar FAQ por id
     
     - parameter id: (path) Id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET10(id id: Int, completion: ((data: FaqResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET10WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Consultar FAQ por id
     
     - GET /api/faqs/{id}
     - Consulta os detalhes de uma determinada FAQ
     - examples: [{contentType=application/json, example={
  "pergunta" : "aeiou",
  "resposta" : "aeiou",
  "plataforma" : "aeiou",
  "categoria" : "aeiou",
  "relevancia" : 123,
  "id" : 123456789,
  "status" : "aeiou"
}}]
     
     - parameter id: (path) Id 

     - returns: RequestBuilder<FaqResponse> 
     */
    public class func consultarUsingGET10WithRequestBuilder(id id: Int) -> RequestBuilder<FaqResponse> {
        var path = "/api/faqs/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<FaqResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista FAQs
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter idFaq: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da FAQ (id). (optional)
     - parameter pergunta: (query) Conte\u00C3\u00BAdo da pergunta. (optional)
     - parameter resposta: (query) Conte\u00C3\u00BAdo da resposta. (optional)
     - parameter relevancia: (query) N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
     - parameter plataforma: (query) Plataforma em que a FAQ se encaixa. (optional)
     - parameter categoria: (query) Categoria de assunto do qual a FAQ se trata. (optional)
     - parameter status: (query) Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET13(sort sort: [String]?, page: Int?, limit: Int?, idFaq: Int?, pergunta: String?, resposta: String?, relevancia: Int?, plataforma: String?, categoria: String?, status: String?, completion: ((data: PageFaqResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET13WithRequestBuilder(sort: sort, page: page, limit: limit, idFaq: idFaq, pergunta: pergunta, resposta: resposta, relevancia: relevancia, plataforma: plataforma, categoria: categoria, status: status).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista FAQs
     
     - GET /api/faqs
     - Lista todas as FAQs
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "pergunta" : "aeiou",
    "resposta" : "aeiou",
    "plataforma" : "aeiou",
    "categoria" : "aeiou",
    "relevancia" : 123,
    "id" : 123456789,
    "status" : "aeiou"
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
     - parameter idFaq: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da FAQ (id). (optional)
     - parameter pergunta: (query) Conte\u00C3\u00BAdo da pergunta. (optional)
     - parameter resposta: (query) Conte\u00C3\u00BAdo da resposta. (optional)
     - parameter relevancia: (query) N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
     - parameter plataforma: (query) Plataforma em que a FAQ se encaixa. (optional)
     - parameter categoria: (query) Categoria de assunto do qual a FAQ se trata. (optional)
     - parameter status: (query) Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)

     - returns: RequestBuilder<PageFaqResponse> 
     */
    public class func listarUsingGET13WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, idFaq: Int?, pergunta: String?, resposta: String?, relevancia: Int?, plataforma: String?, categoria: String?, status: String?) -> RequestBuilder<PageFaqResponse> {
        let path = "/api/faqs"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "idFaq": idFaq,
            "pergunta": pergunta,
            "resposta": resposta,
            "relevancia": relevancia,
            "plataforma": plataforma,
            "categoria": categoria,
            "status": status
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageFaqResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
