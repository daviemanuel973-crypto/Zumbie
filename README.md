# GBA Zombie Apocalypse v1.4.0

Jogo 2D de sobrevivência zumbi para Android, Windows, Linux e navegador.

## Android

- Application ID: `com.bl4zers.gbzombie`
- Debug ID: `com.bl4zers.gbzombie.debug`
- Version code: `140`
- Version name: `1.4.0`
- Android mínimo: API 26
- Assinatura de testes preservada desde a v1.2.1

## PC

O workflow **Gerar versões para PC** produz:

- executável portátil `.exe` para Windows x64;
- `AppImage` para Linux x64.

A aplicação desktop usa Electron com isolamento de contexto, sandbox e Node.js desativado dentro da página do jogo.

## Conteúdo da v1.4.0

Campanha, facções, saqueadores, chefes, infecção, comunidade, locais especiais, regiões, veículo dirigível, múltiplos finais e perfil móvel de baixo consumo com HUD contextual.

## Automação

Os workflows reconstroem o mesmo bundle para todas as plataformas e verificam seu SHA-256 antes de gerar os artefatos.
