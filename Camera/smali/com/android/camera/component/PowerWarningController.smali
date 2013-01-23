.class public Lcom/android/camera/component/PowerWarningController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "PowerWarningController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PowerWarning Controller"


# instance fields
.field private m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 29
    const-string v0, "PowerWarning Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 30
    return-void
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 92
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendPowerRecWarning()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PowerWarningController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 84
    :cond_0
    return-void
.end method

.method private sendPowerWarning()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PowerWarningController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 62
    return-void
.end method

.method link(Lcom/android/camera/component/PowerWarningUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    .line 70
    return-void
.end method
