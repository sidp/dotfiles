#!/usr/bin/env bash
if hash reattach-to-user-namespace 2>/dev/null; then
	reattach-to-user-namespace -l $SHELL
else
	$SHELL
fi
