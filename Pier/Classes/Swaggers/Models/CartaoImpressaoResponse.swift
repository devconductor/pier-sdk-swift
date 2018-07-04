//
// CartaoImpressaoResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{cartao_impressao_response_description}}} */
public class CartaoImpressaoResponse: JSONEncodable {

    /** {{{cartao_impressao_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{cartao_impressao_response_id_pessoa_value}}} */
    public var idPessoa: Int?
    /** {{{cartao_impressao_response_id_cartao_value}}} */
    public var idCartao: Int?
    /** {{{cartao_impressao_response_id_bandeira_value}}} */
    public var idBandeira: Int?
    /** {{{cartao_impressao_response_id_tipo_cartao_value}}} */
    public var idTipoCartao: Int?
    /** {{{cartao_impressao_response_numero_cartao_value}}} */
    public var numeroCartao: String?
    /** {{{cartao_impressao_response_nome_plastico_value}}} */
    public var nomePlastico: String?
    /** {{{cartao_impressao_response_cvv2_value}}} */
    public var cvv2: String?
    /** {{{cartao_impressao_response_data_geracao_value}}} */
    public var dataGeracao: String?
    /** {{{cartao_impressao_response_data_validade_value}}} */
    public var dataValidade: String?
    /** {{{cartao_impressao_response_nome_origem_comercial_value}}} */
    public var nomeOrigemComercial: String?
    /** {{{cartao_impressao_response_nome_empresa_value}}} */
    public var nomeEmpresa: String?
    /** {{{cartao_impressao_response_numero_agencia_value}}} */
    public var numeroAgencia: Int?
    /** {{{cartao_impressao_response_numero_conta_corente_value}}} */
    public var numeroContaCorente: String?
    /** {{{cartao_impressao_response_nome_empresa_beneficio_value}}} */
    public var nomeEmpresaBeneficio: String?
    /** {{{cartao_impressao_response_cpf_value}}} */
    public var cpf: String?
    /** {{{cartao_impressao_response_tipo_portador_value}}} */
    public var tipoPortador: String?
    /** {{{cartao_impressao_response_nome_empregador_value}}} */
    public var nomeEmpregador: String?
    /** {{{cartao_impressao_response_trilha1_value}}} */
    public var trilha1: String?
    /** {{{cartao_impressao_response_trilha2_value}}} */
    public var trilha2: String?
    /** {{{cartao_impressao_response_trilha_c_v_v1_value}}} */
    public var trilhaCVV1: String?
    /** {{{cartao_impressao_response_trilha_c_v_v2_value}}} */
    public var trilhaCVV2: String?
    /** {{{cartao_impressao_response_flag_virtual_value}}} */
    public var flagVirtual: Int?
    /** {{{cartao_impressao_response_numero_cartao_hash_value}}} */
    public var numeroCartaoHash: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idBandeira"] = self.idBandeira
        nillableDictionary["idTipoCartao"] = self.idTipoCartao
        nillableDictionary["numeroCartao"] = self.numeroCartao
        nillableDictionary["nomePlastico"] = self.nomePlastico
        nillableDictionary["cvv2"] = self.cvv2
        nillableDictionary["dataGeracao"] = self.dataGeracao
        nillableDictionary["dataValidade"] = self.dataValidade
        nillableDictionary["nomeOrigemComercial"] = self.nomeOrigemComercial
        nillableDictionary["nomeEmpresa"] = self.nomeEmpresa
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorente"] = self.numeroContaCorente
        nillableDictionary["nomeEmpresaBeneficio"] = self.nomeEmpresaBeneficio
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["tipoPortador"] = self.tipoPortador
        nillableDictionary["nomeEmpregador"] = self.nomeEmpregador
        nillableDictionary["trilha1"] = self.trilha1
        nillableDictionary["trilha2"] = self.trilha2
        nillableDictionary["trilhaCVV1"] = self.trilhaCVV1
        nillableDictionary["trilhaCVV2"] = self.trilhaCVV2
        nillableDictionary["flagVirtual"] = self.flagVirtual
        nillableDictionary["numeroCartaoHash"] = self.numeroCartaoHash
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
