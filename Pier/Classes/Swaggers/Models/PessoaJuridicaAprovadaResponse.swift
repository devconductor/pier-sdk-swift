//
// PessoaJuridicaAprovadaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** PessoaJuridicaAprovadaPersist */
public class PessoaJuridicaAprovadaResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da pessoa jur\u00C3\u00ADdica (id) */
    public var id: Int?
    /** Apresenta o nome completo da raz\u00C3\u00A3o social (nome empresarial)&#39;. */
    public var razaoSocial: String?
    /** Apresenta o nome fantasia da empresa. */
    public var nomeFantasia: String?
    /** N\u00C3\u00BAmero do Cadastro Nacional de Pessoa Juridica (CNPJ) */
    public var cnpj: String?
    /** N\u00C3\u00BAmero da Inscri\u00C3\u00A7\u00C3\u00A3o Estadual (IE). */
    public var inscricaoEstadual: String?
    /** Data de abertura da empresa, essa data deve ser informada no formato: aaaa-MM-dd. */
    public var dataAberturaEmpresa: String?
    /** Id da origem comercial */
    public var idOrigemComercial: Int?
    /** Id do produto */
    public var idProduto: Int?
    /** N\u00C3\u00BAmero da ag\u00C3\u00AAncia. */
    public var numeroAgencia: Int?
    /** N\u00C3\u00BAmero da conta corrente. */
    public var numeroContaCorrente: String?
    /** Email da empresa */
    public var email: String?
    /** Dia vencimento */
    public var diaVencimento: Int?
    /** Nome que deve ser impresso no cart\u00C3\u00A3o */
    public var nomeImpresso: String?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta cadastrada */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da proposta */
    public var idProposta: Int?
    /** Indica o canal pelo qual o cadastro do cliente foi realizado */
    public var canalEntrada: String?
    /** Apresenta os telefones da empresa */
    public var telefones: [TelefonePessoaAprovadaResponse]?
    /** Pode ser informado os seguintes tipos de endere\u00C3\u00A7o: Residencial, Comercial, e Outros */
    public var enderecos: [EnderecoAprovadoResponse]?
    /** Apresenta os dados dos s\u00C3\u00B3cios da empresa, caso exista */
    public var socios: [SocioAprovadoResponse]?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["razaoSocial"] = self.razaoSocial
        nillableDictionary["nomeFantasia"] = self.nomeFantasia
        nillableDictionary["cnpj"] = self.cnpj
        nillableDictionary["inscricaoEstadual"] = self.inscricaoEstadual
        nillableDictionary["dataAberturaEmpresa"] = self.dataAberturaEmpresa
        nillableDictionary["idOrigemComercial"] = self.idOrigemComercial
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorrente"] = self.numeroContaCorrente
        nillableDictionary["email"] = self.email
        nillableDictionary["diaVencimento"] = self.diaVencimento
        nillableDictionary["nomeImpresso"] = self.nomeImpresso
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idProposta"] = self.idProposta
        nillableDictionary["canalEntrada"] = self.canalEntrada
        nillableDictionary["telefones"] = self.telefones?.encodeToJSON()
        nillableDictionary["enderecos"] = self.enderecos?.encodeToJSON()
        nillableDictionary["socios"] = self.socios?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
