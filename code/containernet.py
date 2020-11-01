#!/usr/bin/python
"""
This is the most simple example to showcase Containernet.
"""
from mininet.net import Containernet
from mininet.node import Controller
from mininet.cli import CLI
from mininet.link import TCLink
from mininet.log import info, setLogLevel
setLogLevel('info')

net = Containernet(controller=Controller)
info('*** Adding controller\n')
net.addController('c0')
info('*** Adding docker containers\n')

d1 = net.addDocker('d1', ip='10.0.0.201', dimage="ubuntu:trusty")
d2 = net.addDocker('d2', ip='10.0.0.202', dimage="ubuntu:trusty")

d3 = net.addDocker('d3', ip='10.0.0.203', dimage="ubuntu:trusty")
d4 = net.addDocker('d4', ip='10.0.0.204', dimage="ubuntu:trusty")

d5 = net.addDocker('d5', ip='10.0.0.205', dimage="ubuntu:trusty")
d6 = net.addDocker('d6', ip='10.0.0.206', dimage="ubuntu:trusty")

d7 = net.addDocker('d7', ip='10.0.0.207', dimage="ubuntu:trusty")
d8 = net.addDocker('d8', ip='10.0.0.208', dimage="ubuntu:trusty")

d9 = net.addDocker('d9', ip='10.0.0.209', dimage="ubuntu:trusty")
d10 = net.addDocker('d10', ip='10.0.0.210', dimage="ubuntu:trusty")

d11 = net.addDocker('d11', ip='10.0.0.211', dimage="ubuntu:trusty")
d12 = net.addDocker('d12', ip='10.0.0.212', dimage="ubuntu:trusty")

d13 = net.addDocker('d13', ip='10.0.0.213', dimage="ubuntu:trusty")
d14 = net.addDocker('d14', ip='10.0.0.214', dimage="ubuntu:trusty")

d15 = net.addDocker('d15', ip='10.0.0.215', dimage="ubuntu:trusty")
d16 = net.addDocker('d16', ip='10.0.0.216', dimage="ubuntu:trusty")


info('*** Adding switches\n')
s1 = net.addSwitch('s1')
s2 = net.addSwitch('s2')

info('*** Creating links\n')
net.addLink(d1, s1)
net.addLink(d2, s1)
net.addLink(d3, s1)
net.addLink(d4, s1)
net.addLink(d5, s1)
net.addLink(d6, s1)
net.addLink(d7, s1)
net.addLink(d8, s1)

net.addLink(s1, s2, cls=TCLink, delay='100ms', bw=1)

net.addLink(d9, s2)
net.addLink(d10, s2)
net.addLink(d11, s2)
net.addLink(d12, s2)
net.addLink(d13, s2)
net.addLink(d14, s2)
net.addLink(d15, s2)
net.addLink(d16, s2)

info('*** Starting network\n')
net.start()


info('*** Testing connectivity\n')


info('*** Running CLI\n')
CLI(net)
info('*** Stopping network')
net.stop()
