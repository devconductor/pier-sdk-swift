//
// GrupoEconomicoDTO.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Par\u00E2metros de requisi\u00E7\u00E3o para cadastrar grupo econ\u00F4mico */
public class GrupoEconomicoDTO: JSONEncodable {

    public enum Periodicidade: String { 
        case Diario = "DIARIO"
        case Semanal = "SEMANAL"
        case Mensal = "MENSAL"
        case Decendial = "DECENDIAL"
        case Quinzenal = "QUINZENAL"
    }
    
    public enum PagamentoSemanal: String { 
        case Segunda = "SEGUNDA"
        case Terca = "TERCA"
        case Quarta = "QUARTA"
        case Quinta = "QUINTA"
        case Sexta = "SEXTA"
        case Sabado = "SABADO"
        case Domingo = "DOMINGO"
    }
    
    public enum RecebeRAV: String { 
        case NaoTemPermissaoRav = "NAO_TEM_PERMISSAO_RAV"
        case CreditoRav = "CREDITO_RAV"
        case DebitoRav = "DEBITO_RAV"
    }
    
    /** Raz\u00E3o social da pessoa jur\u00EDdica */
    public var razaoSocial: String?
    /** Nome do credor */
    public var nomeCredor: String?
    /** N\u00FAmero da Receita Federal */
    public var numeroReceitaFederal: String?
    /** N\u00FAmero da inscri\u00E7\u00E3o estadual */
    public var inscricaoEstadual: String?
    /** Nome da pessoa para entrar em contato */
    public var contato: String?
    /** C\u00F3digo do banco */
    public var banco: Int?
    /** C\u00F3digo da ag\u00EAncia */
    public var agencia: Int?
    /** D\u00EDgito verificador da ag\u00EAncia */
    public var digitoAgencia: String?
    /** C\u00F3digo da Conta Corrente */
    public var contaCorrente: String?
    /** D\u00EDgito Verificador da Conta Corrente */
    public var digitoContaCorrente: String?
    /** Periodicidade do pagamento */
    public var periodicidade: Periodicidade?
    /** Dia para pagamento semanal */
    public var pagamentoSemanal: PagamentoSemanal?
    /** Dia da data para o pagamento mensal */
    public var pagamentoMensal: Int?
    /** Dia da data para o primeiro pagamento decendial */
    public var pagamentoDecendialPrimeiro: Int?
    /** Dia da data para o segundo pagamento decendial */
    public var pagamentoDecendialSegundo: Int?
    /** Dia da data para o terceiro pagamento decendial */
    public var pagamentoDecendialTerceiro: Int?
    /** Dia da data para o primeiro pagamento quinzenal */
    public var pagamentoQuinzenalPrimeiro: Int?
    /** Dia da data para o segundo pagamento quinzenal */
    public var pagamentoQuinzenalSegundo: Int?
    /** Identificador do credor RAV */
    public var idCredorRAV: Int?
    /** Valor percentual do RAV do credor */
    public var percentualRAV: Double?
    /** Indica se o credor recebe RAV e o tipo */
    public var recebeRAV: RecebeRAV?
    /** Percentual Multiplica */
    public var percentualMultiplica: Double?
    /** Taxa Administrativa */
    public var taxaAdm: Double?
    /** Taxa do Banco */
    public var taxaBanco: Double?
    /** Valor limite do RAV */
    public var limiteRAV: Double?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["razaoSocial"] = self.razaoSocial
        nillableDictionary["nomeCredor"] = self.nomeCredor
        nillableDictionary["numeroReceitaFederal"] = self.numeroReceitaFederal
        nillableDictionary["inscricaoEstadual"] = self.inscricaoEstadual
        nillableDictionary["contato"] = self.contato
        nillableDictionary["banco"] = self.banco
        nillableDictionary["agencia"] = self.agencia
        nillableDictionary["digitoAgencia"] = self.digitoAgencia
        nillableDictionary["contaCorrente"] = self.contaCorrente
        nillableDictionary["digitoContaCorrente"] = self.digitoContaCorrente
        nillableDictionary["periodicidade"] = self.periodicidade?.rawValue
        nillableDictionary["pagamentoSemanal"] = self.pagamentoSemanal?.rawValue
        nillableDictionary["pagamentoMensal"] = self.pagamentoMensal
        nillableDictionary["pagamentoDecendialPrimeiro"] = self.pagamentoDecendialPrimeiro
        nillableDictionary["pagamentoDecendialSegundo"] = self.pagamentoDecendialSegundo
        nillableDictionary["pagamentoDecendialTerceiro"] = self.pagamentoDecendialTerceiro
        nillableDictionary["pagamentoQuinzenalPrimeiro"] = self.pagamentoQuinzenalPrimeiro
        nillableDictionary["pagamentoQuinzenalSegundo"] = self.pagamentoQuinzenalSegundo
        nillableDictionary["idCredorRAV"] = self.idCredorRAV
        nillableDictionary["percentualRAV"] = self.percentualRAV
        nillableDictionary["recebeRAV"] = self.recebeRAV?.rawValue
        nillableDictionary["percentualMultiplica"] = self.percentualMultiplica
        nillableDictionary["taxaAdm"] = self.taxaAdm
        nillableDictionary["taxaBanco"] = self.taxaBanco
        nillableDictionary["limiteRAV"] = self.limiteRAV
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
