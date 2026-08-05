# GBA Zombie Apocalypse — Android v1.2.1

Projeto Android nativo com `WebView`, funcionamento offline e três slots de salvamento.

## Correções da v1.2.1

- Todas as construções procedurais recebem uma entrada acessível.
- Saves antigos têm entradas bloqueadas reparadas automaticamente.
- Corredores e outros infectados pequenos não ocupam mais o centro do jogador.
- Tiros e golpes de faca funcionam a queima-roupa.
- Cada rota de fuga possui três componentes obrigatórios e uma peça sobressalente.
- Peças guardadas em baús contam para rádio e veículo.
- Saves sem componentes suficientes recebem uma caixa de reparo acessível.

## Identificação

- Application ID de lançamento: `com.bl4zers.gbzombie`
- APK debug: `com.bl4zers.gbzombie.debug`
- Version code: `121`
- Version name: `1.2.1`
- Android mínimo: Android 8.0 / API 26
- Android alvo: API 36

## Gerar o APK

1. Abra a aba **Actions**.
2. Selecione **Gerar APK Android**.
3. Clique em **Run workflow**.
4. Baixe o artefato `GBA-Zombie-Apocalypse-v1.2.1-debug-apk`.

O workflow também é executado automaticamente a cada atualização da branch `main`.

## Atualização e saves

Instale o novo APK sobre o anterior, sem desinstalar. A build 1.2.1 migra o save v1.2.0 e corrige componentes ou entradas inacessíveis. Para segurança, exporte o slot antes da atualização.

O APK debug é adequado para testes. Uma publicação permanente exige APK/AAB assinado com a mesma chave `.jks` em todas as versões.
