# AkaHome

<!-- # Short Description -->

Home automation and health tracking.

<!-- # Badges -->

[![Github issues](https://img.shields.io/github/issues/Avellea/AkaHome)](https://github.com/Avellea/AkaHome/issues)
[![Github forks](https://img.shields.io/github/forks/Avellea/AkaHome)](https://github.com/Avellea/AkaHome/network/members)
[![Github stars](https://img.shields.io/github/stars/Avellea/AkaHome)](https://github.com/Avellea/AkaHome/stargazers)
[![Github top language](https://img.shields.io/github/languages/top/Avellea/AkaHome)](https://github.com/Avellea/AkaHome/)

# Tags

`ruby` `sinatra` `health` `home` `automation` `raspberry pi`

# Demo

![Demo](assets/README/file-0.png)
<img src="assets/README/file-1.png" width=25%>

# Advantages

- 100% FOSS
- Easily implemented with any Raspberry Pi

# Installation

```
$ git clone https://github.com/Avellea/AkaHome.git && cd AkaHome
$ gem install bundler
$ bundler install
```

# Deployment

```
$ sudo ruby ./start.rb <ip> <port>
```

NOTE: `sudo` is required for Raspberry Pi functions. **DO NOT OPEN THIS TO THE WORLD!**

# Minimal Example

```
$ curl -X POST -d 'light=on' http://localhost:9999/api/v1/light/set
```
That line will turn on your lights, assuming you have a servo attached to that switch.

# Contributors

- [Avellea](https://github.com/Avellea)

<!-- CREATED_BY_LEADYOU_README_GENERATOR -->
