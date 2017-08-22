Feature: Security

Story: User's confidential data
As a user of your service
I want methods for my credit card information to be stolen blocked
So that I don't have to cancel and reorder my credit card.

# https://www.symantec.com/security_response/attacksignatures/detail.jsp?asid=20429
Evil Story: MyDoom Trojan
As a hacker
I want to infect a server with MyDoom
So that I can use it as a socks proxy to gain access to a system

Evil Story: Brickerbot malware
As a hacker
I want to infect an IOT device with Brickerbot
So that it becomes unusable.


Evil Story: Old nginx packages
As a hacker
I want to leverage vulnerabilities in out of date packages
So that I can gain access to the system

Scenario: Socks proxy is blocked
  Given the server has a firewall installed
  When a list of open ports is fetched
  Then the socks port 1080 is not open

Scenario: telnet is blocked
  Given the server has a firewall installed
  When a list of open ports is fetched
  Then the socks port 23 is not open

Scenario Outline: Expect security updates to be installed
   Given the server is Ubuntu 14.04
   And the package <package> is installed
   When the version is fetched
   Then It should be equal or later than version <version>

   Examples: Ubuntu 14.04 nginx packages with security updates
     | package      | version          |
     | nginx        | 1.4.6-1ubuntu3.7 |
     | nginx-common | 1.4.6-1ubuntu3.8 |
     | nginx-core   | 1.4.6-1ubuntu3.8 |
