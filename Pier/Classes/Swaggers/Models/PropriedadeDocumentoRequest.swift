//
// PropriedadeDocumentoRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto que encapsula as propriedades do detalhamento do documento. */
public class PropriedadeDocumentoRequest: JSONEncodable {

    public enum DetalhesTipo: String { 
        case Imagem = "IMAGEM"
        case Texto = "TEXTO"
        case Numero = "NUMERO"
    }
    
    /** Valor da propriedade do Documento. */
    public var chave: String?
    /** Valor da propriedade do Documento. */
    public var valor: String?
    /** Tipo da propriedade do Documento. */
    public var detalhesTipo: DetalhesTipo?
    /** Atributo que indica se o par\u00C3\u00A2metro \u00C3\u00A9 um \u00C3\u00ADndice (default = false) */
    public var flagIndice: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["chave"] = self.chave
        nillableDictionary["valor"] = self.valor
        nillableDictionary["detalhesTipo"] = self.detalhesTipo?.rawValue
        nillableDictionary["flagIndice"] = self.flagIndice
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
