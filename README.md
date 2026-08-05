# GBA Zombie Apocalypse — projeto Android v1.2.0

Este repositório contém um aplicativo Android nativo simples com `WebView`, sem depender do Capacitor em tempo de execução. O jogo completo está incorporado em `app/src/main/assets`, funciona offline e mantém três slots de salvamento no armazenamento interno do aplicativo.

## Identificação

- Application ID de lançamento: `com.bl4zers.gbzombie`
- APK debug: `com.bl4zers.gbzombie.debug`
- Version code: `120`
- Version name: `1.2.0`
- Orientação: horizontal
- Android mínimo: Android 8.0 / API 26
- Android alvo: API 36

## Gerar automaticamente pelo GitHub

1. Abra a aba **Actions**.
2. Selecione **Gerar APK Android**.
3. Clique em **Run workflow**.
4. Ao terminar, baixe o artefato `GBA-Zombie-Apocalypse-v1.2.0-debug-apk`.

O workflow também é executado automaticamente quando há alterações na branch `main`.

## Abrir no Android Studio

1. Abra esta pasta como projeto.
2. Aguarde a instalação do Android SDK 36 e Build Tools solicitados.
3. Selecione o módulo `app`.
4. Use **Build > Build APK(s)**.
5. O APK debug ficará em `app/build/outputs/apk/debug/app-debug.apk`.

## APK de lançamento

O APK debug é adequado para testes. Para publicação ou atualizações permanentes, gere uma chave `.jks` no Android Studio e use **Build > Generate Signed Bundle / APK**. Guarde a mesma chave para todas as versões futuras.

## Saves

- Os saves permanecem ao instalar uma atualização sobre o mesmo Application ID e assinatura.
- Desinstalar o aplicativo apaga os dados locais.
- O botão de exportar save abre o seletor nativo do Android.
- O botão de importar save abre o seletor de documentos.
