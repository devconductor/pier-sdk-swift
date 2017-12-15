//
// UsuarioAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class UsuarioAPI: APIBase {
    /**
     
     Alterar senha do usu\u00C3\u00A1rio.
     
     - parameter login: (path) Login do usu\u00C3\u00A1rio. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarSenhaLoginUsingPOST(login login: String, completion: ((data: String?, error: ErrorType?) -> Void)) {
        alterarSenhaLoginUsingPOSTWithRequestBuilder(login: login).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Alterar senha do usu\u00C3\u00A1rio.
     
     - POST /api/usuarios/{login}/alterar-senha
     - Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o da senha do usu\u00C3\u00A1rio.
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter login: (path) Login do usu\u00C3\u00A1rio. 

     - returns: RequestBuilder<String> 
     */
    public class func alterarSenhaLoginUsingPOSTWithRequestBuilder(login login: String) -> RequestBuilder<String> {
        var path = "/api/usuarios/{login}/alterar-senha"
        path = path.stringByReplacingOccurrencesOfString("{login}", withString: "\(login)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<String>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Alterar senha do usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarSenhaUsingPUT(id id: Int, completion: ((data: String?, error: ErrorType?) -> Void)) {
        alterarSenhaUsingPUTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Alterar senha do usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - PUT /api/usuarios/{id}/alterar-senha
     - Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o da senha do usu\u00C3\u00A1rio.
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 

     - returns: RequestBuilder<String> 
     */
    public class func alterarSenhaUsingPUTWithRequestBuilder(id id: Int) -> RequestBuilder<String> {
        var path = "/api/usuarios/{id}/alterar-senha"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<String>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Altera os usu\u00C3\u00A1rios cadastrados na base.
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter update: (body) update 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarUsingPUT19(id id: Int, update: UsuarioUpdate, completion: ((data: UsuarioResponse?, error: ErrorType?) -> Void)) {
        alterarUsingPUT19WithRequestBuilder(id: id, update: update).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Altera os usu\u00C3\u00A1rios cadastrados na base.
     
     - PUT /api/usuarios/{id}
     - Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos usu\u00C3\u00A1rios.
     - examples: [{contentType=application/json, example={
  "dataModificacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "tentativasIncorretas" : 123456789,
  "cpf" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "idEmissor" : 123456789,
  "login" : "aeiou",
  "dataCriacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "email" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter update: (body) update 

     - returns: RequestBuilder<UsuarioResponse> 
     */
    public class func alterarUsingPUT19WithRequestBuilder(id id: Int, update: UsuarioUpdate) -> RequestBuilder<UsuarioResponse> {
        var path = "/api/usuarios/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let parameters = update.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<UsuarioResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Ativa os usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func ativarUsuarioUsingPOST(id id: Int, completion: ((data: UsuarioResponse?, error: ErrorType?) -> Void)) {
        ativarUsuarioUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Ativa os usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - POST /api/usuarios/{id}/ativar-usuario
     - Este m\u00C3\u00A9todo realiza a ativa\u00C3\u00A7\u00C3\u00A3o dos usu\u00C3\u00A1rios.
     - examples: [{contentType=application/json, example={
  "dataModificacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "tentativasIncorretas" : 123456789,
  "cpf" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "idEmissor" : 123456789,
  "login" : "aeiou",
  "dataCriacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "email" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 

     - returns: RequestBuilder<UsuarioResponse> 
     */
    public class func ativarUsuarioUsingPOSTWithRequestBuilder(id id: Int) -> RequestBuilder<UsuarioResponse> {
        var path = "/api/usuarios/{id}/ativar-usuario"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<UsuarioResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Apresenta os dados de um determinado Usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET40(id id: Int, completion: ((data: UsuarioResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET40WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os dados de um determinado Usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - GET /api/usuarios/{id}
     - Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es de um determinado Usu\u00C3\u00A1rio a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
     - examples: [{contentType=application/json, example={
  "dataModificacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "tentativasIncorretas" : 123456789,
  "cpf" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "idEmissor" : 123456789,
  "login" : "aeiou",
  "dataCriacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "email" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 

     - returns: RequestBuilder<UsuarioResponse> 
     */
    public class func consultarUsingGET40WithRequestBuilder(id id: Int) -> RequestBuilder<UsuarioResponse> {
        var path = "/api/usuarios/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<UsuarioResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Desativa os usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func desativarUsuarioUsingPOST(id id: Int, completion: ((data: UsuarioResponse?, error: ErrorType?) -> Void)) {
        desativarUsuarioUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Desativa os usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - POST /api/usuarios/{id}/desativar-usuario
     - Este m\u00C3\u00A9todo realiza a desativa\u00C3\u00A7\u00C3\u00A3o dos usu\u00C3\u00A1rios.
     - examples: [{contentType=application/json, example={
  "dataModificacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "tentativasIncorretas" : 123456789,
  "cpf" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "idEmissor" : 123456789,
  "login" : "aeiou",
  "dataCriacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "email" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 

     - returns: RequestBuilder<UsuarioResponse> 
     */
    public class func desativarUsuarioUsingPOSTWithRequestBuilder(id id: Int) -> RequestBuilder<UsuarioResponse> {
        var path = "/api/usuarios/{id}/desativar-usuario"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<UsuarioResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Lista os Usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - parameter sort: (query) Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
     - parameter page: (query) P\u00C3\u00A1gina solicitada (Default = 0) (optional)
     - parameter limit: (query) Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
     - parameter nome: (query) Nome do Usuario (optional)
     - parameter cpf: (query) CPF do Usuario (optional)
     - parameter email: (query) Email do Usuario (optional)
     - parameter status: (query) Status do Usuario (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func listarUsingGET44(sort sort: [String]?, page: Int?, limit: Int?, nome: String?, cpf: String?, email: String?, status: String?, completion: ((data: PageUsuarioResponse?, error: ErrorType?) -> Void)) {
        listarUsingGET44WithRequestBuilder(sort: sort, page: page, limit: limit, nome: nome, cpf: cpf, email: email, status: status).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Lista os Usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - GET /api/usuarios
     - Este m\u00C3\u00A9todo permite que sejam listados os usu\u00C3\u00A1rios existentes na base do PIER.
     - examples: [{contentType=application/json, example={
  "previousPage" : 123,
  "last" : true,
  "hasContent" : true,
  "hasNextPage" : true,
  "nextPage" : 123,
  "content" : [ {
    "dataModificacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "tentativasIncorretas" : 123456789,
    "cpf" : "aeiou",
    "nome" : "aeiou",
    "id" : 123456789,
    "idEmissor" : 123456789,
    "login" : "aeiou",
    "dataCriacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
    "email" : "aeiou",
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
     - parameter nome: (query) Nome do Usuario (optional)
     - parameter cpf: (query) CPF do Usuario (optional)
     - parameter email: (query) Email do Usuario (optional)
     - parameter status: (query) Status do Usuario (optional)

     - returns: RequestBuilder<PageUsuarioResponse> 
     */
    public class func listarUsingGET44WithRequestBuilder(sort sort: [String]?, page: Int?, limit: Int?, nome: String?, cpf: String?, email: String?, status: String?) -> RequestBuilder<PageUsuarioResponse> {
        let path = "/api/usuarios"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "sort": sort,
            "page": page,
            "limit": limit,
            "nome": nome,
            "cpf": cpf,
            "email": email,
            "status": status
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<PageUsuarioResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Recuperar senha do usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func recuperarSenhaUsingPOST(id id: Int, completion: ((data: String?, error: ErrorType?) -> Void)) {
        recuperarSenhaUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Recuperar senha do usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - POST /api/usuarios/{id}/recuperar-senha
     - Esse recurso permite recuperar a senha do usu\u00C3\u00A1rio.
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 

     - returns: RequestBuilder<String> 
     */
    public class func recuperarSenhaUsingPOSTWithRequestBuilder(id id: Int) -> RequestBuilder<String> {
        var path = "/api/usuarios/{id}/recuperar-senha"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<String>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Cadastra Usu\u00C3\u00A1rio na base.
     
     - parameter persist: (body) persist 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func salvarUsingPOST25(persist persist: UsuarioPersist, completion: ((data: UsuarioResponse?, error: ErrorType?) -> Void)) {
        salvarUsingPOST25WithRequestBuilder(persist: persist).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Cadastra Usu\u00C3\u00A1rio na base.
     
     - POST /api/usuarios
     - Esse recurso permite cadastrar usu\u00C3\u00A1rios.
     - examples: [{contentType=application/json, example={
  "dataModificacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "tentativasIncorretas" : 123456789,
  "cpf" : "aeiou",
  "nome" : "aeiou",
  "id" : 123456789,
  "idEmissor" : 123456789,
  "login" : "aeiou",
  "dataCriacao" : "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",
  "email" : "aeiou",
  "status" : "aeiou"
}}]
     
     - parameter persist: (body) persist 

     - returns: RequestBuilder<UsuarioResponse> 
     */
    public class func salvarUsingPOST25WithRequestBuilder(persist persist: UsuarioPersist) -> RequestBuilder<UsuarioResponse> {
        let path = "/api/usuarios"
        let URLString = PierAPI.basePath + path
        
        let parameters = persist.encodeToJSON() as? [String:AnyObject]

        let requestBuilder: RequestBuilder<UsuarioResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Realiza login com valida\u00C3\u00A7\u00C3\u00A3o de senha dos usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - parameter login: (path) Login identificador do usu\u00C3\u00A1rio (login). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func validarSenhaLoginUsingPOST(login login: String, completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        validarSenhaLoginUsingPOSTWithRequestBuilder(login: login).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Realiza login com valida\u00C3\u00A7\u00C3\u00A3o de senha dos usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
     
     - POST /api/usuarios/{login}/validar-senha
     - O recurso permite fazer login do usu\u00C3\u00A1rio atrav\u00C3\u00A9s da senha definida pelo emissor.
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter login: (path) Login identificador do usu\u00C3\u00A1rio (login). 

     - returns: RequestBuilder<AnyObject> 
     */
    public class func validarSenhaLoginUsingPOSTWithRequestBuilder(login login: String) -> RequestBuilder<AnyObject> {
        var path = "/api/usuarios/{login}/validar-senha"
        path = path.stringByReplacingOccurrencesOfString("{login}", withString: "\(login)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<AnyObject>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     
     Validar a senha do usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func validarSenhaUsingGET1(id id: Int, completion: ((data: String?, error: ErrorType?) -> Void)) {
        validarSenhaUsingGET1WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Validar a senha do usu\u00C3\u00A1rio na base do PIER ou WS.
     
     - GET /api/usuarios/{id}/validar-senha
     - Este m\u00C3\u00A9todo permite validar a senha do usu\u00C3\u00A1rio).
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter id: (path) C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 

     - returns: RequestBuilder<String> 
     */
    public class func validarSenhaUsingGET1WithRequestBuilder(id id: Int) -> RequestBuilder<String> {
        var path = "/api/usuarios/{id}/validar-senha"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [:]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<String>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

}
