//
// NotificacaoSMSResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** {{{notificacao_s_m_s_response_description}}} */
public class NotificacaoSMSResponse: JSONEncodable {

    public enum TipoEvento: String { 
        case RiscoFraude = "RISCO_FRAUDE"
        case CodigoSeguranca = "CODIGO_SEGURANCA"
        case Outros = "OUTROS"
        case Otp3dSecure = "OTP_3D_SECURE"
    }
    
    public enum Status: String { 
        case Pendente = "PENDENTE"
        case Encaminhado = "ENCAMINHADO"
        case Enviado = "ENVIADO"
        case Respondido = "RESPONDIDO"
        case Erro = "ERRO"
        case ErroResposta = "ERRO_RESPOSTA"
        case SucessoResposta = "SUCESSO_RESPOSTA"
    }
    
    /** {{{notificacao_s_m_s_response_id_value}}} */
    public var id: Int?
    /** {{{notificacao_s_m_s_response_nsu_value}}} */
    public var nsu: Int?
    /** {{{notificacao_s_m_s_response_id_emissor_value}}} */
    public var idEmissor: Int?
    /** {{{notificacao_s_m_s_response_tipo_evento_value}}} */
    public var tipoEvento: TipoEvento?
    /** {{{notificacao_s_m_s_response_status_value}}} */
    public var status: Status?
    /** {{{notificacao_s_m_s_response_descricao_status_value}}} */
    public var descricaoStatus: String?
    /** {{{notificacao_s_m_s_response_id_pessoa_value}}} */
    public var idPessoa: Int?
    /** {{{notificacao_s_m_s_response_id_conta_value}}} */
    public var idConta: Int?
    /** {{{notificacao_s_m_s_response_celular_value}}} */
    public var celular: String?
    /** {{{notificacao_s_m_s_response_operadora_value}}} */
    public var operadora: String?
    /** {{{notificacao_s_m_s_response_conteudo_value}}} */
    public var conteudo: String?
    /** {{{notificacao_s_m_s_response_resposta_value}}} */
    public var resposta: String?
    /** {{{notificacao_s_m_s_response_data_agendamento_value}}} */
    public var dataAgendamento: String?
    /** {{{notificacao_s_m_s_response_quantidade_tentativas_envio_value}}} */
    public var quantidadeTentativasEnvio: Int?
    /** {{{notificacao_s_m_s_response_data_inclusao_value}}} */
    public var dataInclusao: String?
    /** {{{notificacao_s_m_s_response_data_alteracao_status_value}}} */
    public var dataAlteracaoStatus: String?
    /** {{{notificacao_s_m_s_response_protocolo_value}}} */
    public var protocolo: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["nsu"] = self.nsu
        nillableDictionary["idEmissor"] = self.idEmissor
        nillableDictionary["tipoEvento"] = self.tipoEvento?.rawValue
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["descricaoStatus"] = self.descricaoStatus
        nillableDictionary["idPessoa"] = self.idPessoa
        nillableDictionary["idConta"] = self.idConta
        nillableDictionary["celular"] = self.celular
        nillableDictionary["operadora"] = self.operadora
        nillableDictionary["conteudo"] = self.conteudo
        nillableDictionary["resposta"] = self.resposta
        nillableDictionary["dataAgendamento"] = self.dataAgendamento
        nillableDictionary["quantidadeTentativasEnvio"] = self.quantidadeTentativasEnvio
        nillableDictionary["dataInclusao"] = self.dataInclusao
        nillableDictionary["dataAlteracaoStatus"] = self.dataAlteracaoStatus
        nillableDictionary["protocolo"] = self.protocolo
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
