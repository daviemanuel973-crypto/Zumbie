# Relatório de validação — v1.4.0

## Aprovado localmente

- lint dos módulos JavaScript;
- testes de núcleo em 200 sementes;
- testes de runtime;
- geração e migração de saves v6;
- campanha, infecção, comunidade e regiões;
- saqueadores, chefes e locais especiais;
- veículo, combustível, condução e rota de fuga;
- inventário, equipamentos, construção e finais anteriores;
- build web pública;
- reconstrução do bundle Android/PC e verificação SHA-256.

## Interface e mobile

Foram verificadas por código e runtime as regras do HUD compacto, menu recolhido, perfis de desempenho e redução de atualizações distantes.

A automação Chromium local não pôde abrir páginas locais por política administrativa do ambiente (`ERR_BLOCKED_BY_ADMINISTRATOR`). Por isso, a validação nativa final é executada pelos workflows do GitHub Actions e pelos testes no aparelho/PC.

## Integridade

- SHA-256 esperado do bundle v1.4.0: `a3d81c2c841b20e696767894a989d122107f372826c1bd0cb9cb7db0b427dd24`.
- SHA-256 esperado do patch compactado: `e84bf449bb2e9775c1c8dcd756434f8196d6faedaace58e07718777f37824835`.
