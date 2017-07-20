//
// PushAPNS.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Push Notifica\u00C3\u00A7\u00C3\u00A3o APNS */
public class PushAPNS: JSONEncodable {

    public enum TipoEvento: String { 
        case RiscoFraude = "RISCO_FRAUDE"
        case TokenSms = "TOKEN_SMS"
        case Outros = "OUTROS"
    }
    
    /** C\u00C3\u00B3digo identificado da pessoa */
    public var idPessoa: Int?
    /** C\u00C3\u00B3digo identificador da conta */
    public var idConta: Int?
    /** Apresenta o token do dispositivo que dever\u00C3\u00A1 receber o push. */
    public var tokenDispositivo: String?
    /** Apresenta o certificado APNs que est\u00C3\u00A1 cadastrado para o aplicativo na loja da Apple. Esse certificado dever\u00C3\u00A1 ser enviado no formado Base64. */
    public var certificado: String?
    /** Apresenta a senha para o certificado APNs que est\u00C3\u00A1 cadastrado para o aplicativo na loja da Apple. */
    public var senha: String?
    /** Apresenta o t\u00C3\u00ADtulo da notifica\u00C3\u00A7\u00C3\u00A3o. */
    public var titulo: String?
    /** Apresenta o texto da notifica\u00C3\u00A7\u00C3\u00A3o a ser enviado. */
    public var conteudo: String?
    /** Apresenta o tipoEvento a qual pertence a notifica\u00C3\u00A7\u00C3\u00A3o */
    public var tipoEvento: TipoEvento?
    /** Apresenta o nome do icone a ser apresentado no push. */
    public var icone: String?
    /** Apresenta o cor do icone a ser apresentado no push */
    public var som: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["tokenDispositivo"] = self.tokenDispositivo
        nillableDictionary["certificado"] = self.certificado
        nillableDictionary["senha"] = self.senha
        nillableDictionary["titulo"] = self.titulo
        nillableDictionary["conteudo"] = self.conteudo
        nillableDictionary["tipoEvento"] = self.tipoEvento?.rawValue
        nillableDictionary["icone"] = self.icone
        nillableDictionary["som"] = self.som
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
