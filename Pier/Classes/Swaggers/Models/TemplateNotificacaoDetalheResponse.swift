//
// TemplateNotificacaoDetalheResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto de detalhes do Template de Notifica\u00E7\u00E3o */
public class TemplateNotificacaoDetalheResponse: JSONEncodable {

    public enum TipoLayout: String { 
        case RecuperarSenha = "RECUPERAR_SENHA"
        case FaturaPorEmail = "FATURA_POR_EMAIL"
        case ValidarDispositivo = "VALIDAR_DISPOSITIVO"
        case NotificacaoEmail = "NOTIFICACAO_EMAIL"
    }
    
    public enum TipoNotificacao: String { 
        case Sms = "SMS"
        case PushApns = "PUSH_APNS"
        case PushFcm = "PUSH_FCM"
        case PushGcm = "PUSH_GCM"
        case Email = "EMAIL"
    }
    
    /** C\u00F3digo Identificador. */
    public var id: Int?
    /** C\u00F3digo de identifica\u00E7\u00E3o da configra\u00E7\u00E3o de e-mail. */
    public var idConfiguracaoEmail: Int?
    /** Tipo do layout de e-mail. */
    public var tipoLayout: TipoLayout?
    /** Tipo da notifica\u00E7\u00E3o. */
    public var tipoNotificacao: TipoNotificacao?
    /** Template padr\u00E3o. */
    public var templatePadrao: String?
    /** Remetente. */
    public var remetente: String?
    /** Assunto do e-mail. */
    public var assunto: String?
    /** Data da inclus\u00E3o. */
    public var dataInclusao: String?
    /** Data altera\u00E7\u00E3o. */
    public var dataAlteracao: String?
    /** Conteudo do e-mail. */
    public var conteudo: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idConfiguracaoEmail"] = self.idConfiguracaoEmail
        nillableDictionary["tipoLayout"] = self.tipoLayout?.rawValue
        nillableDictionary["tipoNotificacao"] = self.tipoNotificacao?.rawValue
        nillableDictionary["templatePadrao"] = self.templatePadrao
        nillableDictionary["remetente"] = self.remetente
        nillableDictionary["assunto"] = self.assunto
        nillableDictionary["dataInclusao"] = self.dataInclusao
        nillableDictionary["dataAlteracao"] = self.dataAlteracao
        nillableDictionary["conteudo"] = self.conteudo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
