require "string_scanner"

module BetterStringScanner
  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}
end

class StringScanner
  {% for method in %w(scan scan_until skip skip_until check check_until) %}
  def {{method.id}}(pattern, include_pattern)
    if include_pattern
      {{method.id}}(pattern)
    else
      {{method.id}}(pattern).try &.gsub(pattern, "")
    end
  end
  {% end %}
end
