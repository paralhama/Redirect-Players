# Redirect Players - SourceMod Plugin

![SourceMod Version](https://img.shields.io/badge/SourceMod-1.10%2B-blue)
![License](https://img.shields.io/badge/License-MIT-green)

A minimalist SourceMod plugin that instantly redirects all players to another server with a single admin command.

## Features

- 🔄 One-command player redirection (`!server IP:PORT`)
- 🔐 Admin restricted (default flag: ADMFLAG_GENERIC)
- 🤫 Silent operation (no chat messages or logs)
- 🎯 Preserves exact server address format
- 🤖 Automatically ignores bots

## Installation

1. Download the `.smx` file from [Releases](https://github.com/Paralhama/RedirectPlayers/releases)
2. Place in `addons/sourcemod/plugins/`
3. Restart server or load with `sm plugins load redirect_players`

## Usage

Admin command in chat:
```bash
!server 192.168.1.100:27015
