# Criar os blocos:
  ```sh
  ruby main.r
  ```

# Validar
  O algoritmo valida toda a block chain a cada interação (quando adiciona algum node novo ou algo assim), para adicionar um novo ou rodar o algoritmo de validação:
  No irb rode `require_relative 'main.rb'` isso vai popular a block chain e criar uma variavel global (`$block_chain`), com ela voce pode:

 * Validar:
    `$block_chain.validate`
 * Criar um novo bloco:
     `block = $block_chain.create_block(sender: 'Cassiano', recipient: 'Roberto')`
 * Adicionar esse bloco na block chain:
     `$block_chain.persist(block)`

 Caso tiver algum dado invalido na block chain um erro vai ser disparado
