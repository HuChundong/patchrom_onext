.class public final Lcom/android/camera/effect/EisSceneFactory;
.super Lcom/android/camera/effect/EffectFactory;
.source "EisSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/EffectFactory",
        "<",
        "Lcom/android/camera/effect/EisScene;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/camera/effect/EffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EisSceneFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EisScene;

    move-result-object v0

    return-object v0
.end method

.method public createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EisScene;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/effect/EisScene;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/EisScene;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 17
    invoke-static {p1}, Lcom/android/camera/component/EisController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
