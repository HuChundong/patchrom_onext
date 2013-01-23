.class public Lcom/android/camera/menu/ResolutionMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ResolutionMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ResolutionMenuItem$3;,
        Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
    }
.end annotation


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoRatioItem:Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

.field private m_SepMenuItem:Lcom/android/camera/menu/SeparatorMenuItem;

.field private final mode:Lcom/android/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V
    .locals 2
    .parameter "cameraActivity"
    .parameter "mode"
    .parameter "titleResId"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 74
    iput-object p2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    .line 76
    iget-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/camera/menu/ResolutionMenuItem;->initPhotoRatioItem()V

    .line 80
    invoke-direct {p0}, Lcom/android/camera/menu/ResolutionMenuItem;->setCameraThreadListener()V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/menu/ResolutionMenuItem;Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/camera/menu/ResolutionMenuItem;->onResolutionSelected(Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/menu/ResolutionMenuItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/menu/ResolutionMenuItem;->linkToCameraThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/menu/ResolutionMenuItem;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/ResolutionMenuItem;->onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/menu/ResolutionMenuItem;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method private generateSummary(Lcom/android/camera/Resolution;)Ljava/lang/String;
    .locals 4
    .parameter "resolution"

    .prologue
    .line 299
    const-string v1, ""

    .line 300
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/android/camera/Resolution;->getResolutionCategoryResId()I

    move-result v0

    .line 303
    .local v0, resId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/Resolution;->getResolutionScreenRatioDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .end local v0           #resId:I
    :goto_1
    return-object v1

    .line 303
    .restart local v0       #resId:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2, v0}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 309
    .end local v0           #resId:I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p1, v2}, Lcom/android/camera/Resolution;->getResolutionDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private initPhotoRatioItem()V
    .locals 7

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-eq v0, v1, :cond_0

    .line 92
    sget-object v0, Lcom/android/camera/menu/ResolutionMenuItem$3;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const v4, 0x7f0a00e1

    .line 108
    .local v4, resId:I
    :goto_0
    new-instance v0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const v3, 0x7f0a00dd

    const v5, 0x7f0a00e1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    iput-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_PhotoRatioItem:Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    .line 118
    .end local v4           #resId:I
    :cond_0
    new-instance v0, Lcom/android/camera/menu/SeparatorMenuItem;

    const v1, 0x7f0a0074

    invoke-direct {v0, v1}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_SepMenuItem:Lcom/android/camera/menu/SeparatorMenuItem;

    .line 119
    return-void

    .line 96
    :pswitch_0
    const v4, 0x7f0a00de

    .line 97
    .restart local v4       #resId:I
    goto :goto_0

    .line 99
    .end local v4           #resId:I
    :pswitch_1
    const v4, 0x7f0a00df

    .line 100
    .restart local v4       #resId:I
    goto :goto_0

    .line 102
    .end local v4           #resId:I
    :pswitch_2
    const v4, 0x7f0a00e0

    .line 103
    .restart local v4       #resId:I
    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private linkToCameraThread()V
    .locals 5

    .prologue
    .line 150
    const-string v3, "ResolutionMenuItem"

    const-string v4, "linkToCameraThread() - Start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 154
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v1, :cond_0

    .line 156
    const-string v3, "ResolutionMenuItem"

    const-string v4, "linkToCameraThread() - No camera thread"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v3

    const-class v4, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ICaptureResolutionManager;

    .line 162
    .local v2, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    new-instance v0, Lcom/android/camera/menu/ResolutionMenuItem$2;

    invoke-direct {v0, p0}, Lcom/android/camera/menu/ResolutionMenuItem$2;-><init>(Lcom/android/camera/menu/ResolutionMenuItem;)V

    .line 175
    .local v0, callback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v3, v2, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 176
    iget-object v3, v2, Lcom/android/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 178
    const-string v3, "ResolutionMenuItem"

    const-string v4, "linkToCameraThread() - End"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0
    .parameter "property"
    .parameter "e"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/camera/menu/ResolutionMenuItem;->updateContent()V

    .line 187
    return-void
.end method

.method private onResolutionSelected(Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 5
    .parameter "menuItem"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ICaptureResolutionManager;

    .line 196
    .local v1, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-nez v1, :cond_0

    .line 198
    const-string v2, "ResolutionMenuItem"

    const-string v3, "onResolutionSelected() - No ICaptureResolutionManager interface"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 203
    :cond_0
    sget-object v2, Lcom/android/camera/menu/ResolutionMenuItem$3;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v3, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v3}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    iget-object v2, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/ICaptureResolutionManager;->setPhotoResolution(Lcom/android/camera/Resolution;)V

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    iget-object v4, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-direct {v3, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 219
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 221
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 209
    .end local v0           #i:I
    :pswitch_1
    iget-object v2, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/ICaptureResolutionManager;->setVideoResolution(Lcom/android/camera/Resolution;)V

    goto :goto_1

    .line 222
    .restart local v0       #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    .line 224
    .end local v0           #i:I
    :cond_2
    iget-object v2, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/menu/ResolutionMenuItem;->setSummary(I)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCameraThreadListener()V
    .locals 3

    .prologue
    .line 122
    const-string v1, "ResolutionMenuItem"

    const-string v2, "setCameraThreadListener() - Start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 127
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v0, :cond_0

    .line 129
    const-string v1, "ResolutionMenuItem"

    const-string v2, "setCameraThreadListener() - No camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/ResolutionMenuItem$1;-><init>(Lcom/android/camera/menu/ResolutionMenuItem;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const-string v1, "ResolutionMenuItem"

    const-string v2, "setCameraThreadListener() - Cannot link to camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    const-string v1, "ResolutionMenuItem"

    const-string v2, "setCameraThreadListener() - End"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public updateContent()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 234
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v8

    const-class v11, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v8, v11}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ICaptureResolutionManager;

    .line 235
    .local v6, resolutionManager:Lcom/android/camera/ICaptureResolutionManager;
    if-nez v6, :cond_0

    .line 237
    const-string v8, "ResolutionMenuItem"

    const-string v9, "updateContent() - No ICaptureResolutionManager interface"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v8, v11, :cond_1

    iget-object v8, v6, Lcom/android/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v5, v8

    .line 241
    .local v5, resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    :goto_1
    if-nez v5, :cond_2

    .line 243
    const-string v8, "ResolutionMenuItem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateContent() - No resolution list for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v5           #resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    :cond_1
    iget-object v8, v6, Lcom/android/camera/ICaptureResolutionManager;->videoResolutionList:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v5, v8

    goto :goto_1

    .line 248
    .restart local v5       #resolutionList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/Resolution;>;"
    :cond_2
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v8, v11, :cond_7

    iget-object v8, v6, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Resolution;

    move-object v0, v8

    .line 250
    .local v0, currentResolution:Lcom/android/camera/Resolution;
    :goto_2
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 252
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v8, v11, :cond_8

    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    if-ne v8, v11, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_3
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v8, v8, Lcom/android/camera/HTCCamera;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/camera/sina/GifModeScene;

    if-nez v8, :cond_8

    move v2, v9

    .line 257
    .local v2, isAddPhotoRatioItem:Z
    :goto_3
    if-eqz v2, :cond_4

    .line 259
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_PhotoRatioItem:Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    invoke-virtual {v8}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->updateContent()V

    .line 260
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_PhotoRatioItem:Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_SepMenuItem:Lcom/android/camera/menu/SeparatorMenuItem;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_4
    const-string v7, ""

    .line 268
    .local v7, summary:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_9

    .line 270
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    .line 271
    .local v4, resolution:Lcom/android/camera/Resolution;
    new-instance v3, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;

    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v3, p0, v8, v4}, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;-><init>(Lcom/android/camera/menu/ResolutionMenuItem;Landroid/content/Context;Lcom/android/camera/Resolution;)V

    .line 272
    .local v3, menuItem:Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
    invoke-virtual {v0, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 274
    invoke-direct {p0, v4}, Lcom/android/camera/menu/ResolutionMenuItem;->generateSummary(Lcom/android/camera/Resolution;)Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-virtual {v3, v9}, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->setChecked(Z)V

    .line 278
    :cond_5
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v8, v11, :cond_6

    .line 279
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4, v8}, Lcom/android/camera/Resolution;->getPhotoMenuItemSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->setSummary(Ljava/lang/String;)V

    .line 281
    :cond_6
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 248
    .end local v0           #currentResolution:Lcom/android/camera/Resolution;
    .end local v1           #i:I
    .end local v2           #isAddPhotoRatioItem:Z
    .end local v3           #menuItem:Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
    .end local v4           #resolution:Lcom/android/camera/Resolution;
    .end local v7           #summary:Ljava/lang/String;
    :cond_7
    iget-object v8, v6, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    invoke-virtual {v8}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Resolution;

    move-object v0, v8

    goto/16 :goto_2

    .restart local v0       #currentResolution:Lcom/android/camera/Resolution;
    :cond_8
    move v2, v10

    .line 252
    goto :goto_3

    .line 283
    .restart local v1       #i:I
    .restart local v2       #isAddPhotoRatioItem:Z
    .restart local v7       #summary:Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Lcom/android/camera/menu/ResolutionMenuItem;->setItems(Ljava/util/List;)V

    .line 285
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 287
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Resolution;

    invoke-direct {p0, v8}, Lcom/android/camera/menu/ResolutionMenuItem;->generateSummary(Lcom/android/camera/Resolution;)Ljava/lang/String;

    move-result-object v7

    .line 288
    if-eqz v2, :cond_b

    .line 289
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v8, v9}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 295
    :cond_a
    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/camera/menu/ResolutionMenuItem;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_b
    iget-object v8, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v8, v9}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    goto :goto_5
.end method
