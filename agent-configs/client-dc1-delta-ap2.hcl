node_name = "client-dc1-delta-ap2"
datacenter = "dc1"
partition = "unicorn"

data_dir = "/consul/data"
log_level = "INFO"
retry_join = ["consul-server1-dc1"]

encrypt = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="

acl {
  enabled = true
  tokens {
    agent = "root"
    default = "root"
  }
}

auto_encrypt = {
  tls = true
}

tls {
  defaults {
    ca_file = "/consul/config/certs/consul-agent-ca.pem"

    verify_incoming = true
    verify_outgoing = true
  }
  internal_rpc {
    verify_server_hostname = true
  }
}

auto_reload_config = true