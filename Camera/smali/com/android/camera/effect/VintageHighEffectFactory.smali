.class public final Lcom/android/camera/effect/VintageHighEffectFactory;
.super Lcom/android/camera/effect/GpuEffectFactory;
.source "VintageHighEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/GpuEffectFactory",
        "<",
        "Lcom/android/camera/effect/VintageHighEffect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/camera/effect/GpuEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/VintageHighEffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/VintageHighEffect;

    move-result-object v0

    return-object v0
.end method

.method public createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/VintageHighEffect;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/effect/VintageHighEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/VintageHighEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
