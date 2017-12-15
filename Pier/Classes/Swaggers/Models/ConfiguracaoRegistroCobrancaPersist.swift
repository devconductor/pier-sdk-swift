//
// ConfiguracaoRegistroCobrancaPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Representa\u00C3\u00A7\u00C3\u00A3o da requisi\u00C3\u00A7\u00C3\u00A3o do recurso Configura\u00C3\u00A7\u00C3\u00A3o Registro de Cobran\u00C3\u00A7a Online */
public class ConfiguracaoRegistroCobrancaPersist: JSONEncodable {

    public enum Status: String { 
        case Inativo = "INATIVO"
        case Ativo = "ATIVO"
    }
    
    /** C\u00C3\u00B3digo do Banco. */
    public var codigoBanco: Int?
    /** URL de acesso ao banco. */
    public var uri: String?
    /** Caminho do certificado digital do emissor. */
    public var keyStoreName: String?
    /** Senha do certificado digital do emissor. */
    public var keyStorePassword: String?
    /** Alias do certificado digital do emissor. */
    public var keystoreAlias: String?
    /** Senha da chave privada do certificado digital do emissor. */
    public var keyStorePrivateKeyPassword: String?
    /** Tipo do certificado digital do emissor. */
    public var typeKeystore: String?
    /** Caminho do certificado digital do banco. */
    public var trustStoreName: String?
    /** Senha do certificado digital do banco. */
    public var trustStorePassword: String?
    /** Alias do certificado digital do banco. */
    public var truststoreAlias: String?
    /** Tipo do certificado digital do banco. */
    public var typeTruststore: String?
    /** URL adicional de acesso ao banco. */
    public var uriAdicional: String?
    /** Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da configura\u00C3\u00A7\u00C3\u00A3o. */
    public var status: Status?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["codigoBanco"] = self.codigoBanco
        nillableDictionary["uri"] = self.uri
        nillableDictionary["keyStoreName"] = self.keyStoreName
        nillableDictionary["keyStorePassword"] = self.keyStorePassword
        nillableDictionary["keystoreAlias"] = self.keystoreAlias
        nillableDictionary["keyStorePrivateKeyPassword"] = self.keyStorePrivateKeyPassword
        nillableDictionary["typeKeystore"] = self.typeKeystore
        nillableDictionary["trustStoreName"] = self.trustStoreName
        nillableDictionary["trustStorePassword"] = self.trustStorePassword
        nillableDictionary["truststoreAlias"] = self.truststoreAlias
        nillableDictionary["typeTruststore"] = self.typeTruststore
        nillableDictionary["uriAdicional"] = self.uriAdicional
        nillableDictionary["status"] = self.status?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}