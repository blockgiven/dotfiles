guard :shell do
  watch(%r{^(?:app|lib)/.+\.rb$}) { `ripper-tags -e -R -f TAGS` }
end
