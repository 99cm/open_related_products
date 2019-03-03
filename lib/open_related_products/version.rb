module OpenRelatedProducts
  module_function

  # Returns the version of the currently loaded OpenRelatedProducts as a
  # <tt>Gem::Version</tt>.
  def version
    Gem::Version.new VERSION::STRING
  end

  module VERSION
    MAJOR = 2
    MINOR = 2
    TINY  = 0
    PRE = nil

    STRING = [MAJOR, MINOR, TINY].compact.join('.')
  end
end