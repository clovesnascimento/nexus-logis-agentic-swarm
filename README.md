# Nexus-Logis Agentic Swarm (Night Shift Autopilot)

![Nexus-Logis Architecture](assets/nexus_logis_architecture.png)

![Status](https://img.shields.io/badge/Status-Encapsulated-success)
![Protocol](https://img.shields.io/badge/Protocol-MCP_2026--07--28_RC-blue)
![Architecture](https://img.shields.io/badge/Architecture-Stateless_Edge-blueviolet)

O **Nexus-Logis** é uma prova de conceito de uma infraestrutura agêntica descentralizada, orquestrando arbitragem logística autônoma através da integração de redes de infraestrutura física descentralizada (DePIN) e da especificação Release Candidate do **Model Context Protocol (MCP) 2026-07-28**.

O objetivo deste projeto é construir uma câmara de compensação de tomada de decisão, onde um enxame de agentes de Inteligência Artificial opera 24/7 de forma assíncrona, recalculando restrições logísticas de longo percurso, elaborando leilões de contingência entre transportadoras substitutas (Contract Nets) e executando os contratos fiduciários via *Smart Contracts* numa camada Web3, sem interrupção por latência humana.

## 🏗 Arquitetura

O sistema emprega a topologia "Zero Affinity", eliminando sessões mantidas ativamente. Balanceadores de carga operam roteamento inteligente na borda através dos cabeçalhos `Mcp-Method` e `Mcp-Name`, redirecionando pacotes para instâncias nativas Kubernetes.

### O Enxame (The Swarm)

A lógica está fragmentada em três agentes especializados isolados (Princípio do Privilégio Mínimo Agêntico):

1. **Primary Explorer (Sensor Epistemológico)**: `nexus_logis/agents/primary_explorer.py`
   - Ouve as anomalias fornecidas pela rede Hivemapper e de telemetria climática.
   - Não decide, não julga, apenas sinaliza estatisticamente desvios de *SLA* (Acordo de Nível de Serviço).
   - Implementa o nó `server/discover` fornecendo regras puras de *Edge Caching*.

2. **Secondary Strategist (Teoria dos Jogos)**: `nexus_logis/agents/secondary_strategist.py`
   - Realiza leilões iterativos entre fornecedores de transporte (PSRO - *Policy Space Response Oracles*).
   - Processamento de orquestração prolongada em background operando através da Extensão Oficial `io.modelcontextprotocol/tasks`.

3. **Tertiary Executor (Liquidador Criptográfico)**: `nexus_logis/agents/tertiary_executor.py`
   - Assina os smart contracts de contingência e aloja liquidez de stablecoins em escrow.
   - Exibe a auditoria visual em sandboxes HTML providas via extensão de `io.modelcontextprotocol/apps`.

## 🚀 Migração MCP 2026-07-28-RC

A base de código garante conformidade restrita e precoce à futura especificação:
- **Ausência de Initial Handshake Síncrono:** Os nós conectam-se dinamicamente por `server/discover`.
- **Stateless Completo:** Inexistência do cabeçalho depreciado `Mcp-Session-Id`.
- **Fim do Bloqueio Iterativo:** `Tools/Call` complexos agora transitam com a framework nativa de submissão paralela de Tasks.
- **W3C Trace Context:** Auditoria forense OpenTelemetry rastreada através da tag `_meta: traceparent`.
- **JSON Schema 2020-12:** Hardening cibernético estrito sobre as requisições, barrando injeções anômalas antes mesmo da execução via `security_validator.py`.

## 📂 Estrutura do Repositório

```text
├── .agent/                             # Estado do orquestrador isolado
├── nexus_logis/
│   ├── agents/                         # Implementação de Python do Swarm
│   │   ├── primary_explorer.py
│   │   ├── secondary_strategist.py
│   │   ├── tertiary_executor.py
│   │   ├── security_validator.py       # Validação rígida de Tokens e Schemas
│   │   └── simulate_nginx_stress.py    # Teste de latência NGINX/Ingress 
│   ├── infrastructure/
│   │   ├── k8s/                        # Manifestos e anotações NGINX Ingress
│   │   └── terraform/                  # Deploy do Ecossistema AWS Híbrido
└── CNGSM_Night_Shift_Autopilot_1784938109732.json # Blueprint arquitetural JSON original
```

## ⚙️ Uso

Este repositório é principalmente uma fundação teórica-operacional. Os arquivos Python atuam como nós isolados mockados demonstrando perfeitamente o acoplamento do protocolo stateless de 2026.

Você pode submeter o ambiente à engenharia do caos local rodando:
```bash
python nexus_logis/agents/simulate_nginx_stress.py
```
Isso validará o roteamento via cabeçalho sem decodificação JSON do payload, atingindo latências microscópicas de borda.

---
### Créditos

**CNGSM** — Cognitive Neural & Generative Systems Management  
**Cloves Nascimento** — Arquiteto de Ecossistemas Cognitivos

*Construído pelo protocolo autônomo Night Shift Autopilot*
