//
// LimiteDisponibilidadeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class LimiteDisponibilidadeAPI: APIBase {
    /**
     
     Realiza a altera\u00C3\u00A7\u00C3\u00A3o dos limites da conta
     
     - parameter idConta: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta. 
     - parameter limiteGlobal: (query) Apresenta o valor do limite de cr\u00C3\u00A9dito que o portador do cart\u00C3\u00A3o possui. (optional)
     - parameter limiteCompra: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Nacionais. (optional)
     - parameter limiteParcelado: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es de compras parceladas. (optional)
     - parameter limiteParcelas: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras que forem realizadas nesta modalidade. (optional)
     - parameter limiteSaqueGlobal: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional. (optional)
     - parameter limiteSaquePeriodo: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional dentro de cada ciclo de faturamento. (optional)
     - parameter limiteConsignado: (query) Quando utilizado pelo emissor, este campo apresenta o valor da margem de cr\u00C3\u00A9dito que ele poder\u00C3\u00A1 utilizar para ser cobrado de forma consignada (desconto em folha) em seu sal\u00C3\u00A1rio/vencimentos. (optional)
     - parameter limiteInternacionalCompra: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Internacionais. (optional)
     - parameter limiteInternacionalParcelado: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es Internacionais de Compras Parceladas. (optional)
     - parameter limiteInternacionalParcelas: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras internacionais que forem realizadas nesta modalidade. (optional)
     - parameter limiteInternacionalSaqueGlobal: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional. (optional)
     - parameter limiteInternacionalSaquePeriodo: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional dentro de cada ciclo de faturamento. (optional)
     - parameter limiteMaximo: (query) Valor m\u00C3\u00A1ximo do limite de cr\u00C3\u00A9dito para realizar transa\u00C3\u00A7\u00C3\u00B5es. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func alterarUsingPUT9(idConta idConta: Int, limiteGlobal: Double?, limiteCompra: Double?, limiteParcelado: Double?, limiteParcelas: Double?, limiteSaqueGlobal: Double?, limiteSaquePeriodo: Double?, limiteConsignado: Double?, limiteInternacionalCompra: Double?, limiteInternacionalParcelado: Double?, limiteInternacionalParcelas: Double?, limiteInternacionalSaqueGlobal: Double?, limiteInternacionalSaquePeriodo: Double?, limiteMaximo: Double?, completion: ((data: LimiteDisponibilidadeResponse?, error: ErrorType?) -> Void)) {
        alterarUsingPUT9WithRequestBuilder(idConta: idConta, limiteGlobal: limiteGlobal, limiteCompra: limiteCompra, limiteParcelado: limiteParcelado, limiteParcelas: limiteParcelas, limiteSaqueGlobal: limiteSaqueGlobal, limiteSaquePeriodo: limiteSaquePeriodo, limiteConsignado: limiteConsignado, limiteInternacionalCompra: limiteInternacionalCompra, limiteInternacionalParcelado: limiteInternacionalParcelado, limiteInternacionalParcelas: limiteInternacionalParcelas, limiteInternacionalSaqueGlobal: limiteInternacionalSaqueGlobal, limiteInternacionalSaquePeriodo: limiteInternacionalSaquePeriodo, limiteMaximo: limiteMaximo).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Realiza a altera\u00C3\u00A7\u00C3\u00A3o dos limites da conta
     
     - PUT /api/limites-disponibilidades
     - Esse recurso permite realizar a altera\u00C3\u00A7\u00C3\u00A3o dos Limites de uma determinada Conta.
     - examples: [{contentType=application/json, example={
  "saldoDisponivelCompraInternacional" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelSaque" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteSaquePeriodo" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalSaqueGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelCompra" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalSaquePeriodo" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelSaqueInternacional" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteMaximo" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoPontosFidelidade" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123456789,
  "limiteConsignado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteSaqueGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalCompra" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteCompra" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter idConta: (query) C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta. 
     - parameter limiteGlobal: (query) Apresenta o valor do limite de cr\u00C3\u00A9dito que o portador do cart\u00C3\u00A3o possui. (optional)
     - parameter limiteCompra: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Nacionais. (optional)
     - parameter limiteParcelado: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es de compras parceladas. (optional)
     - parameter limiteParcelas: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras que forem realizadas nesta modalidade. (optional)
     - parameter limiteSaqueGlobal: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional. (optional)
     - parameter limiteSaquePeriodo: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional dentro de cada ciclo de faturamento. (optional)
     - parameter limiteConsignado: (query) Quando utilizado pelo emissor, este campo apresenta o valor da margem de cr\u00C3\u00A9dito que ele poder\u00C3\u00A1 utilizar para ser cobrado de forma consignada (desconto em folha) em seu sal\u00C3\u00A1rio/vencimentos. (optional)
     - parameter limiteInternacionalCompra: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Internacionais. (optional)
     - parameter limiteInternacionalParcelado: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es Internacionais de Compras Parceladas. (optional)
     - parameter limiteInternacionalParcelas: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras internacionais que forem realizadas nesta modalidade. (optional)
     - parameter limiteInternacionalSaqueGlobal: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional. (optional)
     - parameter limiteInternacionalSaquePeriodo: (query) Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional dentro de cada ciclo de faturamento. (optional)
     - parameter limiteMaximo: (query) Valor m\u00C3\u00A1ximo do limite de cr\u00C3\u00A9dito para realizar transa\u00C3\u00A7\u00C3\u00B5es. (optional)

     - returns: RequestBuilder<LimiteDisponibilidadeResponse> 
     */
    public class func alterarUsingPUT9WithRequestBuilder(idConta idConta: Int, limiteGlobal: Double?, limiteCompra: Double?, limiteParcelado: Double?, limiteParcelas: Double?, limiteSaqueGlobal: Double?, limiteSaquePeriodo: Double?, limiteConsignado: Double?, limiteInternacionalCompra: Double?, limiteInternacionalParcelado: Double?, limiteInternacionalParcelas: Double?, limiteInternacionalSaqueGlobal: Double?, limiteInternacionalSaquePeriodo: Double?, limiteMaximo: Double?) -> RequestBuilder<LimiteDisponibilidadeResponse> {
        let path = "/api/limites-disponibilidades"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "limiteGlobal": limiteGlobal,
            "limiteCompra": limiteCompra,
            "limiteParcelado": limiteParcelado,
            "limiteParcelas": limiteParcelas,
            "limiteSaqueGlobal": limiteSaqueGlobal,
            "limiteSaquePeriodo": limiteSaquePeriodo,
            "limiteConsignado": limiteConsignado,
            "limiteInternacionalCompra": limiteInternacionalCompra,
            "limiteInternacionalParcelado": limiteInternacionalParcelado,
            "limiteInternacionalParcelas": limiteInternacionalParcelas,
            "limiteInternacionalSaqueGlobal": limiteInternacionalSaqueGlobal,
            "limiteInternacionalSaquePeriodo": limiteInternacionalSaquePeriodo,
            "limiteMaximo": limiteMaximo,
            "idConta": idConta
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LimiteDisponibilidadeResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
    }

    /**
     
     Apresenta os limites da conta
     
     - parameter idConta: (query) Id Conta 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func consultarUsingGET18(idConta idConta: Int, completion: ((data: LimiteDisponibilidadeResponse?, error: ErrorType?) -> Void)) {
        consultarUsingGET18WithRequestBuilder(idConta: idConta).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     
     Apresenta os limites da conta
     
     - GET /api/limites-disponibilidades
     - Este m\u00C3\u00A9todo permite consultar os Limites configurados para uma determinada Conta, a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
     - examples: [{contentType=application/json, example={
  "saldoDisponivelCompraInternacional" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelSaque" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteSaquePeriodo" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalSaqueGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelCompra" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalSaquePeriodo" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelSaqueInternacional" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteMaximo" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoPontosFidelidade" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123456789,
  "limiteConsignado" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "saldoDisponivelParcelado" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalParcelas" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteSaqueGlobal" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteInternacionalCompra" : 1.3579000000000001069366817318950779736042022705078125,
  "limiteCompra" : 1.3579000000000001069366817318950779736042022705078125
}}]
     
     - parameter idConta: (query) Id Conta 

     - returns: RequestBuilder<LimiteDisponibilidadeResponse> 
     */
    public class func consultarUsingGET18WithRequestBuilder(idConta idConta: Int) -> RequestBuilder<LimiteDisponibilidadeResponse> {
        let path = "/api/limites-disponibilidades"
        let URLString = PierAPI.basePath + path
        
        let nillableParameters: [String:AnyObject?] = [
            "idConta": idConta
        ]
        let parameters = APIHelper.rejectNil(nillableParameters)

        let requestBuilder: RequestBuilder<LimiteDisponibilidadeResponse>.Type = PierAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
