Tunneldigger
============

.. image:: https://travis-ci.org/wlanslovenija/tunneldigger.svg?branch=master
    :target: https://travis-ci.org/wlanslovenija/tunneldigger

Tunneldigger is one of the projects of `wlan slovenija`_ open wireless network.
It is a simple VPN tunneling solution based on L2TPv3 tunnels supported in
recent Linux kernels.

.. _wlan slovenija: https://wlan-si.net

Documentation is found at:

http://tunneldigger.readthedocs.org/

Opkg (OpenWrt) packages for both Tunneldigger client and broker are available at:

https://github.com/wlanslovenija/firmware-packages-opkg

Modifications for Freifunk
--------------------------

broker/src/tunneldigger_broker/protocol.py 
  FEATURE_UNIQUE_SESSION_ID = 0 << 0

added scripts:
(based on https://forum.freifunk.net/t/l2tp-tunneldigger-serverdoku-thread/11621)

  scripts/session-pre-down.sh

  scripts/session-up.sh

  start-broker.sh

  tunneldigger.service (copy to /etc/systemd/system/tunneldigger.service)

Setup:
  Port: 10042
  MTU: 1364

install debian:
http://tunneldigger.readthedocs.io/en/latest/server.html#installation 

  change paths in start-broker.sh
  
                  scripts/session-up.sh
                  
                  tunneldigger.service
                  
                  broker/l2tp_broker.cfg
                  
  systemctl reload tunneldigger.service
  
  systemctl start tunneldigger.service

Source Code, Issue Tracker and Mailing List
-------------------------------------------

For development *wlan slovenija* open wireless network `development Trac`_ is
used, so you can see `existing open tickets`_ or `open a new one`_ there. Source
code is available on GitHub_. If you have any questions or if you want to
discuss the project, use `development mailing list`_.

.. _development Trac: https://dev.wlan-si.net/wiki/Tunneldigger
.. _existing open tickets: https://dev.wlan-si.net/report/15
.. _open a new one: https://dev.wlan-si.net/newticket
.. _GitHub: https://github.com/wlanslovenija/tunneldigger
.. _development mailing list: https://wlan-si.net/lists/info/development

Contributors
------------

* `@kostko`_
* `@lynxis`_
* `@mitar`_
* `@max-b`_
* `@mehlix`_
* `@valentt`_
* `@papazoga`_

.. _@kostko: https://github.com/kostko
.. _@lynxis: https://github.com/lynxis
.. _@mitar: https://github.com/mitar
.. _@max-b: https://github.com/max-b
.. _@mehlix: https://github.com/mehlis
.. _@valentt: https://github.com/valentt
.. _@papazoga: https://github.com/papazoga
