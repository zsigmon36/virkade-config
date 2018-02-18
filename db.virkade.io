$TTL    7200    ; 2 hours
@       IN      SOA     cms.virkade.io. root.virkade.io. (
                        20140315        ; serial
                        172800          ; refresh (2 days)
                        14400           ; retry (4 hours)
                        3628800         ; expire (6 weeks)
                        604800          ; minimum (1 week)
                        );

@       IN      NS      cms.virkade.io.
cms.virkade.io. IN      A       192.168.1.86;
virkade.io.     IN      A       192.168.1.86;
gw.virkade.io.  IN      A       192.168.1.1;
service.virkade.io. IN  A       192.168.1.24;
