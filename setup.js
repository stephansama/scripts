#!/usr/bin/env node

import { execSync as sh } from "node:child_process";

const globalNpmPackages = [
	"@antfu/ni",
	"@mcansh/pid-from-port-cli",
	"http-serve",
	"neovim",
	"serve",
];

sh(`corepack enable`);

for (const pkg of globalNpmPackages) {
	console.log("Installing", pkg);
	sh(`pnpm install --global ${pkg}`);
}
