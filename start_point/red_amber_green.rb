
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /FAILED unittests/.match(output)
  return :green if /passed unittests/.match(output)
  return :amber
}
