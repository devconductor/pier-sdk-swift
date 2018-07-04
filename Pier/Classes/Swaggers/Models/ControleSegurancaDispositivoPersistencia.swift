//
// ControleSegurancaDispositivoPersistencia.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{controle_seguranca_dispositivo_persistencia_descricao}}} */
public class ControleSegurancaDispositivoPersistencia: JSONEncodable {

    /** {{{controle_seguranca_dispositivo_id_usuario_descricao}}} */
    public var idUsuario: Int?
    /** {{{controle_seguranca_dispositivo_phone_id_descricao}}} */
    public var phoneId: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idUsuario"] = self.idUsuario
        nillableDictionary["phoneId"] = self.phoneId
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
