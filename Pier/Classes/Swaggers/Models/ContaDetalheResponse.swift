//
// ContaDetalheResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto conta */
public class ContaDetalheResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de conta (id). */
    public var id: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa Titular da Conta (id). */
    public var idPessoa: Int?
    /** Apresenta o &#39;Nome Completo da PF&#39; ou o &#39;Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)&#39;. */
    public var nome: String?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do produto ao qual a conta faz parte. (id). */
    public var idProduto: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id) que deu origem a Conta. */
    public var idOrigemComercial: Int?
    /** Nome da origem comercial */
    public var nomeOrigemComercial: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Fantasia Basica (id). */
    public var idFantasiaBasica: Int?
    /** Nome da Fantasia Basica */
    public var nomeFantasiaBasica: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). */
    public var idStatusConta: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do status da conta */
    public var statusConta: String?
    /** Apresenta o dia de vencimento. */
    public var diaVencimento: Int?
    /** Apresenta o melhor dia de compra. */
    public var melhorDiaCompra: Int?
    /** Apresenta a data em que o idStatusConta atual fora atribu\u00C3\u00ADdo para ela. */
    public var dataStatusConta: NSDate?
    /** Valor da renda comprovada. */
    public var valorRenda: Double?
    /** Apresenta a data em que o cart\u00C3\u00A3o foi gerado. */
    public var dataCadastro: NSDate?
    /** Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento. */
    public var dataUltimaAlteracaoVencimento: NSDate?
    /** Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento. */
    public var dataHoraUltimaCompra: NSDate?
    /** N\u00C3\u00BAmero da ag\u00C3\u00AAncia. */
    public var numeroAgencia: Int?
    /** N\u00C3\u00BAmero da conta corrente. */
    public var numeroContaCorrente: String?
    /** Forma de envio da fatura. */
    public var formaEnvioFatura: String?
    /** Apresenta se a pessoa \u00C3\u00A9 titular da conta. */
    public var titular: Bool?
    /** Apresenta o valor do limite de cr\u00C3\u00A9dito que o portador do cart\u00C3\u00A3o possui. */
    public var limiteGlobal: Double?
    /** Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional. */
    public var limiteSaqueGlobal: Double?
    /** Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Nacionais. */
    public var saldoDisponivelGlobal: Double?
    /** Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional dentro de cada ciclo de faturamento. */
    public var saldoDisponivelSaque: Double?
    /** Apresenta a data da ultima cobran\u00C3\u00A7a. */
    public var dataInicioAtraso: NSDate?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["nome"] = self.nome
        nillableDictionary["idProduto"] = self.idProduto
        nillableDictionary["idOrigemComercial"] = self.idOrigemComercial
        nillableDictionary["nomeOrigemComercial"] = self.nomeOrigemComercial
        nillableDictionary["idFantasiaBasica"] = self.idFantasiaBasica
        nillableDictionary["nomeFantasiaBasica"] = self.nomeFantasiaBasica
        nillableDictionary["idStatusConta"] = self.idStatusConta
        nillableDictionary["statusConta"] = self.statusConta
        nillableDictionary["diaVencimento"] = self.diaVencimento
        nillableDictionary["melhorDiaCompra"] = self.melhorDiaCompra
        nillableDictionary["dataStatusConta"] = self.dataStatusConta?.encodeToJSON()
        nillableDictionary["valorRenda"] = self.valorRenda
        nillableDictionary["dataCadastro"] = self.dataCadastro?.encodeToJSON()
        nillableDictionary["dataUltimaAlteracaoVencimento"] = self.dataUltimaAlteracaoVencimento?.encodeToJSON()
        nillableDictionary["dataHoraUltimaCompra"] = self.dataHoraUltimaCompra?.encodeToJSON()
        nillableDictionary["numeroAgencia"] = self.numeroAgencia
        nillableDictionary["numeroContaCorrente"] = self.numeroContaCorrente
        nillableDictionary["formaEnvioFatura"] = self.formaEnvioFatura
        nillableDictionary["titular"] = self.titular
        nillableDictionary["limiteGlobal"] = self.limiteGlobal
        nillableDictionary["limiteSaqueGlobal"] = self.limiteSaqueGlobal
        nillableDictionary["saldoDisponivelGlobal"] = self.saldoDisponivelGlobal
        nillableDictionary["saldoDisponivelSaque"] = self.saldoDisponivelSaque
        nillableDictionary["dataInicioAtraso"] = self.dataInicioAtraso?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
