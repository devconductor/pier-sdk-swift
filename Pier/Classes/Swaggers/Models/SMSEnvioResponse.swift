//
// SMSEnvioResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{sms_envio_response_description}}} */
public class SMSEnvioResponse: JSONEncodable {

    /** {{{sms_envio_response_id_value}}} */
    public var id: Int?
    /** {{{sms_envio_response_status_value}}} */
    public var status: String?
    /** {{{sms_envio_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{sms_envio_response_celular_value}}} */
    public var celular: String?
    /** {{{sms_envio_response_conteudo_value}}} */
    public var conteudo: String?
    /** {{{sms_envio_response_quantidade_tentativas_envio_value}}} */
    public var quantidadeTentativasEnvio: Int?
    /** {{{s_m_s_envio_response_data_inclusao_value}}} */
    public var dataInclusao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["status"] = self.status
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["celular"] = self.celular
        nillableDictionary["conteudo"] = self.conteudo
        nillableDictionary["quantidadeTentativasEnvio"] = self.quantidadeTentativasEnvio
        nillableDictionary["dataInclusao"] = self.dataInclusao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
