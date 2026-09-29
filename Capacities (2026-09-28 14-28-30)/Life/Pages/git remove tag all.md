---
type: 'Page'
title: git remove tag all
aliases: null
description: null
icon: null
createdAt: '2025-02-12T08:31:22.156Z'
lastUpdated: '2025-02-14T17:02:55.032Z'
tags: [Linux]
coverImage: null
---

# git remove tag all

1. Delete All local tags. (Optional Recommended)

    ```bash
    # Clears out all your local 
    git tag -d $(git tag -l)
    ```

2. Fetch remote All tags. (Optional Recommended)

    ```bash
    # All remote tags give you a complete list of remote tags locally
    git fetch
    ```

3. Delete All remote tags.

    ```bash
    # Note: pushing once should be faster than multiple times
    # Deletes the remote tags concerning the local
    git push origin --delete $(git tag -l)
    ```

4. Delete All local tags.

    ```bash
    # Deletes the local tags after fetch 
    git tag -d $(git tag -l)
    ```

