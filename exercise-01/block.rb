require 'digest'
require_relative 'hash'

class Block
  MESSAGE = "Origem: {sender}\nDestino: {recipient}\nMensagem: Ola {recipient}. Meu nome é {sender}.\n".freeze
  BLOCK_STRUCTURE = "{message}Hash: {hash}\n".freeze

  def initialize(sender:, recipient:)
    @sender = sender
    @recipient = recipient
  end

  def get_block
    BLOCK_STRUCTURE.gsub(/{message}/, message).gsub(/{hash}/, hash)
  end

  private

  def message
    MESSAGE.gsub(/{recipient}/, @recipient).gsub(/{sender}/, @sender)
  end

  def hash
    Hash.generate message
  end
end
