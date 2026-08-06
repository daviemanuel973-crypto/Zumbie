# GBA Zombie Apocalypse para PC

Aplicação desktop v1.4.0 para Windows e Linux.

## Desenvolvimento

```bash
npm install
npm start
```

## Empacotamento

```bash
npm run dist:win
npm run dist:linux
```

O workflow do GitHub prepara automaticamente a pasta `game/` com o mesmo bundle validado usado no Android.

## Segurança do contêiner desktop

- `nodeIntegration: false`
- `contextIsolation: true`
- `sandbox: true`
- navegação externa bloqueada dentro da janela
- links HTTP/HTTPS enviados ao navegador padrão
