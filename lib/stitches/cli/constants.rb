module Constants
  PROJECT_VERSION = %i[version.rb]
  PROJECT_SRC_FOLDERS = %i[
    lib
    pre
    post
    resources
  ].freeze

  # configuration extensions
  EXTENSIONS = %i[
    json
    toml
    yaml
    yml
    nix
    rb
  ].freeze
end
