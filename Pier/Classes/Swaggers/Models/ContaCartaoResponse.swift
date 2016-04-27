//
// ContaCartaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ContaCartaoResponse: JSONEncodable {

    public var cnpjLoja: String?
    public var cpf: String?
    public var dataCadastroConta: String?
    public var dataEmissaoIdentidade: String?
    public var dataNascimento: String?
    public var dddCelular: String?
    public var idConta: Int?
    public var nome: String?
    public var numeroCelular: String?
    public var numeroIdentidade: String?
    public var orgaoIdentidade: String?
    public var possuiCompraAprovada: String?
    public var statusConta: Int?
    public var ufIdentidade: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["cnpjLoja"] = self.cnpjLoja
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["dataCadastroConta"] = self.dataCadastroConta
        nillableDictionary["dataEmissaoIdentidade"] = self.dataEmissaoIdentidade
        nillableDictionary["dataNascimento"] = self.dataNascimento
        nillableDictionary["dddCelular"] = self.dddCelular
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["nome"] = self.nome
        nillableDictionary["numeroCelular"] = self.numeroCelular
        nillableDictionary["numeroIdentidade"] = self.numeroIdentidade
        nillableDictionary["orgaoIdentidade"] = self.orgaoIdentidade
        nillableDictionary["possuiCompraAprovada"] = self.possuiCompraAprovada
        nillableDictionary["statusConta"] = self.statusConta
        nillableDictionary["ufIdentidade"] = self.ufIdentidade
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
