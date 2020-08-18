function pack
  set address (string join "/" ".." (echo (string split '/' (echo (pwd)))[-1]))
  set address (string join "_" $address "export")
  mkdir $address
end
