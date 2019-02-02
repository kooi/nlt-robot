import wifi_cfg

def do_connect():
    import network
    sta_if = network.WLAN(network.STA_IF)
    if not sta_if.isconnected():
        print('connecting to network...')
        sta_if.active(True)
        sta_if.connect(wifi_cfg.SSID, wifi_cfg.PASS)
        while not sta_if.isconnected():
            pass
    #print('network config:', sta_if.ifconfig())
    sta_if.ifconfig(wifi_cfg.IFCFG)
    print('network config:', sta_if.ifconfig())
