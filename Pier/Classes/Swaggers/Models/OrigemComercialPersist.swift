//
// OrigemComercialPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Par\u00C3\u00A2metros de requisi\u00C3\u00A7\u00C3\u00A3o para cadastrar origem comercial */
public class OrigemComercialPersist: JSONEncodable {

    public enum TipoPessoa: String { 
        case PessoaFisica = "PESSOA_FISICA"
        case PessoaJuridica = "PESSOA_JURIDICA"
    }
    
    /** Nome da origem comercial */
    public var nome: String?
    /** Descri\u00C3\u00A7\u00C3\u00A3o da origem comercial */
    public var descricao: String?
    /** Identificador do estabelecimento */
    public var idEstabelecimento: Int?
    /** Identificador do tipo de origem comercial */
    public var idTipoOrigemComercial: Int?
    /** Identificador do grupo de origem comercial */
    public var idGrupoOrigemComercial: Int?
    /** Indica o status da origem comercial */
    public var status: Int?
    /** Indica se permite pr\u00C3\u00A9 aprova\u00C3\u00A7\u00C3\u00A3o */
    public var flagPreAprovado: Bool?
    /** Indica se permite aprova\u00C3\u00A7\u00C3\u00A3o imediata */
    public var flagAprovacaoImediata: Bool?
    /** Nome fantasia impresso no pl\u00C3\u00A1stico */
    public var nomeFantasiaPlastico: String?
    /** Indica se permite cart\u00C3\u00A3o provis\u00C3\u00B3rio */
    public var flagCartaoProvisorio: Bool?
    /** Indica se permite cart\u00C3\u00A3o definitivo */
    public var flagCartaoDefinitivo: Bool?
    /** Usu\u00C3\u00A1rio para autentica\u00C3\u00A7\u00C3\u00A3o */
    public var usuario: String?
    /** Senha para autentica\u00C3\u00A7\u00C3\u00A3o */
    public var senha: String?
    /** Indica se \u00C3\u00A9 origem externa */
    public var flagOrigemExterna: Bool?
    /** Indica se h\u00C3\u00A1 modifica\u00C3\u00A7\u00C3\u00A3o */
    public var flagModificado: Bool?
    /** Indica se envia fatura */
    public var flagEnviaFaturaUsuario: Bool?
    /** Indica se permite cr\u00C3\u00A9dito de faturamento */
    public var flagCreditoFaturamento: Bool?
    /** Indica se concede limite provis\u00C3\u00B3rio */
    public var flagConcedeLimiteProvisorio: Bool?
    /** Indica se digitaliza documento */
    public var flagDigitalizarDoc: Bool?
    /** Indica se realiza embossing em loja */
    public var flagEmbossingLoja: Bool?
    /** Indica se realiza consulta pr\u00C3\u00A9via */
    public var flagConsultaPrevia: Bool?
    /** Tipo de pessoa */
    public var tipoPessoa: TipoPessoa?
    /** Identificador de Produto da origem comercial */
    public var idProduto: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nome"] = self.nome
        nillableDictionary["descricao"] = self.descricao
        nillableDictionary["idEstabelecimento"] = self.idEstabelecimento
        nillableDictionary["idTipoOrigemComercial"] = self.idTipoOrigemComercial
        nillableDictionary["idGrupoOrigemComercial"] = self.idGrupoOrigemComercial
        nillableDictionary["status"] = self.status
        nillableDictionary["flagPreAprovado"] = self.flagPreAprovado
        nillableDictionary["flagAprovacaoImediata"] = self.flagAprovacaoImediata
        nillableDictionary["nomeFantasiaPlastico"] = self.nomeFantasiaPlastico
        nillableDictionary["flagCartaoProvisorio"] = self.flagCartaoProvisorio
        nillableDictionary["flagCartaoDefinitivo"] = self.flagCartaoDefinitivo
        nillableDictionary["usuario"] = self.usuario
        nillableDictionary["senha"] = self.senha
        nillableDictionary["flagOrigemExterna"] = self.flagOrigemExterna
        nillableDictionary["flagModificado"] = self.flagModificado
        nillableDictionary["flagEnviaFaturaUsuario"] = self.flagEnviaFaturaUsuario
        nillableDictionary["flagCreditoFaturamento"] = self.flagCreditoFaturamento
        nillableDictionary["flagConcedeLimiteProvisorio"] = self.flagConcedeLimiteProvisorio
        nillableDictionary["flagDigitalizarDoc"] = self.flagDigitalizarDoc
        nillableDictionary["flagEmbossingLoja"] = self.flagEmbossingLoja
        nillableDictionary["flagConsultaPrevia"] = self.flagConsultaPrevia
        nillableDictionary["tipoPessoa"] = self.tipoPessoa?.rawValue
        nillableDictionary["idProduto"] = self.idProduto
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
