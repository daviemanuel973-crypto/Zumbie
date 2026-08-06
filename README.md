# GBA Zombie Apocalypse — projeto Android v1.2.2

Aplicativo Android nativo com WebView e jogo incorporado para funcionamento offline. A versão 1.2.2 é uma atualização de estabilidade e mantém a assinatura fixa de testes introduzida na v1.2.1.

## Identificação

- Application ID de lançamento: `com.bl4zers.gbzombie`
- APK debug: `com.bl4zers.gbzombie.debug`
- Version code: `122`
- Version name: `1.2.2`
- Orientação: horizontal
- Android mínimo: Android 8.0 / API 26
- Android alvo: API 36

## Principais correções

- Estado de morte e recuperação no último abrigo.
- Sono processando tempo, fome, sede, clima, dias e hordas.
- Abrigo salva e registra checkpoint, sem cura infinita.
- Itens descartados são colocados no chão.
- Rotas de fuga exigem interação física e defesa temporizada.
- Separação entre infectados aglomerados.
- Reparo de armas não desperdiça sucata.
- Remapeamento impede conflitos e teclas reservadas.
- Missão de madeira usa total coletado durante a campanha.
- Autoaim respeita paredes e estruturas.

## Abrir no Android Studio

1. Abra esta pasta como projeto.
2. Aguarde a instalação do Android SDK 36 e dos Build Tools solicitados.
3. Selecione o módulo `app`.
4. Use **Build > Build APK(s)**.
5. O APK debug ficará em `app/build/outputs/apk/debug/app-debug.apk`.

## Gerar pelo GitHub Actions

1. Abra a aba **Actions** do repositório.
2. Selecione **Gerar APK Android**.
3. Clique em **Run workflow**.
4. Baixe o artefato `GBA-Zombie-Apocalypse-v1.2.2-debug-apk`.

## Assinatura e saves

- O APK debug usa `app/debug.keystore`, uma chave fixa apenas para builds de teste.
- Builds v1.2.1 estáveis e posteriores podem ser instaladas por cima umas das outras.
- Desinstalar o aplicativo apaga os dados locais; exporte o save antes.
- Para publicação real, use uma chave privada de lançamento fora do repositório.
