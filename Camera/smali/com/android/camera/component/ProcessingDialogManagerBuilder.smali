.class final Lcom/android/camera/component/ProcessingDialogManagerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "ProcessingDialogManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/ProcessingDialogManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Processing Dialog Manager"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/component/ProcessingDialogManagerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ProcessingDialogManager;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ProcessingDialogManager;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/component/ProcessingDialogManager;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ProcessingDialogManager;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
