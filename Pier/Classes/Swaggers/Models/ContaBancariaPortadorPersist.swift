//
// ContaBancariaPortadorPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ContaBancariaPortadorPersist */
public class ContaBancariaPortadorPersist: JSONEncodable {

    /** C\u00F3digo identificador da conta cart\u00E3o */
    public var idConta: Int?
    /** Descri\u00E7\u00E3o da ag\u00EAncia */
    public var nomeAgencia: String?
    /** C\u00F3digo do banco */
    public var banco: Int?
    /** N\u00FAmero da ag\u00EAncia */
    public var numeroAgencia: String?
    /** D\u00EDgito da ag\u00EAncia */
    public var digitoAgencia: String?
    /** N\u00FAmero da conta */
    public var numeroConta: String?
    /** D\u00EDgito da conta */
    public var digitoConta: String?
    /** Sinaliza se conta banc\u00E1ria est\u00E1 ativa ou n\u00E3o (1: Ativa, 0: Inativa) */
    public var flagAtivo: Int?
    /** Sinaliza se origem \u00E9 DOC (1: DOC, 0: TED) */
    public var flagContaOrigemDoc: Int?
    /** C\u00F3digo da pessoa */
    public var idPessoaFisica: Int?
    /** Sinaliza se conta banc\u00E1ria \u00E9 poupan\u00E7a (1: Poupan\u00E7a, 0: Conta corrente) */
    public var flagContaPoupanca: Int?
    /** Nome do favorecido */
    public var favorecido: String?
    /** Documento do favorecido */
    public var numeroReceiraFederal: String?
    /** Titularidade da conta (1:Portador \u00E9 o titular, 0: Portador n\u00E3o \u00E9 o t\u00EDtular */
    public var titularidade: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["nomeAgencia"] = self.nomeAgencia
        nillableDictionary["banco"] = self.banco
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["digitoAgencia"] = self.digitoAgencia
        nillableDictionary["numeroConta"] = self.numeroConta
        nillableDictionary["digitoConta"] = self.digitoConta
        nillableDictionary["flagAtivo"] = self.flagAtivo
        nillableDictionary["flagContaOrigemDoc"] = self.flagContaOrigemDoc
        nillableDictionary["idPessoaFisica"] = self.idPessoaFisica
        nillableDictionary["flagContaPoupanca"] = self.flagContaPoupanca
        nillableDictionary["favorecido"] = self.favorecido
        nillableDictionary["numeroReceiraFederal"] = self.numeroReceiraFederal
        nillableDictionary["titularidade"] = self.titularidade
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
