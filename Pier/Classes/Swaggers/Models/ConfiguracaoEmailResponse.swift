//
// ConfiguracaoEmailResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto Configura\u00E7\u00E3o EMAIL */
public class ConfiguracaoEmailResponse: JSONEncodable {

    /** Id da Configura\u00E7\u00E3o EMAIL. */
    public var id: Int?
    /** IP (Host) do servidor de e-mail. */
    public var host: String?
    /** Porta usada pelo servidor de e-mail. */
    public var port: String?
    /** Porta usada pelo servi\u00E7o TLS/STARTTLS. */
    public var portTLSSTARTTLS: String?
    /** Porta usada pelo servi\u00E7o SSL. */
    public var portSSL: String?
    /** Protocolo de comunica\u00E7\u00E3o usado pelo servi\u00E7o de e-mail (Ex: smtp). */
    public var protocolo: String?
    /** O servi\u00E7o de e-mail requer autentica\u00E7\u00E3o. */
    public var requerAutenticacao: Bool?
    /** O servi\u00E7o de e-mail requer SSL. */
    public var requerSSL: Bool?
    /** O servi\u00E7o de e-mail requer TLS. */
    public var requerTLS: Bool?
    /** Usuario do servi\u00E7o de e-mail. */
    public var usuario: String?
    /** Senha de usu\u00E1rio do servi\u00E7o de e-mail. */
    public var senha: String?
    /** Data de inclus\u00E3o. */
    public var dataInclusao: String?
    /** Data de altera\u00E7\u00E3o. */
    public var dataAlteracao: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["host"] = self.host
        nillableDictionary["port"] = self.port
        nillableDictionary["portTLSSTARTTLS"] = self.portTLSSTARTTLS
        nillableDictionary["portSSL"] = self.portSSL
        nillableDictionary["protocolo"] = self.protocolo
        nillableDictionary["requerAutenticacao"] = self.requerAutenticacao
        nillableDictionary["requerSSL"] = self.requerSSL
        nillableDictionary["requerTLS"] = self.requerTLS
        nillableDictionary["usuario"] = self.usuario
        nillableDictionary["senha"] = self.senha
        nillableDictionary["dataInclusao"] = self.dataInclusao
        nillableDictionary["dataAlteracao"] = self.dataAlteracao
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
