//
// TipoFaturamentoPorContaPersist.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** TipoFaturamentoPorContaPersist */
public class TipoFaturamentoPorContaPersist: JSONEncodable {

    /** Representa se a configura\u00C3\u00A7\u00C3\u00A3o est\u00C3\u00A1 ativada ou desativada para a conta. */
    public var status: Bool?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta relacionada. */
    public var idConta: Int?
    /** C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de faturamento relacionada. */
    public var idTipoFaturamento: Int?
    /** Data da inclus\u00C3\u00A3o da configura\u00C3\u00A7\u00C3\u00A3o, deve ser informada no formato yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSS&#39;Z&#39;. */
    public var dataHoraInclusao: String?
    /** Data do cancelamento da configura\u00C3\u00A7\u00C3\u00A3o, deve ser informada no formato yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSS&#39;Z&#39;. */
    public var dataHoraCancelamento: String?
    /** Identificador do respons\u00C3\u00A1vel pela modifica\u00C3\u00A7\u00C3\u00A3o do registro. */
    public var modificadoPor: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["status"] = self.status
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["idTipoFaturamento"] = self.idTipoFaturamento
        nillableDictionary["dataHoraInclusao"] = self.dataHoraInclusao
        nillableDictionary["dataHoraCancelamento"] = self.dataHoraCancelamento
        nillableDictionary["modificadoPor"] = self.modificadoPor
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}