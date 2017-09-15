//
// TransacaoNaoProcessadaResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Objeto transacao N\u00C3\u00A3o Processada */
public class TransacaoNaoProcessadaResponse: JSONEncodable {

    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo da Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var idTipoTransacaoNaoProcessada: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do Tipo da Transa\u00C3\u00A7\u00C3\u00A3o n\u00C3\u00A3o Processada. */
    public var descricaoTipoTransacaoNaoProcessada: String?
    /** Descri\u00C3\u00A7\u00C3\u00A3o Abreviada da Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var descricaoAbreviada: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id). */
    public var idConta: Int?
    /** N\u00C3\u00BAmero do Cart\u00C3\u00A3o em Formato 0000XXXXXXXX0000. */
    public var cartaoMascarado: String?
    /** Nome completo do Portador do Cart\u00C3\u00A3o. */
    public var nomePortador: String?
    /** Data em que a Transa\u00C3\u00A7\u00C3\u00A3o foi realizada. */
    public var dataOrigem: String?
    /** Data de Faturamento da Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var dataFaturamento: String?
    /** Data de Vencimento da Fatura. */
    public var dataVencimento: String?
    /** Descreve o modo utilizado para realizar a leitura dos dados do cart\u00C3\u00A3o para realizar a Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var modoEntradaTransacao: String?
    /** Valor da Taxa de Embarque em Real (BRL) quando a transa\u00C3\u00A7\u00C3\u00A3o for relacionada a Compra de Passagens A\u00C3\u00A9reas. */
    public var valorTaxaEmbarque: Double?
    /** Valor da Entrada em Real (BRL) quando a transa\u00C3\u00A7\u00C3\u00A3o for do tipo Parcelada com o pagamento de um valor de Entrada. */
    public var valorEntrada: Double?
    /** Valor da Transa\u00C3\u00A7\u00C3\u00A3o em Real (BRL). */
    public var valorBRL: Double?
    /** Valor da Transa\u00C3\u00A7\u00C3\u00A3o em D\u00C3\u00B3lar Americano (USD). */
    public var valorUSD: Double?
    /** Valor do D\u00C3\u00B3lar Americano (USD) convertido em Real (BRL). */
    public var cotacaoUSD: Double?
    /** Data de Fechamento da Cota\u00C3\u00A7\u00C3\u00A3o do D\u00C3\u00B3lar Americano (USD). */
    public var dataCotacaoUSD: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Moeda utilizada na Transa\u00C3\u00A7\u00C3\u00A3o, seguindo padr\u00C3\u00A3o ISO 4217. */
    public var codigoMoedaOrigem: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Moeda da Transa\u00C3\u00A7\u00C3\u00A3o ap\u00C3\u00B3s a convers\u00C3\u00A3o, seguindo padr\u00C3\u00A3o ISO 4217. */
    public var codigoMoedaDestino: String?
    /** C\u00C3\u00B3digo de Autoriza\u00C3\u00A7\u00C3\u00A3o da Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var codigoAutorizacao: String?
    /** C\u00C3\u00B3digo de Refer\u00C3\u00AAncia da Transa\u00C3\u00A7\u00C3\u00A3o quando utilizado Cart\u00C3\u00A3o Bandeirado. */
    public var codigoReferencia: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da origem da captura da Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var codigoTerminal: String?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da categoria do Estabelecimento. */
    public var codigoMCC: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do grupo do Estabelecimento. */
    public var grupoMCC: Int?
    /** Descri\u00C3\u00A7\u00C3\u00A3o do grupo do Estabelecimento. */
    public var grupoDescricaoMCC: String?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento (id). */
    public var idEstabelecimento: Int?
    /** Nome do Estabelecimento. */
    public var nomeEstabelecimento: String?
    /** Localidade do Estabelecimento. */
    public var localidadeEstabelecimento: String?
    /** Quando a Transa\u00C3\u00A7\u00C3\u00A3o for do tipo Parcelada, apresenta o n\u00C3\u00BAmero total de Parcelas. */
    public var planoParcelamento: Int?
    /** Quando a Transa\u00C3\u00A7\u00C3\u00A3o for do tipo Parcelada, apresenta o n\u00C3\u00BAmero da Parcela. */
    public var numeroParcela: Int?
    /** Detalhes complementares a respeito da Transa\u00C3\u00A7\u00C3\u00A3o. */
    public var detalhesTransacao: String?
    /** Quando ativa, indica que a Transa\u00C3\u00A7\u00C3\u00A3o \u00C3\u00A9 do Tipo &#39;Cr\u00C3\u00A9dito&#39;. */
    public var flagCredito: Int?
    /** Quando ativa, indica que a Transa\u00C3\u00A7\u00C3\u00A3o foi consolidada em uma Fatura. */
    public var flagFaturado: Int?
    /** Quando ativa, indica que a Transa\u00C3\u00A7\u00C3\u00A3o foi estornada. */
    public var flagEstorno: Int?
    /** C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Transa\u00C3\u00A7\u00C3\u00A3o (id) que gerou o estorno. */
    public var idTransacaoEstorno: Int?
    /** Atributo que representa o c\u00C3\u00B3digo identificador do status da transa\u00C3\u00A7\u00C3\u00A3o. */
    public var status: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idTipoTransacaoNaoProcessada"] = self.idTipoTransacaoNaoProcessada
        nillableDictionary["descricaoTipoTransacaoNaoProcessada"] = self.descricaoTipoTransacaoNaoProcessada
        nillableDictionary["descricaoAbreviada"] = self.descricaoAbreviada
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["cartaoMascarado"] = self.cartaoMascarado
        nillableDictionary["nomePortador"] = self.nomePortador
        nillableDictionary["dataOrigem"] = self.dataOrigem
        nillableDictionary["dataFaturamento"] = self.dataFaturamento
        nillableDictionary["dataVencimento"] = self.dataVencimento
        nillableDictionary["modoEntradaTransacao"] = self.modoEntradaTransacao
        nillableDictionary["valorTaxaEmbarque"] = self.valorTaxaEmbarque
        nillableDictionary["valorEntrada"] = self.valorEntrada
        nillableDictionary["valorBRL"] = self.valorBRL
        nillableDictionary["valorUSD"] = self.valorUSD
        nillableDictionary["cotacaoUSD"] = self.cotacaoUSD
        nillableDictionary["dataCotacaoUSD"] = self.dataCotacaoUSD
        nillableDictionary["codigoMoedaOrigem"] = self.codigoMoedaOrigem
        nillableDictionary["codigoMoedaDestino"] = self.codigoMoedaDestino
        nillableDictionary["codigoAutorizacao"] = self.codigoAutorizacao
        nillableDictionary["codigoReferencia"] = self.codigoReferencia
        nillableDictionary["codigoTerminal"] = self.codigoTerminal
        nillableDictionary["codigoMCC"] = self.codigoMCC
        nillableDictionary["grupoMCC"] = self.grupoMCC
        nillableDictionary["grupoDescricaoMCC"] = self.grupoDescricaoMCC
        nillableDictionary["idEstabelecimento"] = self.idEstabelecimento
        nillableDictionary["nomeEstabelecimento"] = self.nomeEstabelecimento
        nillableDictionary["localidadeEstabelecimento"] = self.localidadeEstabelecimento
        nillableDictionary["planoParcelamento"] = self.planoParcelamento
        nillableDictionary["numeroParcela"] = self.numeroParcela
        nillableDictionary["detalhesTransacao"] = self.detalhesTransacao
        nillableDictionary["flagCredito"] = self.flagCredito
        nillableDictionary["flagFaturado"] = self.flagFaturado
        nillableDictionary["flagEstorno"] = self.flagEstorno
        nillableDictionary["idTransacaoEstorno"] = self.idTransacaoEstorno
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}