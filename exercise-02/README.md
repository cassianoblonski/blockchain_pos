### Usage

Para rodar:
  ```sh
  ruby main.rb
  ```

Usando no IRB

  ```sh
  require_relative 'parser'
  ```

  ```sh
  parse = Parser.new(private_keys: ['path_private_key.txt'], messages: ['path_messages.txt'])
  ```

  ```sh
  parse.parse_messages
  ```
