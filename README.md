# Códigos vistos em sala de aula OpenSCAD
Repositório contendo os códigos passados em sala de aula na disciplina optativa "Tópicos Especiais em Sistemas de Informação II".

# Ferramentas utilizadas
- OpenSCAD https://openscad.org/
- Repetier host https://www.repetier.com/

## OpenSCAD
Criar os modelos 3D através de códigos.

## Repetier host
Pegar os modelos 3D e colocar em algo plano para imprimir na impressora 3D.

### Instruções Repetier host
- Config. Impressora (Ctrl+P)
    - Extrusoras
        - Temperatura máxima da cama: 90º
        - Temperatura máxima da extrusora: 220º

    - Forma da impressora (o modelo 3D precisa caber dentro)
        - Largura área impressão: (largura da caixa*2)+100
        - Profundidade área impressão: (Profundidade da caixa*2)+100
        - Altura área impressão: (Altura da caixa*2)+100