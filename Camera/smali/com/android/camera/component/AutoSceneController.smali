.class public final Lcom/android/camera/component/AutoSceneController;
.super Lcom/android/camera/IAutoSceneController;
.source "AutoSceneController.java"


# static fields
.field private static final KEY_SET_SCENE_DETECT:Ljava/lang/String; = "scene-detect"

.field static final MSG_ENTER_SMART_SCENE_DETECT:I = 0x2711

.field static final MSG_EXIT_SMART_SCENE_DETECT:I = 0x2712

.field static final MSG_LINK:I = 0x2713

.field static final NAME:Ljava/lang/String; = "Auto-Scene Controller"

.field private static final VALUE_DISABLE_SCENE_DETECT:Ljava/lang/String; = "off"

.field private static final VALUE_ENABLE_SCENE_DETECT:Ljava/lang/String; = "on"


# instance fields
.field private m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

.field private m_EffectController:Lcom/android/camera/effect/IEffectController;

.field m_LatestEventArgs:Lcom/android/camera/HtcCallbackEventArgs;

.field private m_SceneController:Lcom/android/camera/effect/ISceneController;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3
    .parameter "cameraThread"

    .prologue
    .line 42
    const-string v0, "Auto-Scene Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/IAutoSceneController;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;Z)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoSceneController;)Lcom/android/camera/component/AutoSceneUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->notifySmartSceneToUI()V

    return-void
.end method

.method private notifySmartSceneToUI()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/android/camera/HtcCallbackEventArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/android/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/android/camera/HtcCallbackEventArgs;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/android/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/android/camera/HtcCallbackEventArgs;->arg2:I

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/16 v2, 0x2711

    iget-object v5, p0, Lcom/android/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/android/camera/HtcCallbackEventArgs;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 180
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 175
    goto :goto_0
.end method

.method private onEnterSmartSceneDetector()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/IEffectController;->setColorEffect(Ljava/lang/String;Z)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController;->m_EffectController:Lcom/android/camera/effect/IEffectController;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/IEffectController;->setGpuEffect(Lcom/android/camera/effect/GpuEffectInfo;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController;->m_SceneController:Lcom/android/camera/effect/ISceneController;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 91
    .local v0, cameraController:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_2

    .line 94
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onEnterSmartSceneDetector() - Enable smart scene detect"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "scene-detect"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onEnterSmartSceneDetector() - Cannot enable smart scene detect because there is no camera controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExitSmartSceneDetector()V
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 109
    .local v0, cameraController:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitSmartSceneDetector() - Disable smart scene detect"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "scene-detect"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/android/camera/IAutoSceneController;->isWdrScene:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    const-class v2, Lcom/android/camera/effect/ISceneController;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/AutoSceneController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ISceneController;

    .line 124
    .local v1, sceneController:Lcom/android/camera/effect/ISceneController;
    if-eqz v1, :cond_1

    .line 125
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/ISceneController;->setScene(Ljava/lang/String;)V

    .line 128
    :goto_1
    return-void

    .line 117
    .end local v1           #sceneController:Lcom/android/camera/effect/ISceneController;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitSmartSceneDetector() - Cannot disable smart scene detect because there is no camera controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .restart local v1       #sceneController:Lcom/android/camera/effect/ISceneController;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitSmartSceneDetector() - No ISceneController to reset scene mode"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-super {p0, p1}, Lcom/android/camera/IAutoSceneController;->handleMessage(Landroid/os/Message;)V

    .line 70
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->onEnterSmartSceneDetector()V

    goto :goto_0

    .line 58
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->onExitSmartSceneDetector()V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/AutoSceneUI;

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    .line 63
    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->notifySmartSceneToUI()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0}, Lcom/android/camera/IAutoSceneController;->initializeOverride()V

    .line 140
    const-class v0, Lcom/android/camera/component/AutoSceneUI;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AutoSceneController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/AutoSceneUI;

    iput-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    .line 141
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/16 v2, 0x2713

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    .line 148
    .local v6, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v0, v6, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/AutoSceneController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/AutoSceneController$1;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 165
    return-void
.end method