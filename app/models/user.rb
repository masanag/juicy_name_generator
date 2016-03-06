#
class User
  include ActiveModel::Model
  require 'digest/md5'

  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end

  def juicy_name
    adjective + alias_name
  end

  def alias_name
    Name.find_by_id(hashed_name % Name.count + 1).name
  end

  def adjective
    Adjective.find_by_id(hashed_name % Adjective.count + 1).name
  end

  private

  def hashed_name
    Digest::MD5.new.update(name).to_s.hex
  end
end
