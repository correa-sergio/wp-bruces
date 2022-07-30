# Welcome to WordPress Brute Force Script - WP-BruCeS) 🚀

WP-BruCeS is a script developed in bash to provide analysis for possible wordpress credentials for CTF (Capture the Flag) challenges.

Note: Please don't use this script on servers that you don't have permissions for (and if you do this it is just your responsibility).

## Author:

- [Sérgio Corrêa](https://github.com/correa-sergio)

## Requirements:

- curl.

## How to Run:

- Clone the project

```bash
  git clone https://github.com/correa-sergio/wp-bruces
```

- Go to the project directory

```bash
  cd wp-bruces
```
- Set execute permission 

```bash
  chmod +x wp-bruces.sh
```

- Active start options

| Parameter | Description                |
| :-------- | :------------------------- |
| `-v` | Show the Software Version. |
| `-h` | Show the Help Options. |
| `-u` | URL or IP target. |

- Input

```bash
Usage example: 

Ex: ./wp-bruces.sh (Show the help Painel)

Ex: ./wp-bruces.sh -u example-sc-CTF.com.br
```

- Output

```bash
[*] Found Username: admin and Password: adminadmin
```

## License

[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)

## Contribution:

Suggestions and issues are welcome (Feel free to send me an e-mail).

Made with love. By me. To the community ♥️