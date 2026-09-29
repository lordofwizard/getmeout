---
type: 'Page'
collections: 'W-PLAT Vanderlande Hackathon'
title: LibGDX usage. and simple workflow
aliases: null
description: null
icon: 🎮️
createdAt: '2024-11-19T08:20:20.651Z'
lastUpdated: '2024-11-24T05:53:44.835Z'
tags: [Vanderlande]
coverImage: null
---

# LibGDX usage. and simple workflow

### 1. Setting Up a Basic LibGDX Game

First, ensure you have set up a LibGDX project using the LibGDX Setup Tool **(I'll attach a zip file of a demo project to ensure everyone has the same dependencies and project)**. A basic LibGDX game consists of an `ApplicationListener` implementation, often handled via the `Game` class, to manage game states and screens.

---

**Download a test game from here for better understanding**

![snake-game-eg](https://capacities-files.s3.eu-central-1.amazonaws.com/private/82c8551c-1e36-47cf-beec-ef50349e323e/raw.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085823Z&X-Amz-Expires=43200&X-Amz-Signature=38f70a16db63a69bb14b34c1d5365bab38e66cc7c77337408e7ba08f2ebdd02b&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[[snake-game-eg|snake-game-eg - Notes]]

---


#### Basic Game Structure

```java
import com.badlogic.gdx.Game;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.mygdx.game.screens.MainMenuScreen;

public class MyGdxGame extends Game {
    public SpriteBatch batch; // Shared across screens

    @Override
    public void create() {
        batch = new SpriteBatch();
        this.setScreen(new MainMenuScreen(this));
    }

    @Override
    public void render() {
        super.render(); // Calls the render method of the active screen
    }

    @Override
    public void dispose() {
        batch.dispose();
        getScreen().dispose();
    }
}

```



### 2. Creating Utility Helper Functions

Below are some utility helper functions commonly used in LibGDX games to handle textures, input, collision detection, and more.

#### 2.1 Texture Loading Helper

A function to load a texture and handle disposal.

```java
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.Disposable;

public class TextureHelper implements Disposable {
    private Texture texture;

    public TextureHelper(String filePath) {
        texture = new Texture(filePath);
    }

    public Texture getTexture() {
        return texture;
    }

    @Override
    public void dispose() {
        if (texture != null) {
            texture.dispose();
        }
    }
}

```

#### 2.2 Screen Transition Helper

A utility to smoothly transition between game screens.

```java
import com.badlogic.gdx.Screen;
import com.badlogic.gdx.utils.ScreenUtils;

public class ScreenTransition {
    public static void fadeToScreen(Game game, Screen newScreen, float duration) {
        // Placeholder for a custom fade effect (implementation varies by need)
        game.setScreen(newScreen);
    }
}

```

#### 2.3 Input Handling

A helper to manage input easily.

```java
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.InputProcessor;

public class CustomInputProcessor extends InputAdapter {
    @Override
    public boolean keyDown(int keycode) {
        // Handle key press
        return true;
    }

    @Override
    public boolean touchDown(int screenX, int screenY, int pointer, int button) {
        // Handle touch/click
        return true;
    }
}

```

### 3. Building a Simple Game Loop

Here’s a high-level outline of a simple game screen:

```java
import com.badlogic.gdx.Screen;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.Texture;

public class MainMenuScreen implements Screen {
    private final MyGdxGame game;
    private Texture playButton;

    public MainMenuScreen(MyGdxGame game) {
        this.game = game;
        playButton = new Texture("play_button.png");
    }

    @Override
    public void show() {}

    @Override
    public void render(float delta) {
        Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT); // Clear the screen
        game.batch.begin();
        game.batch.draw(playButton, 100, 150);
        game.batch.end();
    }

    @Override
    public void resize(int width, int height) {}

    @Override
    public void pause() {}

    @Override
    public void resume() {}

    @Override
    public void hide() {}

    @Override
    public void dispose() {
        playButton.dispose();
    }
}

```

### 4. Basic Collision Detection Helper

```java
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;

public class CollisionHelper {
    public static boolean isColliding(Rectangle rect1, Rectangle rect2) {
        return rect1.overlaps(rect2);
    }

    public static boolean pointInRectangle(Rectangle rect, Vector2 point) {
        return rect.contains(point);
    }
}

```

### 5. Putting It All Together

---

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/f7140223-24bc-44ab-967e-9a37e76f872e/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=20a7ad46c6824108691f69533ff7ac1cb09cbf3a905325dab25fcf11b5759fa3&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(62).md)

---

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/72328ade-0d83-4fbc-8cf9-2f7a03b0174c/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085823Z&X-Amz-Expires=43200&X-Amz-Signature=90007b8983fe83b480fc99b4899b238d99eb5ed164b77b4a7cbf58974c9faff0&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(46).md)

---

---

