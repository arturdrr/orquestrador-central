## Integração do best-practices-tool

Este repositório utiliza o projeto [best-practices-tool](https://github.com/arturdrr/best-practices-tool) como submódulo dentro da pasta `external/best-practices-tool`.

### Como atualizar o submódulo

Para atualizar a versão do submódulo para a última do remoto:

```bash
git submodule update --remote external/best-practices-tool
git add external/best-practices-tool
git commit -m "Atualiza submódulo best-practices-tool"
```

### Instalação automática

Durante a execução do script mestre `/scripts/install-all.sh`, o instalador do best-practices-tool é executado automaticamente via:

```bash
python3 external/best-practices-tool/installer.py
```

Certifique-se de ter o Python 3 instalado para que o instalador funcione corretamente.